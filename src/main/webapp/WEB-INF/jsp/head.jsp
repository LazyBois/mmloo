<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="nwsuaf.mmloo.entity.User"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>My JSP 'header.jsp' starting page</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="../mmloo/css1/header.css" type="text/css">

  </head>
  <style>
   .top-a a{
  		color:white;
  		text-decoration: none; 
  		cursor: pointer;
  	}
  	.top-a a:hover{
  		color:black;
  	}
  	.container{
  		width:62%;
  	}
  </style>
  <body>
   <div class="header">
		<div class="top-header">
			<div class="container">
				<div class="top-header-left">
					<ul class="support">
						<li><a href="javascript:(0)"><label> </label></a></li>
						<li><a href="javascript:(0)">24x7 live<span class="live">
									support</span></a></li>
					</ul>
					<ul class="support">
						<li class="van"><a href="#"><label> </label></a></li>
						<li><a href="javascript:(0)">Free shipping <span class="live">on
									order over 500</span></a></li>
					</ul>
					<div class="clearfix"></div>
				</div>
				<div class="top-header-right">
					<div class="top-a" style="float:left;margin-right:20px;display:block">
						<a href="myOrderList.do">我的订单</a>
					</div>
					<div class="top-a" style="float:left; margin-right:100px;display:block">
						<a>我的店铺</a>
					</div>
				</div>
			</div>
		</div>
		<div class="bottom-header">
			<div class="container">
				<div class="header-bottom-left">
					<div class="logo">
						<a href="index.do"><img src="images/logo.png" alt=" "></a>
					</div>
					<form action="search.do" method="get">
						<div class="search">
							<input type="text"  name="key"> 
							<input type="submit" style="float:right;" value="搜索">
						</div>
					</form>
					<script>
					</script>
					<div class="clearfix"></div>
				</div>
				<div class="header-bottom-right">
					<div class="account" style="display:none">
						<a href="loadLogin.do"><span> </span>登录</a>
					</div>
					<ul class="login" style="margin-left: 20%; display: block;">
						<li><a class="login-info" href="loadLogin.do"><span></span>登录</a></li> 
						<span>|</span>
						<li><a class="login-out" href="registe.do">注册</a></li>
					</ul>
					<ul class="logined" style="margin-left: 20%; display: none;">
						<li><a class="userLogo" href="user/personInfo.do"><span></span></a></li>
						<li><a class="uname" href="user/personInfo.do"></a></li> 
						<span>|</span>
						<li><a class="login-out" href="user/loginOut.do">退出</a></li>
					</ul>
					<div class="cart">
						<a href="user/showCart.do" style="font-size:10px;width:100px;float:right;margin-left:20px;"><span> </span>我的购物车</a>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	</body>
	<script type="text/javascript">
	$(function(){
			isLogin();
		});
		function isLogin(){
			if('${user.uname}' == 'null' || '${user.uname}' == ''){
				$('.login').css('display', 'block');
				$('.logined').css('display', 'none');
			}
			else{
				$('.login').css('display', 'none');
				$('.logined').css('display', 'block');
				$('.logined').find('.uname').text('${user.uname}');
			}
		}
	</script>
	</html>
