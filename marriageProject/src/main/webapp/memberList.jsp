<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>회원 리스트</title>
<meta charset="utf-8">
<link rel="stylesheet" href="css/memberList.css">
</head>
<body class="member-body">
	<header id="header">
		<%@ include file="../include/header.jsp"%>
	</header>
	<br><br><br>
	<section class="member-section">
		<div class="member-content">
			<div class="member-header">
				<h2>회원 리스트</h2>
			</div>
			<div class="member-content2">
				<p>님 환영합니다.</p>
				<div>
					<center>
						<form action="" method="post">
							<table class="member-table">
								<thead class="member-thead">
									<tr>
										<th></th>
										<th>이름</th>
										<th>아이디</th>
										<th>성별</th>
										<th>출생년도</th>
										<th>결혼</th>
										<th>학력</th>
										<th>직종</th>
										<th>연봉</th>
										<th>종교</th>
										<th></th>
									</tr>
								</thead>
								<tbody class="member-tbody">
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
										<td>내용</td>
										<td><input class="member-check" type="checkbox" name="seq" /></td>
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
										<td>내용</td>
										<td><input class="member-check" type="checkbox" name="seq" /></td>
									</tr>
								</tbody>
							</table>
							<br><br><input type="submit" class="memberb" value="삭제">
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

