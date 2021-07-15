<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>후기게시판 입력 페이지</title>
<link href="css/font.css" rel="stylesheet" type="text/css">
</head>
<body>
	<center>
		<header><%@ include file="../include/header.jsp"%></header>

		<h3 class="boardname">​후기 게시판</h3>
		
		<!-- <form action="insertReview_Board.do" method="post"
			enctype="multipart/form-data"> -->
		<form action="insertReview_Board.do" method="post">
			<div class="teduli" style="width: 900px;">
				<table style="border-spacing: 7px;" boder="1" width="900px"
					align="center" text-align="center;">
					<tr>
						<td bgcolor="#E1F7E3" width="200px">&nbsp;&nbsp;제목&emsp;&nbsp;&nbsp;</td>
						<td align="left"><textarea id="insertarea" name="title"
								cols="80" rows="1" /></textarea></td>
					</tr>
					<tr>
						<td bgcolor="ABD6AF">내용</td>
						<td align="left"><textarea id="insertarea" name="content"
								cols="80" rows="18"></textarea></td>
					</tr>
					<tr style="margin-bottom: 8px;">
						<td bgcolor="#E2F6FA" width="200">업로드</td>
						<td align="right"><input type="file" name="uploadFile" /></td>
					</tr>
					<tr>
						<td colspan="3" align="center"><input type="submit"
							value=" 등록" /></td>
					</tr>
					<!-- 작성자 변수(수정 금지!) -->
					<input type="hidden" name="writer" value="${userName }" />
					<input type="hidden" name="id" value="${user1 }" />
				</table>
			</div>
		</form>
		<hr>
		<a href="getReview_BoardList.do">목록</a>
		<footer><%@ include file="../include/footer.jsp"%></footer>
	</center>
</body>
</html>