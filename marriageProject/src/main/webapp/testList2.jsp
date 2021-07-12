<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>연애스타일 테스트 결과</title>
<meta charset="utf-8">
<link rel="stylesheet" href="css/testList2.css">
</head>
<body class="testlist2-body">
	<header id="header">
		<%@ include file="../include/header.jsp"%>
	</header>
	<br><br><br>
	<section class="testlist2-section">
		<div class="testlist2-content">
			<div class="testlist2-header">
				<h2>연애스타일 테스트 결과</h2>
			</div>
			<div class="testlist2-content2">
				<p>님 환영합니다.</p>
				<div>
					<center>
						<form action="" method="post">
							<table class="testlist2-table">
								<thead class="testlist2-thead">
									<tr>
										<th width=12%>이름</th>
										<th>야외 활동</th>
										<th>성실성</th>
										<th>계획성</th>
										<th>친화력</th>
										<th>배려심</th>
										<th>공감</th>
										<th>외적요인</th>
										<th>음주</th>
										<th></th>
									</tr>
								</thead>
								<tbody class="testlist2-tbody">
									<tr>
										<td>내용</td>
										<td>내용</td>
										<td>내용</td>
										<td>내용</td>
										<td>내용</td>
										<td>내용</td>
										<td>내용</td>
										<td>내용</td>
										<td>내용</td>
										<td><input class="testlist2-check" type="checkbox" name="seq" /></td>
									</tr>
									<tr>
										<td>내용</td>
										<td>내용</td>
										<td>내용</td>
										<td>내용</td>
										<td>내용</td>
										<td>내용</td>
										<td>내용</td>
										<td>내용</td>
										<td>내용</td>
										<td><input class="testlist2-check" type="checkbox" name="seq" /></td>
									</tr>
								</tbody>
							</table>
							<br><br><input type="submit" class="testlist2b" value="삭제">
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

