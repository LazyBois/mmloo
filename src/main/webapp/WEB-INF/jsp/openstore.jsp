<%@ page language="java" import="java.util.*" pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ page import="nwsuaf.mmloo.entity.Mistore"%>
<%@ page import="nwsuaf.mmloo.entity.Gshelves"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'openstore.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->



<title>Contact</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="../mmloo/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!--theme-style-->
<link href="../mmloo/css/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--fonts-->
<link href='http://fonts.useso.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
<!--//fonts-->
	<script src="../mmloo/js/jquery.min.js"></script>
	<!--<script src="js/jquery.easydropdown.js"></script>-->
	<!-- 引用控制层插件样式 -->
	<link rel="stylesheet" href="../mmloo/css/zyUpload.css" type="text/css">
	<script src="http://www.lanrenzhijia.com/ajaxjs/jquery.min.js"></script>
	<!-- 引用核心层插件 -->
	<script src="../mmloo/js/zyFile.js"></script>
	<!-- 引用控制层插件 -->
	<script src="../mmloo/js/zyUpload.js"></script>
	<!-- 引用初始化JS -->
	<script src="../mmloo/js/jq22.js"></script>

<!--script-->


  </head>
  
  <body> 
	<!--header-->
	<jsp:include page="header.jsp" flush="true"></jsp:include>
	<!---->
	<div class="container">

				<!---->
		 <div class="main"> 
         <div class="reservation_top">          
            	<div class=" contact_right">
					<br><br>
            		<h3 style="color: #F97E76;font-size: 30px;display: inline">申请开店</h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<!--<a onclick="isPicture()"><h5 style="display: inline;color: #F97E76">更改头像</h5></a> &nbsp;&nbsp;<a onclick="isMessage()"><h5 style="display: inline;color: #F97E76">基本信息</h5></a>-->

					<br><br>
					<!----------------------------------------------page one---------------------------------------------------->
            		<!--<div id="pictureBox" class="contact-form" style="background-color: #F7F7F7; border-top-style:dotted;border-bottom-style: dotted;border-color: #00A2D4">-->

						<!--<br><br>-->
						<!--&lt;!&ndash;-&#45;&#45;&#45;&#45;&#45;&#45;&#45;&#45;&#45;&#45;&#45;&#45;&#45;&#45;&#45;&#45;upload-&#45;&#45;&#45;&#45;&#45;&#45;&#45;&#45;&#45;&#45;&#45;&#45;&#45;&#45;&#45;&#45;&ndash;&gt;-->
						<!--<h4 style="text-align:center;">选择上传头像</h4>-->
						<!--<br>-->
						<!--<div id="demo" class="demo"></div>-->
						<!--<br><br>-->
                        <!--<input type="submit" value="保存修改" style="margin-right: 350px"/>-->
						<!--<br><br><br><br>-->

						<!--</div>-->

					<!----------------------------------------------page two---------------------------------------------------->


					<div id="messageBox" class="contact-form" style="background-color: #F7F7F7; border-top-style:dotted;border-bottom-style: dotted;border-color: #00A2D4">

						<br>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;基本信息:
						<br><br>
						<div >


							<br><br><br>
							<form method="post" action="doRegisteMistore.do" style="margin-right: 300px ;margin-top: -50px;margin-left: 100px">
								<h5>用户名：${user.uname}</h5>
								<input type="text" value="${user.uname}" name="uname" style="display:none" />
								<input type="text" value="审核中" name="state" style="display:none" />
								<h5 style="display: inline">*店铺名称：</h5>&nbsp;&nbsp;&nbsp;<input type="text" name="mname" class="textbox" placeholder="Name" style="display: inline"/>
								<br>

								<h5 style="display: inline">*店铺类型：</h5>&nbsp;&nbsp;&nbsp;<input type="text" name="mtype" class="textbox" placeholder="StoreType" style="display: inline"/>
								<br>

								<h5 style="display: inline">*所属公司：</h5>&nbsp;&nbsp;&nbsp;<input type="text" name="mcompany" class="textbox" placeholder="Company" style="display: inline"/>
								<br>

								<h5 style="display: inline">*品牌介绍：</h5>&nbsp;&nbsp;&nbsp;<input type="text" name="brandinfo" class="textbox" placeholder="Brand" style="display: inline"/>
								<br>

								<h5 style="display: inline">*所属行业：</h5>&nbsp;&nbsp;&nbsp;<input type="text" name="industry" class="textbox" placeholder="Industry" style="display: inline"/>
								<br>

								<h5 style="display: inline">*支付方式：</h5>&nbsp;&nbsp;&nbsp;<input type="text" name="payway" class="textbox" placeholder="PayMethod" style="display: inline"/>
								<br>

								<h5 style="display: inline">*配送方式：</h5>&nbsp;&nbsp;&nbsp;<input type="text" name="sendway" class="textbox" placeholder="dispach" style="display: inline"/>
								<br>								
								<br><br><br>

								<input type="submit" id="message" style="margin-right: 50px" value="立即申请"/>
								<br><br><br><br><br><br>


								<div class="clearfix"></div>
							</form>
						</div>
					</div>


					<!----------------------------------------------------------------------------------------------------------->


            	</div>
            </div>
           </div>
		   <div class="sub-cate">
				<div class=" top-nav rsidebar span_1_of_left">
					<h3 class="cate">用户信息</h3>

				</div>
				<!--------------------------------------侧面------------------------------------------>

			   <div class=" chain-grid menu-chain">
				   <a href="single.html"><img class="img-responsive chain" src="img/touxiang.jpg" alt=" " /></a>
				   <div class="grid-chain-bottom chain-watch">
					   <span class="actual dolor-left-grid"style="font-size: 20px">用户昵称：</span>

					   <span style="font-size: 18px">Amyfffgffd</span>

					   <br>
					   <span class="actual dolor-left-grid" style="font-size: 20px">用户等级：</span>
					   <span style="font-size: 18px">6级</span>

					   <br>
					   <span class="actual dolor-left-grid" style="font-size: 20px">个人简介：</span>
					   <span style="font-size: 18px">写点什么吧~~~~~~~~~~~</span>
				   </div>
			   </div>
	   		     	 <a class="view-all all-product" href="product.html">点此返回<span> </span></a>
			</div>
	     </div>
	<!--------------------------------------------------底部------------------------------------------------>
	<div class="footer">
		<div class="footer-top">
			<div class="container">
				<div class="latter">
					<h6>NEWS-LATTER</h6>
					<div class="sub-left-right">
						<form>
							<input type="text" value="Enter email here"onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Enter email here';}" />
							<input type="submit" value="SUBSCRIBE" />
						</form>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="latter-right">
					<p>FOLLOW US</p>
					<ul class="face-in-to">
						<li><a href="#"><span> </span></a></li>
						<li><a href="#"><span class="facebook-in"> </span></a></li>
						<div class="clearfix"> </div>
					</ul>
					<div class="clearfix"> </div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
		<div class="footer-bottom">
			<div class="container">
				<div class="footer-bottom-cate">
					<h6>
						购物指南
					</h6>
					<ul>
						<li>
							<a href="#">购物流程</a>
						</li>
						<li>
							<a href="#">会员介绍</a>
						</li>
						<li>
							<a href="#">生活旅行/团购</a>
						</li>
						<li>
							<a href="#">常见问题</a>
						</li>
						<li>
							<a href="#">大家电</a>
						</li>
						<li>
							<a href="#">联系客服</a>
						</li>

					</ul>
				</div>
				<div class="footer-bottom-cate bottom-grid-cat">
					<h6>
						֧支付方式
					</h6>
					<ul>
						<li>
							<a href="#">货到付款</a>
						</li>
						<li>
							<a href="#">在线支付</a>
						</li>
						<li>
							<a href="#">分期付款</a>
						</li>
						<li>
							<a href="#">邮政汇款</a>
						</li>
						<li>
							<a href="#">公司转账</a>
						</li>

					</ul>
				</div>
				<div class="footer-bottom-cate">
					<h6>
						配送方式
					</h6>
					<ul>
						<li>
							<a href="#">上门自提</a>
						</li>
						<li>
							<a href="#">211限时达</a>
						</li>
						<li>
							<a href="#">配送服务查询</a>
						</li>
						<li>
							<a href="#">配送费收取标准</a>
						</li>
						<li>
							<a href="#">海外配送</a>
						</li>

					</ul>
				</div>

				<div class="footer-bottom-cate">
					<h6>
						售后服务
					</h6>
					<ul>
						<li>
							<a href="#">售后政策</a>
						</li>
						<li>
							<a href="#">价格保护</a>
						</li>
						<li>
							<a href="#">退款说明</a>
						</li>
						<li>
							<a href="#">返修/退换货</a>
						</li>
						<li>
							<a href="#">取消订单</a>
						</li>

					</ul>
				</div>




				<div class="clearfix">
				</div>
			</div>
		</div>
	</div>
<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript'></script></div>

	<script type="text/javascript">

		function isSubmit() {
		   alert("提交成功！请等待审核^_^~~");

		}


		function isPicture() {
			//alert("修改头像");
			$("#pictureBox").css("display","");
			$("#messageBox").css("display","none");
		}

		function isMessage() {
			//alert("基本信息");
			$("#pictureBox").css("display","none");
			$("#messageBox").css("display","");
		}

	</script>



</body>
</html>
