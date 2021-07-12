<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<body>
		<div class="header_top">
			<div class="header_container">
         	<div class="header_logReg">
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
			</div>
		</div>
		<div style="text-align: center;">
			<img src="../img/mainlogo.jpg" width="1500px" height="500px" border=none;>
		</div>
	</body>
</html>