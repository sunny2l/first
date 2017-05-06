<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="ctx" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" type="text/css"
	href="${ctx}/static/css/Login.css" />
<style type="text/css">
</style>
</head>
<body>
	<div id="login">
		<h1>Login</h1>
		<form method="post" action="${ctx}/login">
			<input type="text" required="required" placeholder="用户名"
				name="username" id="username"></input> <input type="password"
				required="required" placeholder="密码" name="password" id="password"></input>
			<button id="but" class="but" type="submit" onclick="return check();">登录</button>
			<button class="res" type="reset">重置</button>
		</form>
	</div>
	<script type="text/javascript">
		document.onkeydown = function(e) {
			if ($(".bac").length == 0) {
				if (!e)
					e = window.event;
				if ((e.keyCode || e.which) == 13) {
					var obtnLogin = document.getElementById("but")
					obtnLogin.focus();
				}
			}
		}
		function check() {

			var username = document.getElementById("username");

			var pass = document.getElementById("password");
			if (username.value == "") {
				alert("请输入用户名");
				username.focus();
				return false;
			}
			if (pass.value == "") {
				alert("请输入密码");
				return false;
			}
			return true;
		}
		/* $(function() {
			//提交表单
			$('#but').click(function() {
				show_loading();
				//var myReg = /^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/; //邮件正则
				if ($('#username').val() == '') {
					show_err_msg('用户名不能为空！');
					$('#username').focus();
				} 
				else if (!myReg.test($('#email').val())) {
					show_err_msg('您的邮箱格式错咯！');
					$('#email').focus(); }
				else if ($('#password').val() == '') {
					show_err_msg('密码不能为空！');
					$('#password').focus();
				} else {
					//ajax提交表单，#login_form为表单的ID。 如：$('#login_form').ajaxSubmit(function(data) { ... });
					//show_msg('登录成功咯！  正在为您跳转...','/');    
				}
			});
		});  */
	</script>
</body>
</html>
