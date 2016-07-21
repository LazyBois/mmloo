<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="nwsuaf.mmloo.entity.Gshelves" %>
<%@ page import="nwsuaf.mmloo.entity.Goods" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Product</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="../mmloo/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" media="all" />
<!--theme-style-->
<link href="../mmloo/css/style.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="../mmloo/css/bootstrap.min.css" media="screen"
	rel="stylesheet" type="text/css" />
<link href="../mmloo/css/user/myStyle.css" media="screen"
	rel="stylesheet" type="text/css" />
<!--//theme-style-->
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--fonts-->
<link
	href='http://fonts.useso.com/css?family=Open+Sans:400,300,600,700,800'
	rel='stylesheet' type='text/css'>
<!--//fonts-->
<script type="text/javascript" src="../mmloo/js/jquery.1.11.3.min.js"></script>
<script src="../mmloo/js/jquery.easydropdown.js"></script>
<!--script-->
<!--  script type="text/javascript" src="js/demo.js"></script>-->
<script src="../mmloo/js/shop.min.js"></script>
<script type="text/javascript">
			function login(){
				if('${user.uname}' == '' || '${user.uname}' == 'null'){
					//alert('你还没有登录')
					window.location.href = 'loadLogin.do';
				}
			}
			login();
		</script>
</head>
<style>
	.input-group-addon {
    padding: 6px 12px;
    font-size: 14px;
    font-weight: normal;
    line-height: 1;
    color: #555;
    text-align: center;
    background-color: #eee;
    border: 1px solid #ccc;
    border-radius: 4px;
}
</style>
<body>
	<!--header-->
	<jsp:include page="header.jsp" flush="true"></jsp:include>
	<!---->
	<!-- start content -->
<form action="submitCart.do" id="cart" method="get">
	<div class="container">
		<div id="cart-content">
			<br>
			<h5 class="latest-product">购物车</h5>
			<br> <br> <br>
			<!------------------------------------------------------------------------------------>
			
			<table id="cartTable" class="cart table table-condensed"
				style="width:1140px">
				<thead>
					<tr>
						<th style="width: 80px;"><label> <input
								class="check-all check" type="checkbox" /> 全选
						</label></th>
						<th style="width: 700px;"><label> 商品 </label></th>
						<th style="width: 100px;"><label> 单价 </label></th>
						<th style="width: 120px;"><label> 数量 </label></th>
						<th style="width: 100px;"><label> 总价 </label></th>
						<th style="width: 40px;"><label> 操作 </label></th>
					</tr>
				</thead>
					<tbody>
					<c:forEach items="${shopCart}" var="item"  varStatus="st">
						<tr>
						<c:set var="bl" value="${item.goods.selfimage}" scope="request"></c:set>
						<% 
							String imgs = (String)request.getAttribute("bl"); 
						%> <td style="display:none"> 
								<input type="text" name="index"  value="${st.count}"/>
								<input type="text" name="productid"  value="${ item.gid }"/>
								<input type="text"  name="productnum" value="${ item.snum }"/>
								<input type="text" name="productprice"  value="${ item.goods.gprice }"/>
								<input type="text" name="productname"  value="${ item.goods.gname}"/>
								<input type="text" name="productimg" value="<%=imgs.split("#")[0] %>"/>
								
								<input type="text" name="producttotalprice" style="display:none" value="<fmt:formatNumber type="number" value="${ item.snum * item.goods.gprice} " maxFractionDigits="2"/>"/>
							</td>
							<td><input class="check-one check" type="checkbox" /></td>
							<td class="goods">
								<div style="float:left">
								<a href="product.do?productid=${ item.goods.gid}">
									<img src="../mmloo/<%=imgs.split("#")[0] %>" class="img-responsive watch-right" width="60px"  alt="product.do?productid=${ item.goods.gid}" />
								</a>
								</div>
								<div style="float:left;margin-left:15px;margin-top:10px;">
									<a href="product.do?productid=${ item.goods.gid}"> ${ item.goods.gname}" </a>
								</div>
							</td>
							<td class="number small-bold-red"><span>${ item.goods.gprice }</span></td>
							<td class="input-group"><span style="cursor:pointer"
								class="input-group-addon minus">-</span> 
							<input type="text"
								class="number form-control input-sm" value="${ item.snum }"
								style="float:left;width:40px;height:28px;cursor:pointer" name="number"/> <span
								class="input-group-addon plus">+</span></td>
							<td class="subtotal number1 small-bold-red"><fmt:formatNumber type="number" value="${ item.snum * item.goods.gprice} " maxFractionDigits="2"/></td>
							<td class="operation"><span
								class="delete btn btn-xs btn-primary">删除</span></td>
						</tr>
					</c:forEach>
					</tbody>
			</table>
			<div class="row">
				<div class="col-md-12 col-lg-12 col-sm-12">
					<div style="border-top: 1px solid gray; padding: 4px 10px;">
						<div style="margin-left: 20px;" class="pull-right total">
							<label> <span class="currency">总金额:￥</span><span
								id="priceTotal" class="large-bold-red" style="color:red">0.00</span>
							</label>
						</div>
						<div class="pull-right">
							<label> 商品种类数目： <span id="itemCount"
								class="large-bold-red" style="margin: 0 4px;"></span>&nbsp;&nbsp;&nbsp;总计
								<span id="qtyCount" class="large-bold-red"
								style="margin: 0 4px;"></span>件
							</label>
						</div>
						<div class="pull-right selected" id="selected">
							<span id="selectedTotal"></span>
						</div>
					</div>
				</div>
			</div>
			<!---------------------------------------------------------------------------------------------------------->
		</div>
		<br> <br>
		<div class="contact-form">
			<input type="submit" value="提交订单">
		</div>
	</div>
	</form>
	<!--------------------------------------------------底部------------------------------------------------------------------->
	<div style="display: none">
		<script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540'
			language='JavaScript'></script>
	</div>
	<jsp:include page="footer.jsp" flush="true"></jsp:include>
</body>

<script>
	$(function(){
		$('#cart').submit(function (){
			var money = parseFloat($("#priceTotal").text());
			if(money <= 0)
				return false;
			var productids = "";
				//productid productnum productprice productname  productimg producttotalprice
			$('tr').each(function(){
				if($(this).find('.check-one').prop("checked") == true){
					productids =  $(this).find('input[name=productid]').val()+ '#' + productids;
				}
			})
			window.location.href = "user/shopOrder.do?productids=" + productids;
			return false;
		})
	})
	function getSubTotal(row) {
		price = parseFloat($(row).find("span:first").text());
		var qty = parseInt($(row).find("input[name=number]").val());

		var result = price * qty;
		$(row).find(".subtotal").text(result.toFixed(2));
	}
	function getTotal() {
		var qtyTotal = 0;
		var itemCount = 0;
		var priceTotal = 0;
		$("#cartTable").find("tr:gt(0)").each(function() {
			if ($(this).find(":checkbox").prop("checked") == true) { //
				itemCount++;
				qtyTotal += parseInt($(this).find('input[name=number]').val());
				var moneys = $(this).find(".subtotal").text().split(",");
				var money = "";
				for(var i = 0; i < moneys.length; i++)
					money = money + moneys[i];
				priceTotal = priceTotal + parseFloat(money);
			}
		});
		$("#itemCount").text(itemCount);
		$("#qtyCount").text(qtyTotal);
		$("#priceTotal").text(priceTotal);
		
	}

		$("#cartTable").find(":checkbox").click(
						function() {
							if ($(this).hasClass("check-all")) {
								var checked = $(this).prop("checked");
								$("#cartTable").find(".check-one").prop(
										"checked", checked);
								if ($(this).prop("checked")) {
									$(".check-one").parent().parent().css(
											"background", "#fff4e8");
								} else {
									$(".check-one").parent().parent().css(
											"background", "white");
								}
							}
							var items = $("#cartTable").find("tr:gt(0)");
							$(cartTable).find(".check-all").prop("checked",items.find(":checkbox:checked").length == items.length);
							getTotal();
						});

		$(".check-one").click(function() {
			if ($(this).prop("checked") == true) {
				$(this).parent().parent().css("background", "#fff4ed");
			} else {
				$(this).parent().parent().css("background", "white");
			}

		});
		$(cartTable).find("tr:gt(0)").each(function() {
			var input = $(this).find("input[name=number]");
			var productid = $(this).find("input[name=productid]").val();
			//
			$(input).keyup(function() {
				var val = parseInt($(input).val());
				if (isNaN(val) || (val < 1)) {
					$(this).val("1");
				}
				getSubTotal($(this).parent().parent()); //tr element  
				getTotal();
			});
			$(this).click(function() {
				var val = parseInt($(input).val());
				if (isNaN(val) || (val < 1)) {
					val = 1;
				}
				if ($(window.event.srcElement).hasClass("minus")) {
					if (val > 1){
						val--;
						ajaxNum(productid, val);
					}
					input.val(val);
					getSubTotal(this);
				} else if ($(window.event.srcElement).hasClass("plus")) {
					if (val < 9999){
						val++;
						ajaxNum(productid, val);
					}
					input.val(val);
					getSubTotal(this);
				} else if ($(window.event.srcElement).hasClass("delete")) {
					if (confirm("确定删除？")) {
						$(this).remove();
					}
				}
				getTotal();
			});
		});
		function ajaxNum(productid, val){
			$.ajax({
				type : "POST",
				contentType : "application/json",
				url : 'user/upCart.do?productid=' + productid + '&num=' + val,
				data : {},
				datatype : "html",
				beforeSend : function() {
					alert('user/upCart.do?productid=' + productid + '&num=' + val)
				},
				success : function(msg) {
					alert(msg)
				},
				error : function(msg) {
					alert(msg.status)
				}
			});
		}
</script>
</html>
