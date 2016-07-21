/**
 * Created by PC on 2016/6/27.
 */
function editReceiptMethod(method){
    $('#receipt div').each(function (index) {
        if(index == method)
            $(this).addClass('pay-method-yes');
        else
            $(this).removeClass('pay-method-yes');
    });
}
$(function(){
    /**
     * 下面这部分收获地址有关
     */
    //------------------------------------------------------------------------------------------------------------------
    /**
     * 加载addModal
     */
    $('#addrModal').load($('.loadAddrModal').attr('data-url'));

    //SelCity( $("#city"),e);

    $("#ds_host").hover(function(){
            //鼠标经过的操作.
            $('#set').show();
            $('#edit').show();
            $('#delete').show();
        },
        function(){
            //鼠标离开的操作
            $('#set').hide();
            $('#edit').hide();
            $('#delete').hide();
        });
    /**
     * 显示收到地址的相关操作
     */
    $("div[name=address_info]").hover(function(){
            //鼠标经过的操作
            // $('#address_info').attr('background', 'red');
            $(this).css('background', 'mistyrose');
            $(this).find('.address_edit').css('display', 'block');
        },
        function(){
            //鼠标离开的操作
            $('div[name=address_info]').css('background', 'ghostwhite');
            $('.address_edit').css('display', 'none');
        });
    /**
     * 设置编辑地址内容的
     */
        $('.editAddr').click(function () {
        	$('#addrModal').find('.modal-header').find('span').text('编辑地址');
            $(this).parent().parent().parent().addClass('editing');
            var alias = $('.alias').find('span').html();
            $('#uname1').val($(this).parent().parent().find('.uname').html());
            $('#city').val($(this).parent().parent().find('.addr').text());
            $('#addr_info').val($(this).parent().parent().find('.address').html());
            $('#mobilephone').val($(this).parent().parent().find('.phone').html());
            $('#aliasName').val(alias);
            $('#addressid').val($(this).parent().parent().parent().attr('id'));
        });

    /**
    * 添加地址事件
    */
    $('#addAddr').click(function () {
    	$('#addrModal').load($('.loadAddrModal').attr('data-url'));
    });
    /**
     * 保存编辑或添加的地址信息
     */
    $('#saveAddr').click(function () {
        if($('#addrModal').find('.modal-header').find('span').html() == '添加地址') {
            $('#address_list').append('<div class="addr_list_item" >'
                +'<div class="address-btn alias" name="alias">'
                +'<span>黄荣超 陕西</span>'
                +'</div>'
                +'<div name="address_info" class="address-info">'
                +'<span class="uname">黄荣超</span>&nbsp;'
                +'<span class="addr">北京 咸阳市 杨陵区 城区西北农林科技大学北校区西区超市</span>&nbsp;'
                +'<span class="phone">188****2425</span>'
                +'<div class="address_edit">'
                +'<a style="cursor:pointer;" class="defaultAddr">设置默认地址</a>&nbsp;'
                +'<a data-toggle="modal" class="editAddr" data-target="#addrModal" style="cursor:pointer;">编辑</a>&nbsp;'
                +'<a style="cursor:pointer;" class="deleteAddr">删除</a>'
                +'</div>'
                +'</div>'
                +'</div>');
            resetAddrInfo();
        }
        else
            alert('bbb');
        $('#addrModal').modal('hide')
    });
    /**
     * 选择收货地址
     */
    $('.alias').click(function () {
        var obj = this;
        $('.alias').each(function () {
            if(this == obj) {
                $(this).addClass('pay-method-yes');
                $('#selectAddr').val($(this).parent().find('.addr').html());
                $('#uname').val($(this).parent().find('.uname').html());
                $('#mobilPhone').val($(this).parent().find('.phone').html());
                $('#sendAddr').val($('#selectAddr'));
            }
            else {
                $(this).removeClass('pay-method-yes');
            }
        });

    });
    /**
     * 设置为默认收货地址
     */
    $('.defaultAddr').click(function () {
            //alert('default');

    });
    /**
     * 删除收货地址
     */
    $('.deleteAddr').click(function () {
        alert('delete');
        $(this).parent().parent().parent().remove();
    });
    /**
     * 当收货地址modal关闭后，进行数据重置
     */
    $('body').on('hidden.bs.modal', '#addrModal', function () {
        $(this).removeData('bs.modal');
    });


    //----------------------------------------------------------------------------------------------------------------//
    /**
     * 收获地址部分结束
     * 下面与发票有关
     */
    //----------------------------------------------------------------------------------------------------------------//
    /**
     * 选择收货单位
     */
    $('.receipt_job').click(function () {
        var obj = this;
        $('.receipt_job').each(function (index) {
            if(this == obj) {
                $(this).addClass('receipt_job_yes');
                $('#receiptCompany').val($(this).find('span').html());
            }
            else
                $(this).removeClass('receipt_job_yes');
        });
    });
    /**
     * 显示发票单位的相关操作
     */
    $(".receipt_job").hover(function(){
            //鼠标经过的操作
            // $('#address_info').attr('background', 'red');
            $(this).css('background', 'mistyrose');
            $(this).find('.showReceiptJobEdit').css('display', 'block');
        },
        function(){
            //鼠标离开的操作
            $(this).css('background', 'ghostwhite');
            $('.showReceiptJobEdit').css('display', 'none');
        });
    /**
     * 发票编辑居中显示
     */
    $('#receiptModal').on('show.bs.modal', function (e) {
        $(this).find('.modal-dialog').css({
            'margin-top': function () {
                var modalHeight = $('#receiptModal').find('.modal-dialog').height();
                return ($(window).height() / 2 - (modalHeight / 2));
            }
        });
    });
    /**
     * 地址编辑居中显示
     */
    $('#addCompany').on('show.bs.modal', function (e) {
        $(this).find('.modal-dialog').css({
            'margin-top': function () {
                var modalHeight = $('#addCompany').find('.modal-dialog').height();
                return ($(window).height() / 2 - (modalHeight + 150));
            }
        });
    });


    /**
     * 删除发票单位
     */
    $('.deleteCompany').click(function () {
        $(this).parent().parent().remove();
        if($('.receipt_job').size() == 1)
            $('.receipt_job').each(function (index) {
                $(this).addClass('receipt_job_yes');
            });
    });

    /**
     * 编辑发票单位
     */
    $('.editCompany').click(function () {
        $('#addCompany').find('.modal-header').find('span').text('编辑发票单位');
        $('#company').val($(this).parent().parent().find('span').html());
        $(this).addClass('editing');
    });
    /**
     * 添加发票单位，进行编辑
     */
    $('#addComp').click(function () {
        $('#addCompany').find('.modal-header').find('span').text('添加发票单位');
        $('#company').val('');
    });
    /**
     * 保存发票单位
     */
    $('#saveCompany').click(function () {
        if($('#company').val() == ''){
            alert('请输入单位名称')
            return;
        }
        if($('#addCompany').find('.modal-header').find('span').text() == '添加发票单位') {
            //添加新的发票单位
            $('#receipt_jobs').append('<div class="receipt_job">'
                + '<span>' + $('#company').val() + '</span>'
                + '<div class="showReceiptJobEdit">'
                + '<a class="deleteCompany">删除</a>'
                + '<a class="editCompany" style="margin-right: 20px;" data-toggle="modal" data-target="#addCompany">编辑</a>'
                + '</div>'
                + '</div>');
        }
        else{//编辑发票单位
            $('.editCompany').each(function () {
                if($(this).hasClass('editing')){
                    $(this).parent().parent().find('span').text($('#company').val());
                    $(this).removeClass('editing');
                }
            })
        }


        $('#addCompany').modal('hide');
        resetCompanyCss();
    });
    /**
     * 图书类发票选择
     */
    $('#bookReceipt_list li').click(function () {
        var obj = this;
        $('#bookReceipt_list li').each(function () {
            if(obj == this) {
                $(this).addClass('pay-method-yes');
                $('#receiptInfo').val($(this).html());
            }
            else
                $(this).removeClass('pay-method-yes');
        });
        $('#notBookReceipt_list li').each(function () {
            $(this).removeClass('pay-method-yes');
        });
    });
    $('#saveReceiptBtn').click(function () {
        if($('#receiptMethod').val() == '普通发票')
            $('#receiptSpan1').text($('#receiptMethod').val() + '（纸质）');
        else
            $('#receiptSpan1').text($('#receiptMethod').val());
        $('#receiptSpan2').text($('#receiptCompany').val());
        $('#receiptSpan3').text($('#receiptInfo').val());
        $('#receiptModal').modal('hide');
    });
    /**
     * 非图书类发票选择
     */
    $('#notBookReceipt_list li').click(function () {
        var obj = this;
        $('#notBookReceipt_list li').each(function () {
            if(obj == this){
                $(this).addClass('pay-method-yes');
                $('#receiptInfo').val($(this).html());
            }
            else
                $(this).removeClass('pay-method-yes');
        });
        $('#bookReceipt_list li').each(function () {
            $(this).removeClass('pay-method-yes');
        });
    });

    $('#receipt_list li').click(function () {
        var obj = this;
        $('#receipt_list li').each(function () {
            if(this == obj){
                $(this).addClass('pay-method-yes');
                $('#receiptMethod').val($(this).html());
            }
            else
                $(this).removeClass('pay-method-yes');
        });
    });

    $('#pay_method li').click(function () {
        var obj = this;
        $('#pay_method li').each(function () {
            if(this == obj) {
                $(this).addClass('pay-method-yes');
                $('#payMethod').val($(this).html());
                alert($('#payMethod').val())
            }
            else {
                $(this).removeClass('pay-method-yes');
            }
        });
    });
});
/**
 * 添加先新地址
 * @param alias
 * @param uname
 * @param address_info
 * @param phone
 */
function dynamicDddAdrres(alias, uname, addr_info, phone, isAdd) {
    var isEdit = 0;
    $('.addr_list_item').each(function () {
        if($(this).hasClass('editing')){
            isEdit = 1;
            $(this).removeClass('editing');
            alert($(this).find('.address-info').html());
            return;
        }
    });
    if(isEdit == 0) {
        $('#address_list').append('<div class="addr_list_item" >'
            +'<div class="address-btn alias" name="alias">'
            +'<span>'+alias+'</span>'
            +'</div>'
            +'<div name="address_info" class="address-info">'
            +'<span class="uname">'+uname+'</span>&nbsp;'
            +'<span class="addr">'+addr_info+'</span>&nbsp;'
            +'<span class="phone">'+phone+'</span>'
            +'<div class="address_edit">'
            +'<a style="cursor:pointer;" class="defaultAddr">设置默认地址</a>&nbsp;'
            +'<a data-toggle="modal" class="editAddr" data-target="#addrModal" style="cursor:pointer;">编辑</a>&nbsp;'
            +'<a style="cursor:pointer;" class="deleteAddr">删除</a>'
            +'</div>'
            +'</div>'
            +'</div>');
        resetAddrInfo();
    }
   alert($('#addrModal').modal('hide'));
}

function isAddr() {
	$('.address_list div').remove();
    $.ajax({
        type : "POST",
        contentType : "application/json",
        url : 'user/showAddress.do',
        data : {},
        datatype : "html",// "xml", "html", "script", "json",
        // "jsonp", "text".
        beforeSend : function() {
            
        },
        success : function(msg) {
            var json = $.parseJSON(msg);
            for(var i = 0; i < json.length; i++){
            	addToSubmitCart(json[i]);
            }
            resetAddrInfo();
        },
        // 调用出错执行的函数
        error : function(msg) {
            // 请求出错处理
            alert(msg.status)
        }
    });
}
function addToSubmitCart(address) {
	$('.address_list')
			.append(
					' <div class="addr_list_item" id="'+address.addressid+'">'
							+'<div class="address-btn alias pay-method-yes" name="alias">'
							+ '<span>'+address.addressalias+'</span>'
							+ '</div>'
							+ '<div name="address_info" class="address-info">'
							+ ' <span class="uname">'+address.rname+'</span>&nbsp;'
							+ ' <span class="addr">'+ address.province + '-' + address.city + '-' + address.country + '</span>&nbsp;'
							+'&nbsp;&nbsp;<span class="address">' +  address.address + '</span>&nbsp;&nbsp;'
							+ '<span class="phone">'+address.phone+'</span>'
							+ ' <div class="address_edit">'
							+ ' <a style="cursor:pointer;" class="defaultAddr">设置默认地址</a>'
							+ ' <a data-toggle="modal" class="editAddr"  data-url="addrForm.html" data-target="#addrModal" style="cursor:pointer;">编辑</a>'
							+ ' <a style="cursor:pointer;" class="deleteAddr">删除</a>'
							+ ' </div>' + '</div>' + '</div><div><br/>')
}
/**
 * 当添加新的地址时，使新地址能使用对应的方法和属性
 */
function resetAddrInfo() {
    /**
     * 显示收货地址相关操作
     * 
     */
	$('.alias').each(function(index){
		
		if(index == 0){
			$(this).addClass('pay-method-yes');
            $('#selectAddr').val($(this).parent().find('.addr').html());
            $('#uname').val($(this).parent().find('.uname').html());
            $('#mobilPhone').val($(this).parent().find('.phone').html());
            $('#receiveName').text("收货人："  + $('#uname').val() + "  " + $('#mobilPhone').val());
            $('#sendAddr').text("寄送至：" + $('#selectAddr').val() + "  " + $(this).parent().find('.address').html());
		}else{
			$(this).removeClass('pay-method-yes');
		}
	})
    $("div[name=address_info]").hover(function(){
            //鼠标经过的操作
            // $('#address_info').attr('background', 'red');
            $(this).css('background', 'mistyrose');
            $(this).find('.address_edit').css('display', 'block');
        },
        function(){
            //鼠标离开的操作
            $('div[name=address_info]').css('background', 'ghostwhite');
            $('.address_edit').css('display', 'none');
        });
    /**
     * 编辑收获地址
     */
    $('.editAddr').click(function () {
        $('#addrModal').find('.modal-header').find('span').text('编辑地址');
        $(this).parent().parent().parent().addClass('editing');
        var alias = $('.alias').find('span').html();
        $('#uname1').val($(this).parent().parent().find('.uname').html());
        $('#city').val($(this).parent().parent().find('.addr').text());
        $('#addr_info').val($(this).parent().parent().find('.address').html());
        $('#mobilephone').val($(this).parent().parent().find('.phone').html());
        $('#aliasName').val(alias);
        $('#addressid').val($(this).parent().parent().parent().attr('id'));
    });
    /**
     * 更改收获地址的样式
     */
    $('.alias').click(function () {
        var obj = this;
        $('.alias').each(function () {
            if(this == obj) {
                $(this).addClass('pay-method-yes');
                $('#selectAddr').val($(this).parent().find('.addr').html());
                $('#uname').val($(this).parent().find('.uname').html());
                $('#mobilPhone').val($(this).parent().find('.phone').html());
                $('#receiveName').text("收货人："  + $('#uname').val() + "  " + $('#mobilPhone').val());
                $('#sendAddr').text("寄送至：" + $(this).parent().find('.addr').html() + "  " + $(this).parent().find('.address').html());
                
            }
            else {
                $(this).removeClass('pay-method-yes');
            }
        });

    });
    /**
     * 删除选中的收获地址
     */
    $('.deleteAddr').click(function () {
        $(this).parent().parent().parent().remove();
        var addressid = $(this).parent().parent().parent().attr('id')
        $.ajax({
            type : "POST",
            contentType : "application/json",
            url : 'user/deleAddress.do?addressid=' + addressid,
            data : {},
            datatype : "html",
            beforeSend : function() {
                
            },
            success : function(msg) {
                if(msg == 'true')
                	isAddr();
            },
            error : function(msg) {
                alert(msg.status)
            }
        });
        
    });
    /**
     * 设置为默认收货地址
     */
    $('.defaultAddr').click(function () {
        //alert('default');

    });
}
function resetCompanyCss(){
    $(".receipt_job").hover(function(){
            //鼠标经过的操作
            // $('#address_info').attr('background', 'red');
            $(this).css('background', 'mistyrose');
            $(this).find('.showReceiptJobEdit').css('display', 'block');
        },
        function(){
            //鼠标离开的操作
            $(this).css('background', 'ghostwhite');
            $('.showReceiptJobEdit').css('display', 'none');
        });
    /**
     * 选择收货单位
     */
    $('.receipt_job').click(function () {
        var obj = this;
        $('.receipt_job').each(function (index) {
            if(this == obj) {
                $(this).addClass('receipt_job_yes');
                $('#receiptCompany').val($(this).find('span').html());
            }
            else
                $(this).removeClass('receipt_job_yes');
        });
    });
    /**
     * 删除发票单位
     */
    $('.deleteCompany').click(function () {
        $(this).parent().parent().remove();
        if($('.receipt_job').size() == 1)
            $('.receipt_job').each(function (index) {
                $(this).addClass('receipt_job_yes');
            });
    });

    /**
     * 编辑发票单位
     */
    $('.editCompany').click(function () {
        $('#addCompany').find('.modal-header').find('span').text('编辑发票单位');
        $('#company').val($(this).parent().parent().find('span').html());
        $(this).addClass('editing');
    });
    /**
     * 添加新的发票单位
     */
    $('#addComp').click(function () {
        $('#addCompany').find('.modal-header').find('span').text('添加发票单位');
        $('#company').val('');
    });
}


