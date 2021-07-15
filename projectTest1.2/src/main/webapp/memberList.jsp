<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>회원 리스트</title>
<meta charset="utf-8">
<link rel="stylesheet" href="css/memberList.css">
<script type="text/javascript">
	function fn_userDel() {

		var userid = "";
		var memberChk = document.getElementsByName("${user.id }");
		var chked = false;
		var indexid = false;
		for (i = 0; i < memberChk.length; i++) {
			if (memberChk[i].checked) {
				if (indexid) {
					userid = userid + '-';
				}
				userid = userid + memberChk[i].value;
				indexid = true;
			}
		}
	}
</script>
</head>
<body class="member-body">
	<header id="header">
		<%@ include file="../include/header.jsp"%>
	</header>
	<br>
	<br>
	<br>
	<section class="member-section">
		<div class="member-content">
			<div class="member-header">
				<h2>회원 리스트</h2>
			</div>
			<div class="member-content2">
				<p>${userName }님환영합니다.</p>
				<div>
					<center>
						<form action="deleteUser.do" method="post">
							<table class="member-table">
								<thead class="member-thead">
									<tr>
										<th>아이디</th>
										<th>이름</th>
										<th>성별</th>
										<th>출생년도</th>
										<th>결혼</th>
										<th>학력</th>
										<th>직종</th>
										<th>연봉</th>
										<th>종교</th>
										<th></th>
										<th></th>
									</tr>
								</thead>
								<tbody class="member-tbody">
									<%-- <c:forEach items="${userList }" var="user">
										<tr>
											<td>${user.id}</td>
											<td>${user.name}</td>
											<td>${user.gender}</td>
											<td>${user.age}</td>
											<td>${user.marriage}</td>
											<td>${user.academicBackground}</td>
											<td>${user.job}</td>
											<td>${user.money}</td>
											<td>${user.religion}</td>
											<td><input class="member-check" type="checkbox"
												name="${user.id }" value="ah"/></td>
										</tr>
									</c:forEach> --%>
								</tbody>
							</table>
							<br> <br> <input type="submit" class="memberb" name="${user.id }" value="삭제">
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

