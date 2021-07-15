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
	<header id="header"> <%@ include file="../include/header.jsp"%>
	</header>
	<center>
		<h1 class="boardname">공지사항 게시판</h1>
		<hr>
		<div class="teduli">    
		<form action="updateNotice_Board.do" method="post">
			<input name="seq" type="hidden" value="${notice_Board.seq}" />
			<table border="0" cellpadding="0" cellspacing="0" width="850px" >
			<table border="0" align="center" cellspacing="5">
				<tr>
					<td bgcolor="#E1F7E3" width="220px" > 제목</td>
					<td align="center"><input style="font-family: bazzi; font-size:25px; text-align:center; width:500px; height:20px;" name="title" type="text" 
						value="${notice_Board.title }" /></td>
				</tr>
			</table>	
				<tr>
					<table border="0" cellpadding="2" cellspacing="2" width="800px" style="margin-left: 50px; margin-bottom: 20px;" >
						<td bgcolor="#F3DBF2" >작성자</td>
						<td align="left" >${notice_Board.writer }</td>

						<td bgcolor="#F2F0D9">작성일자</td>
						<td align="left">${notice_Board.regDate }</td>

						<td bgcolor="#C5E8E6">조회수&nbsp;</td>
						<td align="left">${notice_Board.cnt }</td>
					</table>
				</tr>

				<tr>
					<td align="center"><textarea  style="font-family: bazzi; font-size: 30px; text-align:center; " name="content" cols="60" rows="15" >
						${notice_Board.content }</textarea></td>
				</tr>
					<table align="center" style="margin-top: 50px; ">
				<tr>
						<td colspan="2" align="center"><input style="font-family: bazzi; border: 1; background-color: #FBFFFB; font-size: 25px;"  type="submit"
							value="글 수정" /></td>
				</tr>
				</table>
			</table>
		</form>
		</div>
		<hr>
		<a href="getNotice_BoardList.do">목록</a>&nbsp;&nbsp;&nbsp;
		<a href="deleteNotice_Board.do?seq=${notice_Board.seq }">삭제</a>&nbsp;&nbsp;&nbsp;
	</center>
	<footer id="footer"> <%@ include file="../include/footer.jsp"%>
	</footer>
</body>
</html>
