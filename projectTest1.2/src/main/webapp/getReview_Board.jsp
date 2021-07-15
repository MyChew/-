<%@page contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>후기 글 상세 보기</title>
<link href="css/font.css" rel="stylesheet" type="text/css">
</head>
<body>
	<header> <%@ include file="../include/header.jsp"%>
	</header>
	<center>
		<h1 class="boardname">후기 게시판</h1>
		<hr>
		<div class="teduli" style="width: 900px;">      
		<form action="updateReview_Board.jsp" method="post">
			<input name="seq" type="hidden" value="${review_Board.seq}" />
			<table border="0" cellpadding="0" cellspacing="0" width="900px" style="margin: 10px;">
				<tr>
					<td bgcolor="#E1F7E3" width="200px"> &nbsp;&nbsp;제목&nbsp;&nbsp;</td>
					<td align="center" >${review_Board.title }</td>
				</tr>
				
				<tr>
					<table border="0" cellpadding="2" cellspacing="4" width="800px" style="margin-bottom: 15px; ">
						<td bgcolor="#F3DBF2" >작성자</td>
						<td align="left">${review_Board.writer }</td>

						<td bgcolor="#F2F0D9">작성일자</td>
						<td align="left">${review_Board.regDate }</td>

						<td bgcolor="#C5E8E6">조회수&nbsp;</td>
						<td align="left">${review_Board.cnt }</td>
						
						<td bgcolor="#DCDFF4">추천수&nbsp;</td>
						<td align="left">${review_Board.recmd }</td>
					</table>
				</tr>

				<tr>
					<td align="center"  width="500px;" height="auto;"  style="border: 1px solid black;">
						${review_Board.content }</td>
				</tr>
			</table>
			<table align="center" style="margin-top: 100px;">
				<c:if test="${user1 eq review_Board.id }">
					<tr>
						<td colspan="1" align="center"><input style="font-family: bazzi; border: 1; background-color: #f2f1e6; font-size: 25px;"  type="submit"
							value="글 수정" /></td>
					</tr>
				</c:if>
				</table>
		</form>
		</div>
		<hr>
		<a href="getReview_BoardList.do">목록</a>&nbsp;&nbsp;&nbsp;
		<c:if test="${(user1 eq review_Board.id) or (user1 eq 'admin')}">
			<a href="deleteReview_Board.do?seq=${review_Board.seq }">삭제</a>&nbsp;&nbsp;&nbsp;
		</c:if>
	<footer> <%@ include file="../include/footer.jsp"%>
	</footer>
	</center>
</body>
</html>
