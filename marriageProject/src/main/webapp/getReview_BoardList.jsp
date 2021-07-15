<%@page contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>후기 게시판</title>
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

		<!--  후기 게시판 -->
		<div id="comp-kq7bu2hr2" class="_2bafp" data-testid="richTextElement">
			<h3 class="font_3" style="text-align: center; font-size: 88px;">
				<span style="font-size: 72px;"><span
					style="font-family: bazzi;">​후기 게시판​​</span></span>
			</h3>
		</div>

		<div style="font-family: bazzi; font-size: 30px; text-align: center;">
			<!--  게시글 리스트 표 -->
			<table style="border-spacing: 7px;" width="900px" height="120px"
				align="center" text-align="center;">

				<tr>
					<th bgcolor="#E1F7E3" width="100px">글 번호</th>
					<th bgcolor="#F3DBF2" width="450px">글 제목</th>
					<th bgcolor="#DCDFF4" width="100px">작성자</th>
					<th bgcolor="#F2F0D9" width="150px">작성일자</th>
					<th bgcolor="#C5E8E6" width="100px">조회수</th>
					<th bgcolor="#BBCFED" width="100px">추천수</th>
				</tr>

				<c:forEach items="${notice_BoardList }" var="notice_Board">
					<tr>
						<td>${notice_Board.seq }</td>
						<td align="left"><a
							href="getNotice_Board.do?seq=${notice_Board.seq }">
								${notice_Board.title }</a></td>
						<td>${notice_Board.writer }</td>
						<td>${notice_Board.regDate }</td>
						<td>${notice_Board.cnt }</td>
					</tr>
				</c:forEach>
			</table>
			<!-- 검색 시작 -->
			<form action="getNotice_BoardList.jsp" method="post">
				<table border="0" cellpadding="0" cellspacing="0" width="900px"
					align="center" text-align="center;">
					<tr>
						<td align="center" width="900px" colspan="3"><select
							name="searchCondition">
								<option value="TITLE">제목
								<option value="CONTENT">내용
						</select> <input name="searchKeyword" type="text" /> <input type="submit"
							value="검색" /></td>
						<td></td>

					</tr>
				</table>
			</form>
			<!-- 검색 종료 -->
			<br>
			<div class="header_img" style="text-align: center;">
				<img src="logo.png" width="1300px" border=none;>
			</div>
			
			<footer id="footer"> <%@ include
				file="../include/footer.jsp"%> </footer>
</body>
</html>