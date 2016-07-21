<%@ page language="java" import="java.util.*" pageEncoding="utf-8"
	contentType="text/html; charset=utf-8"%>
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
<title>Register</title>
<link href="../mmloo/css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<!--theme-style-->
<link href="../mmloo/css/style.css" rel="stylesheet" type="text/css"
	media="all" />
<!--//theme-style-->
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<script type="application/x-javascript">
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 

</script>
<!--fonts-->
<link
	href='http://fonts.useso.com/css?family=Open+Sans:400,300,600,700,800'
	rel='stylesheet' type='text/css'>
<!--//fonts-->
<link rel="stylesheet"
	href="font-awesome-4.5.0/css/font-awesome.min.css">
<script src="../mmloo/js/jquery.min.js"></script>
<script src="../mmloo/js/jquery.etalage.min.js"></script>
<script src="../mmloo/js/jquery.easydropdown.js"></script>

<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<script type="application/x-javascript">
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 

</script>
<!--fonts-->
<link
	href='http://fonts.useso.com/css?family=Open+Sans:400,300,600,700,800'
	rel='stylesheet' type='text/css'>
<!--//fonts-->


<link rel="stylesheet"
	href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" />
<script
	src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="http://nervgh.github.io/js/es5-shim.min.js"></script>
<script src="http://nervgh.github.io/js/es5-sham.min.js"></script>
<script src="http://code.jquery.com/jquery-1.8.3.min.js"></script>
<script src="http://code.angularjs.org/1.1.5/angular.min.js"></script>


<!--<script src="../bower_components/angular/angular.js"></script>-->
<script src="../mmloo/js/console-sham.js"></script>
<script src="../mmloo/js/angular-file-upload.min.js"></script>
<script src="../mmloo/js/controllers.js"></script>


<meta charset="UTF-8" />
<title>Krajee JQuery Plugins - &copy; Kartik</title>
<link href="../mmloo/css/bootstrap.min.css" rel="stylesheet">
<link href="../mmloo/css/fileinput.css" media="all" rel="stylesheet"
	type="text/css" />
<script src="../mmloo/js/jquery-2.0.3.min.js"></script>
<script src="../mmloo/js/fileinput.js" type="text/javascript"></script>
<script src="../mmloo/js/bootstrap.min.js" type="text/javascript"></script>

<style>
.my-drop-zone {
	border: dotted 3px lightgray;
}

.nv-file-over {
	border: dotted 3px red;
} /* Default class applied to drop zones on over */
.another-file-over-class {
	border: dotted 3px green;
}

html, body {
	height: 100%;
}
</style>




</head>
<body>
		<!--header-->
	<jsp:include page="header.jsp" flush="true"></jsp:include>
	<!---->
	<div class="container">

		<div id="page1" class="register" style="">
			<form>
				<div class="  register-top-grid">
					<h3>本店商品</h3>
					<div class="mation">


						<h3>这里放商品</h3>
						<ul id="flexiselDemo1">
							<c:forEach items="${gshelveList}" var="gsh" varStatus="at">
								<li><img src="${gsh.selfimage}" />
								<div class="grid-flex">
										<a href="#">${gsh.gid}</a>
										<p>${gsh.gprice}</p>
									</div></li>
							</c:forEach>
						</ul>
						<script type="text/javascript">
							$(window).load(function() {
								$("#flexiselDemo1").flexisel({
									visibleItems : 5,
									animationSpeed : 1000,
									autoPlay : true,
									autoPlaySpeed : 3000,
									pauseOnHover : true,
									enableResponsiveBreakpoints : true,
									responsiveBreakpoints : {
										portrait : {
											changePoint : 480,
											visibleItems : 1
										},
										landscape : {
											changePoint : 640,
											visibleItems : 2
										},
										tablet : {
											changePoint : 768,
											visibleItems : 3
										}
									}
								});

							});
						</script>
						<script type="text/javascript" src="js/jquery.flexisel.js"></script>

					</div>


				</div>
				<div class="  register-bottom-grid">
					<h3>已上架商品2</h3>
					<div class="mation">
						<c:forEach items="${gshelveList}" var="gsh" varStatus="at">
							<div class="product-grid">
								<div class="content_box">
									<a href="single.html">
										<div class="left-grid-view grid-view-left">
											<img src="${gsh.selfimage}"
												class="img-responsive watch-right" alt="" />
										</div>
									</a>
								</div>
								<h4>
									<a href="#">${gsh.gname}</a>
									<div style="float: right;margin-right: 20px">
										<a href="#" style="cursor: pointer" title="重新编辑"><i
											class="fa fa-wrench" style="color: #F97E76"></i></a> &nbsp; <a
											href="#" style="cursor: pointer" title="删除商品"><i
											class="fa fa-trash-o" style="color: #F97E76"></i></a>

									</div>


								</h4>
								<p>${gsh.date}</p>
								${gsh.gprice}
							</div>
						</c:forEach>

					</div>
				</div>
			</form>


		</div>


		<div id="page2" class="register" style="display: none">

			<div class="row">

				<!------------------------------图片上传------------------------------->
				<div class="container kv-main"
					style="width: 80%;float: left;margin-left: 30px">

					<br>
					<form enctype="multipart/form-data">

						<div class="form-group">
							<input id="file-1" type="file" multiple class="file"
								data-overwrite-initial="false" data-min-file-count="2">
						</div>

					</form>
				</div>
				<!------------------------------图片上传------------------------------->
				<div class="contact-form"
					style="width: 80%;float: left;margin-left: 40px">
					<form method="post" action="contact-post.html">
						<input type="text" class="textbox" value="商品名称"
							onfocus="this.value = '';"
							onblur="if (this.value == '') {this.value = 'Name';}"> <input
							type="text" class="textbox" value="商品价格"
							onfocus="this.value = '';"
							onblur="if (this.value == '') {this.value = 'Price';}">
						<textarea style="height: 200px" value="添加描述"
							onfocus="this.value= '';"
							onblur="if (this.value == '') {this.value = 'describe in detail';}">添加描述</textarea>
						<input type="submit" value="Send" onclick="isSubmit()">
						<div class="clearfix"></div>
					</form>

				</div>

			</div>

		</div>



		<!-------------------------------------------侧面导航----------------------------------------------->
		<div class="sub-cate" style="">

			<div class=" top-nav rsidebar span_1_of_left">
				<h3 class="cate">店铺信息</h3>

			</div>
			<!-------------------------------------------侧面导航----------------------------------------------->

			<div class=" chain-grid menu-chain">
				<a href="single.html"><img class="img-responsive chain"
					src="img/touxiang.jpg" alt=" " /></a>
				<div class="grid-chain-bottom chain-watch">
					<span class="actual dolor-left-grid" style="font-size: 20px">店铺名称：</span>

					<span style="font-size: 18px">${mistore.mname }</span> <br> <span
						class="actual dolor-left-grid" style="font-size: 20px">店铺状态：</span>
					<span style="font-size: 18px">${mistore.state }</span> <br> <span
						class="actual dolor-left-grid" style="font-size: 20px">店铺积分：</span>
					<span style="font-size: 18px">${mistore.point }</span>
				</div>
			</div>

			<a id="lable1" onclick="isUpload()" style="cursor: pointer"
				class="view-all all-product">上传商品<span> </span></a> <a id="lable2"
				onclick="isReturn()" style="cursor: pointer;display: none"
				class="view-all all-product">返回我的商店<span> </span></a>
		</div>
	</div>
	<!----------------------------------------------底部--------------------------------------------------------->
	<div class="footer">
		<div class="footer-top">
			<div class="container">
				<div class="latter">
					<h6>NEWS-LATTER</h6>
					<div class="sub-left-right">
						<form>
							<input type="text" value="Enter email here"
								onfocus="this.value = '';"
								onblur="if (this.value == '') {this.value = 'Enter email here';}" />
							<input type="submit" value="SUBSCRIBE" />
						</form>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="latter-right">
					<p>FOLLOW US</p>
					<ul class="face-in-to">
						<li><a href="#"><span> </span></a></li>
						<li><a href="#"><span class="facebook-in"> </span></a></li>
						<div class="clearfix"></div>
					</ul>
					<div class="clearfix"></div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="footer-bottom">
			<div class="container">
				<div class="footer-bottom-cate">
					<h6>购物指南</h6>
					<ul>
						<li><a href="#">购物流程</a></li>
						<li><a href="#">会员介绍</a></li>
						<li><a href="#">生活旅行/团购</a></li>
						<li><a href="#">常见问题</a></li>
						<li><a href="#">大家电</a></li>
						<li><a href="#">联系客服</a></li>

					</ul>
				</div>
				<div class="footer-bottom-cate bottom-grid-cat">
					<h6>?支付方式</h6>
					<ul>
						<li><a href="#">货到付款</a></li>
						<li><a href="#">在线支付</a></li>
						<li><a href="#">分期付款</a></li>
						<li><a href="#">邮政汇款</a></li>
						<li><a href="#">公司转账</a></li>

					</ul>
				</div>
				<div class="footer-bottom-cate">
					<h6>配送方式</h6>
					<ul>
						<li><a href="#">上门自提</a></li>
						<li><a href="#">211限时达</a></li>
						<li><a href="#">配送服务查询</a></li>
						<li><a href="#">配送费收取标准</a></li>
						<li><a href="#">海外配送</a></li>

					</ul>
				</div>

				<div class="footer-bottom-cate">
					<h6>售后服务</h6>
					<ul>
						<li><a href="#">售后政策</a></li>
						<li><a href="#">价格保护</a></li>
						<li><a href="#">退款说明</a></li>
						<li><a href="#">返修/退换货</a></li>
						<li><a href="#">取消订单</a></li>

					</ul>
				</div>




				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<div style="display:none">
		<script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540'
			language='JavaScript' charset='gb2312'></script>
	</div>
	<script>
		$("#file-1").fileinput({
			uploadUrl : '#', // you must set a valid URL here else you will get an error
			allowedFileExtensions : [ 'jpg', 'png', 'gif' ],
			overwriteInitial : false,
			maxFileSize : 1000,
			maxFilesNum : 10,
			//allowedFileTypes: ['image', 'video', 'flash'],
			slugCallback : function(filename) {
				return filename.replace('(', '_').replace(']', '_');
			}
		});

		function isSubmit() {

			alert("上传商品成功 ^_^~");
		}

		function isUpload() {

			$("#page1").css("display", "none");
			$("#page2").css("display", "");
			$("#lable1").css("display", "none");
			$("#lable2").css("display", "");
		}

		function isReturn() {

			$("#page1").css("display", "");
			$("#page2").css("display", "none");
			$("#lable1").css("display", "");
			$("#lable2").css("display", "none");
		}
	</script>
</body>
</html>
