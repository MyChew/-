<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 관리자 페이지</title>
<link href="css/font.css" rel="stylesheet" type="text/css">
</head>
<body>
	<center>
		<header><%@ include file="../include/header.jsp"%></header>

		<h3 class="boardname">​공지 게시판 [관리자]</h3>

		<form action="insertNotice_Board.do" method="post">
			<div class="teduli"  style="width: 700px">
				<table style="border-spacing: 7px;" boder="1" width="700px"
				 align="center" text-align="center;">
					<tr>
						<td bgcolor="#D3F3E9" style="width: 150px;">제목</td>
						<td align="left"><textarea id="insertarea" name="title"
								cols="80" rows="1" /></textarea></td>
					</tr>
					<tr>
						<td bgcolor="#B5EAFB">내용</td>
						<td align="left"><textarea id="insertarea" name="content"
								cols="80" rows="18"></textarea></td>
					</tr>
					<tr>
						<td colspan="3" align="center"><input type="submit"
							value=" 확인" /></td>
					</tr>
					<!-- 작성자 변수(수정 금지!) -->
					<input type="hidden" name="writer" value="${userName }" />
					<input type="hidden" name="id" value="${user1 }" />
				</table>
			</div>
		</form>
		<hr>
		<a href="getNotice_BoardList.do">목록</a>
		<footer><%@ include file="../include/footer.jsp"%></footer>
	</center>
</body>
</html>