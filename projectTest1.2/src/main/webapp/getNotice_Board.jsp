<%@page contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>글 상세 보기</title>
<link href="css/font.css" rel="stylesheet" type="text/css">
</head>
<body>
	<header> <%@ include file="../include/header.jsp"%>
	</header>
	<center>
		<h1 class="boardname">공지사항 게시판</h1>
		<hr>
		<div class="teduli" style="width: 850px;">      
		<form action="updateNotice_Board.jsp" method="post">
			<input name="seq" type="hidden" value="${notice_Board.seq}" />
			<table border="0" cellpadding="0" cellspacing="0" width="750px" style="margin: 10px;">
				<tr>
					<td bgcolor="#E1F7E3" width="200px"> &nbsp;&nbsp;제목&nbsp;&nbsp;</td>
					<td align="center" >${notice_Board.title }</td>
				</tr>
				
				<tr>
					<table border="0" cellpadding="2" cellspacing="4" width="850px" style="margin-bottom: 15px; ">
						<td bgcolor="#F3DBF2" >작성자</td>
						<td align="left">${notice_Board.writer }</td>

						<td bgcolor="#F2F0D9">작성일자</td>
						<td align="left">${notice_Board.regDate }</td>

						<td bgcolor="#C5E8E6">조회수&nbsp;</td>
						<td align="left">${notice_Board.cnt }</td>
					</table>
				</tr>

				<tr>
					<td align="center"  width="500px;" height="auto;"  style="border: 1px solid black;">
						${notice_Board.content }</td>
				</tr>
			</table>
			<table align="center" style="margin-top: 100px;">
				<c:if test="${user1 eq 'admin' }">
					<tr>
						<td colspan="1" align="center"><input style="font-family: bazzi; border: 1; background-color: #FBFFFB; font-size: 25px;"  type="submit"
							value="글 수정" /></td>
					</tr>
				</c:if>
				</table>
		</form>
		</div>
		<hr>
		<a href="getNotice_BoardList.do">목록</a>&nbsp;&nbsp;&nbsp;
		<c:if test="${(user1 eq notice_Board.id) or (user1 eq 'admin')}">
			<a href="deleteNotice_Board.do?seq=${notice_Board.seq }">삭제</a>&nbsp;&nbsp;&nbsp;
		</c:if>
	</center>
	<footer id="footer"> <%@ include file="../include/footer.jsp"%>
	</footer>
</body>
</html>
