/**
 * 
 */
$(function(){
	$('.resetBtn').click(function(){
		$('#uname').val('')
		$('#email').val('')
		$('#password').val('')
		$('#cormPassword').val('');
		$('#gcode').val('');
		$('#uname').parent().find('.registerIcon').css('display', 'none');
		$('#email').parent().find('.registerIcon').css('display', 'none');
		$('#password').parent().find('.registerIcon').css('display', 'none');
		$('#cormPassword').parent().find('.registerIcon').css('display', 'none');
		$('.registCode').css('display', 'none');
	});
	$('.loginBtn').click(function(){
		if($('#uname').val() == ''){
			$('#uname').parent().find('.registerIcon').css('display', 'block');
			$('#uname').parent().find('.registerIcon').find('i').removeClass('fa-check');
			$('#uname').parent().find('.registerIcon').find('i').addClass('fa-close');
			$('#uname').parent().find('.registerIcon').find('i').css('color', 'red');
			$('#uname').parent().find('.registerIcon').find('i').text('用户名格式不正确');
		}
		if($('#email').val() == ''){
			$('#email').parent().find('.registerIcon').css('display', 'block');
			$('#email').parent().find('.registerIcon').find('i').removeClass('fa-check');
			$('#email').parent().find('.registerIcon').find('i').addClass('fa-close');
			$('#email').parent().find('.registerIcon').find('i').css('color', 'red');
			$('#email').parent().find('.registerIcon').find('i').text('邮箱格式错误');
		}
		if($('#password').val() == ''){
			$('#password').parent().find('.registerIcon').css('display', 'block');
			$('#password').parent().find('.registerIcon').find('i').removeClass('fa-check');
			$('#password').parent().find('.registerIcon').find('i').addClass('fa-close');
			$('#password').parent().find('.registerIcon').find('i').css('color', 'red');
			$('#password').parent().find('.registerIcon').find('i').text('密码格式错误');
		}
		if($('#cormPassword').val() == ''){
			$('#cormPassword').parent().find('.registerIcon').css('display', 'block');
			$('#cormPassword').parent().find('.registerIcon').find('i').removeClass('fa-check');
			$('#cormPassword').parent().find('.registerIcon').find('i').addClass('fa-close');
			$('#cormPassword').parent().find('.registerIcon').find('i').css('color', 'red');
			$('#cormPassword').parent().find('.registerIcon').find('i').text('两次密码不一致');
		}
		if($('#gcode').val() == ''){
			$('.registCode').css('display', 'block');
			$('.registCode').find('i').removeClass('fa-check');
			$('.registCode').find('i').addClass('fa-close');
			$('.registCode').find('i').css('color', 'red');
			$('.registCode').find('i').text('验证码不能为空');
		}
		if($('#uname').val() == '' || $('#email').val() == '' || $('#password').val() == '' || $('#cormPassword').val() == '' || $('#gcode').val() == '')
			return;
		if($('#uname').parent().find('.registerIcon').find('i').hasClass('fa-close'))
			return;
		if($('#email').parent().find('.registerIcon').find('i').hasClass('fa-close'))
			return;
		if($('#password').parent().find('.registerIcon').find('i').hasClass('fa-close'))
			return;
		if($('#cormPassword').parent().find('.registerIcon').find('i').hasClass('fa-close'))
			return;
		if($('.registCode').find('i').hasClass('fa-close'))
			return;
		
		$.ajax({
			type : "POST",
			url : 'user/doRegiste.do',
			data : {uname : $('#uname').val(), email : $('#email').val(), 
				password : $('#password').val(), cormPassword : $('#cormPassword').val(), vcode : $('#gcode').val()},
			datatype : "json",// "xml", "html", "script", "json",
								// "jsonp", "text".
			beforeSend : function() {
			
			},
			success : function(msg) {
				window.location.href = 'personInfo.do';
			},
			// 调用出错执行的函数
			error : function(msg) {
				// 请求出错处理
				alert(msg.status)
			}
		});
	});
	/**
	 *下面是进行输入验证
	 **/
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
						$('#code').find('.registCode').find('i').text('验证码正确');
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
		}
		$.ajax({
			type : "POST",
			url : 'user/checkUname.do?uname=' + $('#uname').val(),
			data : {},
			datatype : "html",// "xml", "html", "script", "json",
								// "jsonp", "text".
			beforeSend : function() {
				
			},
			success : function(msg) {
				// setTimeout(window.location.href='http://www.daimajiayuan.com',3);
				if (msg == 'true') {
					$('#uname').parent().find('.registerIcon').css('display', 'block');
					$('#uname').parent().find('.registerIcon').find('i').removeClass('fa-close');
					$('#uname').parent().find('.registerIcon').find('i').addClass('fa-check');
					$('#uname').parent().find('.registerIcon').find('i').css('color', 'green');
					$('#uname').parent().find('.registerIcon').find('i').text('用户名可以注册')
				}else{
					$('#uname').parent().find('.registerIcon').css('display', 'block');
					$('#uname').parent().find('.registerIcon').find('i').removeClass('fa-check');
					$('#uname').parent().find('.registerIcon').find('i').addClass('fa-close');
					$('#uname').parent().find('.registerIcon').find('i').css('color', 'red');
					$('#uname').parent().find('.registerIcon').find('i').text('用户名格式已经被注册')
				}
			},
			// 调用出错执行的函数
			error : function() {
				// 请求出错处理
				alert('请求出错')
			}
		});
		
	});
	
	$('#email').blur(function () {
		var reg =  /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;//正则
		$(this).parent().find('.registerIcon').css('display', 'block');
		if(reg.test($(this).val())){
			$(this).parent().find('.registerIcon').find('i').removeClass('fa-close');
			$(this).parent().find('.registerIcon').find('i').addClass('fa-check');
			$(this).parent().find('.registerIcon').find('i').css('color', 'green');
			$(this).parent().find('.registerIcon').find('i').text('邮箱正确');
		}else{
			$(this).parent().find('.registerIcon').find('i').removeClass('fa-check');
			$(this).parent().find('.registerIcon').find('i').addClass('fa-close');
			$(this).parent().find('.registerIcon').find('i').css('color', 'red');
			$(this).parent().find('.registerIcon').find('i').text('邮箱格式错误');
			return;
		}
		$.ajax({
			type : "POST",
			url : 'checkMail.do?mail=' + $('#email').val(),
			data : {},
			datatype : "html",// "xml", "html", "script", "json",
								// "jsonp", "text".
			beforeSend : function() {
			
			},
			success : function(msg) {
				// setTimeout(window.location.href='http://www.daimajiayuan.com',3);
				if (msg == 'true') {
					$('#email').parent().find('.registerIcon').css('display', 'block');
					$('#email').parent().find('.registerIcon').find('i').removeClass('fa-close');
					$('#email').parent().find('.registerIcon').find('i').addClass('fa-check');
					$('#email').parent().find('.registerIcon').find('i').css('color', 'green');
					$('#email').parent().find('.registerIcon').find('i').text('邮箱可以注册')
				}else{
					$('#email').parent().find('.registerIcon').css('display', 'block');
					$('#email').parent().find('.registerIcon').find('i').removeClass('fa-check');
					$('#email').parent().find('.registerIcon').find('i').addClass('fa-close');
					$('#email').parent().find('.registerIcon').find('i').css('color', 'red');
					$('#email').parent().find('.registerIcon').find('i').text('邮箱已经被注册')
				}
			},
			// 调用出错执行的函数
			error : function() {
				// 请求出错处理
				alert('请求出错')
			}
		});
	});
	$('#password').blur(function () {
		var reg = /^(\w){6,20}$/;//正则
		$(this).parent().find('.registerIcon').css('display', 'block');
		if(reg.test($(this).val())){
			$(this).parent().find('.registerIcon').find('i').removeClass('fa-close');
			$(this).parent().find('.registerIcon').find('i').addClass('fa-check');
			$(this).parent().find('.registerIcon').find('i').css('color', 'green');
			$(this).parent().find('.registerIcon').find('i').text('密码格式正确');
		}else{
			$(this).parent().find('.registerIcon').find('i').removeClass('fa-check');
			$(this).parent().find('.registerIcon').find('i').addClass('fa-close');
			$(this).parent().find('.registerIcon').find('i').css('color', 'red');
			$(this).parent().find('.registerIcon').find('i').text('密码格式错误');
		}
	});
	$('#cormPassword').blur(function () {
		var reg = /^(\w){6,20}$/;//正则
		$(this).parent().find('.registerIcon').css('display', 'block');
		if(reg.test($(this).val()) && $(this).val() == $('#password').val()){
			$(this).parent().find('.registerIcon').find('i').removeClass('fa-close');
			$(this).parent().find('.registerIcon').find('i').addClass('fa-check');
			$(this).parent().find('.registerIcon').find('i').css('color', 'green');
			$(this).parent().find('.registerIcon').find('i').text('两次密码一致');
		}else{
			$(this).parent().find('.registerIcon').find('i').removeClass('fa-check');
			$(this).parent().find('.registerIcon').find('i').addClass('fa-close');
			$(this).parent().find('.registerIcon').find('i').css('color', 'red');
			$(this).parent().find('.registerIcon').find('i').text('两次密码不一致');
		}
	});
});
