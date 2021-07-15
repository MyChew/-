<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>LOGIN</title>
</head>
<link rel="stylesheet" type="text/css" href="css/login.css" />
<body>
	<section class="login-section">
		<div class="login-page">
			<div class="login-box">
				<div class="login">
					<h3>LOGIN</h3>
					<p>마이페이지 인증 처리</p>
				</div>
				<form class="login-form" action="login2.do" method="post">
					<input type="text" placeholder="ID" name="id" value="${user.id }" />
					<input type="password" placeholder="password" name="password"
						value="${user.password }" /> <input class="loginb" type="submit"
						value="LOGIN">
				</form>
			</div>
		</div>
	</section>
</body>
</html>