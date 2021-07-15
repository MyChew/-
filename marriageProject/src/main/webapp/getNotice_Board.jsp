<%@page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>글 상세 보기</title>
<link href="/BoardWeb/src/main/webapp/mainstyle.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/testList.css">
</head>
<body>
	<header id="header"> <%@ include file="../include/header.jsp"%>
	</header>
	<center>
		<h1>공지사항 게시판</h1>
		<hr>
		<form action="updateBoard.do" method="post">
			<input name="seq" type="hidden" value="${board.seq}" />
			<table border="0" cellpadding="0" cellspacing="0" width="1000px">
				<tr>
					<td bgcolor="#E1F7E3" width="200px">제목</td>
					<td align="center"><input width="700px" name="title" type="text"
						value="${board.title }" /></td>
				</tr>
				
				<tr>
					<table border="0" cellpadding="0" cellspacing="0" width="1000px">
						<td bgcolor="#F3DBF2">작성자</td>
						<td align="left">${board.writer }</td>

						<td bgcolor="#F2F0D9">작성일자</td>
						<td align="left">${board.regDate }</td>

						<td bgcolor="#C5E8E6">조회수</td>
						<td align="left">${board.cnt }</td>
					</table>
				</tr>

				<tr>
					<td bgcolor="#DCDFF4">내용</td>
					<td align="center"><textarea name="content" cols="150" rows="30">
						${board.content }</textarea></td>
				</tr>
			</table>
		</form>
		<hr>
		<a href="getNotice_BoardList.do">목록</a>&nbsp;&nbsp;&nbsp; 
	</center>
	<footer id="footer"> <%@ include file="../include/footer.jsp"%>
	</footer>
</body>
</html>
