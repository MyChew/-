<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>후기 게시판 글 등록 페이지</title>
<link href="/BoardWeb/src/main/webapp/mainstyle.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/testList.css">
<style>
table {
	align-items: center;
	text-align: center;
}
</style>
</head>
<body>
	<header id="header"> <%@ include file="../include/header.jsp"%>
	</header>
	<center>

		<div id="comp-kq7bu2hr2" class="_2bafp" data-testid="richTextElement">
			<h3 class="font_3" style="text-align: center; font-size: 88px;">
				<span style="font-size: 72px;"><span
					style="font-family: bazzi;">​후기게시판​​</span></span>
			</h3>
		</div>
		<hr>
		<form action="insertBoard.do" method="post"
			enctype="multipart/form-data">


			<div
				style="width: 50%; height: 100%; padding-top: 10px; padding-bottom: 10px; border: 0; background-color: #FBFFFB;">

			<table border="0" cellpadding="0" cellspacing="0" width="850px" style="margin: 10px;">
					<tr>
						<td>
						<td bgcolor="#E1F7E3" width="200px">&nbsp;&nbsp;제목&ensp;&nbsp;&nbsp;</td>
						<td align="center"><textarea name="title"
								cols="60" rows="2" style="width:500px;height:20px;"/></textarea></td>
					</tr>
					<tr>
						<table border="0" cellpadding="2" cellspacing="4" width="900px" style="margin-bottom: 15px; ">
							<td bgcolor="#F3DBF2">작성자</td>
							<td align="left">${board.writer }</td>

							<td bgcolor="#F2F0D9">작성일자</td>
							<td align="left">${board.regDate }</td>

							<td bgcolor="#C5E8E6">조회수</td>
							<td align="left">${board.cnt }</td>
							</tr>
						</table>
						<table>
							<tr>
								<td align="center">내용</td>
								<td><textarea name="content" cols="100" rows="30"></textarea></td>
							</tr>

							<tr style="margin-bottom: 8px;">
								<td bgcolor="#E2F6FA" width="200">업로드</td>
								<td align="right"><input type="file" name="uploadFile" /></td>
							</tr>

							<tr style="margin-bottom: 8px;">
								<td colspan="3" align="center"><input type="submit"
									value=" 등록" /></td>
							</tr>
						</table>
				</table>
			</div>
		</form>
		<hr>
		<div style="text-align: center;">
			<a href="getBoardList.do">목록</a>
		</div>
	</center>
	<footer id="footer"> <%@ include file="../include/footer.jsp"%>
	</footer>
</body>
</html>