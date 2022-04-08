package com.test.mypackage;

import java.io.*;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import net.sf.json.JSONArray;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import weka.classifiers.Classifier;
import weka.classifiers.meta.Stacking;
import weka.core.Instances;
import weka.core.SerializationHelper;
import weka.core.converters.ArffLoader;

@WebServlet("/testServletUpload")
public class testServletUpload extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private static final String UPLOAD_DIRECTORY = "upload";
	String filePath2="1";
	String fileName="2";
	String End="";
	
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	request.setAttribute("ab", " enctype=\"multipart/form-data\"");
        if(!ServletFileUpload.isMultipartContent(request)) {
            PrintWriter writer = response.getWriter();
            writer.println("Error: enctype=multipart/form-data");
            writer.flush();
            return;
        }
        DiskFileItemFactory factory = new DiskFileItemFactory();
        factory.setSizeThreshold(0x300000);
        factory.setRepository(new File(System.getProperty("java.io.tmpdir")));
        ServletFileUpload upload = new ServletFileUpload(factory);
        upload.setFileSizeMax(0x2800000L);
        upload.setSizeMax(0x3200000L);
        upload.setHeaderEncoding("UTF-8");
        String uploadPath = getServletContext().getRealPath("/")  + UPLOAD_DIRECTORY;
			File uploadDir = new File(uploadPath);
			if (!uploadDir.exists()) {
				uploadDir.mkdir();
			}
        try {
        	@SuppressWarnings("unchecked")
        	List<FileItem> formItems = upload.parseRequest(request);
            if(formItems != null && formItems.size() > 0) {
                for(FileItem item : formItems) {
                    if(!item.isFormField()) {
                        fileName = (new File(item.getName())).getName();
                        String filePath = request.getSession().getServletContext().getRealPath("")+"Workspace/"  + fileName;
                        filePath2 = request.getSession().getServletContext().getRealPath("")+"Workspace/";
                        File storeFile = new File(filePath);
                        item.write(storeFile);
                        request.setAttribute("message", "File upload successfully!");
                    }
                }

            }
        }
        catch(Exception ex) {
        	request.setAttribute("message","Error message:" + ex.getMessage());
        }
        
        String command = "cd " + filePath2 + " && python3 main.py\n";

		System.out.println(command);
		cmd(command);
		try {
            TimeUnit.SECONDS.sleep(5);
        } catch(InterruptedException e) {
            e.printStackTrace();
        }
        try {
        	End = testOutputClassDistribution(filePath2, fileName);
		} catch (Exception e) {
			e.printStackTrace();
		}
        
        JSONArray jsonObj = JSONArray.fromObject(End);
        request.getSession().setAttribute("RR", jsonObj);
        response.sendRedirect(request.getContextPath() + "/index.jsp");
        File file1 = new File((new StringBuilder(String.valueOf(filePath2))).append(fileName).toString());
        file1.delete();
        File file2 = new File((new StringBuilder(String.valueOf(filePath2))).append("test.csv").toString());
        file2.delete();
        File file3 = new File((new StringBuilder(String.valueOf(filePath2))).append("test.arff").toString());
        file3.delete();
		return;
	}
    
    public static boolean cmd(String command)
    {
        boolean flag = false;
        File wd = new File("/bin");
        Process proc = null;
        try
        {
            proc = Runtime.getRuntime().exec("/bin/bash", null, wd);
        }
        catch(IOException e)
        {
            e.printStackTrace();
        }
        if(proc != null)
        {
            BufferedReader in = new BufferedReader(new InputStreamReader(proc.getInputStream()));
            PrintWriter out = new PrintWriter(new BufferedWriter(new OutputStreamWriter(proc.getOutputStream())), true);
            out.println("cd ..");
            out.println(command);
            out.println("exit");
            flag = true;
            try
            {
                String line;
                while((line = in.readLine()) != null) 
                    System.out.println(line);
                proc.waitFor();
                in.close();
                out.close();
                proc.destroy();
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
        }
        return flag;
    }
	
	public static String testOutputClassDistribution(String filepath, String filename) throws Exception {
	    ArffLoader loader = new ArffLoader();
	    String arffPath = filepath + "test.arff";
	    loader.setFile(new File(arffPath));
	    Instances test = loader.getDataSet();
	    test.setClassIndex(test.numAttributes() - 1);
	    String modelPath = filepath + "result.model";
	    Classifier classifier = (Stacking)SerializationHelper.read(modelPath);
	    StringBuffer stackingResult = new StringBuffer();
	    String resultTitle = "[";
	    stackingResult.append(resultTitle);
	    String file = filepath + filename;
	    FileReader fr = new FileReader(file);
	    BufferedReader br = new BufferedReader(fr);
	    for(int i = 0; i < test.numInstances(); i++) {
	        StringBuilder sb = new StringBuilder();
	        sb.append("{\"id\":");
	        sb.append(i + 1);
	        sb.append(",\"name\":");
	        sb.append((new StringBuilder("\"")).append(br.readLine().replace(">", "")).append("\"").toString());
	        sb.append(",\"sequence\":");
	        sb.append((new StringBuilder("\"")).append(br.readLine()).append("\"").toString());
	        sb.append(",\"label\":");
	        double possibility = classifier.distributionForInstance(test.instance(i))[1];
	        if(possibility >= 0.5) {
	            sb.append("\"positive\"");
	            sb.append(",\"possibility\":\"");
	            sb.append(String.format("%.4f", possibility));
	        } else {
	            sb.append("\"negative\"");
	            sb.append(",\"possibility\":\"");
	            sb.append(String.format("%.4f", 1.0 - possibility));
	        }
	        sb.append("\"},");
	        stackingResult.append(sb.toString());
	    }
        br.close();
	    stackingResult.deleteCharAt(stackingResult.length() - 1).append("]");
	    String finalResult = stackingResult.toString();
	    return finalResult;
	}
}