<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<style>
	body{
		min-width:1200px;
	}
</style>
<title>Big shope A Ecommerce Category Flat Bootstarp Resposive Website Template | Register :: w3layouts</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
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



</head>
<body> 
	<!--header-->
	<jsp:include page="header.jsp" flush="true"></jsp:include>
	<!---->
	<div class="container"> 
			     <form action="doForget.do">    
		<div class="register">
				 <div class="  register-top-grid">
					<h3>找回密码</h3>
					
					<div class="mation">
						<div class="registerBlk" style="width:500px">
						  	<span class="registerSpan" style="float:none;width:100%"><label style="color:red">*</label>请输入用户名</span>
				
						 	<input id="uname" name="uname" style="display:block;float:left;width:60%;background:white" type="text" placeholder="用户名字母和数字组成，至少6位">
						 	<div class="registerIcon">
								<i class="fa fa-check fa-1x"></i>
							</div>
					</div> 
					</div>
					
					 </div>
				
				<div class="clearfix"> </div>
				<div class="register-but">
				  
					   <input type="submit"  class="loginBtn" value="submit">
					   <div class="clearfix"> </div>
				   
				</div>
		   </div>
		         </form>
	</div>
	<!---->
	<script>
		$(function(){
			$('#uname').blur(function () {
				var reg = /^[a-zA-Z_]\w{3,11}[a-zA-Z\d_]$/;//正则
				if(!reg.test($(this).val())){
					$('#uname').parent().find('.registerIcon').css('display', 'block');
					$(this).parent().find('.registerIcon').find('i').removeClass('fa-check');
					$(this).parent().find('.registerIcon').find('i').addClass('fa-close');
					$(this).parent().find('.registerIcon').find('i').css('color', 'red');
					$(this).parent().find('.registerIcon').find('i').text('用户名格式不正确')
					return;
				}else{
					$('#uname').parent().find('.registerIcon').css('display', 'none');
					$(this).parent().find('.registerIcon').find('i').removeClass('fa-close');
					$(this).parent().find('.registerIcon').find('i').addClass('fa-check');
				}
			});
			$('.loginBtn').click(function(){
				if($('#uname').val() == ''){
					$('#uname').parent().find('.registerIcon').css('display', 'block');
					$('#uname').parent().find('.registerIcon').find('i').removeClass('fa-check');
					$('#uname').parent().find('.registerIcon').find('i').addClass('fa-close');
					$('#uname').parent().find('.registerIcon').find('i').css('color', 'red');
				}
			})
		})
	</script>
</body>
</html>