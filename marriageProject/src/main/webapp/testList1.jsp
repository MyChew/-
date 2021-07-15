<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
	<br><br><br>
	<section class="testlist1-section">
		<div class="testlist1-content">
			<div class="testlist1-header">
				<h2>이상형 테스트 결과</h2>
			</div>
			<div class="testlist1-content2">
				<p>님 환영합니다.</p>
				<div class="testlist1-content3">
					<center>
						<form action="" method="post">
							<table class="testlist1-table">
								<thead class="testlist1-thead">
									<tr>
										<th></th>
										<th>이름</th>
										<th>나이</th>
										<th>결혼</th>
										<th>신장</th>
										<th>학력</th>
										<th>직업</th>
										<th>연봉</th>
										<th>종교</th>
										<th></th>
									</tr>
								</thead>
								<tbody class="testlist1-tbody">
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
										<td><input class="testlist1-check" type="checkbox" name="seq" /></td>
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
										<td><input class="testlist1-check" type="checkbox" name="seq" /></td>
									</tr>
								</tbody>
							</table>
							<br><br><input type="submit" class="testlist1b" value="삭제">
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

