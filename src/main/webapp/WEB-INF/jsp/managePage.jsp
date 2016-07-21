<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="nwsuaf.mmloo.entity.Mistore"%>
<%@ page import="nwsuaf.mmloo.util.PageParam"%>
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
<title>Register</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="../mmloo/css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="../mmloo/css/bootstrap.min.css"
	media="screen" rel="stylesheet" type="text/css" />
<!--theme-style-->
<link href="../mmloo/css1/style.css" rel="stylesheet" type="text/css" media="all" />
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


<link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css"
	rel="stylesheet">
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
<script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>



<script src="../mmloo/js/jquery.min.js"></script>
<script src="../mmloo/js/jquery.etalage.min.js"></script>
<script src="../mmloo/js/jquery.easydropdown.js"></script>


</head>
<body>
	<!--header-->
	<div class="header">
		<div class="top-header">
			<div class="container">
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="bottom-header">
			<div class="container">
				<div class="header-bottom-left">
					<div class="logo">
						<a href="index.html"><img src="images/logo.png" alt=" " /></a>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="header-bottom-right">
					<ul class="men-grid">

						<li><a href="#" id="button-1" onclick="isStore()"><i
								class="fa fa-home fa-2x" style="color: #F97E76"></i>&nbsp;米店</a></li>
						<li><a href="#" id="button-2" onclick="isGoods(1)"><i
								class="fa fa-gift fa-2x" style="color: #F97E76"></i>&nbsp;商品</a></li>
						<li><a href="#" id="button-3" onclick="isMessage()"><i
								class="fa fa-commenting fa-2x" style="color: #F97E76"></i>&nbsp;消息</a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!---->


	<div class="container" style="margin-top: 30px;">

		<!--------------------------------------------这是米店-------------------------------------------------------------->
		<div id="miStore" class="register" style="float: right;width: 100%;">

			<div style="float: left;margin-top: -30px;margin-left: 20px;">
				<a id="a1" style="cursor: pointer;" onclick="isAll()">显示全部</a>
			</div>


			<div style="float: left;margin-top: -30px;margin-left: 115px;">
				<a id="a2" style="cursor: pointer" onclick="isVerify(1)">待审核</a>
			</div>

			<div style="float: left;margin-top: -30px;margin-left: 200px;">
				<a id="a3" style="cursor: pointer" onclick="isFailed(1)">不合格</a>
			</div>

			<%
				String[] arr= {"active","success","warning","danger"};
			%>
			<!------------------------------------------显示全部------------------------------------------------------------>

			<div id="show-all" class="  register-bottom-grid"
				style="width: 100%;">
				<!--<h3>&nbsp;</h3>-->
				<div class="navbar-default"
					style=" border:1px;border-top-style:solid; border-color: rgb(208,208,208);background-color:transparent">

					&nbsp;&nbsp;&nbsp;&nbsp;

					<form>

						<table class="to-void table" style="text-align: left;width: 100%;"
							cellpadding="10px" cellspacing="10px">

							<thead>
								<tr>
									<th>米店名称</th>
									<th>审核状态</th>
									<th>用户名</th>
									<th>店铺类型</th>
									<th>申请时间</th>
									<th>积分</th>
									<th>操作</th>

								</tr>

							</thead>

							<c:forEach items="${pageParam.data }" var="item" varStatus="at">
								<c:set var="index" scope="request" value="${at.index}" />
								<%
									int p = Integer.parseInt(request.getAttribute("index").toString())%4;
								%>
								<tr class="<%=arr[p]%>">
									<td class="td-1">${item.mname}</td>
									<td>${item.state}</td>
									<td>${item.uname}</td>
									<td>${item.mtype}</td>
									<td>${item.ctime}</td>
									<td class="td-6">${item.point}</td>
									<!-------------------------我是弹框的按钮----------------------------->

									<td><button  class="tankuang btn btn-primary btn-lg"data-toggle="modal" data-target="#myModal" style="width: 45px;height: 30px;font-size: 12px;padding-left: 10px;padding-top: 7px">
	   修改</button> </td>
								</tr>
							</c:forEach>


						</table>

					</form>

					<!---------------------------------------------弹框--------------------------------------------------->

					<!-- 模态框（Modal） -->
					<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
						aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" id="closeModel" data-dismiss="modal"
										aria-hidden="true">&times;</button>
									<h4 class="modal-title" id="myModalLabel">积分修改</h4>
								</div>
								<div class="modal-body" style="">

									<form>
										米店名称：<input id="t1" name="mname" type="text"
											style="width: 200px" /> <br> 增减积分：<input id="t2"
											name="mpup" type="text" style="width: 200px" /> <br>
										修改备注：<input id="t3" name="mpnote" type="text"
											style="width: 200px" />
									</form>


								</div>
								<div class="modal-footer">
									  <button onclick="insertPoint()" type="button" class="btn btn-primary" data-dismiss="modal">提交更改</button>
								</div>
							</div>
							<!-- /.modal-content -->
						</div>
						<!-- /.modal -->
					</div>

					<br> <br> <br> <br> <br> <br> <br>

				</div>

				<div class="clearfix"
					style="background-color: transparent;border:1px;border-bottom-style:solid; border-color: rgb(208,208,208);">


					<h3 style="float: right">
						<%
							PageParam<Mistore> pageParam = (PageParam<Mistore>) request.getAttribute("pageParam");
							int index = pageParam.getCurrPage();
							int all = pageParam.getTotalPage();
						%>
						<a href="showAllMistroe.do?pages=<%=index-1%>"> <span
							class="delete btn btn-xs btn-primary"
							style="background-color:#F97E76; border-color: transparent;color:white;display: inline">
								上一页 </span></a>
						<p style="display: inline;color: #0D3349">
							&nbsp;<%=index%>/<%=all %></p>

						<a href="showAllMistroe.do?pages=<%=index+1%>"> <span
							class="delete btn btn-xs btn-primary"
							style="background-color:#F97E76; border-color: transparent;color:white;display: inline">
								下一页 </span></a> &nbsp;&nbsp;&nbsp;
					</h3>
					<br> <br>
				</div>

			</div>

			<!------------------------------------------待审核店铺------------------------------------------------------------>

			<div id="wait-verify" class=" register-bottom-grid"
				style="width: 100%;display: none">

				<div class="navbar-default"
					style=" border:1px;border-top-style:solid; border-color: rgb(208,208,208);background-color:transparent">


					&nbsp;&nbsp;&nbsp;&nbsp;


					<form>

						<table class="to-void table" style="text-align: left;width: 100%;"
							cellpadding="10px" cellspacing="10px">


							<thead>

								<tr>
									<th>米店名称</th>
									<th>用户名</th>
									<th>申请时间</th>
									<th>审核状态</th>
									<th>操作</th>

								</tr>
							</thead>
							<tbody id="tbodyWait">
							</tbody>
						</table>

					</form>

					<br> <br> <br> <br> <br> <br> <br>

				</div>

				<div class="clearfix"
					style="background-color: transparent;border:1px;border-bottom-style:solid; border-color: rgb(208,208,208);">


					<h3 style="float: right">
						<span class="delete btn btn-xs btn-primary" onclick="beforPage(this)"
							style="background-color:#F97E76; border-color: transparent;color:white;display: inline">
							上一页 </span>
						<p id="pagewait" style="display: inline;color: #0D3349">&nbsp;1</p>

						<span class="delete btn btn-xs btn-primary" onclick="nextPage(this)"
							style="background-color:#F97E76; border-color: transparent;color:white;display: inline">
							下一页 </span> &nbsp;&nbsp;&nbsp;
					</h3>
					<br> <br>
				</div>

			</div>

			<!------------------------------------------不合格店铺------------------------------------------------------------>

			<div id="failed-store" class="  register-bottom-grid"
				style="width: 100%;display: none">
				<!--<h3>&nbsp;不合格店铺</h3>-->
				<div class="navbar-default"
					style=" border:1px;border-top-style:solid; border-color: rgb(208,208,208);background-color:transparent">


					&nbsp;&nbsp;&nbsp;&nbsp;


					<form>

						<table class="to-void table" style="text-align: left;width: 100%;"
							cellpadding="10px" cellspacing="10px">

							<thead>

								<tr>
									<th>米店名称</th>
									<th>用户名</th>
									<th>申请时间</th>
									<th>审核状态</th>
									<th>积分</th>
									<th>操作</th>
								</tr>
							</thead>

							<tbody id="tbodyClose">
							</tbody>
						</table>

					</form>


					<br> <br> <br> <br> <br> <br> <br>

				</div>

				<div class="clearfix"
					style="background-color: transparent;border:1px;border-bottom-style:solid; border-color: rgb(208,208,208);">


					<h3 style="float: right">
						<span class="delete btn btn-xs btn-primary" onclick="beforPageClose()"
							style="background-color:#F97E76; border-color: transparent;color:white;display: inline">
							上一页 </span>
						<p id="pageClose" style="display: inline;color: #0D3349">&nbsp;1</p>

						<span class="delete btn btn-xs btn-primary" onclick="nextPageClose()"
							style="background-color:#F97E76; border-color: transparent;color:white;display: inline">
							下一页 </span> &nbsp;&nbsp;&nbsp;
					</h3>
					<br> <br>
				</div>

			</div>




		</div>

		<!--------------------------------------------这是商品-------------------------------------------------------------->

		<div id="miGoods" class="register"
			style="float: right;width: 100%;display: none">

			<div style="float: left;margin-top: -30px;margin-left: 20px;">
				<a>待审核商品</a>
			</div>

			<div class="  register-bottom-grid" style="width: 100%;">

				<div class="navbar-default"
					style=" border:1px;border-top-style:solid; border-color: rgb(208,208,208);background-color:transparent">


					&nbsp;&nbsp;&nbsp;&nbsp;


					<form>

						<table class="to-void table" style="text-align: left;width: 100%;"
							cellpadding="10px" cellspacing="10px">
							<thead>
								<tr>
									<th>米店编号</th>
									<th>商品编号</th>
									<th>商品价格</th>
									<th>商品数量</th>
									<th>申请时间</th>
									<th>审核状态</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody id="tbodyGoods">
							</tbody>							
						</table>

					</form>


					<br> <br> <br> <br> <br> <br> <br>

				</div>

				<div class="clearfix"
					style="background-color: transparent;border:1px;border-bottom-style:solid; border-color: rgb(208,208,208);">


					<h3 style="float: right">
						<span class="delete btn btn-xs btn-primary" onclick="beforPageGoods()"
							style="background-color:#F97E76; border-color: transparent;color:white;display: inline">
							上一页 </span>
						<p id="pageGoods" style="display: inline;color: #0D3349"></p>

						<span class="delete btn btn-xs btn-primary" onclick="nextPageGoods()"
							style="background-color:#F97E76; border-color: transparent;color:white;display: inline">
							下一页 </span> &nbsp;&nbsp;&nbsp;
					</h3>
					<br> <br>
				</div>

			</div>

		</div>



		<!--------------------------------------------这是消息-------------------------------------------------------------->

		<div id="miMessage" class="register"
			style="float: right;width: 100%;display: none">
			<div style="float: left;margin-top: -30px;margin-left: 20px;">
				<a>当前状态</a>
			</div>

			<div class="  register-bottom-grid" style="width: 100%;">

				<div class="navbar-default"
					style=" border:1px;border-top-style:solid; border-color: rgb(208,208,208);background-color:transparent">


					&nbsp;&nbsp;&nbsp;&nbsp;

					<form>

						<table class="to-void table" style="text-align: left;width: 100%;"
							cellpadding="10px" cellspacing="10px">


							<thead>
								<tr>
									<th>待审核项目</th>
									<th>数量</th>
									<th>状态</th>
									<th>处理</th>
								</tr>
							</thead>
							<tbody id="message">
							
							<tr class="active">
								<td class="td-1">店铺</td>
								<td class="td-2" id="mistoreNo">100</td>
								<td class="td-3">未审核</td>
								<td class="td-4"><button onclick="isStore();isVerify(1)" class="btn btn-primary btn-lg" type="button" style="width: 45px;height: 30px;font-size: 12px;padding-left: 10px;padding-top: 7px">
									审核</button> </td>
							</tr>

							<tr class="success">
								<td class="td-1">店铺</td>
								<td class="td-2" id="mistore">200</td>
								<td class="td-3">不合格</td>
								<td class="td-4"><button onclick="isStore();isFailed(1)"
										class="btn btn-primary btn-lg" type="button"
										style="width: 45px;height: 30px;font-size: 12px;padding-left: 10px;padding-top: 7px">
										处理</button></td>
							</tr>

							<tr class="warning">
								<td class="td-1">商品</td>
								<td class="td-2" id="goods">150</td>
								<td class="td-3">未审核</td>
								<td class="td-4"><button onclick="isGoods()"
										class="btn btn-primary btn-lg" type="button"
										style="width: 45px;height: 30px;font-size: 12px;padding-left: 10px;padding-top: 7px">
										审核</button></td>
							</tr>
						</tbody>

						</table>

					</form>

					<br> <br> <br> <br> <br> <br> <br>

				</div>




			</div>



		</div>

	</div>




	</div>
	<!-----------------------------------------------------------底部---------------------------------------------------------------------------->
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
					<h6>CATEGORIES</h6>
					<ul>
						<li><a href="#">Curabitur sapien</a></li>
						<li><a href="#">Dignissim purus</a></li>
						<li><a href="#">Tempus pretium</a></li>
						<li><a href="#">Dignissim neque</a></li>
						<li><a href="#">Ornared id aliquet</a></li>
						<li><a href="#">Ultrices id du</a></li>
						<li><a href="#">Commodo sit</a></li>
						<li><a href="#">Urna ac tortor sc</a></li>
						<li><a href="#">Ornared id aliquet</a></li>
						<li><a href="#">Urna ac tortor sc</a></li>
						<li><a href="#">Eget nisi laoreet</a></li>
						<li><a href="#">Faciisis ornare</a></li>
					</ul>
				</div>
				<div class="footer-bottom-cate bottom-grid-cat">
					<h6>FEATURE PROJECTS</h6>
					<ul>
						<li><a href="#">Curabitur sapien</a></li>
						<li><a href="#">Dignissim purus</a></li>
						<li><a href="#">Tempus pretium</a></li>
						<li><a href="#">Dignissim neque</a></li>
						<li><a href="#">Ornared id aliquet</a></li>
						<li><a href="#">Ultrices id du</a></li>
						<li><a href="#">Commodo sit</a></li>
					</ul>
				</div>
				<div class="footer-bottom-cate">
					<h6>TOP BRANDS</h6>
					<ul>
						<li><a href="#">Curabitur sapien</a></li>
						<li><a href="#">Dignissim purus</a></li>
						<li><a href="#">Tempus pretium</a></li>
						<li><a href="#">Dignissim neque</a></li>
						<li><a href="#">Ornared id aliquet</a></li>
						<li><a href="#">Ultrices id du</a></li>
						<li><a href="#">Commodo sit</a></li>
						<li><a href="#">Urna ac tortor sc</a></li>
						<li><a href="#">Ornared id aliquet</a></li>
						<li><a href="#">Urna ac tortor sc</a></li>
						<li><a href="#">Eget nisi laoreet</a></li>
						<li><a href="#">Faciisis ornare</a></li>
					</ul>
				</div>
				<div class="footer-bottom-cate cate-bottom">
					<h6>OUR ADDERSS</h6>
					<ul>
						<li>Aliquam metus dui.</li>
						<li>orci, ornareidquet</li>
						<li>ut,DUI.</li>
						<li>nisi, dignissim</li>
						<li>gravida at.</li>
						<li class="phone">PH : 6985792466</li>
						<li class="temp">
							<p class="footer-class">
								Copyright &copy; 2015.Company name All rights reserved.<a
									target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a>
							</p>
						</li>
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
		//   -----------------------------------我是  米店   按钮
		function isStore() {

			$("#miGoods").css("display", "none");
			$("#miMessage").css("display", "none");
			$("#miStore").css("display", "");
		}

		//   -----------------------------------我是  商品   按钮
		var jsonWait;
		function isGoods(pages) {
			$("#miStore").css("display", "none");
			$("#miMessage").css("display", "none");
			$("#miGoods").css("display", "");
			$("#tbodyGoods tr").remove();
			$.ajax({
				type : "POST",
				contentType : "application/json",
				url : 'showGshelves.do?state=审核中&pages='+pages,
				data : {},
				datatype : "html",
				beforeSend : function() {
				},
				success : function(msg) {
				jsonWait = $.parseJSON(msg)
				$("#pageGoods").text(jsonWait.currPage + '/' +jsonWait.totalPage);
					var arr = new Array("active","success","warning","danger");
					for (var i = 0; i < jsonWait.data.length; i++) {
						addMistoreGoods(jsonWait.data[i],arr[i%4]);
					}
					setGoods();
				},
				// 调用出错执行的函数
				error : function(msg) {
					// 请求出错处理
					alert(msg.status)
				}
			});		
		}
		function addMistoreGoods(g,active) {
			$('#tbodyGoods')
					.append(
							'<tr class='+active+'>'
									+ '<td class="td-1">'
									+ g.mid
									+ '</td><td class="td-2">'
									+ g.gid
									+ '</td><td class="td-3">'
									+ g.gprice
									+ '</td><td class="td-4">'
									+ g.num
									+ '</td><td class="td-5">'
									+ g.date
									+ '</td><td class="td-6">'
									+ g.state
									+ '</td>'
									+ '<td><button class="btn btn-primary btn-lg goodsBtn" type="button" style="width: 45px;height: 30px;font-size: 12px;padding-left: 10px;padding-top: 7px">通过</button> <button class="btn btn-primary btn-lg goodsBtnNo" type="button"  style="width: 45px;height: 30px;font-size: 12px;padding-left: 10px;padding-top: 7px">拒绝</button></td>'
									+ '</tr>')
		}
		
		//翻页
		function beforPageGoods()
		{
			var pages = jsonWait.currPage - 1;
			isGoods(pages);
		}
		
		function nextPageGoods()
		{
			var pages = jsonWait.currPage + 1;
			isGoods(pages);
		}
		//通过/拒绝
		//审核按钮
		function upGshelves(state,gid)
		{
			$.ajax({
				type : "POST",
				contentType : "application/json",
				url : 'upGshelves.do?gid='+gid+'&state='+state,
				data : {},
				datatype : "html",
				beforeSend : function() {
				},
				success : function(msg) {
					if(msg == 'true'){
						var pages = jsonWait.currPage;
						if(jsonWait.data.length == 1){
							pages = pages - 1;
						}						
						isGoods(pages);
					}								
				},
				// 调用出错执行的函数
				error : function(msg) {
					// 请求出错处理
					alert(msg.status)
				}
			});
		}
		
		function setGoods() {
			$(".goodsBtnNo").click(function() {
				upGshelves('未通过',$(this).parent().parent().find('.td-2').text());
			});
			$(".goodsBtn").click(function() {
				upGshelves('通过',$(this).parent().parent().find('.td-2').text());
			});
		}
		//   -----------------------------------我是  消息   按钮
		function isMessage() {

			$("#miStore").css("display", "none");
			$("#miGoods").css("display", "none");
			$("#miMessage").css("display", "");			
			$.ajax({
				type : "POST",
				contentType : "application/json; charset=UTF-8",
				url : 'message.do',
				data : {},
				beforeSend : function() {
				},
				success : function(msg) {
				var json = $.parseJSON(msg)
				$("#mistoreNo").text(json.mCount);
				$("#goods").text(json.gCount);
				$("#mistore").text(json.mpCOunt);	
				},
				// 调用出错执行的函数
				error : function(msg) {
					// 请求出错处理
					alert(msg.status)
				}
			});
		}

		//   -----------------------------------我是  显示全部   按钮
		function isAll() {

			$("#failed-store").css("display", "none");
			$("#wait-verify").css("display", "none");
			$("#show-all").css("display", "");
			$("#a1").css("color", "#F97E76");
			$("#a2").css("color", "#428bca");
			$("#a3").css("color", "#428bca");

		}
		//-------------------------------------我是提交积分按钮
		function insertPoint() {
			var object = this;
			$.ajax({
				type : "POST",
				contentType : "application/json; charset=UTF-8",
				url : 'upMpoint.do?mname=' + $("#t1").val() + '&mpup='
						+ $("#t2").val() + '&mpnote=' + $("#t3").val(),
				data : {},
				beforeSend : function() {
				},
				success : function(msg) {
				$(".temp").children(".td-6").text(msg);				
				 	$("#closeModel").click();			
				},
				// 调用出错执行的函数
				error : function(msg) {
					// 请求出错处理
					alert(msg.status)
				}
			});
		}
		//   -----------------------------------我是  待审核   按钮
		
		function isVerify(pages) {
			$("#failed-store").css("display", "none");
			$("#show-all").css("display", "none");
			$("#wait-verify").css("display", "");
			$("#a2").css("color","#F97E76");
			$("#a1").css("color","#428bca");
			$("#a3").css("color","#428bca");
			$("#tbodyWait tr").remove();		
			$.ajax({
				type : "POST",
				contentType : "application/json",
				url : 'showMistroe.do?state=审核中&pages='+pages,
				data : {},
				datatype : "html",
				beforeSend : function() {
				},
				success : function(msg) {
				jsonWait = $.parseJSON(msg)
				$("#pagewait").text(jsonWait.currPage + '/' +jsonWait.totalPage);
					var arr = new Array("active","success","warning","danger");
					for (var i = 0; i < jsonWait.data.length; i++) {
						addMistoreWait(jsonWait.data[i],arr[i%4]);
					}
					setWait();
				},
				// 调用出错执行的函数
				error : function(msg) {
					// 请求出错处理
					alert(msg.status)
				}
			});
		}
		function addMistoreWait(mistore,active) {
			$('#tbodyWait')
					.append(
							'<tr class='+active+'>'
									+ '<td class="td-1">'
									+ mistore.mname
									+ '</td><td class="td-2">'
									+ mistore.uname
									+ '</td><td class="td-3">'
									+ mistore.ctime
									+ '</td><td class="td-4">'
									+ mistore.state
									+ '</td>'
									+ '<td><button class="btn btn-primary btn-lg waitBtn" type="button" style="width: 45px;height: 30px;font-size: 12px;padding-left: 10px;padding-top: 7px">通过</button> <button class="btn btn-primary btn-lg waitBtnNo" type="button"  style="width: 45px;height: 30px;font-size: 12px;padding-left: 10px;padding-top: 7px">拒绝</button></td>'
									+ '</tr>')
		}
		
		
		//审核按钮
		function upMistoreState(state,mname)
		{
			$.ajax({
				type : "POST",
				contentType : "application/json",
				url : 'upStateMistroe.do?mname='+mname+'&state='+state,
				data : {},
				datatype : "html",
				beforeSend : function() {
				},
				success : function(msg) {
					if(msg == 'true'){
						var pages = jsonWait.currPage;
						if(jsonWait.data.length == 1){
							pages = pages - 1;
						}						
						isVerify(pages);
					}								
				},
				// 调用出错执行的函数
				error : function(msg) {
					// 请求出错处理
					alert(msg.status)
				}
			});
		}
		
		//翻页
		function beforPage(object)
		{
			var pages = jsonWait.currPage - 1;
			isVerify(pages);
		}
		
		function nextPage(object)
		{
			var pages = jsonWait.currPage + 1;
			isVerify(pages);
		}
		
		function setWait() {
			$(".waitBtnNo").click(function() {
				upMistoreState('未通过',$(this).parent().parent().find('.td-1').text());
			});
			$(".waitBtn").click(function() {
				upMistoreState('通过',$(this).parent().parent().find('.td-1').text());
			});
		}
		
		//   -----------------------------------我是  不合格   按钮
		function isFailed(pages) {
			$("#wait-verify").css("display", "none");
			$("#show-all").css("display", "none");
			$("#failed-store").css("display", "");
			$("#a3").css("color", "#F97E76");
			$("#a2").css("color", "#428bca");
			$("#a1").css("color", "#428bca");
			$("#tbodyClose tr").remove();
			$.ajax({
				type : "POST",
				contentType : "application/json",
				url : 'showMistroe.do?state=通过&point=50.01&pages='+pages,
				data : {},
				datatype : "html",
				beforeSend : function() {
				},
				success : function(msg) {
					jsonWait = $.parseJSON(msg)
					$("#pageClose").text(jsonWait.currPage + '/' +jsonWait.totalPage);
						var arr = new Array("active","success","warning","danger");
						for (var i = 0; i < jsonWait.data.length; i++) {
							addMistoreClose(jsonWait.data[i],arr[i%4]);
						}
						setClose();
					},								
				// 调用出错执行的函数
				error : function(msg) {
					// 请求出错处理
					alert(msg.status)
				}
			});

		}
		function addMistoreClose(mistore,active) {
			$('#tbodyClose')
					.append(
							'<tr class='+active+'>'
									+ '<td class="td-1">'
									+ mistore.mname
									+ '</td><td class="td-2">'
									+ mistore.uname
									+ '</td><td class="td-3">'
									+ mistore.ctime
									+ '</td><td class="td-4">'
									+ mistore.state
									+ '</td><td class="td-5">'
									+ mistore.point
									+ '</td>'
									+ '<td><button class="btn btn-primary btn-lg closeBtn" type="button" style="width: 45px;height: 30px;font-size: 12px;padding-left: 10px;padding-top: 7px">关闭</button></td>'
									+ '</tr>')
		}
		function setClose() {
			$(".closeBtn").click(function() {
				upMistorePoint('未通过',$(this).parent().parent().find('.td-1').text());
			});
		}
		//关闭按钮
		function upMistorePoint(state,mname)
		{
			$.ajax({
				type : "POST",
				contentType : "application/json",
				url : 'upStateMistroe.do?mname='+mname+'&state='+state,
				data : {},
				datatype : "html",
				beforeSend : function() {
				},
				success : function(msg) {
					if(msg == 'true'){
						var pages = jsonWait.currPage;
						if(jsonWait.data.length == 1){
							pages = pages - 1;
						}						
						isFailed(pages);
					}								
				},
				// 调用出错执行的函数
				error : function(msg) {
					// 请求出错处理
					alert(msg.status)
				}
			});
		}
		function beforPageClose(object)
		{
			var pages = jsonWait.currPage - 1;
			isFailed(pages);
		}
		
		function nextPageClose(object)
		{
			var pages = jsonWait.currPage + 1;
			isFailed(pages);
		}
		//--------------------------------------我是弹框
		$('.tankuang').click(
				function() {

					$(this).parent().parent().addClass("temp");
					$('#t1').val($(this).parent().parent().find('.td-1').text());

				});
	</script>


</body>




</html>