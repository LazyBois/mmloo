<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'footer.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
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
  </body>
</html>
