<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지 글 목록 보기</title>
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
				style="font-family: bazzi;">​공지 게시판​​</span></span>
		</h3>
	</div>

	<div style="font-family: bazzi; font-size: 30px; text-align: center;">
		<table style="border-spacing: 7px;" width="900px" height="120px"
			align="center" text-align="center;">
			<tr>
				<th bgcolor="#E1F7E3" width="100px">글 번호</th>
				<th bgcolor="#F3DBF2" width="450px">글 제목</th>
				<th bgcolor="#DCDFF4" width="100px">작성자</th>
				<th bgcolor="#F2F0D9" width="150px">작성일자</th>
				<th bgcolor="#C5E8E6" width="100px">조회수</th>
			</tr>
			<c:forEach items="${Notice_Board}" var="notice">
				<tr>
					<td>${notice.getseq }</td>
					<td align="left"><a
						href="getNoticeboard.do?title=${notice.title }">${notice.gettitle }</td>
					<td>${notice.getwriter }</td>
					<td>${notice.getcontent }</td>
					<td>${notice.getregdate }</td>
					<td>${notice.getcnt }</td>
				</tr>
			</c:forEach>
			<!-- 검색 시작 -->
			<form action="getNotice_BoardList.jsp" method="post">
				<tr align="center" width="500px" colspan="4">
					<td colspan="5" align="center" width="500px" colspan="4"><select
						name="searchCondition">
							<option value="TITLE">제목
							<option value="CONTENT">내용
					</select> <input name="searchKeyword" type="text" /> <input type="submit"
						value="검색" /></td>
				</tr>
			</form>
			<!-- 검색 종료 -->
			<br>
		</table>
		<a href="insertNotice_Board.jsp">등록</a> 
	</div>
			<footer id="footer"> <%@ include file="../include/footer.jsp"%>
		</footer>
</body>
</html>