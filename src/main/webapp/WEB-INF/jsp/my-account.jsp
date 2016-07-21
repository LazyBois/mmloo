<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath %>">
<title>Register</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="../mmloo/css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<!--theme-style-->
<link href="../mmloo/css1/style.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" type="text/css" href="../mmloo/css/normalize.css" />
<link rel="stylesheet" type="text/css" href="../mmloo/css/component.css" />
<link rel="stylesheet" type="text/css" href="../mmloo/css/content.css" />
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
<script src="../mmloo/js/jquery.min.js"></script>
<script src="../mmloo/js/jquery.etalage.min.js"></script>
<script src="../mmloo/js/jquery.easydropdown.js"></script>
<script src="../mmloo/js/modernizr.custom.js"></script>
<script src="../mmloo/js/uiMorphingButton_fixed.js"></script>
<script src="../mmloo/js/classie.js"></script>

</head>
<body>
	<!--header-->
	<jsp:include page="header.jsp" flush="true"></jsp:include>
	<%
		String[] arr = {"active", "success", "warning", "danger"};
	%>
	<!----------------------------------------------------------------------------------------------------->
	<div class="container">

		<div class="register">

			<div  class="register-bottom-grid" style="">
				<a style="cursor: pointer" disabled="disabled" >
					<h3 style="display: inline">我的余额</h3></a>


				<br><br>

				<div class="navbar-default"style="border:1px;border-top-style:solid; border-color: rgb(208,208,208);background-color:transparent">


					&nbsp;&nbsp;&nbsp;&nbsp;


					<form>

						<table class="to-void table" style="text-align: left;width: 100%;" cellpadding="10px" cellspacing="10px">


							<thead>
							<tr>
								<th>余额日期</th>
								<th>支出</th>
								<th>充值</th>
								<th>详细说明</th>
							</tr>
							</thead>
							<c:forEach items="${balance }" var="ba" varStatus="at">
								<c:set var="index" scope="request" value="${at.index}" />
<%
	int p = Integer.parseInt(request.getAttribute("index")
				.toString()) % 4;
%>
								<tr class="<%=arr[p]%>">
								<td class="td-1" >${ba.date }</td>
								<td class="td-2">${ba.removes }</td>
								<td class="td-3">${ba.put }</td>
								<td class="td-4">${ba.describes }</td>
								</tr>
							</c:forEach>
						</table>

					</form>


					<br><br>
				</div>

				<div class="clearfix" style="background-color: transparent;border:1px;border-bottom-style:solid; border-color: rgb(208,208,208);">					
				</div>

			</div>

<!-----------------------------------------优惠券-------------------------------------------->

			<br><br>
			<div class="register-bottom-grid" >

					<a style="cursor: pointer">
					<h3 style="display: inline" disabled="disabled">我的积分</h3>
				</a>

				<div class="navbar-default"style=" border:1px;border-top-style:solid; border-color: rgb(208,208,208);background-color:transparent;">


					&nbsp;&nbsp;&nbsp;&nbsp;


					<form>

						<table class="to-void table" style="text-align: left;width: 100%;" cellpadding="10px" cellspacing="10px">


							<thead>
							<tr>
								<th>日期</th>
								<th>收入支出</th>
								<th>详细说明</th>
							</tr>
							</thead>

							
							<c:forEach items="${point }" var="item" varStatus="at">
								<c:set var="index" scope="request" value="${at.index}" />
<%
	int p = Integer.parseInt(request.getAttribute("index")
				.toString()) % 4;
%>
								<tr class="<%=arr[p]%>">
								<td class="td-1" >${item.ptime }</td>
								<td class="td-2">${item.pud }</td>
								<td class="td-3">${item.pcomment }</td>

								</tr>
							</c:forEach>
						</table>
					</form>
					<br><br>
				</div>


				<div class="clearfix" style="background-color: transparent;border:1px;border-bottom-style:solid; border-color: rgb(208,208,208);">
				</div>

			</div>

				<div class="register-but">
				   <h3 style="font-size: 30px;float: right" >我的余额：<p style="display: inline;color: #0D3349">${ user.balance }</p>&nbsp;&nbsp;
					   <div class="mockup-content" style="display: inline;font-size: 15px">
						   <div class="morph-button morph-button-modal morph-button-modal-2 morph-button-fixed">
							   <button type="button"style="margin-top: -15px;float: right;font-size: 20px">点我充值</button>
							   <div class="morph-content">
								   <div>
									   <div class="content-style-form content-style-form-1">
										   <span class="icon icon-close">Close the dialog</span>
										   <h2>充值</h2>
										   <form action="user/insertBalance.do" method="get">
											   <p><label>金额</label><input type="text"  name="put"/></p>	
											   <input type="text" value="充值" name="method" style="display:none">										  
											   <p><input style="font-size: 15px" type="submit" value="充值"></p>
										   </form>
									   </div>
								   </div>
							   </div>
						   </div><!-- morph-button -->
					   </div>
				   </h3>
				</div>
		   </div>


		   <div class="sub-cate">
				<div class=" top-nav rsidebar span_1_of_left">
					<h3 class="cate">用户信息</h3>

					</div>
				<!-------------------------------------------侧面----------------------------------------------->

					<div class=" chain-grid menu-chain">
	   		     		<a href="single.html"><img class="img-responsive chain" src="img/touxiang.jpg" alt=" " /></a>
	   		     		<div class="grid-chain-bottom chain-watch">
		   		     		<span class="actual dolor-left-grid"style="font-size: 20px">用户昵称：</span>

		   		     		<span style="font-size: 18px">${user.uname}</span>

							<br>
							<span class="actual dolor-left-grid" style="font-size: 20px">用户等级：</span>
							<span style="font-size: 18px">6级</span>

							<br>
							<span class="actual dolor-left-grid" style="font-size: 20px">个人简介：</span>
							<span style="font-size: 18px">写点什么吧~~~~~~~~~~~</span>
	   		     		</div>
	   		     	</div>
	   		     	 <a class="view-all all-product" href="product.html">点此编辑<span> </span></a>
				</div>
	</div>




	<!------------------------------------------登录注册 测试------------------------------------------------>


	<script src="js/classie.js"></script>
	<script src="js/uiMorphingButton_fixed.js"></script>

	<script>
		(function() {
			var docElem = window.document.documentElement, didScroll, scrollPosition;

			// trick to prevent scrolling when opening/closing button
			function noScrollFn() {
				window.scrollTo(scrollPosition ? scrollPosition.x : 0,
						scrollPosition ? scrollPosition.y : 0);
			}

			function noScroll() {
				window.removeEventListener('scroll', scrollHandler);
				window.addEventListener('scroll', noScrollFn);
			}

			function scrollFn() {
				window.addEventListener('scroll', scrollHandler);
			}

			function canScroll() {
				window.removeEventListener('scroll', noScrollFn);
				scrollFn();
			}

			function scrollHandler() {
				if (!didScroll) {
					didScroll = true;
					setTimeout(function() {
						scrollPage();
					}, 60);
				}
			}
			;

			function scrollPage() {
				scrollPosition = {
					x : window.pageXOffset || docElem.scrollLeft,
					y : window.pageYOffset || docElem.scrollTop
				};
				didScroll = false;
			}
			;

			scrollFn();

			[].slice.call(document.querySelectorAll('.morph-button')).forEach(
					function(bttn) {
						new UIMorphingButton(bttn, {
							closeEl : '.icon-close',
							onBeforeOpen : function() {
								// don't allow to scroll
								noScroll();
							},
							onAfterOpen : function() {
								// can scroll again
								canScroll();
							},
							onBeforeClose : function() {
								// don't allow to scroll
								noScroll();
							},
							onAfterClose : function() {
								// can scroll again
								canScroll();
							}
						});
					});

			// for demo purposes only
			[].slice.call(document.querySelectorAll('form button')).forEach(
					function(bttn) {
						bttn.addEventListener('click', function(ev) {
							ev.preventDefault();
						});
					});
		})();
	</script>


	<!------------------------------------�ײ� 底部----------------------------------------------------->
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
					<h6>购物指南</h6>
					<ul>
						<li><a href="#">购物流程</a></li>
						<li><a href="#">会员介绍</a></li>
						<li><a href="#">生活旅行/团购</a></li>
						<li ><a href="#">常见问题</a></li>
						<li ><a href="#">大家电</a></li>
						<li><a href="#">联系客服</a></li>

					</ul>
				</div>
				<div class="footer-bottom-cate bottom-grid-cat">
					<h6>֧支付方式</h6>
					<ul>
						<li><a href="#">货到付款</a></li>
						<li><a href="#">在线支付</a></li>
						<li><a href="#">分期付款</a></li>
						<li ><a href="#">邮局汇款</a></li>
						<li ><a href="#">公司转账</a></li>
					</ul>
				</div>
				<div class="footer-bottom-cate">
					<h6>配送方式</h6>
					<ul>
						<li><a href="#">上门自提</a></li>
						<li><a href="#">211限时达</a></li>
						<li><a href="#">配送服务查询</a></li>
						<li ><a href="#">配送费收取标准</a></li>
						<li ><a href="#">海外配送</a></li>
					</ul>
				</div>
				<div class="footer-bottom-cate">
					<h6>售后服务</h6>
					<ul>
						<li><a href="#">售后政策</a></li>
						<li><a href="#">价格保护</a></li>
						<li><a href="#">退款说明</a></li>
						<li ><a href="#">返修/退换货</a></li>
						<li ><a href="#">取消订单</a></li>
					</ul>
				</div>

				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>






</body>
</html>