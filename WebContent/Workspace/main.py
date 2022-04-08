# -*- coding: utf-8 -*-

import numpy as np
import pandas as pd
from io import StringIO
from Bio import SeqIO
from weka.core.converters import Loader
from weka.classifiers import Classifier, Evaluation
from weka.core import serialization
import weka.core.jvm as jvm

pd.set_option('display.max_columns', None)
pd.set_option('display.max_rows', None)
np.set_printoptions(threshold=np.inf)


def Kmer(inputfile, k):
    buffer = ""
    for i in range(4 ** k):
        buffer += "kmer" + str(k) + "_f" + str(i + 1) + ","
    buffer += "class\n"
    kmers = nucleotides = ["A", "C", "G", "T"]
    for i in range(2, k + 1):
        new_kmers = []
        for kmer in kmers:
            for nucleotide in nucleotides:
                new_kmers.append(kmer + nucleotide)
        kmers = new_kmers
    zeros = [0] * len(kmers)
    records = SeqIO.parse(inputfile, "fasta")
    for record in records:
        kmers_dict = dict(zip(kmers, zeros))
        for kmer in kmers_dict:
            for i in range(42 - k):
                if record.seq[i:i + k].lower() == kmer.lower():
                    kmers_dict[kmer] += 1
        for kmer in kmers_dict:
            buffer += str(kmers_dict[kmer] / (42 - k)) + ","
        buffer += "?\n"
    return pd.read_csv(StringIO(buffer), sep=",")


def EIIP(inputfile):
    buffer = ""
    for i in range(41):
        buffer += "eiip_f" + str(i + 1) + ","
    buffer += "class\n"
    n_dict = {"a": "0.1260,", "c": "0.1340,", "g": "0.0806,", "t": "0.1335,"}
    records = SeqIO.parse(inputfile, "fasta")
    for record in records:
        for i in range(len(record.seq)):
            buffer += n_dict[record.seq[i].lower()]
        buffer += "?\n"
    return pd.read_csv(StringIO(buffer), sep=",")


def Feature_Extract(inputfile):
    kmer1 = Kmer(inputfile, 1)
    kmer2 = Kmer(inputfile, 2)
    kmer3 = Kmer(inputfile, 3)
    kmer4 = Kmer(inputfile, 4)
    kmer5 = Kmer(inputfile, 5)
    eiip = EIIP(inputfile)
    features = pd.concat([kmer1.iloc[:, :-1], kmer2.iloc[:, :-1], kmer3.iloc[:, :-1], kmer4.iloc[:, :-1], kmer5.iloc[:, :-1], eiip], axis=1)
    features.to_csv("test.csv", index=False)


def CSV2ARFF():
    rf = pd.read_csv("test.csv")
    columns = rf.columns.tolist()
    wf = open("test.arff", "w+")
    wf.write("@relation test\n\n")
    for i in range(len(columns) - 1):
        wf.write("@attribute {} numeric\n".format(columns[i]))
    wf.write("@attribute class {n,p}\n\n")
    wf.write('@data\n')
    file = open("test.csv", "r")
    with open('test.csv', 'r') as f:
        f.readline()
        for line in f.readlines():
            line = line.strip()
            wf.write(line + "\n")
    wf.close()


if __name__ == "__main__":
    Feature_Extract("test.txt")
    CSV2ARFF()

