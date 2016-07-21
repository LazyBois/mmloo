<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="nwsuaf.mmloo.entity.Order" %>
<%@ page import="nwsuaf.mmloo.entity.Orderg" %>
<%@ page import="nwsuaf.mmloo.entity.Gshelves" %>
<%@ page import="nwsuaf.mmloo.entity.Gshelves" %>
<%@ page import="nwsuaf.mmloo.entity.Goods" %>
<%@ page import="nwsuaf.mmloo.entity.Shopcart" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">
    <title>Bootstrap 实例 - 水平表单</title>
    <meta charset="utf-8" />
    <link href="../mmloo/css/bootstrap.min.css" rel="stylesheet">
    <link href="../mmloo/css/user/submitCart.css" rel="stylesheet">
    <link rel="stylesheet" href="../mmloo/css/bootstrapValidator.css"/>
    <link rel="stylesheet" href="../mmloo/css/icon.css">
    <script src="../mmloo/js/jquery-1.11.3.min.js"></script>
    <script src="../mmloo/js/bootstrap.min.js"></script>
    <script src="http://files.cnblogs.com/rubylouvre/bootstrap-modal.js"></script>
    <script src="../mmloo/js/user/submitCart.js"></script>
    <script src="../mmloo/js/Popt.js"></script>
    <script src="../mmloo/js/cityJson.js"></script>
    <script src="../mmloo/js/citySet.js"></script>
    <script src="../mmloo/js/bootstrapValidator.js"></script>
</head>
<style>
    .goods_img{
        width:90px;
        height: 90px;
        margin-left: 40px;
        float:left;
    }
</style>

<body>
<jsp:include page="header.jsp" flush="true"></jsp:include>
<div class="container-fluid">
	<a data-toggle="modal" class="loadAddrModal"  data-url="addrForm.html" data-target="#addrModal" style="cursor:pointer;display: none"></a>
	<div id="addrModal" class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
    	<span>编辑地址</span>
	</div>

<form class=" table-bordered center-block" style="width: 60%;margin-top: 20px;" role="form">
        <div>
           <h4>&nbsp;&nbsp;<b>收货人信息</b></h4>
           <div class="address_list" id="address_list">
               <div class="addr_list_item">
                   <div class="address-btn alias pay-method-yes" name="alias">
                        <span>黄荣超 陕西</span>
                   </div>
                   <div name="address_info" class="address-info">
                       <span class="uname">黄荣超</span>&nbsp;
                       <span class="addr">陕西 咸阳市 杨陵区 城区西北农林科技大学北校区西区超市</span>&nbsp;
                       <span class="phone">188****2425</span>
                       <div class="address_edit">
                            <a style="cursor:pointer;" class="defaultAddr">设置默认地址</a>
                            <a data-toggle="modal" class="editAddr"  data-url="addrForm.html" data-target="#addrModal" style="cursor:pointer;">编辑</a>
                            <a style="cursor:pointer;" class="deleteAddr">删除</a>
                       </div>
                   </div>
               </div>
           </div>
            <div style="width: 100%;height: 40px; margin-top: 10px;margin-left: 50px;display: block;float: left;">
                <a data-toggle="modal" id="addAddr" data-target="#addrModal" style="cursor:pointer;display: block;float: left;">添加收货地址</a>
            </div>
            <div style="width: 100%;float: left;">
                <hr style="width: 96%;align: center;margin-top: 0px;border: 1px gainsboro solid;"/>
            </div>
        </div>
        <script>
        	isAddr();
        </script>
    <h4>&nbsp;&nbsp;<b>支付方式</b></h4>
    <div style="width: 100%; float: left">
        <div class="">
            <ul class="list-inline" id="pay_method" style="margin-top: 20px;">
                <li class="pay-method-li" style="margin-left: 5%;" >货到付款</li>
                <li class="pay-method-li" style="margin-left: 2%;" >微信支付 </li>
                <li class="pay-method-li pay-method-yes" style="margin-left: 2%;cursor:pointer;" >在线支付 </li>
                <li class="pay-method-li" style="margin-left: 2%;">邮件汇款</li>
            </ul>
        </div>
        <div style="width: 100%; float: left">
            <hr style="width: 96%;align: center;margin-top: 30px;border: 1px #ddd solid;"/>
        </div>
    </div>
			<h4>
				&nbsp;&nbsp;<b>送货清单</b>
			</h4>
			<div style="float:left; width: 100%;">
				<div class="remark-tit">添加订单备注</div>
				<hr style="width:92%">
				<table style="width:90%;margin-left:5%;">
					<thead>
						<td width="60%">商品信息</td>
						<td width="10%">商品价格</td>
						<td width="10%">商品数量</td>
						<td width="10%">商品总额</td>
					</thead>
					<tbody>
					<c:set var="totalPrice" value="0" scope="request"></c:set>
					<c:forEach items="${shopcart}" var="item"  varStatus="st">
						<tr height="100px;" id="${ item.gid }">
							<c:set var="bl" value="${item.goods.selfimage}" scope="request"></c:set>
						<% 
							String imgs = (String)request.getAttribute("bl"); 
						%>
							<td>
								<div class="goods_img" style="margin-left:0px;">
									<img width="100%" height="100%" src="../mmloo/<%=imgs.split("#")[0] %>">
								</div>
								<div class="goods_info"
									style="float: left;width: 450px;margin-left: 20px;margin-top: 20px;">
									<a href="product.do?productid=${ item.goods.gid}">${ item.goods.gname}</a>
									<div style="margin-top: 5px;margin-left: -25px;">
										<i class="p-icon p-icon-w"></i> <span
											style="color:#ff6c00;margin-top: 15px;">7天无理由退货</span>
									</div>
								</div>
							</td>
							<td>
								<div class="goods_price"
									style="width: 80px;float: left; height: 100%;margin-top: 40px;">
									<strong style="color: red;">￥${ item.goods.gprice }</strong>
								</div>
							</td>
							<td><div class="goods_count"
									style="width: 80px;float: left; height: 100%;margin-top: 40px;text-align:center;">
									<span>x${ item.snum }</span>
								</div></td>
							<td><div class="goods_price"
									style="width: 80px;float: left; height: 100%;margin-top: 40px;">
									<strong style="color: red;">￥<fmt:formatNumber type="number" value="${ item.snum * item.goods.gprice} " maxFractionDigits="2"/></strong>
								</div></td>
						</tr>
						<c:set var="totalPrice" value="${ item.snum * item.goods.gprice + totalPrice}" scope="request"></c:set>
						</c:forEach>
						
					</tbody>
				</table>
				<div class="goods_item"
					style="width: 100%;float: left;height: 100px;margin-top:10px;">

				</div>
				<div style="width: 100%;float: left;">
					<input type="text"
						style="margin-left: 5%;margin-top: 1%;width: 70%;"
						placeholder="添加订单备注的详细信息，请勿填写有关支付、收货、发票方面的信息">
				</div>
				<div style="width: 100%;float: left;">
					<hr
						style="width: 96%;align: center;margin-top: 30px;border: 1px #ddd solid;" />
				</div>
			</div>

			<h4>&nbsp;&nbsp;<b>发票信息</b></h4>
    <div style="float:left; width: 100%;">
        <div style="margin-left: 5%;">
            <span id="receiptSpan1">普通发票（纸质）</span>  &nbsp;
            <span id="receiptSpan2">个人</span>   &nbsp;&nbsp;
            <span id="receiptSpan3">明细</span>
            <a style="margin-left: 1%;cursor:pointer;color: red;" data-toggle="modal" data-target="#receiptModal">修改</a>
        </div>
        <div style="float:left; width: 100%;">
             <hr style="width: 96%;align: center;margin-top: 20px;border: 1px #ddd solid;"/>
        </div>
    </div>
    <h4>&nbsp;&nbsp;<b>使用优惠/抵用</b></h4>
    <ul id="myTab" class="nav nav-tabs center-block" style="width: 95%;">
        <li class="active">
            <a href="#home" data-toggle="tab">
                优惠券
            </a>
        </li>
        <li><a href="#ios" data-toggle="tab">礼品卡</a></li>
    </ul>
    <div id="myTabContent" class="tab-content center-block" style="width: 95%;border: 1px solid #ddd;border-top: 0px solid #ddd;padding: 10px;">
        <div class="tab-pane fade in active" id="home">
            
        </div>
        <div class="tab-pane fade" id="ios">
           
        </div>
    </div>
    <span class="label label-default center-block others-pay" style="background: rgb(244, 244, 244);">金额抵用
        <b style="margin-left: 10px;color: red;">￥100.00</b>
    </span>
    <br>
</form>

<div style="width: 60%;height: 80px; background: rgb(244, 244, 244);margin-top: 20px;" class="center-block">
    <div style="width: 100%;text-align: right;padding-right: 20px;padding-top: 10px;">
        <span style="font-size: 10px;">应付总额： </span>
        <span style="font-size: 20px;color: red;"><b>￥<fmt:formatNumber type="number" value="${ totalPrice} " maxFractionDigits="2"/></b></span>
    </div>
    <div style="width: 100%;text-align: right;padding-right: 20px;padding-top: 10px;">
        <span style="font-size: 10px;" id="sendAddr">寄送至： 陕西 西安市 杨凌农业示范区 城区  西北农林科技大学北校区</span>
        <span style="font-size: 10px;margin-left: 20px;" id="receiveName">收货人：黄荣超 188****2425</span>
    </div>
    <div style="width: 100%;margin-top: 30px;text-align: right;">
        <form id="cartForm">
            <input type="text" name="selectAddr" id="selectAddr" style="display: none" value="陕西 咸阳市 杨陵区 城区西北农林科技大学北校区西区超市" />
            <input type="text" name="payMethod" id="payMethod" style="display: none" value="在线支付" />
            <input type="text" name="uname" id="uname" style="display: none" value="黄荣超" />
            <input type="text" name="mobilPhone" id="mobilPhone"  style="display: none" value="188****2425" />
            <input type="text" name="receiptMethod" id="receiptMethod" style="display: none" value="普通发票" />
            <input type="text" name="receiptCompany" id="receiptCompany" style="display: none" value="个人" />
            <input type="text" name="receiptInfo" id="receiptInfo" style="display: none" value="明细" />
            <button type="button" id="cartSubmit" class="btn btn-danger btn-lg" style="border-radius: 0">
                	提交订单
            </button>
        </form>
    </div>
</div>
<script>
	$(function(){
		$('#cartSubmit').click(function(){
			var addr = $('#uname').val() + '-' + $('#selectAddr').val() + '-' + $('#mobilPhone').val();
			var payMethod = $('#payMethod').val();
			var billkind = $('#receiptMethod').val();
			var billtitle = $('#receiptCompany').val();
			var billcontent = $('#receiptInfo').val();
			$.ajax({
				type : "POST",
				contentType : "application/json",
				url : 'user/userInsertOrder.do?reinformation=' + addr + '&payMethod=' + payMethod
						+ '&billkind=' + billkind+ '&billtitle=' + billtitle+ '&billcontent=' + billcontent,
				data : {},
				datatype : "html",
				beforeSend : function() {
					//alert('user/userInsertOrder.do?reinformation=' + addr + '&payMethod=' + payMethod
							//+ '&billkind=' + billkind+ '&billtitle=' + billtitle+ '&billcontent=' + billcontent)
				},
				success : function(msg) {
					window.location.href = msg + '.do';
				},
				error : function(msg) {
					alert(msg.status)
				}
			});
		})
	})
</script>




<div class="modal fade" id="receiptModal" tabindex="-1" role="dialog"
     aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" style="border-radius: 0;height: 500px; width: 600px;">
        <div class="modal-content" style="border-radius: 0;border: 1px red solid; height: 100%;">
            <div class="modal-header" style="background: gainsboro; height: 40px;padding-top: 10px;">
                <button type="button" class="close"
                        data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                    发票信息
            </div>
            <div class="modal-body" style="border: 0;">
                <div class="" style="width: 100%; float: left;">
                    <ul class="list-inline" id="receipt_list" style="margin-top: 0px;">
                        <li class="pay-method-li pay-method-yes" style="margin-left: 5%;" onclick="setReceiptMethod(0)">普通发票</li>
                        <li class="pay-method-li" style="margin-left: 2%;"  onclick="setReceiptMethod(1)">电子发票 </li>
                        <li class="pay-method-li " style="margin-left: 2%;cursor:pointer;"  onclick="setReceiptMethod(2)">增值税发票 </li>
                    </ul>
                </div>
                <br>
                <div class="center-block" id="receipt_jobs" style="display: block;float: left;width: 90%;margin-top: 5px;float: left;">
                    <div style="float: left;margin-top: 15px;margin-left: 40px;">发票抬头：</div>
                    <div class="receipt_job receipt_job_yes" >
                        <span>个人</span>
                    </div>
                    <div class="receipt_job">
                        <span>单位</span>
                        <div class="showReceiptJobEdit">
                            <a class="deleteCompany">删除</a>
                            <a class="editCompany" style="margin-right: 20px;" data-toggle="modal" data-target="#addCompany">编辑</a>
                        </div>
                    </div>
                </div>
                <div style="float: left;margin-top: 10px;margin-left: 130px;">
                    <a data-toggle="modal" id="addComp" data-target="#addCompany" style="cursor:pointer;display: block;float: left;">添加单位</a>
                </div>
            </div>
            <div class="center-block" style="width: 90%;margin-left: 15px;float: left;">
                <div style="float: left;margin-top: 25px">非图书发票内容：</div>
                <ul class="list-inline" id="notBookReceipt_list" style="margin-top: 20px;">
                    <li class="pay-method-li pay-method-yes" style="margin-left: 3%;width: 60px;">明细</li>
                    <li class="pay-method-li" style="margin-left: 2%;width: 80px;"  onclick="setNotBookReceiptMethod(1)">办公用品</li>
                    <li class="pay-method-li " style="margin-left: 2%;cursor:pointer;width: 80px;" >电脑配件 </li>
                    <li class="pay-method-li " style="margin-left: 2%;cursor:pointer;width: 60px;" >耗材 </li>
                </ul>
            </div>
            <div class="center-block" style="width: 90%; margin-left: 15px;float: left;">
                <div style="float: left;margin-top: 25px;margin-left: 15px;">图书发票内容：</div>
                <ul class="list-inline" id="bookReceipt_list" style="margin-top: 20px;">
                    <li class="pay-method-li" style="margin-left: 3%;width: 80px;" >不开发票</li>
                    <li class="pay-method-li" style="margin-left: 2%;width: 60px;"  >图书</li>
                    <li class="pay-method-li " style="margin-left: 2%;cursor:pointer;width: 60px;" >资料</li>
                    <li class="pay-method-li " style="margin-left: 2%;cursor:pointer;width: 60px;"  >教程</li>
                    <li class="pay-method-li " style="margin-left: 2%;cursor:pointer;width: 60px;"  >音响</li>
                </ul>
            </div>
            <div class="modal-footer" style="border: 0;float: right;">
                <button type="button" class="btn btn-default"
                        data-dismiss="modal" style="border-radius: 0">关闭
                </button>
                <button id="saveReceiptBtn" type="button" class="btn btn-danger" style="border-radius: 0">
                    提交更改
                </button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
<div class="modal fade" id="addCompany" tabindex="-1" role="dialog"
     aria-labelledby="myModalLabel" aria-hidden="true" draggable="true">
    <div class="modal-dialog" style="border-radius: 0;height: 150px; width: 400px;">
        <div class="modal-content" style="border-radius: 0;border: 1px red solid; height: 100%;">
            <div class="modal-header" style="background: gainsboro; height: 40px;">
                <button type="button" class="close"
                        data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <span>发票信息</span>
            </div>
            <div class="modal-body">
                <div style="margin-left: 8px">
                    <input type="text" id="company" class="input-sm" size="50"/>
                </div>
                <br>
                <div class="center-block" style="margin-left: 200px;">
                    <button type="button" class="btn btn-default"
                            data-dismiss="modal" style="border-radius: 0">关闭
                    </button>
                    <button type="button" id="saveCompany" class="btn btn-danger" style="border-radius: 0">
                       	保存
                    </button>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
<script>
</script>

</body>
</html>
