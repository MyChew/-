<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<title>공지사항 관리자 페이지</title>
<link href="/BoardWeb/src/main/webapp/mainstyle.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/testList.css">
</head>
<body>
	<header id="header">
		<%@ include file="../include/header.jsp"%>
	</header>

	<div id="comp-kq7bu2hr2" class="_2bafp" data-testid="richTextElement">
		<h3 class="font_3" style="text-align: center; font-size: 88px;">
			<span style="font-size: 72px;"><span
				style="font-family: bazzi;">​공지 게시판 [관리자]​​</span></span>
		</h3>
	</div>
	<hr>
	<form action="insertNotice_Board.do" method="post"
		enctype="multipart/form-data">
		<table style =border-spacing:7px; boder="1" width="500px" height="200px" align="center"
			text-align="center;">
			<tr>
				<td id="insertmenu"  bgcolor="ABD6AF"  >제목</td>
				<td align="left"><textarea id="insertarea" name="title"  cols="100" rows="5" /></textarea></td>
			</tr>
			<tr>
				<td id="insertmenu" bgcolor="ABD6AF"   >내용</td>
				<td align="left"><textarea id="insertarea" name="content" cols="100" rows="30"></textarea></td>
			</tr>
			<tr>
				<td  colspan="3" align="center"><input type="submit"
					value=" 확인" /></td>
			</tr>
		</table>
	</form>
	<hr>
	<div style="text-align: center;">
		<a href="getNotice_BoardList.do">목록</a>&nbsp;&nbsp;&nbsp; 

	</div>
			<footer id="footer"> <%@ include file="../include/footer.jsp"%>
		</footer>
</body>
</html>