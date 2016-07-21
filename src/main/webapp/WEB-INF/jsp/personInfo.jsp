<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="nwsuaf.mmloo.entity.User"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Contact</title>
    <base href="<%=basePath%>">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<link href="../mmloo/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<!--theme-style-->
	<link href="../mmloo/css/style.css" rel="stylesheet" type="text/css" media="all" />	
	<link href="../mmloo/css/user/address.css" rel="stylesheet" type="text/css" media="all" />
	<link href="../mmloo/css/user/submitCart.css" rel="stylesheet">
	<!--//theme-style-->

	<script type="application/x-javascript"> 
		addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
	</script>
	<!--fonts-->
	<link href='http://fonts.useso.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
	<link href="../mmloo/font-awesome-4.5.0/css/font-awesome.min.css" rel="stylesheet">
	<!--//fonts-->
	<script src="../mmloo/js/jquery-2.1.1.min.js"></script>
	<script src="../mmloo/js/bootstrap.min.js"></script>
	<script src="../mmloo/js/user/personInfo.js"></script>


	<!-- 引用控制层插件样式 -->
	<link rel="stylesheet" href="../mmloo/css/zyUpload.css" type="text/css">
	<!-- 引用核心层插件 -->
	<script src="../mmloo/js/zyFile.js"></script>
	<!-- 引用控制层插件 -->
	<script src="../mmloo/js/zyUpload.js"></script>
	<!-- 引用初始化JS -->
	<script src="../mmloo/js/jq22.js"></script>
	 <script src="../mmloo/js/submitCart.js"></script>
    <script src="../mmloo/js/Popt.js"></script>
    <script src="../mmloo/js/cityJson.js"></script>
    <script src="../mmloo/js/citySet.js"></script>
    <script src="../mmloo/js/bootstrapValidator.js"></script>
    

<!--script-->
</head>
<script type="text/javascript">
	function login(){
		if('${user.uname}' == '' || '${user.uname}' == 'null'){
			//alert('你还没有登录')
			window.location.href = 'loadLogin.do';
		}
	}
	login();
</script>
<style>
	.personInfo:hover{
		color: #1DBAA5;
	}
	.personInfo{
		display: inline;
		color: #F97E76;
		font-size:18px;
	}
	.curr{
		color:#1DBAA5;
	}
	.setPasswordBox input[type="password"] {
    border: 1px solid #DDDBDB;
    outline-color: #fb4d01;
    width: 96%;
    font-size: 0.9em;
    padding: 10px;
}
</style>
<body> 
	<!--header-->
	<jsp:include page="header.jsp" flush="true"></jsp:include>
	<!---->
	<a data-toggle="modal" class="loadAddrModal"  data-url="addrForm.html" data-target="#addrModal" style="cursor:pointer;display: none"></a>
	<div id="addrModal" class="modal fade bs-example-modal-sm personInfo" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
    	<span>编辑地址</span>
	</div>
	<div class="container">
		<!---->
		<div class="main">
			<div class="reservation_top">
				<div class=" contact_right">
					<br> <br>
					<h3 style="color: #F97E76;font-size: 30px;display: inline">编辑个人信息</h3>
					<a class="personInfo curr" onclick="isMessage(this)" style="cursor:pointer;text-decoration: none; margin-left:20px">个人信息 </a> 
					<a class="personInfo" style="cursor:pointer;text-decoration: none;margin-left:10px" onclick="isPicture(this)"> 更改头像 </a> 
					<a class="personInfo" style="cursor:pointer;text-decoration: none;margin-left:10px"onclick="isAddress(this)"> 我的收货地址 </a> 
					<a class="personInfo" style="cursor:pointer;text-decoration: none;margin-left:10px"onclick="isSetPassword(this)"> 修改登录密码 </a>
					<br> <br>
<!----------------------------------------------------------------------------pictureBox--------------------------------------------------------------------->
					<div id="pictureBox" class="contact-form"
						style="background-color: #F7F7F7;display:none; border-top-style:dotted;border-bottom-style: dotted;border-color: #00A2D4">
						<br> <br>
						<!-------------------upload------------------->
						<h4 style="text-align:center;">选择上传头像</h4>
						<br>
						<div id="demo" class="demo"></div>
						<br> <br> <input type="submit" value="保存修改"
							style="margin-right: 350px" /> <br> <br> <br> <br>
					</div>
<!----------------------------------------------------------------------------addressBox--------------------------------------------------------------------->
					<div id="addressBox" class="contact-form"
						style="background-color: #F7F7F7; border-top-style:dotted;border-bottom-style: dotted;border-color: #00A2D4;display:none">

						<br> <br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<h5 class="address-title">我的收货地址：</h5>
						(您已创建2个收货地址，最多可创建5个)
						<div class="addressList">
							
						</div>
							<br> <br> <br> <br> <br> <input
								type="submit" id="add-address" data-toggle="modal" data-target="#addrModal"
								style="float:left;margin-left: 30px;margin-top: 20px;margin-bottom: 40px;"
								value="新增地址" onclick="initModal()"/>
							<div class="clearfix"></div>
					</div>
<!----------------------------------------------------------------------------messageBox--------------------------------------------------------------------->
					<div id="messageBox" class="contact-form"
						style="background-color: #F7F7F7; border-top-style:dotted;border-bottom-style: dotted;border-color: #00A2D4;display:block">
						<br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;个人信息: <br>
						<br>
						<div>
							<br>
							<br>
							<br>
							<form id="infoForm" style="margin-right: 300px ;margin-top: -50px;margin-left: 100px">
								<h5 id="uname">用户名：${user.uname}</h5>
								<h5 style="display: inline">昵称：</h5>
								&nbsp;&nbsp;&nbsp;
								<input type="text" name="nicknam" class="textbox" placeholder="昵称" style="display: inline" value="${user.nickname}"/> <br>
								<h5 style="display: inline">性别：</h5>
								&nbsp;&nbsp;&nbsp;
								<input type="radio" name="se" style="display: inline" value="man"/>男&nbsp;&nbsp;&nbsp; 
								<input type="radio" name="se" style="display: inline" value="male"/>女&nbsp;&nbsp;&nbsp;
								<input type="radio" name="se" style="display: inline" value="secret"/>保密 <br>
								<br>
								<br>
								</script>     
								<h5 style="display: inline;margin-left:6px;">生日：</h5>
								<select id="birthdayYear">
									<option value="0" disabled selected="selected">请选择</option>
									<option value="2016">2016</option>
									<option value="2015">2015</option>
									<option value="2014">2014</option>
									<option value="2013">2013</option>
									<option value="2012">2012</option>
									<option value="2011">2011</option>
									<option value="2010">2010</option>
									<option value="00后">00后</option>

									<option value="1999">1999</option>
									<option value="1998">1998</option>
									<option value="1997">1997</option>
									<option value="1996">1996</option>
									<option value="1995">1995</option>
									<option value="1994">1994</option>
									<option value="1993">1993</option>
									<option value="1992">1992</option>
									<option value="1991">1991</option>
									<option value="1990">1990</option>
									<option value="90后">90后</option>


									<option value="1989">1989</option>
									<option value="1988">1988</option>
									<option value="1987">1987</option>
									<option value="1986">1986</option>
									<option value="1985">1985</option>
									<option value="1984">1984</option>
									<option value="1983">1983</option>
									<option value="1982">1982</option>
									<option value="1981">1981</option>
									<option value="1980">1980</option>
									<option value="80后">80后</option>


									<option value="1979">1979</option>
									<option value="1978">1978</option>
									<option value="1977">1977</option>
									<option value="1976">1976</option>
									<option value="1975">1975</option>
									<option value="1974">1974</option>
									<option value="1973">1973</option>
									<option value="1972">1972</option>
									<option value="1971">1971</option>
									<option value="1970">1970</option>
									<option value="70后">70后</option>



									<option value="1969">1969</option>
									<option value="1968">1968</option>
									<option value="1967">1967</option>
									<option value="1966">1966</option>
									<option value="1965">1965</option>
									<option value="1964">1964</option>
									<option value="1963">1963</option>
									<option value="1962">1962</option>
									<option value="1961">1961</option>
									<option value="1960">1960</option>
									<option value="60后">60后</option>


									<option value="1959">1959</option>
									<option value="1958">1958</option>
									<option value="1957">1957</option>
									<option value="1956">1956</option>
									<option value="1955">1955</option>
									<option value="1954">1954</option>
									<option value="1953">1953</option>
									<option value="1952">1952</option>
									<option value="1951">1951</option>
									<option value="1950">1950</option>
									<option value="50后">50后</option>


									<option value="1949">1949</option>
									<option value="1948">1948</option>
									<option value="1947">1947</option>
									<option value="1946">1946</option>
									<option value="1945">1945</option>
									<option value="1944">1944</option>
									<option value="1943">1943</option>
									<option value="1942">1942</option>
									<option value="1941">1941</option>
									<option value="1940">1940</option>
									<option value="40后">40后</option>


									<option value="1939">1939</option>
									<option value="1938">1938</option>
									<option value="1937">1937</option>
									<option value="1936">1936</option>
									<option value="1935">1935</option>
									<option value="1934">1934</option>
									<option value="1933">1933</option>
									<option value="1932">1932</option>
									<option value="1931">1931</option>
									<option value="1930">1930</option>
									<option value="30后">30后</option>
								</select>
								<h5 style="display: inline">&nbsp;年&nbsp;</h5>

								<select id="birthdayMonth">

									<option value="0" disabled selected="selected">请选择</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option>
									<option value="11">11</option>
									<option value="12">12</option>

								</select>

								<h5 style="display: inline">&nbsp;月&nbsp;</h5>

								<select id="birthdayDate">

									<option value="0" disabled selected="selected">请选择</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option>
									<option value="11">11</option>
									<option value="12">12</option>

									<option value="13">13</option>
									<option value="14">14</option>
									<option value="15">15</option>
									<option value="16">16</option>
									<option value="17">17</option>
									<option value="18">18</option>
									<option value="19">19</option>
									<option value="20">20</option>
									<option value="21">21</option>
									<option value="22">23</option>
									<option value="24">25</option>
									<option value="26">26</option>

									<option value="27">27</option>
									<option value="28">28</option>
									<option value="29">29</option>
									<option value="30">30</option>
									<option value="31">31</option>
								</select>

								<h5 style="display: inline">&nbsp;日&nbsp;</h5>

								<br>
								<br>
								<h5 style="display: inline">邮箱：</h5>
								&nbsp;&nbsp;&nbsp;
								<input type="text" name="emai" placeholder="邮箱" style="display: inline" value="${user.email}"/> 
								<a style="margin-left:20px;display:none" id="emailIcon">
									<i class="fa fa-check fa-1x" style="color:green;"></i>
								</a> <br>
								<h5 style="display: inline;margin-left:-15px">手机号：</h5>
								&nbsp;&nbsp;&nbsp;
								<input type="text" name="phon" placeholder="手机号" style="display: inline"  value="${user.phone}"/> 
								<a style="margin-left:20px;display:none" id="phoneIcon">
									<i class="fa fa-check fa-1x" style="color:green;"></i>
								</a> <br>
								<br>
								<br> 
								<input type="submit" class="loginBtn" id="infoSubmit" style="margin-left: 100px" value="保存修改"/>
								<br>
								<br>
								<br>
								<br>
								<br>
								<br>
								<div class="clearfix"></div>
							</form>
						</div>
					</div>
<!----------------------------------------------------------------------------setPasswordBox--------------------------------------------------------------------->
					<div id="setPasswordBox" class="contact-form"
						style="background-color: #F7F7F7;display:none; border-top-style:dotted;border-bottom-style: dotted;border-color: #00A2D4">
						<br> <br>
						<!-------------------upload------------------->
		
						<br>
						
						<h5 style="display: block;margin-left:100px;">
							新密码：<input type="password" id="newPassword" placeholder="新密码,至少6位字符"  class="password" style="display:inline;height:37px;width:300px" />
							<i class="fa fa-close fa-1x" style="color:red;display:none">新密码格式错误</i>
						</h5>
						<br>
						<h5 style="display: block;margin-left:85px;">
							确认密码：<input type="password" id="cormPassword" placeholder="确认密码，必须与新密码一致"  class="password" style="display: inline;height:37px;width:300px" />
							<i class="fa fa-close fa-1x" style="color:red;display:none">两次密码不一致</i>
						</h5>
								
						
						<br> <br> <input type="button" id="setPasswordBtn" class="loginBtn" value="提交"
							style="margin-left: 250px;float:left"/> <br> <br> <br> <br>
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
				<a href="single.html"><img class="img-responsive chain"
					src="img/touxiang.jpg" alt=" " /></a>
				<div class="grid-chain-bottom chain-watch">
					<span class="actual dolor-left-grid" style="font-size: 20px">用户昵称：</span>

					<span style="font-size: 18px" class="uname">${user.uname}</span> <br>
					<span class="actual dolor-left-grid" style="font-size: 20px">用户等级：</span>
					<span style="font-size: 18px">6级</span>
					<a href="user/showBalancePoint.do"><span style="font-size: 18px">用户积分</span></a>
				</div>
			</div>

		</div>
	</div>
	<!--------------------------------------------------底部------------------------------------------------>
	<jsp:include page="footer.jsp" flush="true"></jsp:include>
<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>

	<script type="text/javascript">
		initPersonInfo();
		function initPersonInfo(){
		    if('${user.sex}' != '' &&  '${user.sex}' != 'null'){
				
		    }
		}
	</script>
</body>

</html>
