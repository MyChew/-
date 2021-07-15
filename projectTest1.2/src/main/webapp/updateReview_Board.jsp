<%@page contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>후기 글 수정하기</title>
<link href="css/font.css" rel="stylesheet" type="text/css">
</head>
<body>
	<center>
		<header> <%@ include file="../include/header.jsp"%>
		</header>
		<h1 class="boardname">후기 게시판</h1>
		<hr>
		<div class="teduli" style="width: 900px;">
			<form action="updateReview_Board.do" method="post">
				<input name="seq" type="hidden" value="${review_Board.seq}" />
				<table border="0" cellpadding="0" cellspacing="5" width="900px">
					<tr>
						<td bgcolor="#E1F7E3" width="200px" align="center">제목&emsp;&emsp;&emsp;<input
							style="font-family: bazzi; font-size: 25px; text-align: center; width: 600px; height: 20px;"
							name="title" type="text" value="${review_Board.title }" /></td>
					</tr>
					<tr>
						<table border="0" cellpadding="0" cellspacing="0" width="800px"
							align="center"">
							<td bgcolor="#F3DBF2">작성자</td>
							<td align="left">${review_Board.writer }</td>

							<td bgcolor="#F2F0D9">작성일자</td>
							<td align="left">${review_Board.regDate }</td>

							<td bgcolor="#C5E8E6">조회수&nbsp;</td>
							<td align="left">${review_Board.cnt }</td>

							<td bgcolor="#BBCFED">추천수&nbsp;</td>
							<td align="left">${review_Board.recmd }</td>
						</table>
					</tr>

					<tr>
						<td align="center"><textarea
								style="font-family: bazzi; font-size: 30px; text-align: center;"
								name="content" cols="60" rows="15">
						${review_Board.content }</textarea></td>
					</tr>
					<table align="center" style="margin-top: 50px;">
						<tr>
							<td colspan="2" align="center"><input
								style="font-family: bazzi; border: 1; background-color: #f2f1e6; font-size: 25px;"
								type="submit" value="글 수정" /></td>
						</tr>
					</table>
				</table>
			</form>
		</div>
		<hr>
		<a href="getReview_BoardList.do">목록</a>&nbsp;&nbsp;&nbsp; <a
			href="deleteReview_Board.do?seq=${review_Board.seq }">삭제</a>&nbsp;&nbsp;&nbsp;
		<footer > <%@ include file="../include/footer.jsp"%>
		</footer>
	</center>
</body>
</html>
