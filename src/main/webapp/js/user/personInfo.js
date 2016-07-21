/**
 * Created by PC on 2016/7/8.
 */
/**
 *
 */
function isSubmit() {
    if($('input[name=email]').val() == '' || $('#emailIcon').find('i').hasClass('fa-close') || ('#phoneIcon').find('i').hasClass('fa-close'))
        return;
    $.ajax({
        type : "POST",
        url : 'checkMail.do?mail=' + $('input[name=email]').val(),
        data : {},
        datatype : "json",// "xml", "html", "script", "json",
        // "jsonp", "text".
        beforeSend : function() {
            alert('checkMail.do?mail=' + $('input[name=email]').val())
        },
        success : function(msg) {
            alert(msg)
            //window.location.href = 'index.do';
        },
        // 调用出错执行的函数
        error : function() {
            // 请求出错处理
            alert('请求出错')
        }
    });
}
function infoSubmit(){
	
}

function isPicture(obj) {
    //alert("修改头像");
	$('.personInfo').each(function (){
		if(this == obj)
			$(this).addClass('curr')
		else
			$(this).removeClass('curr')
	})
    $("#pictureBox").css("display","");
    $("#messageBox").css("display","none");
    $("#addressBox").css("display","none");
    $("#setPasswordBox").css("display","none");

}
function isMessage(obj) {
	$('.personInfo').each(function (){
		if(this == obj)
			$(this).addClass('curr')
		else
			$(this).removeClass('curr')
	})
    $("#pictureBox").css("display","none");
    $("#addressBox").css("display","none");
    $("#setPasswordBox").css("display","none");
    $("#messageBox").css("display","");
}
function isSetPassword(obj){
	$('.personInfo').each(function (){
		if(this == obj)
			$(this).addClass('curr')
		else
			$(this).removeClass('curr')
	});
    $("#pictureBox").css("display","none");
    $("#messageBox").css("display","none");
    $("#setPasswordBox").css("display","");
    $("#addressBox").css("display","none");
}
function isAddress(obj) {
	$('.personInfo').each(function (){
		if(this == obj)
			$(this).addClass('curr')
		else
			$(this).removeClass('curr')
	})
    $("#pictureBox").css("display","none");
    $("#messageBox").css("display","none");
    $("#setPasswordBox").css("display","none");
    $("#addressBox").css("display","");
    $('.address-box').remove();
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
                addAddressToBox(json[i]);
            }
            setAddressOpt();
        },
        // 调用出错执行的函数
        error : function(msg) {
            // 请求出错处理
            alert(msg.status)
        }
    });
}
function addAddressToBox(address){
    $('.addressList').append('<div class="address-box" id="'+address.addressid+'">'
        +'<br>'
        +'<div name="sub-box" class="address-title-2">'
        +'<span>'+address.rname+ '&nbsp;&nbsp'+ address.province +'</span>'
        +'<a style="cursor: pointer" title="已设为默认，点此取消">'
        +'<i name="defaultIcon" class="fa fa-thumb-tack" style="margin-left: 15px;display:none"></i>'
        +'</a>'
        +'</div>'
        +'<div class="address-left">'
        +'<span class="address-label">收货人：</span>'
        +'<spanclass="address-label">所在地区：</span>'
        +'<span class="address-label">地址：</span>'
        +'<span class="address-label">手机：</span>'
        +'<span class="address-label">固定电话：</span>'
        +'<span class="address-label">电子邮箱：</span>'
        +'<span class="address-label">地址别名：</span>'
        +'</div>'
        +'<div class="address-right">'
        +'<span class="address-label uname">'+address.rname+'</span>'
        +'<span class="address-label city">'+ address.province + '-' + address.city + '-' + address.country + address.town+'</span>'
        +'<span class="address-label addr_info">'+address.address+'</span>'
        +'<span class="address-label mobliephone">'+address.phone+'</span>'
        +'<span class="address-label telphone">'+(typeof(address.tel) == undefined || address.tel == '' ? '<br>' : address.tel)+'</span>'
        +'<span class="address-label email">'+(address.remail == '' ? '<br>' : address.remail)+'</span>'
        +'<span class="address-label alias">'+(address.addressalias == '' ? '<br>' : address.addressalias) + '</span>'
        +'</div>'
        +'<ul>'
        +'<a name="deleteBtn" style="cursor: pointer;" title="删除">'
        +'<i name="deleteIcon" class="fa fa-trash-o address-i"></i></a>'
        +'<a name="changeBtn" style="cursor: pointer;" data-toggle="modal" class="editAddr" data-target="#addrModal" title="修改">'
        +'<i name="changeIcon" class="fa fa-wrench address-i"></i></a>'
        +'<a name="setDefaultBtn" style="cursor: pointer" title="设为默认">'
        +'<i name="setDefault" class="fa fa-check address-i"></i>'
        +'</a>'
        +'</ul>'
        +'</div>')
}

$(function(){
    isLogin();
    $('#addrModal').load($('.loadAddrModal').attr('data-url'));
    $('input[name=email]').blur(function () {
        var reg =  /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;//正则
        $(this).parent().find('.registerIcon').css('display', 'block');
        if(reg.test($(this).val())){
            $('#emailIcon').css('display', 'inline');
            $('#emailIcon').find('i').removeClass('fa-close');
            $('#emailIcon').find('i').addClass('fa-check');
            $('#emailIcon').find('i').css('color', 'green');
        }else{
            $('#emailIcon').css('display', 'inline');
            $('#emailIcon').find('i').removeClass('fa-check');
            $('#emailIcon').find('i').addClass('fa-close');
            $('#emailIcon').find('i').css('color', 'red');
            return;
        }
        $.ajax({
            type : "POST",
            url : 'checkMail.do?mail=' + $('input[name=email]').val(),
            data : {},
            datatype : "json",// "xml", "html", "script", "json",
            // "jsonp", "text".
            beforeSend : function() {
               // alert('checkMail.do?mail=' + $('input[name=email]').val())
            },
            success : function(msg) {
            	//alert(msg)
            },
            // 调用出错执行的函数
            error : function(msg) {
                // 请求出错处理
                alert(msg.status)
            }
        });
    });
   
    $('input[name=phone]').blur(function () {
        if($('input[name=phone]').val() == ''){
            $('#phoneIcon').css('display', 'none');
            $('#phoneIcon').find('i').removeClass('fa-close');
            return;
        }
        var reg =  /^1[3|4|5|7|8]\d{9}$/;//正则
        $(this).parent().find('.registerIcon').css('display', 'block');
        if(reg.test($(this).val())){
            $('#phoneIcon').css('display', 'inline');
            $('#phoneIcon').find('i').removeClass('fa-close');
            $('#phoneIcon').find('i').addClass('fa-check');
            $('#phoneIcon').find('i').css('color', 'green');
        }else{
            $('#phoneIcon').css('display', 'inline');
            $('#phoneIcon').find('i').removeClass('fa-check');
            $('#phoneIcon').find('i').addClass('fa-close');
            $('#phoneIcon').find('i').css('color', 'red');
            return;
        }

    });
    $('#infoForm').submit(function(){
    	var birthday = "";
    	if(($('#birthdayYear').val() == 0 && $('#birthdayMonth').val() == 0 && $('#birthdayDate').val() == 0)
    		|| ($('#birthdayYear').val() != 0 && $('#birthdayMonth').val() != 0 && $('#birthdayDate').val() != 0)){
    		 var birthday = $('#birthdayYear').val() + '-' + $('#birthdayMonth').val() + '-'+ $('#birthdayDate').val();
    	}
    	var ajaxData = $(this).serialize() + "&birthda=" + birthday;
    	$.ajax({
             type : "POST",
             url : 'user/upMyInfo.do?' + ajaxData,
             data : {},
             datatype : "html",
             beforeSend : function() {
               // alert('user/upMyInfo.do?' + ajaxData)
             },
             success : function(msg) {
            	// alert(msg)
             },
             error : function(msg) {
                 alert(msg.status)
             }
        });
    	return false;
    });
    $('.password').blur(function(){
    	var obj = this;
    	var reg = /^(\w){6,20}$/;//正则
		if(reg.test($(this).val())){
			$(this).parent().find('i').css('display', 'none');
		}else{
			$(this).parent().find('i').css('display', 'inline');
		}
    });
    $('#setPasswordBtn').click(function(){
    	var msg = "";
    	var ajaxData = "";
    	if($('#oldPassword').val() == ''){
    		alert('旧密码不能为空');
    		return ;
    	}
    	if($('#newPassword').val() == ''){
    		alert('新密码不能为空');
    		return ;
    	}
    	if($('#cormPassword').val() == ''){
    		alert('确认密码不能为空');
    		return ;
    	};
    	if($('#cormPassword').val() != $('#newPassword').val()){
    		alert('两次输入密码不一致');
    		return;
    	}
    	$('.password').each(function(){
    		if($(this).parent().find('i').css('display') == 'inline'){
    			msg = $(this).parent().find('i').text();
    			return false;
    		}
    	});
    	if(msg == ''){
    		$.ajax({
                type : "POST",
                url : 'user/upPasswd.do?oldPassword=' + $('#oldPassword').val() + '&newPassword=' + $('#newPassword').val() ,
                data : {},
                datatype : "json",
                beforeSend : function() {
                  // alert('user/upPassword.do?oldPassword=' + $('#oldPassword').val() + '&newPassword=' + $('#newPassword').val())
                },
                success : function(msg) {
                	alert(msg);
                },
                error : function(msg) {
                    alert(msg.status)
                }
           });
    	}else {
    		//alert(msg)
    		return false;
    	}
    })
});

function isLogin(){
    if('${user.uname}' == '' || '${user.uname}' == 'null')
        window.location.href = 'loadLogin.do';
}
function initModal() {
	 $('#addrModal').load($('.loadAddrModal').attr('data-url'));
     $('#uname1').val('');
     $('#city').val('');
     $('#addr_info').val('');
     $('#mobilephone').val('');
     $('#telephone').val('');
     $('#email').val('');
     $('#aliasName').val('');
}

function setAddressOpt() {
    $("i[name=defaultIcon]").click(
        function() {
            // alert($("i[name=i-2]").index());
            if (confirm("取消设为默认？")) {
            	$(this).parent().parent().parent().find("ul").find("a[name='setDefaultBtn']").css("display","");
				$(this).css("display","none");

            }
        });
    $("a[name=setDefaultBtn]").click(function() {
        if (confirm("设为默认收货地址？")) {
			//隐藏
        	$(this).parent().parent().parent().find("div[name='sub-box']").find("a").find("i").css("display","");
			var num = $("a[name=setDefaultBtn]").index(this);
			$(this).parent().parent().parent().find("div[name='sub-box']").find("a").find("i").addClass("default");
			$("a[name=setDefaultBtn]").each(function (index) {
				if(num == index){
					$(this).css("display","none");
					$(this).parent().parent().find("div[name='sub-box']").find("a").find("i").css("display","");
				}else{
					$(this).css("display","block");
					$(this).parent().parent().find("div[name='sub-box']").find("a").find("i").css("display","none");
				}
			});
        }
    });
    $("a[name=deleteBtn]").click(function() {
        // alert($("i[name=i-2]").index());
    	var addressid = $(this).parent().parent().attr('id');
        if (confirm("确认删除？")) {
        	$.ajax({
                type : "POST",
                contentType : "application/json",
                url : 'user/deleAddress.do?addressid=' + addressid,
                data : {},
                datatype : "html",// "xml", "html", "script", "json",
                // "jsonp", "text".
                beforeSend : function() {
                    alert('loadAddressInfo')
                },
                success : function(msg) {
                    var json = $.parseJSON(msg);
                    for(var i = 0; i < json.length; i++){
                        addAddressToBox(json[i]);
                    }
                    setAddressOpt();
                },
                // 调用出错执行的函数
                error : function(msg) {
                    // 请求出错处理
                    alert(msg.status)
                }
            });
            $(this).parent().parent().remove();
        }
    });
    $('a[name=changeBtn]').click(
        function() {
        	$(this).parent().parent().parent().addClass('editing');
            $('#addrModal').find('.modal-header').find('span').text('编辑地址');
            $('#uname1').val($(this).parent().parent().find('.address-right').find('.uname').text());
            $('#city').val($(this).parent().parent().find('.address-right').find('.city').text());
            $('#addr_info').val($(this).parent().parent().find('.address-right').find('.addr_info').text());
            $('#mobilephone').val($(this).parent().parent().find('.address-right').find('.mobliephone').text());
            $('#telephone').val($(this).parent().parent().find('.address-right').find('.telphone').text());
            $('#email').val($(this).parent().parent().find('.address-right').find('.email').text());
            $('#aliasName').val($(this).parent().parent().find('.address-right').find('.alias').text());
            $('#addressid').val($(this).parent().parent().attr('id'));
        });
  
}