/**
 * 
 */
$(function() {
	/**
	 * 点击获取验证码
	 */
	var i = 0;
	$('#getCode').click(function() {
		$(this).attr('src', 'vcode.do?v=' + i++);
		alert($(this).attr('src'));
	});
	/**
	 * 获取验证码
	 */
	$('.loginBtn').click(
			function() {
				$.ajax({
					// 提交数据的类型 POST GET
					type : "POST",
					// 提交的网址
					url : 'doLogin.do?uname= ' + $('#username').val()
							+ '&password=' + $('#password').val() + '&vcode='
							+ $('#gcode').val(),
					// 提交的数据
					data : {},
					// 返回数据的格式
					datatype : "html",// "xml", "html", "script", "json",
										// "jsonp", "text".
					// 在请求之前调用的函数
					beforeSend : function() {
						alert('"dologin.do?uname= ' + $('#username').val()
								+ '&password=' + $('#username').val() + '"');
					},
					// 成功返回之后调用的函数
					success : function(msg) {
						// setTimeout(window.location.href='http://www.daimajiayuan.com',3);
						var data = $.parseJSON(msg);
						if (data.message == 'success') {
							window.location.href = 'index.jsp';
						} else
							alert(data.message);
					},
					// 调用出错执行的函数
					error : function() {
						// 请求出错处理
						alert('error');
						$('#code').css('display', 'block');
					}
				});
			});
});