<%-- 注释可能并不准确，请谨慎参考 --%>
<!-- jsp编码说明 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- jsp需遵循的规则 -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- html——起始位置 -->
<html>
	<!-- 头部——起始位置 -->
	<head runat="server">
		<c:url value="/" var="basepath"></c:url>
		<!-- 页面所需的元标记，不会在客户端，但是会被浏览器解析 -->
		<base href="${basepath}">
		<meta name="description" content="Vali is a responsive and free admin theme built with Bootstrap 4, SASS and PUG.js. It's fully customizable and modular."/>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="x-ua-compatible" content="ie=edge">
		<meta property="twitter:card" content="summary_large_image"/>
		<meta property="twitter:site" content="@pratikborsadiya"/>
		<meta property="twitter:creator" content="@pratikborsadiya"/>
		<meta property="og:type" content="website"/>
		<meta property="og:site_name" content="Vali Admin"/>
		<meta property="og:title" content="Vali - Free Bootstrap 4 admin theme"/>
		<meta property="og:url" content="http://pratikborsadiya.in/blog/vali-admin"/>
		<meta property="og:image" content="http://pratikborsadiya.in/blog/vali-admin/hero-social.png"/>
		<meta property="og:description" content="Vali is a responsive and free admin theme built with Bootstrap 4, SASS and PUG.js. It's fully customizable and modular."/>
		<meta charset="utf-8"/>
		<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
		<meta name="viewport" content="width=device-width, initial-scale=1"/>
		<!-- 创建文档与外部资源的关系 -->
		<link rel="stylesheet" type="text/css" href="/web/sources/css/bootstrap.css"/>
		<link rel="stylsheet" type="text/ss" href="/web/sources/css/custom.css"/>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.0/css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
		<link rel="stylesheet" href="css/custom.css">
		<!-- 页面标题 -->
		<title> i4mC-EL </title>
		<style type="text/css">
			table{
				width: 100%;
				table-layout: fixed;
			}
			.id{
				width: 20%;
			}
			.err{
				width: 30%;
			}
			.ev{
				width: 50%;
			}
			td{
				white-space: nowrap;/*控制单行显示*/
				overflow: hidden;/*超出隐藏*/
				text-overflow: ellipsis;/*隐藏的字符用省略号表示*/
			}
		</style>
	<!-- 头部结束位置 -->
	</head>
	<!-- 主体——起始位置 -->
	<body>
		<!-- 创建Bootstrap固定布局主容器——起始位置 -->
		<div class="container">
			<!-- 创建水平居中的文本框——起始位置 -->
			<div style="text-align:center">
				<!-- 标题1（加粗） -->
				<h1><strong>i4mC-EL<span class="pull-right label label-default"></span></strong></h1>
				<!-- 段落（加粗） -->
				<p><strong>Identifying DNA N4-methylcytosine sites in the mouse genome using ensemble learning</strong></p>
			<!-- 创建水平居中的文本框——结束位置 -->
			</div>
			<!-- 创建Bootstrap网格系统——行——起始位置 -->
			<div class="row">
				<!-- 创建Bootstrap网格系统——列（中型设备，宽度12）——起始位置 -->
				<div class="col-md-12">
					<!-- 创建Bootstrap面板（带有基于标签的导航，颜色为淡蓝色）——起始位置 -->
					<div class="panel with-nav-tabs panel-info">
						<!-- 面板头部——起始位置 -->
						<div class="panel-heading">
							<!-- 胶囊式导航菜单（与面板头部等宽）——起始位置 -->
							<ul class="nav nav-pills nav-justified">
								<li class="active"><a href="#home" data-toggle="pill"><strong style="font-size:15pt">Home</strong></a></li>
								<li><a href="#about" data-toggle="pill"><strong style="font-size:15pt">About</strong></a></li>
								<li><a href="#download" data-toggle="pill"><strong style="font-size:15pt">Download</strong></a></li>
								<li><a href="#contact" data-toggle="pill"><strong style="font-size:15pt">Help & Contact</strong></a></li>
							<!-- 胶囊式导航菜单（与面板头部等宽）——结束位置 -->
							</ul>
						<!-- 面板头部——结束位置 -->
						</div>
						<!-- 面板主体——起始位置 -->
						<div class="panel-body">
							<!-- 设置标签内容——起始位置 -->
							<div class="tab-content">
								<!-- 标签1——home（淡入淡出效果）——起始位置 -->
								<div class="tab-pane fade in active" id="home">
									<!-- 创建子固定布局主容器1——起始位置 -->
									<div id="container_panel" class="container">
										<!-- 创建子网格系统1——行——起始位置 -->
										<div class="row">
											<!-- 创建子网格系统1——列——起始位置 -->
											<div class="col-md-11">
												<!-- 创建子内容1——起始位置 -->
												<div style="font-size:15pt">
													Please upload the file storing the DNA sequence(s) through the button below or enter the DNA sequence(s) into the text box below.
													<br>(Notes:
													<br>&nbsp&nbsp&nbsp&nbsp 1. The suffix of the uploaded file containing fasta format DNA sequence(s) must be ".txt" or ".fasta".
													<br>&nbsp&nbsp&nbsp&nbsp 2. The entered DNA sequence(s) must be in fasta format.
													<br>&nbsp&nbsp&nbsp&nbsp 3. All DNA sequences must be 41bp.
													<br>&nbsp&nbsp&nbsp&nbsp 4. The central element(s) of each DNA sequence(s) must be "C"s.
													<br>&nbsp&nbsp&nbsp&nbsp 5. You can click <!-- 设置字体格式——下划线+红色 --><u id="example" style="color:red;">here</u> to get sample sequences.
													<br>&nbsp&nbsp&nbsp&nbsp 6. After you click the Submit button, please wait for a while, and then the results will be displayed below.
													<br>&nbsp&nbsp&nbsp&nbsp 7. The number of submitted sequences should not exceed 500, otherwise abnormalities may occur.)
												<!-- 创建子内容1——结束位置 -->
												</div>
												<!-- 换行 -->
												<br>
												<!-- 上传文件——起始位置 -->
												<form id="form_upload" action="testServletUpload" enctype="multipart/form-data" method="post" name="fileUploadForm">Upload your file:
													<!-- 选择文件并校验 -->
													<input type="file" name="docFile" id="docFile" style="display:none" onchange="document.fileUploadForm.filePath.value=this.value">
													<!-- 文件路径文本框（选择文件后自动填充） -->
													<input type="text" name="filePath" id="filePath">
													<!-- 浏览按钮 -->
													<input type="button" value="Browse" onclick="document.fileUploadForm.docFile.click()">
													<!-- 提交按钮1——起始位置 -->
													<button id="btn_submit" type="submit" class="btn btn-success" style="width: 200px;margin:center;">
														<!-- 将提交按钮染色，并添加对号图标 -->
														<span class="glyphicon glyphicon-ok"></span>Submit
													<!-- 提交按钮1——结束位置 -->
													</button>
												<!-- 上传文件——结束位置 -->
												</form>
												<!-- 换行 -->
												<br>
												or Enter your sequence(s):
												<br>
												<!-- 输入序列——起始位置 -->
												<form id="form_enter" action="testServletEnter" method="post">
													<!-- 文本框 -->
													<textarea id="sequences" name="sequences" class="form-control" cols="24" rows="13"></textarea>
													<!-- 换行 -->
													<br>
													<!-- 提交按钮2——起始位置 -->
													<button id="btn_submit" type="submit" class="btn btn-success" style="width:200px;margin:center;">
														<span class="glyphicon glyphicon-ok"></span>Submit
													<!-- 提交按钮2——结束位置 -->
													</button>
													<!-- 重置按钮——起始位置 -->
													<button id="btn_reset" type="button" class="btn btn-warning" style="width:200px;">
														 <span class="glyphicon glyphicon-repeat"></span>Reset
													<!-- 重置按钮——结束位置 -->
													</button>
												<!-- 输入序列——结束位置 -->
												</form>
											<!-- 创建子网格系统1——列——结束位置 -->
											</div>
											<br>
											<div class="col-md-11">
												<h3>Results:</h3>
												<table class="table" style="margin-bottom:0" bgcolor="00FF00">
													<tr>
														<!-- <td class="id">No.</td> -->
														<td class="name" width = 200>Name</td>
														<td class="sequence" width = 300>Sequence</td>
														<td class="lab" width = 50>Label</td>
														<td class="possibility" width = 50>Possibility</td>
													</tr>
												</table>
												<div style="overflow:auto;height:260px;margin-top:0;padding-top:0">
													<table class="table" style="margin-top:0;padding-top:0">
														<c:forEach items="${RR}" var="m">
															<c:if test="${m.id%2==1}">
																<tr bgcolor="#D9EDF7">
																	<!-- <td class="id">${m.id}</td> -->
																	<td class="name" width = 200>${m.name}</td>
																	<td class="sequence" width = 300>${m.sequence}</td>
																	<td class="lab" width = 50>${m.label}</td>
																	<td class="possibility" width = 50>${m.possibility}</td>
																</tr>
															</c:if>
															<c:if test="${m.id%2==0}">
																<tr>
																	<!-- <td class="id">${m.id}</td> -->
																	<td class="name" width = 200>${m.name}</td>
																	<td class="sequence" width = 300>${m.sequence}</td>
																	<td class="lab" width = 50>${m.label}</td>
																	<td class="possibility" width = 50>${m.possibility}</td>
																</tr>
															</c:if>
														</c:forEach>
													</table>
												</div>
											</div>
										<!-- 创建子网格系统1——行——结束位置 -->
										</div>
									<!-- 创建子固定布局主容器1——结束位置 -->
									</div>
								<!-- 标签1——home——结束位置 -->
								</div>
								<!-- 标签2——about——起始位置 -->
								<div class="tab-pane fade" id="about">
									<!-- 创建子固定布局主容器2——起始位置 -->
									<div class="container">
										<!-- 创建子网格系统2——行——起始位置 -->
										<div class="row">
											<!-- 创建子网格系统2——列——起始位置 -->
											<div class="col-md-11">
												<!-- 创建子标题2——起始位置 -->
												<div style="font-size:25pt">
													<h2><strong>Welcome to i4mC-EL server</strong></h2>
												<!-- 创建子标题2——结束位置 -->
												</div>
												<!-- 创建子内容2——起始位置 -->
												<div style="font-size:15pt">
													&nbsp&nbsp&nbsp&nbsp In this study for i4mC-EL, we share the dataset of predecessors and use a combined
													feature extraction method that includes k-mer and EIIP to convert DNA sequences in the dataset into feature
													vectors that can be recognized by the machine learning algorithms. And then, input feature vectors of
													training set into four base-classifiers, BayesNet, VotedPerceptron, NavieBayesMultinomial and LibSVM,
													respectively to generate four sets of results for combining into new feature vectors. At last, enter
													the new feature vectors into the meta-classifier, Logistic, to train the final model. The experimental
													process of this article is shown in figure1.
													<div style="text-align: center">
														<img alt="the experimental process in this paper" src="figure.png">
														<br>Figure.1 The experimental process of this article.
													</div>
												<!-- 创建子内容——结束位置 -->
												</div>
											<!-- 创建子网格系统2——列——结束位置 -->
											</div>
										<!-- 创建子网格系统2——行——结束位置 -->
										</div>
									<!-- 创建子固定布局主容器2——结束位置 -->
									</div>
								<!-- 标签2——about——结束位置 -->
								</div>
								<!-- 标签3——download——起始位置 -->
								<div class="tab-pane fade" id="download">
									<!-- 创建子固定布局主容器3——起始位置 -->
									<div class="container">
										<!-- 创建子网格系统3——行——起始位置 -->
										<div class="row">
											<!-- 创建子网格系统3——列——起始位置 -->
											<div class="col-md-11">
												<!-- 创建子标题3——起始位置 -->
												<div style="font-size:25pt">
													<h2><strong>Datasets</strong></h2>
												<!-- 创建子标题3——结束位置 -->
												</div>
												<!-- 创建子内容3——起始位置 -->
												<div style="font-size:15pt">
													&nbsp&nbsp&nbsp&nbsp The benchmark dataset used in the paper is created by Md. Mehedi Hasan et al.[1],
													and it contains 746 4mCs and 746 non-4mCs in the training set and 160 4mCs and 160 non-4mCs in the test set. You can
													download the datasets in the fasta format <a href="./Dataset/Benchmark_Dataset.zip" style="color: blue;">here</a>.
												<!-- 创建子内容3——结束位置 -->
												</div>
												<!-- 参考文献 -->
												<h3><strong style="float: left; text-align: left; text-align: justfy;">References:</strong></h3>
												<br>
												<div style="float: left; text-align: left; text-align: justfy; font-size:15pt">
													<div style="font: arial,sans-serif">
														[1]Md. Mehedi Hasan,Balachandran Manavalan,Watshara Shoombuatong,Mst. Shamima Khatun,Hiroyuki Kurata.
														i4mC-Mouse: Improved identification of DNA N4-methylcytosine sites in the mouse genome using multiple encoding schemes[J].
														Computational and Structural Biotechnology Journal,2020,18.
													</div>
												</div>
											<!-- 创建子网格系统3——列——结束位置 -->
											</div>
										<!-- 创建子网格系统3——行——结束位置 -->
										</div>
									<!-- 创建子固定布局主容器3——结束位置 -->
									</div>
								<!-- 标签3——download——结束位置 -->
								</div>
								<!-- 标签4——contact——起始位置 -->
								<div class="tab-pane fade" id="contact">
									<!-- 创建子固定布局主容器4——起始位置 -->
									<div class="container">
										<!-- 创建子网格系统4——行——起始位置 -->
										<div class="row">
											<!-- 创建子网格系统4——列——起始位置 -->
											<div class="col-md-11">
												<!-- 创建子标题4——帮助——起始位置 -->
												<div style="font-size:25pt">
													<h2><strong>Help</strong></h2>
												<!-- 创建子标题4——帮助——结束位置 -->
												</div>
												<!-- 创建子内容4——帮助——起始位置 -->
												<div style="font-size:15pt">
													&nbsp&nbsp&nbsp&nbsp This website is established to identify the DNA 4mC sites in the mouse genome.
													The format used in this website must be fasta which starts with ">" in the first line of each DNA
													fragment following the other information for this sequence and shows the sequence of the DNA fragment
													in the second line. And the sequences whose central elements are "C"s must be 41bp.
													<br>e.g.
													<br>
													>example_1
													<br>
													CATTACAGATAGTTGTGTGCCACCATGTGGTTGCTGGGAAT
												<!-- 创建子内容4——帮助——结束位置 -->
												</div>
												<!-- 创建子标题4——联系——起始位置 -->
												<div style="font-size:25pt">
													<h2><strong>Contact</strong></h2>
												<!-- 创建子标题4——联系——结束位置 -->
												</div>
												<!-- 创建子内容4——联系——起始位置 -->
												<div style="font-size:15pt">
													<br>Master, Zhengnan Zhao
													<br>Northeast Forestry University, School of Information and Computer Engineering, China
													<br>Email: <a style="color: blue;"href="mailto:zhaozhengnan@outlook.com">zhaozhengnan@outlook.com</a>
													<br>
													Associate Professor, Yanjuan Li
													<br>Northeast Forestry University, School of Information and Computer Engineering, China
													<br>Email: <a style="color: blue;"href="mailto:liyanjuan@nefu.edu.cn">liyanjuan@nefu.edu.cn</a>
												<!-- 创建子内容4——联系——结束位置 -->
												</div>
											<!-- 创建子网格系统4——列——结束位置 -->
											</div>
										<!-- 创建子网格系统4——行——结束位置 -->
										</div>
									<!-- 创建子固定布局主容器4——结束位置 -->
									</div>
								<!-- 标签4——contact——结束位置 -->
								</div>
							<!-- 设置标签内容——结束位置 -->
							</div>
						<!-- 面板主体——结束位置 -->
						</div>
					<!-- 创建Bootstrap面板（带有基于标签的导航，颜色为淡蓝色）——结束位置 -->
					</div>
				<!-- 创建Bootstrap网格系统——列（中型设备，宽度12）——结束位置 -->
				</div>
			<!-- 创建Bootstrap网格系统——行——结束位置 -->
			</div>
		<!-- 创建Bootstrap固定布局主容器——结束位置 -->
		</div>
		<!-- 通过javascript创建客户端脚本，并指定外部脚本文件——起始位置 -->
		<!-- JavaScripts -->
		<script src="JS/jquery-3.2.1.min.js"></script>
		<script src="JS/popper.min.js"></script>
		<script src="JS/bootstrap.min.js"></script>
		<script src="JS/main.js"></script>
		<script src="JS/js/plugins/pace.min.js"></script>
		<script type="text/javascript" src="JS/plugins/chart.js"></script>
		<script type="text/javascript" src="JS/jquery-2.1.1.min.js"></script>
		<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.0/js/bootstrap.min.js"></script>
		<script type="text/javascript">
			$(function() {
				var data = sessionStorage.getItem('key');
				$('#btn_exm').click(function() {
					$('#error_msg').html('');
				});
				$('#sequences').focus(function() {
					$('#error_msg').html('');
				});
				<!-- 此处是Home页面点击Reset按钮的作用——清空文本框中的内容——起始位置 -->
				$('#btn_reset').click(function() {
					$('#sequences').val('');
					$('#error_msg').html('');
				})
				<!-- 此处是Home页面点击Reset按钮的作用——清空文本框中的内容——结束位置 -->
				
				<!-- 此处是Home页面点击“here”的作用——将序列示例添加到文本框中——起始位置 -->
				$('#example').click(function() {
					$('#sequences').val(
					"\>example_1\r\n\CATTACAGATAGTTGTGTGCCACCATGTGGTTGCTGGGAAT\r\n\>example_2\r\n\GCCTGGATCTGAGCTGAGCCCTCCTGCCCGTCCTCCTTCTC\r\n\>example_3\r\n\AGGCCCCCAAATGCCTGCCGCAGAAACACTAACAAAAAACG\r\n\>example_4\r\n\AGGAGAATGAGCCCCGGGATCTTTCCTTTAATCTACAATAA\r\n\
					");
				});
				<!-- 此处是Home页面点击“here”的作用——将序列示例添加到文本框中——结束位置 -->
			})
		<!-- 通过javascript创建客户端脚本，并指定外部脚本文件——结束位置 -->
		</script>
	<!-- 主体——结束位置 -->
	</body>
<!-- html——结束位置 -->
</html>