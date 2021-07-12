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
	.list{
		width: 80px;
		margin: auto;
	}
</style>
</head>
<body>
	<center>
		<h1>연애스타일 테스트 결과</h1>
		<h3>
			님 환영합니다...
		</h3>
		<form action="deleteTest2.do" method="post">
		<table border="1" cellpadding="0" cellspacing="0" width="700">
			<tr>
				<th bgcolor="orange" width="100">이름</th>
				<th bgcolor="orange" width="100">야외 활동</th>
				<th bgcolor="orange" width="100">성실성</th>
				<th bgcolor="orange" width="100">계획성</th>
				<th bgcolor="orange" width="100">친화력</th>
				<th bgcolor="orange" width="100">배려심</th>
				<th bgcolor="orange" width="200">공감</th>
				<th bgcolor="orange" width="100">외적요인</th>
				<th bgcolor="orange" width="100">음주</th>
				<th bgcolor="orange" width="100">흡연</th>
				<th align="center" bgcolor="orange" width="60">삭제</th>
			</tr>
			<c:forEach items="${test2List }" var="test2">
				<tr>
					<td class="list">${test2.name }</td>
					<td class="list">${test2.outsideActivities }</td>
					<td class="list">${test2.diligence }</td>
					<td class="list">${test2.plannedness }</td>
					<td class="list">${test2.friendly }</td>
					<td class="list">${test2.consideration }</td>
					<td class="list">${test2.empathy }</td>
					<td class="list">${test2.externalFactors }</td>
					<td class="list">${test2.drinking }</td>
					<td class="list">${test2.smoking }</td>
					<td><input class="check" type="checkbox" name="seq" value="${test2.seq }"/></td>
				</tr>
			</c:forEach>
		</table>			
				<input type="submit" value="삭제">
		</form>
	</center>
</body>
</html>