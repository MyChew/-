<%@page contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>후기 글 목록 보기</title>
<link href="css/font.css" rel="stylesheet" type="text/css">
</head>
<body>
	<center>
		<header><%@ include file="../include/header.jsp"%></header>

		<h3 class="boardname">​123후기 게시판123</h3>

		<!--  게시글 리스트 표 -->
		<div class="teduli" style="width: 900px;">
			<table style="border-spacing: 7px;" width="900px" height="50px"
				align="center" text-align="center;">
				<tr>
					<th bgcolor="#E1F7E3" width="100px">글 번호</th>
					<th bgcolor="#F3DBF2" width="450px">글 제목</th>
					<th bgcolor="#DCDFF4" width="100px">작성자</th>
					<th bgcolor="#F2F0D9" width="150px">작성일자</th>
					<th bgcolor="#C5E8E6" width="100px">조회수</th>
					<th bgcolor="#BBCFED" width="100px">추천수</th>
				</tr>
				<c:forEach items="${review_BoardList }" var="review_Board">
					<tr>
						<td>${review_Board.seq }</td>
						<td align="left"><a
							href="getReview_Board.do?seq=${review_Board.seq }">
								${review_Board.title }</a></td>
						<td>${review_Board.writer }</td>
						<td>${review_Board.regDate }</td>
						<td>${review_Board.cnt }</td>
						<td>${review_Board.recmd }</td>
					</tr>
				</c:forEach>

				<!-- 검색 시작 -->
				<form action="getReview_BoardList.do" method="post">
					<tr align="center" width="500px" colspan="4">
						<td colspan="5" align="center" width="500px" colspan="4"><select
							name="searchCondition">
								<c:forEach items="${conditionMap }" var="option">
									<option value="${option.value }">${option.key }
								</c:forEach>
						</select> <input name="searchKeyword" type="text" /> <input type="submit"
							value="검색" /></td>
					</tr>
				</form>
				<!-- 검색 종료 -->

				<br>
			</table>
				<br>
				<a href="insertReview_Board.jsp">등록</a>
		</div>

		<footer id="footer"><%@ include file="../include/footer.jsp"%></footer>
	</center>
</body>
</html>