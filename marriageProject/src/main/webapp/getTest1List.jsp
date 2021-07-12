<%@page contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>글 목록</title>
<style>
	.check{
		width: 60px;
		margin: auto;
	}
</style>
</head>
<body>
	<center>
		<h1>글 목록</h1>
		<h3>
			님 환영합니다...
		</h3>
		<form action="deleteTest1.do" method="post">
		<table border="1" cellpadding="0" cellspacing="0" width="700">
			<tr>
				<th bgcolor="orange" width="100">ㅂㅂ</th>
				<th bgcolor="orange" width="100">이름</th>
				<th bgcolor="orange" width="100">나이</th>
				<th bgcolor="orange" width="100">결혼</th>
				<th bgcolor="orange" width="100">신장</th>
				<th bgcolor="orange" width="100">학력</th>
				<th bgcolor="orange" width="200">직업</th>
				<th bgcolor="orange" width="100">연봉</th>
				<th bgcolor="orange" width="100">종교</th>
				<th align="center" bgcolor="orange" width="60">삭제</th>
			</tr>
			<c:forEach items="${test1List }" var="test1">
				<tr>
					<td>${test1.seq }</td>
					<td>${test1.name }</td>
					<td>${test1.age }</td>
					<td>${test1.marriage }</td>
					<td>${test1.height }</td>
					<td>${test1.academicBackground }</td>
					<td>${test1.job }</td>
					<td>${test1.money }</td>
					<td>${test1.religion }</td>
					<td><input class="check" type="checkbox" name="seq" value="${test1.seq }"/></td>
				</tr>
			</c:forEach>
		</table>			
				<input type="submit" value="삭제">
		</form>
	</center>
</body>
</html>