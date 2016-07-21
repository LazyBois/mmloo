<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="nwsuaf.mmloo.entity.User"%>
<!DOCTYPE html>
<html>
<head>
<title>Big shope A Ecommerce Category Flat Bootstarp Resposive
	Website Template | Login :: w3layouts</title>
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
<style>
body {
	min-width: 1200px;
}
	.registerIcon{
		display:block;
		float:left;
		width:200px;
		height:20px;
		margin-left:15px;
	}
	.registerSpan{
		display:block;
		float:left;
		width:65px; 
		margin-right:20px;
		margin-top:15px
	}
	.registerBlk{
		display:block;
		width:600px;
		float:left;
	}
	.registCode{
		display:none;
		float:left;
		width:20%;
		margin-top:10px;
	}
</style>
<body>
	<!--header-->
	 <jsp:include page="header.jsp" flush="true"></jsp:include>
	<!---->
	<div class="container">
		<div class="account_grid" >
			<div class=" login-right" style="margin-left:200px; width:100%;">
				<h3>用户登录</h3>
				<div class="loginFailed" style="display:none;color:red">
					<span style="color:red"><i class="fa fa-close fa-1x"></i>登录失败，用户名或密码错误</span>
				</div>
				<form>
					<div class="registerBlk" style="display:block;widht:1000px;float:left;">
						  	<span class="registerSpan"><label style="color:red">*</label>用户名</span>
						 	<input id="uname" style="display:block;float:left;width:290px;background:white" type="text" placeholder="用户名字母和数字组成，至少6位">
						 	<div class="registerIcon" style="margin-top:10px">
								<i class="fa fa-check fa-1x"></i>
							</div>
					</div>
					<div class="registerBlk login-grid" style="display:block;widht:1000px;">
						  	<span class="registerSpan"><label style="color:red">*</label>密码</span>
						 	<input id="password" style="display:block;float:left;width:290px;background:white" type="password" placeholder="用户名字母和数字组成，至少6位">
						 	<div class="registerIcon">
								<i class="fa fa-check fa-1x"></i>
							</div>
					</div>
					<div id="code" style="display:block;widht:1000px;">
						<div style="display:block;float:left;width:400px;margin-right:20px">
							<span>
								验证码<label>&nbsp;&nbsp;:&nbsp;&nbsp;</label>
								<img id="getCode" style="cursor:pointer;margin-top:-10px" src="vcode.do" />
								<input type="text" id="gcode" style="width:160px;margin-left:20px" maxlength="4"/>							
							</span>
						</div>
						<div class="registCode" style="margin-top:10px;">
							<i class="fa fa-close fa-1x" style="color:red;">验证码不正确</i>
						</div>
					</div>
					<div style="display:block;float:left;width:100%;margin-top:20px">
						<input class="loginBtn" style="margin-top:-10px;margin-left:0px" type="button" value="Login">
						<a class="forgot" style="float:left;margin-left:-20px" href="forget.do">忘记密码，找回密码?</a> 
						<a class="forgot" style="float:left;margin-left:20px" href="registe.do">注册</a> 
					</div>
				</form>
<%
 String ip = request.getHeader("x-forwarded-for");
  if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip))
  {
    ip = request.getHeader("Proxy-Client-IP");
  }
  if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip))
  {
    ip = request.getHeader("WL-Proxy-Client-IP");
  }
  if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip))
  {
    ip = request.getRemoteAddr();
  }		
%>
<script>
	$(function() {
	/**
	 * 点击获取验证码
	 */
	var i = 0;
	$('#getCode').click(function() {
		$(this).attr('src', 'vcode.do?v=' + i++);
	});
	$('#gcode').blur(function(){
		if($(this).val().length != 4){
			$('#code').find('.registCode').css('display', 'block');
			return;
		}
	});
	$('#gcode').keyup(function(){
		if($(this).val().length == 4){
			$.ajax({
				type : "POST",
				url : 'checkVcode.do?vcode=' + $('#gcode').val(),
				data : {},
				datatype : "html",// "xml", "html", "script", "json",
									// "jsonp", "text".
				beforeSend : function() {
					
				},
				success : function(msg) {
					if (msg == "true") {
						$('#code').find('.registCode').css('display', 'block');
						$('#code').find('.registCode').find('i').removeClass('fa-close');
						$('#code').find('.registCode').find('i').addClass('fa-check');
						$('#code').find('.registCode').find('i').css('color', 'green');
						$('#code').find('.registCode').find('i').text('验证码正确');
					} else{
						$('#code').find('.registCode').css('display', 'block');
						$('#code').find('.registCode').find('i').removeClass('fa-check');
						$('#code').find('.registCode').find('i').addClass('fa-close');
						$('#code').find('.registCode').find('i').css('color', 'red');
						$('#code').find('.registCode').find('i').text('验证码不正确');
					}
				},
				// 调用出错执行的函数
				error : function() {
					// 请求出错处理
					alert('请求出错')
				}
			});
		}
	});
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
	$('#password').blur(function () {
		var reg = /^(\w){6,20}$/;//正则
		
		if(reg.test($(this).val())){
			$(this).parent().find('.registerIcon').css('display', 'none');
			$(this).parent().find('.registerIcon').find('i').removeClass('fa-close');
			$(this).parent().find('.registerIcon').find('i').addClass('fa-check');
		}else{
			$(this).parent().find('.registerIcon').css('display', 'block');
			$(this).parent().find('.registerIcon').find('i').removeClass('fa-check');
			$(this).parent().find('.registerIcon').find('i').addClass('fa-close');
			$(this).parent().find('.registerIcon').find('i').css('color', 'red');
			$(this).parent().find('.registerIcon').find('i').text('密码格式正确');
		}
	});
	/**
	 * 获取验证码
	 */
	$('.loginBtn').click(
		function() {
		var url = 'http://locahost';
		$.getJSON(url, function (data) {
			alert(data.Ip);//弹出本地ip
		});
				if($('#uname').val() == ''){
					$('#uname').parent().find('.registerIcon').css('display', 'block');
					$('#uname').parent().find('.registerIcon').find('i').removeClass('fa-check');
					$('#uname').parent().find('.registerIcon').find('i').addClass('fa-close');
					$('#uname').parent().find('.registerIcon').find('i').css('color', 'red');
					$('#uname').parent().find('.registerIcon').find('i').text('用户名不能为空')
				}
				if($('#password').val() == ''){
					$('#password').parent().find('.registerIcon').css('display', 'block');
					$('#password').parent().find('.registerIcon').find('i').removeClass('fa-check');
					$('#password').parent().find('.registerIcon').find('i').addClass('fa-close');
					$('#password').parent().find('.registerIcon').find('i').css('color', 'red');
					$('#password').parent().find('.registerIcon').find('i').text('密码不能为空')
				}
				if($('#gcode').val() == ''){
					$('#code').find('.registCode').css('display', 'block');
					$('#code').find('.registCode').find('i').removeClass('fa-check');
					$('#code').find('.registCode').find('i').addClass('fa-close');
					$('#code').find('.registCode').find('i').css('color', 'red');
					$('#code').find('.registCode').find('i').text('验证码不能为空');
				}
				if($('#uname').val() == '' || $('#password').val() == '' || $('#gcode').val() == '')
					return;
				if($('#uname').parent().find('.registerIcon').find('i').hasClass('fa-close'))
					return;
				if($('#password').parent().find('.registerIcon').find('i').hasClass('fa-close'))
					return;
				if($('#code').find('.registCode').find('i').hasClass('fa-close'))
					return;
					
				$.ajax({
					// 提交数据的类型 POST GET
					type : "POST",
					// 提交的网址
					url : 'doLogin.do?uname= ' + $('#uname').val()
							+ '&password=' + $('#password').val() + '&ip=<%=ip%>',
					// 提交的数据
					data : {},
					// 返回数据的格式
					datatype : "html",// "xml", "html", "script", "json",
										// "jsonp", "text".
					// 在请求之前调用的函数
					beforeSend : function() {
						
					},
					// 成功返回之后调用的函数
					success : function(msg) {
							if(msg == 'no'){											
								$('#uname').parent().find('.registerIcon').css('display', 'block');
								$('#uname').parent().find('.registerIcon').find('i').removeClass('fa-check');
								$('#uname').parent().find('.registerIcon').find('i').addClass('fa-close');
								$('#uname').parent().find('.registerIcon').find('i').css('color', 'red');
								$('#uname').parent().find('.registerIcon').find('i').text('用户名或密码错误')
							} else {
								window.location.href = msg;
							}
											
					},
					// 调用出错执行的函数
					error : function() {
						// 请求出错处理
						alert('error');
						$('#code').css('display', 'block');
					}
				});
			});
	});
</script>
			</div>
	
</body>
</html>