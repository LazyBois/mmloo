<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
        "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Title</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script src="../mmloo/js/jquery-1.11.3.min.js"></script>
<script src="../mmloo/js/user/myOrderList.js"></script>
<style type="text/css" media="screen">
@import url(../mmloo/css/user/myorderlist.css);
</style>
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
		.extra-l a{
			cursor:pointer;
		}
	</style>
</head>
<body style="background:#f5f5f5">
	<jsp:include page="head.jsp" flush="true"></jsp:include>
	<div id="main" style="margin-left:20%;width:60%;background:#f5f5f5;font-size:12px;">
		<div id="chunjie" class="mb10"></div>
		<div class="mod-main mod-comm mod-order" id="order01">
			<div class="mt">
				<h3>我的订单</h3>
				<div class="extra-r"></div>
			</div>
		</div>
		<div class="safety-box hide"></div>

		<div class="mod-main mod-comm lefta-box" id="order02">
			<div class="mt"">
				<ul class="extra-l">
					<li class="fore1"><a id="" class="txt curr">全部订单</a></li>
					<li><a id="ordertoPay"
						clstag="click|keycount|orderinfo|waitPay" class="txt">待付款</a></li>
					<li><a id="ordertoReceive"
						clstag="click|keycount|orderinfo|waitReceive" class="txt">待收货</a></li>
					<li><a id="ordertoComment" class="txt"
						clstag="click|keycount|orderinfo|daipingjia">待评价</a></li>
				</ul>	
			</div>
			<div class="mc">
				<table class="td-void order-tb">
					<colgroup width="">
						<col class="number-col">
						<col class="consignee-col">
						<col class="amount-col">
						<col class="status-col">
						<col class="operate-col">
					</colgroup>
					<thead>
						<tr class="number-col">
							<th class="consignee-col">
								<div class="ordertime-cont">
									<div class="time-txt">
										近三个月订单<b></b><span class="blank"></span>
									</div>
									<div class="time-list">
										<ul>
											<li><a href="#none" _val="1&amp;s=4096"
												clstag="click|keycount|orderlist|zuijinsangeyue"
												class="curr"><b></b>近三个月订单</a></li>
											<li><a href="#none" _val="2&amp;s=4096"
												clstag="click|keycount|orderlist|jinniannei"><b></b>今年内订单</a></li>
											<li><a href="#none" _val="2015&amp;s=4096"
												clstag="click|keycount|orderlist|2015"><b></b>2015年订单</a></li>
											<li><a href="#none" _val="2014&amp;s=4096"
												clstag="click|keycount|orderlist|2014"><b></b>2014年订单</a></li>
											<li><a href="#none" _val="2013&amp;s=4096"
												clstag="click|keycount|orderlist|2013"><b></b>2013年订单</a></li>
											<li><a href="#none" _val="3&amp;s=4096"
												clstag="click|keycount|orderlist|before_2013"><b></b>2013年以前订单</a></li>
										</ul>
									</div>
								</div>
								<script>
									$(function(){
										
									})
								</script>
								<div class="order-detail-txt ac">订单详情</div></th>
							<th class="amount-col">收货人</th>
							<th class="amount-col">金额</th>
							<th>
                                        <div class="deal-state-cont" id="orderState">
                                            <div class="state-txt">全部状态<b></b><span class="blank"></span></div>
                                            <div class="state-list" style="display:none">
                                                <ul>
                                                    <li value="4096">
                                                        <a onclick="optClick('')" clstag="click|keycount|orderlist|quanbuzhuangtai" class="curr"><b></b>全部状态</a>
                                                    </li>
                                                    <li value="1">
                                                        <a onclick="optClick('待付款')" clstag="click|keycount|orderlist|dengdaifukuan"><b></b>等待付款</a>
                                                    </li>
                                                    <li value="128" clstag="click|keycount|orderlist|dengdaishouhuo">
                                                        <a onclick="optClick('待收货')"><b></b>等待收货</a>
                                                    </li>
                                                    <li value="1024">
                                                        <a onclick="optClick('待评价')" clstag="click|keycount|orderlist|yiwancheng"><b></b>等待评价</a>
                                                    </li>
                                                     <li value="1024">
                                                        <a onclick="optClick('完成')" clstag="click|keycount|orderlist|yiwancheng"><b></b>完成</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </th>
							<th class="status-col">操作</th>
						</tr>
					</thead>
					<tbody id="tb-201854963391">
						<tr class="sep-row">
							<td colspan="5"></td>
						</tr>
						<tr class="tr-th">
							<td colspan="5">
								<span class="gap"></span> 
								<span
								class="dealtime" title="2016-07-01 08:48:01">2016-07-01
									08:48:01</span> <input id="datasubmit-20185496339"
								value="2016-07-01 08:48:01" type="hidden"> <span
								class="number">订单号：<a name="orderIdLinks"
									id="idUrl20185496339" target="_blank"
									href="//details.jd.com/normal/item.action?orderid=20185496339&amp;PassKey=28602B6EF97F2D8DFA7DDFD2CFE6D89E"
									clstag="click|keycount|orderinfo|order_num">20185496339</a>
								</span>
								<div class="tr-operate">
									<span class="order-shop"> <span class="shop-txt">京东</span>
										<a class="btn-im btn-im-jd" href="#none" title="联系客服"
										clstag="click|keycount|orderlist|ziyingchatim"></a>
									 <a title="删除" style="display: none;" href="#none"
										clstag="click|keycount|orderlist|dingdanshanchu"
										class="order-del" _orderid="20185496339"
										_passkey="A29A2BA09A4336D1DAE3CF983F08CDA2"></a>

								</div>
							</td>
						</tr>
						<tr class="tr-bd" id="track20185496339" oty="0,4,70">
							<td>
								<div class="goods-item p-11685552">
									<div class="p-img">
										<a href="" target="_blank"> <img class=""
											src="//img10.360buyimg.com/N6/s60x60_jfs/t946/187/814390737/295393/357448cf/554ada9aN90a57f8b.jpg"
											title="Spring MVC学习指南" data-lazy-img="done" height="60"
											width="60">

										</a>
									</div>
									<div class="p-msg">
										<div class="p-name">
											<a href="//item.jd.com/11685552.html" class="a-link"
												clstag="click|keycount|orderinfo|order_product"
												target="_blank" title="Spring MVC学习指南">Spring MVC学习指南</a>
										</div>
										<div class="p-extra">
											<ul class="o-info">
												<li><span class="o-similar J-o-similar"
													data-sku="11685552"><i></i><em>相似商品</em></span></li>
											</ul>
										</div>
									</div>
								</div>
								<div class="goods-number">x1</div>
								<div class="goods-repair"></div>
								<div class="clr"></div>
							</td>
							<td rowspan="6">
								<div class="consignee tooltip">
									<span class="txt">黄荣超</span><b></b>
									<div class="prompt-01 prompt-02" style="display: none;">
										<div class="pc">
											<strong>黄荣超</strong>
											<p>陕西咸阳市杨陵区城区西北农林科技大学北校区西区超市</p>
											<p>188****2425</p>
										</div>
										<div class="p-arrow p-arrow-left"></div>
									</div>
								</div>
							</td>
							<td rowspan="6">
								<div class="amount">
									<span>总额 ¥25037.70</span> <br> <span class="ftx-13">在线支付</span>
								</div>
							</td>
							<td rowspan="6">
								<div class="status">
									<span class="order-status ftx-03"> 已取消 </span> <br> <a
										href="" clstag="click|keycount|orderlist|dingdanxiangqing"
										target="_blank">订单详情</a>
								</div>
							</td>
							<td rowspan="6" id="operate20185496339">
								<div class="operate">
									<div id="pay-button-20185496339" _baina="0"></div>
									<a href="" class="btn-again" target="_blank"
										clstag="click|keycount|orderlist|buy"><b></b>立即购买</a><br>
								</div>
							</td>
						</tr>
						<tr class="tr-bd" id="track20185496339" oty="0,4,70">
							<td>
								<div class="goods-item p-10347003567">
									<div class="p-img">
										<a href="" target="_blank"> <img class=""
											src="//img10.360buyimg.com/N6/s60x60_jfs/t2665/82/1142116004/147304/65b7de53/5734500cN88cbe538.jpg"
											title="SAVA萨瓦黑爵钛合金山地车自行车 30速油刹单车禧玛诺XT变速 黑爵26寸运动版"
											data-lazy-img="done" height="60" width="60">

										</a>
									</div>
									<div class="p-msg">
										<div class="p-name">
											<a href="//item.jd.com/10347003567.html" class="a-link"
												clstag="click|keycount|orderinfo|order_product"
												target="_blank"
												title="SAVA萨瓦黑爵钛合金山地车自行车 30速油刹单车禧玛诺XT变速 黑爵26寸运动版">SAVA萨瓦黑爵钛合金山地车自行车
												30速油刹单车禧玛诺XT变速 黑爵26寸运动版</a>
										</div>
										<div class="p-extra">
											<ul class="o-info">
												<li><span class="o-similar J-o-similar"
													data-sku="10347003567"><i></i><em>相似商品</em></span></li>
											</ul>
										</div>
									</div>
								</div>
								<div class="goods-number">x1</div>
								<div class="goods-repair"></div>
								<div class="clr"></div>
							</td>
						</tr>
						<tr class="tr-bd" id="track20185496339" oty="0,4,70">
							<td>
								<div class="goods-item p-1424248904">
									<div class="p-img">
										<a href="" target="_blank"> <img class=""
											src="//img10.360buyimg.com/N6/s60x60_jfs/t535/235/1232561323/64671/b9360100/54c0e290N76ce7db6.jpg"
											title="SAVA 自行车扳手 配件 不单卖 只做赠品" data-lazy-img="done"
											height="60" width="60">
										</a>
									</div>
									<div class="p-msg">
										<div class="p-name">
											<a href="" clstag="click|keycount|orderinfo|order_product"
												target="_blank" title="SAVA 自行车扳手 配件 不单卖 只做赠品">SAVA
												自行车扳手 配件 不单卖 只做赠品</a>
										</div>
										<div class="p-extra">
											<ul class="o-info">
												<li><span class="o-similar J-o-similar"
													data-sku="1424248904"><i></i><em>相似商品</em></span></li>
											</ul>
										</div>
									</div>
								</div>
								<div class="goods-number">x1</div>
								<div class="goods-repair"></div>
								<div class="clr"></div>
							</td>
						</tr>
						<tr class="tr-bd" id="track20185496339" oty="0,4,70">
							<td>
								<div class="goods-item p-10420145120">
									<div class="p-img">
										<a href="" target="_blank"> <img class=""
											src="//img10.360buyimg.com/N6/s60x60_jfs/t2656/87/2362045232/182369/82715d6b/576108caNd832c174.jpg"
											title="SAVA男女骑行头盔一体成型头盔 山地自行车骑行装备  赠品专用不单卖  颜色随机发  送"
											data-lazy-img="done" height="60" width="60">

										</a>
									</div>
									<div class="p-msg">
										<div class="p-name">
											<a href="//item.jd.com/10420145120.html" class="a-link"
												clstag="click|keycount|orderinfo|order_product"
												target="_blank"
												title="SAVA男女骑行头盔一体成型头盔 山地自行车骑行装备  赠品专用不单卖  颜色随机发  送">SAVA男女骑行头盔一体成型头盔
												山地自行车骑行装备 赠品专用不单卖 颜色随机发 送</a>
										</div>
										<div class="p-extra">
											<ul class="o-info">
												<li><span class="o-similar J-o-similar"
													data-sku="10420145120"><i></i><em>相似商品</em></span></li>
											</ul>
										</div>
									</div>
								</div>
								<div class="goods-number">x1</div>
								<div class="goods-repair"></div>
								<div class="clr"></div>
							</td>
						</tr>
						<tr class="tr-bd" id="track20185496339" oty="0,4,70">
							<td>
								<div class="goods-item p-1407434455">
									<div class="p-img">
										<a href="" target="_blank"> <img class=""
											src="//img10.360buyimg.com/N6/s60x60_jfs/t697/89/7399961/119258/eed1cd28/547c64d4N9a5465f7.jpg"
											title="SAVA装车工具 只做赠品 不单卖 随机不指定颜色" data-lazy-img="done"
											height="60" width="60">
										</a>
									</div>
									<div class="p-msg">
										<div class="p-name">
											<a href="" target="_blank" title="SAVA装车工具 只做赠品 不单卖 随机不指定颜色">SAVA装车工具
												只做赠品 不单卖 随机不指定颜色</a>
										</div>
										<div class="p-extra">
											<ul class="o-info">
												<li><span class="o-similar J-o-similar"
													data-sku="1407434455"><i></i><em>相似商品</em></span></li>
											</ul>
										</div>
									</div>
								</div>
								<div class="goods-number">x1</div>
								<div class="goods-repair"></div>
								<div class="clr"></div>
							</td>
						</tr>
						<tr class="tr-bd">
							<td>
								<div class="tr-pd-more">
									<a href="" target="_blank">查看更多商品&gt;</a>
								</div>
								<div class="clr"></div>
							</td>
						</tr>
					</tbody>
					<tbody id="tb-20185496339" >
						<tr class="sep-row">
							<td colspan="5"></td>
						</tr>
						<tr class="tr-th">
							<td colspan="5">
							<span class="gap"></span> 
							<span class="dealtime" title="2016-07-01 08:48:01">2016-07-01 08:48:01</span> 
							<input id="datasubmit-20185496339" value="2016-07-01 08:48:01" type="hidden"> 
							<span class="number">
								订单号：<a name="orderIdLinks" id="idUrl20185496339" target="_blank" href="" clstag="click|keycount|orderinfo|order_num">20185496339</a>
							</span>
							<div class="tr-operate">
								<span class="order-shop"> <span class="shop-txt">京东</span>
								<a class="btn-im btn-im-jd" href="#none" title="联系客服"clstag="click|keycount|orderlist|ziyingchatim"></a>
								<a title="删除" style="display: none;" href="#none" clstag="click|keycount|orderlist|dingdanshanchu" class="order-del" _orderid="20185496339"
										_passkey=""></a>
							</div>
							</td>
						</tr>
						<tr class="tr-bd" id="track20185496339" oty="0,4,70" >
							<td>
								<div class="goods-item p-11685552">
									<div class="p-img">
										<a href="" target="_blank"> 
										<img class="" src="//img10.360buyimg.com/N6/s60x60_jfs/t946/187/814390737/295393/357448cf/554ada9aN90a57f8b.jpg"
											title="Spring MVC学习指南" data-lazy-img="done" height="60" width="60">
										</a>
									</div>
									<div class="p-msg">
										<div class="p-name">
											<a href="//item.jd.com/11685552.html" class="a-link"
												clstag="click|keycount|orderinfo|order_product"
												target="_blank" title="Spring MVC学习指南">Spring MVC学习指南</a>
										</div>
										<div class="p-extra">
											<ul class="o-info">
												<li><span class="o-similar J-o-similar"
													data-sku="11685552"><i></i><em>相似商品</em></span></li>
											</ul>
										</div>
									</div>
								</div>
								<div class="goods-number">x1</div>
								<div class="goods-repair"></div>
								<div class="clr"></div>
							</td>
							<td rowspan="1" style="margin-top:-10px">
								<div class="consignee tooltip" >
									<span class="txt">黄荣超</span><b></b>
									<div class="prompt-01 prompt-02" style="display: none;">
										<div class="pc">
											<strong>黄荣超</strong>
											<p>陕西咸阳市杨陵区城区西北农林科技大学北校区西区超市</p>
											<p>188****2425</p>
										</div>
										<div class="p-arrow p-arrow-left"></div>
									</div>
								</div>
								<div class="clr"></div>
							</td>
							<td rowspan="1">
								<div class="amount">
									<span>总额 ¥25037.70</span> <br> <span class="ftx-13">在线支付</span>
								</div>
							</td>
							<td rowspan="1">
								<div class="status">
									<span class="order-status ftx-03"> 已取消 </span> <br> <a
										href=""
										target="_blank">订单详情</a>
								</div>
							</td>
							<td rowspan="1" id="operate20185496339">
								<div class="operate">
									<div id="pay-button-20185496339" _baina="0"></div>
									<a href="javascript:void" class="btn-again" target="_blank"
										><b></b>立即购买</a><br>
								</div>
							</td>
						</tr>
					</tbody>
				</table>

				<div class="mt20">
					<div class="pagin fr">

						<!--  <span class="text">共1条记录</span>    <span class="text">共1页</span> -->
						<span class="prev-disabled" style="height:30px;">上一页<b></b></span>

						<!-- <span class="prev-disabled">首页</span> -->
						<a class="current">1</a>
						<!-- <span class="next-disabled">末页</span>  -->
						<span class="next-disabled" style="height:30px;">下一页<b></b></span>
					</div>
					<div class="clr"></div>
				</div>
			</div>
		</div>
	</div>
</body>

<script type="application/javascript">
    $(function () {
       
    });
</script>

</html>
