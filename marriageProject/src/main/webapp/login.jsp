<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>LOGIN</title>
</head>
<link rel="stylesheet" type="text/css" href="css/login.css"/>
<body>
	<header>
		<%@ include file="../include/header.jsp"%>
	</header>
	<section class="login-section">
	<div class="login-page">
		<div class="login-box">
			<div class="login">
				<h3>LOGIN</h3>
				<p>로그인 하려면 아이디와 비밀번호를 입력하세요.</p>
			</div>
			<form class="login-form">
				<input type="text" placeholder="ID" />
				<input type="password" placeholder="password" />
				<input class="loginb" type="submit" value="LOGIN">
			</form>
		</div>
				<p class="message">	아직 회원이 아니신가요? <a href="join.jsp">회원가입</a></p>
	</div>
	</section>
	<footer id="footer">
       <%@ include file="../include/footer.jsp"%>   
    </footer>
</body>
</html>