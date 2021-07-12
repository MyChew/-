<%@page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>글 상세</title>
<link href="/BoardWeb/src/main/webapp/mainstyle.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/testList.css">
<style>
body {
	font-family: bazzi;
}
</style>
</head>
<body>
	<header id="header"> <%@ include file="../include/header.jsp" %>
	</header>
	<center>
		<h1>후기 게시판</h1>
		<hr>
		<form action="updateBoard.do" method="post">
			<input name="seq" type="hidden" value="${board.seq}" />
			  <div style="width:50%; height:100%; padding-top:10px; padding-bottom:10px; border:0; background-color: #FBFFFB;" >
			  
			<table border="0" cellpadding="0" cellspacing="0" width="850px" style="margin: 15px;">
				<tr>
				<td bgcolor="#E1F7E3" width="200px">&nbsp;&nbsp;제목&ensp;</td>
					<td align="center"><input style="width:600px;height:20px;" name="title" type="text"
						value="${board.title }" /></td>
				</tr>
				
				<tr>
					<table border="0" cellpadding="3" cellspacing="2" width="860px" style="margin-bottom: 15px; ">
						<td bgcolor="#F3DBF2">작성자</td>
						<td align="left">${board.writer }</td>

						<td bgcolor="#F2F0D9">작성일자</td>
						<td align="left">${board.regDate }</td>

						<td bgcolor="#C5E8E6">조회수</td>
						<td align="left">${board.cnt }</td>
						
						<td bgcolor="#DCDFF4">추천수</td>
						<td align="left">${board.cnt }</td>
					</table>
				</tr>

				<tr>
					<td bgcolor="#DCDFF4"></td>
					<td align="center"><textarea name="content"  cols="120" rows="20">
						${board.content }</textarea></td>
				</tr>
			</table>
		</form>
		<hr>
		<a href="insertBoard.jsp">등록</a>&nbsp;&nbsp;&nbsp; 
		<a href="deleteBoard.do?seq=${board.seq }">삭제</a>&nbsp;&nbsp;&nbsp;
		<a href="getBoardList.do">목록</a>
	</center>
	<footer id="footer"> <%@ include file="../include/footer.jsp"%>
	</footer>
</body>
</html>
