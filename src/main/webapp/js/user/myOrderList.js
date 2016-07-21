/**
 * 
 */
$(function() {
	$('.tooltip').hover(function() {
		$(this).find('.prompt-01').css('display', 'inline')
	}, function() {
		$(this).find('.prompt-01').css('display', 'none')
	});
	loadFirst();
	$('.mt .extra-l a').click(function() {
		var obj = this;
		$('.extra-l a').each(function() {
			if (this == obj) {
				$(this).addClass('curr');
			} else {
				$(this).removeClass('curr');
			}
		});
		if($(this).text() == '全部订单')
			show = '';
		else
		    show = $(this).text();
		$('tbody').remove();
		$.ajax({
			type : "POST",
			contentType : "application/json",
			url : 'user/showOrder.do?state=' + show,
			data : {},
			datatype : "html",
			beforeSend : function() {
				//alert('user/showOrder.do?state=' + show)
			},
			success : function(msg) {
				var json = $.parseJSON(msg);
				for (var i = 0; i < json.data.length; i++)
					addToTable1(json.data[i]);
				$('table').append(tbodys);
				tbodys = "";
				setTbodyOpt();
			},
			error : function(msg) {
				alert(msg.status)
			}
		});
	})
	$('.ordertime-cont').hover(function() {
		$('.ordertime-cont .time-list').css('display', 'block')
		$(this).css('background', '#fff')
	}, function() {
		$('.ordertime-cont .time-list').css('display', 'none')
		$(this).css('background', '#f5f5f5');
	})

	$('.deal-state-cont').hover(function() {
		$('.deal-state-cont .state-list').css('display', 'block')
		$(this).css('background', '#fff')
	}, function() {
		$('.deal-state-cont .state-list').css('display', 'none')
		$(this).css('background', '#f5f5f5');
	})

	$('.time-list li').click(function(index) {
		var obj = this;
		$('.time-list li').each(function(index) {
			if (obj == this) {
				$(this).find('a').addClass('curr');
				//
				$(this).find('a').find('b').css('top', index * 30 + 20 + 'px');
			} else
				$(this).find('a').removeClass('curr');
		})
	})
	$('.state-list li').click(function(index) {
		var obj = this;

		$('.state-list li').each(function(index) {
			if (obj == this) {
				$(this).find('a').addClass('curr');

			} else
				$(this).find('a').removeClass('curr');
		});
	});
	$('#ip_keyword').focus(function() {
		$(this).val('');
	});
	$('#ip_keyword').blur(function() {
		if ($(this).val() == '')
			$(this).val('商品名称/商品编号/订单号');
	});
});
var tbodys = "";
function addToTable1(order) {

	/**
	 * 商品编号无法获取
	 */
	tbodys = tbodys +getTbody(order);
}
function getTbody(order) {
	var tbody = '<tbody id="tb-'+order.orderid+'">'
		+'<tr class="sep-row">'
		+'<td colspan="5"></td>'
		+'</tr>'
		+'<tr class="tr-th">'
		+'<td colspan="5">'
		+'<span class="gap"></span> '
		+'<span class="dealtime" title="'+order.ordertime+'">'+order.ordertime+'</span> '
		+'<input id="datasubmit-'+order.orderid+'" value="'+order.ordertime+'" type="hidden"> '
		+'<span class="number">'
		+'订单号：<a name="orderIdLinks" id="idUrl'+order.orderid+'" target="_blank" href="" clstag="click|keycount|orderinfo|order_num">'+order.orderid+'</a>'
		+'</span>'
		+'<div class="tr-operate">'
		+'<span class="order-shop"> <span class="shop-txt">'+order.mname+'</span>'
		+'<a class="btn-im btn-im-jd" href="#none" title="联系客服"clstag="click|keycount|orderlist|ziyingchatim"></a>'
		+'<a title="删除" style="display: none;" href="#none" clstag="click|keycount|orderlist|dingdanshanchu" class="order-del" _orderid="'+order.orderid+'"'
		+'_passkey=""></a>'
		+'</div></td></tr>';
	for(var i = 0; i < order.ordergs.length; i++){
		if(i < 1){
			if(addToTbody(order, order.ordergs.length, order.ordergs[i], i) == "")
				return "";
			tbody = tbody + addToTbody(order, order.ordergs.length, order.ordergs[i], i)
		}
		else
			tbody = tbody + addToTr(order, order.ordergs.length, order.ordergs[i], i)
	};
	tbody = tbody + '<tbody>';
	
	return tbody;
}
function addToTbody(order, count, ordergs, i) {
	//var imgs = ordergs.goods.selfimage;
	//alert(JSON.stringify(ordergs))
	var imgs = "";
	if(typeof(ordergs.goods) != "undefined"){
		imgs = ordergs.goods.selfimage + "";
	}else 
		return "";
	
	var addr = order.reinformation.split("#");
	var tr = '<tr class="tr-bd" id="track'+order.ordertime+'" oty="0,4,70" >'
			+'<td>'
			+'<div class="goods-item p-'+ordergs.gid+'">'
			+'<div class="p-img">'
			+'<a href="" target="_blank"> '
			+'<img class="" src="../mmloo/'+imgs.split("#")[0]+'"'
			+'title="Spring MVC学习指南" data-lazy-img="done" height="60" width="60">'
			+'</a>'
			+'</div>'
			+'<div class="p-msg">'
			+'<div class="p-name">'
			+'<a href="product.do?productid='+ordergs.gid+'" class="a-link"'
			+'clstag="click|keycount|orderinfo|order_product"'
			+'target="_blank" title="'+ordergs.goods.gname+'">'+ordergs.goods.gname+'</a>'
			+'</div>'
			+'<div class="p-extra">'
			+'<ul class="o-info">'
			+'<li><span class="o-similar J-o-similar"'
			+'		data-sku="'+ordergs.gid+'"><i></i><em>相似商品</em></span></li>'
			+'</ul>'
			+'</div>'
			+'</div>'
			+'</div>'
			+'<div class="goods-number">x'+ordergs.gnumber+'</div>'
			+'<div class="goods-repair"></div>'
			+'<div class="clr"></div>'
			+'</td>'
			+'<td rowspan="'+count+'" style="margin-top:-10px">'
			+'<div class="consignee tooltip" >'
			+'<span class="txt">'+addr[0]+'</span><b></b>'
			+'<div class="prompt-01 prompt-02" style="display: none;">'
			+'<div class="pc">'
			+'<strong>'+addr[0]+'</strong>'
			+'<p>'+addr[1]+'</p>'
			+'<p>'+addr[2]+'</p>'
			+'</div>'
			+'<div class="p-arrow p-arrow-left"></div>'
			+'</div>'
			+'</div>'
			+'<div class="clr"></div>'
			+'</td>'
			+'<td rowspan="'+count+'">'
			+'<div class="amount">'
			+'<span>总额 ¥'+order.totalprice+'</span> <br> <span class="ftx-13">在线支付</span>'
			+'</div>'
			+'</td>'
			+'<td rowspan="'+count+'">'
			+'<div class="status">'
			+'<span class="order-status ftx-03"> '+order.status+'</span> <br> <a'
			+'href=""'
			+'target="_blank">订单详情</a>'
			+'</div>'
			+'</td>'
			+'<td rowspan="'+count+'" id="operate'+order.orderid+'">'
			+'<div class="operate">'
			+'<div id="pay-button-'+order.orderid+'" _baina="0"></div>'
			+'<a href="javascript:void" class="btn-again"'
			+'><b></b>立即购买</a><br>'
			+'</div></td></tr>';
	return tr;
}
function addToTr(order, count, ordergs, i){
    var imgs = order.ordergs[i - 1].goods.selfimage + "";
	var tr = '<tr class="tr-bd" id="track'+ordergs.gid+'" oty="0,4,70">'
			+ '<td>'
			+ '<div class="goods-item p-'+ordergs.gid+'">'
			+ '<div class="p-img">'
			+ '<a href="" target="_blank"> <img class=""'
			+ '	src="../mmloo/'+imgs.split("#")[1]+'" '
			+ 'title="SAVA 自行车扳手 配件 不单卖 只做赠品" data-lazy-img="done"'
			+ '	height="60" width="60">' + '</a>' + '</div>'
			+ '<div class="p-msg">' + '<div class="p-name">'
			+ '<a href="" clstag="click|keycount|orderinfo|order_product"'
			+ 'target="_blank" title="'+order.ordergs[0].goods.gname+'">SAVA'
			+ ''+order.ordergs[0].goods.gname+'</a>' + '</div>' + '<div class="p-extra">'
			+ '<ul class="o-info">' + '<li><span class="o-similar J-o-similar"'
			+ 'data-sku="'+ordergs.gid+'"><i></i><em>相似商品</em></span></li>'
			+ '</ul>' + '</div>' + '</div>' + '</div>'
			+ '<div class="goods-number">x'+ordergs.gnumber+'</div>'
			+ '<div class="goods-repair"></div>'
			+'<div class="clr"></div></td></tr>';
	return tr;
}
function setTbodyOpt() {
	$('.tooltip').hover(function() {
		$(this).find('.prompt-01').css('display', 'inline')
	}, function() {
		$(this).find('.prompt-01').css('display', 'none')
	});
	$('.btn-again').click(function() {
		alert($(this).parent().find('div').attr('id'));

	});
	$('.order-del').click(function() {
		alert($(this).parent().parent().parent().parent().parent().attr('id'));

	});
}
function loadFirst() {
	$('tbody').remove();
	$.ajax({
		type : "POST",
		contentType : "application/json",
		url : 'user/showOrder.do?state=',
		data : {},
		datatype : "html",
		beforeSend : function() {

		},
		success : function(msg) {
			var json = $.parseJSON(msg);
			for (var i = 0; i < json.data.length; i++)
				addToTable1(json.data[i]);
			$('table').append(tbodys);
			tbodys = "";
			setTbodyOpt();
		},
		error : function(msg) {
			alert(msg.status)
		}
	});
}