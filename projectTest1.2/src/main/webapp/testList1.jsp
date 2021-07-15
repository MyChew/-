<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>이상형 테스트 결과</title>
<meta charset="utf-8">
<link rel="stylesheet" href="css/testList1.css">
</head>
<body class="testlist1-body">
	<header id="header">
		<%@ include file="../include/header.jsp"%>
	</header>
	<br>
	<br>
	<br>
	<section class="testlist1-section">
		<div class="testlist1-content">
			<div class="testlist1-header">
				<h2>이상형 테스트 결과</h2>
			</div>
			<div class="testlist1-content2">
				<p>관리자님 환영합니다.</p>
				<div class="testlist1-content3">
					<center>
						<form action="deleteTest1.do" method="post">
							<table class="testlist1-table">
								<thead class="testlist1-thead">
									<tr>
										<th>이름</th>
										<th>나이</th>
										<th>결혼</th>
										<th>신장</th>
										<th>학력</th>
										<th>직업</th>
										<th>연봉</th>
										<th>종교</th>
										<th>삭제</th>
									</tr>
								</thead>
								<tbody class="testlist1-tbody">
									<c:forEach items="${test1List }" var="test1">
										<tr>
											<td>${test1.name }</td>
											<td>${test1.age }</td>
											<td>${test1.marriage }</td>
											<td>${test1.height }</td>
											<td>${test1.academicBackground }</td>
											<td>${test1.job }</td>
											<td>${test1.money }</td>
											<td>${test1.religion }</td>
											<td><input class="check" type="checkbox" name="seq"
												value="${test1.seq }" /></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<br>
							<br>
							<input type="submit" class="testlist1b" value="삭제">
						</form>
					</center>
				</div>
			</div>
		</div>
	</section>
	<footer id="footer">
		<%@ include file="../include/footer.jsp"%>
	</footer>
</body>
</html>

