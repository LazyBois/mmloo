<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="nwsuaf.mmloo.entity.User"%>
<!DOCTYPE html>
<html>
<head>
<title>Big shope A Ecommerce Category Flat Bootstarp Resposive
	Website Template | Register :: w3layouts</title>
    <link href="../mmloo/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="../mmloo/font-awesome-4.5.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="../mmloo/css/bootstrapValidator.min.css" rel="stylesheet">
    <link href="../mmloo/css/register.css" rel="stylesheet">
<!--theme-style-->
    <link href="../mmloo/css/style.css" rel="stylesheet" type="text/css" media="all" />
<!--//theme-style-->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <script type="application/x-javascript">
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 

    </script>
<!--fonts-->
    <link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800'
	rel='stylesheet' type='text/css'>
<!--//fonts-->
    <script src="../mmloo/js/jquery.min.js"></script>
    <script type="text/javascript" src="../mmloo/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../mmloo/js/bootstrapValidator.js"></script>
<style>
	
</style>
</head>
<body>
	<!--header-->
	 <jsp:include page="header.jsp" flush="true"></jsp:include>
	<!---->
	<div class="container">
		<div class="register">
			<form>
				<div class="  register-top-grid">
					<h3>用户注册</h3>
					
					<div class="mation" >						 
						 <div class="registerBlk">
						  	<span class="registerSpan"><label style="color:red">*</label>用户名</span>
						 	<input id="uname" style="display:block;float:left;width:60%;background:white" type="text" placeholder="用户名字母和数字组成，至少6位">
						 	<div class="registerIcon">
								<i class="fa fa-check fa-1x" style="color:green;"></i>
							</div>
						 </div>
						 <div class="registerBlk">
						  	<span class="registerSpan"><label style="color:red">*</label>用户邮箱</span>
						 	<input id="email" style="display:block;float:left;width:60%;" type="text" placeholder="输入用户邮箱">
						 	<div class="registerIcon">
								<i class="fa fa-check fa-1x" style="color:green;"></i>
							</div>
						 </div>
						 <div class="registerBlk">
						  	<span class="registerSpan"><label style="color:red">*</label>密码</span>
						 	<input id="password" style="display:block;float:left;width:60%;" type="password" placeholder="输入密码，至少6位">
						 	<div class="registerIcon">
								<i class="fa fa-check fa-1x" style="color:green;"></i>
							</div>
						 </div>
						 <br>
						 <div class="registerBlk">
						  	<span class="registerSpan"><label style="color:red">*</label>确认密码</span>
						 	<input id="cormPassword" style="display:block;float:left;width:60%;" type="password" placeholder="确认密码">
						 	<div class="registerIcon">
								<i class="fa fa-check fa-1x" style="color:green;"></i>
							</div>
						</div>
					</div>
					<div id="code" style="display:block;widht:100%;margin-top:185px">
						<div style="display:block;float:left;width:62%;">
							<span>
								验证码<label>&nbsp;&nbsp;:&nbsp;&nbsp;</label>
								<img id="getCode" style="cursor:pointer;margin-top:-10px" src="vcode.do" />
								<input type="text" id="gcode" style="width:220px;margin-left:20px" maxlength="4"/>
							</span>
						</div>
						<div class="registCode">
							<i class="fa fa-close fa-1x" style="color:red">验证码必须是四位</i>
						</div>
					</div>
			</div>
			</form>
			<div class="clearfix"></div>
			<div class="register-but">
				<form>
					<input type="button" class="loginBtn" style="margin-left:150px;" value="提交">
					<input type="button" class="resetBtn" style="" value="重置">
					<div class="clearfix"></div>
				</form>
			</div>
			<script type="text/javascript" src="../mmloo/js/user/register.js"></script>
<script type="text/javascript">

</script>
	
</body>
</html>