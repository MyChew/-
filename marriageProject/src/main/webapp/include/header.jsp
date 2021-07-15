<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
</head>
<style>
@font-face {
	font-family: 'NEXON Lv1 Gothic OTF';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.1/NEXON Lv1 Gothic OTF.woff')
		format('woff');
}

.header_top {
	font-family: 'NEXON Lv1 Gothic OTF';
	line-height: 1.8;
	font-weight: normal;
	padding: 10px;
	float: right;
}
</style>
<body>
		<div class="header_top">
    <%
	String SessionId= (String) session.getAttribute("SessionId");
	if(SessionId == null){
	%>
            		<a href = "../login.jsp">로그인</a>&nbsp;/&nbsp;
            		<a href = "../join.jsp">회원가입</a>
            		
    <%
	}else{
	%>
				
				<a href = "../myPage.jsp">마이페이지</a>
				<a href = "../logout.jsp">로그아웃</a>
				
	<%} %>
		</div>
		<div class="header_img" style="text-align: center;">
			<img src="img/3_.png" width="1300px" border=none;>
		</div>
	</body>
</html>