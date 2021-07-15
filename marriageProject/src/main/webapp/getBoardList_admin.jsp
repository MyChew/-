<%@page contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>후기 게시판</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/testList.css">
<style>
</style>
</head>
<body>
	<center>
	
	<header id="header"> <%@ include file="../include/header.jsp"%></header>
	
		<h3 style="text-align: center; font-size: 45px;">
			​후기 게시판하나둘셋​​
		</h3>

		<div style="width: 50%; height: 100%; padding-top: 10px; padding-bottom: 10px; border: 0; background-color: #FBFFFB;">
			<!--  게시글 리스트 표 -->
			<table style="border-spacing: 5px;" width="900px" height="50px"
				align="center" text-align="center;">

				<tr>
					<th bgcolor="#E1F7E3" width="100px">글 번호</th>
					<th bgcolor="#F3DBF2" width="450px">글 제목</th>
					<th bgcolor="#DCDFF4" width="100px">작성자</th>
					<th bgcolor="#F2F0D9" width="150px">작성일자</th>
					<th bgcolor="#C5E8E6" width="100px">조회수</th>
					<th bgcolor="#BBCFED" width="100px">추천수</th>
				</tr>

				<c:forEach items="${BoardList }" var="Board">
					<tr>
						<td>${Board.seq }</td>
						<td align="left"><a href="getBoard.do?seq=${Board.seq }">
								${Board.title }</a></td>
						<td>${Board.writer }</td>
						<td>${Board.regDate }</td>
						<td>${Board.cnt }</td>
						<td>${Board.recmd }</td>
					</tr>
				</c:forEach>
			</table>


			<!-- 검색 시작 -->
			<form action="getBoardList.jsp" method="post">
				<table border="0" cellpadding="7" cellspacing="5" width="900px"
					align="center" text-align="center;">
					<tr>
						<td align="center" width="900px" colspan="3"><select
							name="searchCondition">
								<option value="TITLE">제목
								<option value="CONTENT">내용
						</select> <input name="searchKeyword" type="text" /> <input type="submit"
							value="검색" /></td>
					</tr>
				</table>
			</form>
			<!-- 검색 종료 -->
			<br>
			
 		<a href="insertBoard.jsp">글등록</a>&nbsp;&nbsp;&nbsp;
		<a href="deleteBoard.do?seq=${board.seq }">글삭제</a>&nbsp;&nbsp;&nbsp;
		<a href="getBoardList.do">글목록</a>
		</div>
		
		<footer id="footer"> <%@ include file="../include/footer.jsp"%> </footer>
	</center>
</body>
</html>