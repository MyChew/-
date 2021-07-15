<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>MY PAGE</title>
<meta charset="utf-8">
<link rel="stylesheet" href="css/myPage.css">
<script>
	function f() {
		location.href = '../memberShip.jsp';
	}
</script>
</head>
<body>
	<header id="header">
		<%@ include file="../include/header.jsp"%>
	</header>
	<div class="mypage">
		<div class="mybox">
			<div class="myheader">
				<h3>MY PAGE</h3>
			</div>
			<form action="updateUser.do" method="POST" class="myform">
				<input type="hidden" name="id" value="${user.id}" readonly /> <label>비밀번호</label>
				<input type="password" class="myc" name="password"
					value="${user.password}" /> <br> <label>이름</label> <input
					type="text" class="myc" name="name" value="${user.name}" /> <br>
				<div class="myg">
					<label>성별</label> <input type="radio" name="gender" value="남"
						id="r1" <c:if test="${user.gender eq '남' }">checked</c:if>>남
					<input type="radio" name="gender" value="여" id="r1"
						<c:if test="${user.gender eq '여' }">checked</c:if>>여
				</div>
				<br> <label>출생년도</label> <input type="text" class="myc"
					name="age" value="${user.age}"> <br>
				<div class="mym">
					<label>결혼</label> <input type="radio" name="marriage" value="미혼"
						id="r2" <c:if test="${user.marriage eq '미혼' }">checked</c:if>>미혼
					<input type="radio" name="marriage" value="이혼" id="r2"
						<c:if test="${user.marriage eq '이혼' }">checked</c:if>>초혼
				</div>
				<br> <br> <label>신장</label> <select class="mys"
					name="height">
					<option value="">${user.height }</option>
					<option value="150~154cm">150~154cm</option>
					<option value="155~159cm">155~159cm</option>
					<option value="160~164cm">160~164cm</option>
					<option value="165~169cm">165~169cm</option>
					<option value="170~174cm">170~174cm</option>
					<option value="175~179cm">175~179cm</option>
					<option value="180~184cm">180~184cm</option>
					<option value="185~189cm">185~189cm</option>
				</select> <br> <br> <label>학력</label> <select class="mys"
					name="academicBackground">
					<option value="">${user.academicBackground }</option>
					<option value="중학교 졸업">중학교 졸업</option>
					<option value="고등학교 졸업">고등학교 졸업</option>
					<option value="대학교(전문대) 졸업">대학교(전문대) 졸업</option>
					<option value="대학교(4년제) 졸업">대학교(4년제) 졸업</option>
					<option value="대학원(석사) 졸업">대학원(석사) 졸업</option>
					<option value="대학원(박사) 졸업">대학원(박사) 졸업</option>
				</select> <br> <br> <label>직종</label> <select class="mys"
					name="job">
					<option value="">${user.job }</option>
					<option value="사무관,행정직">사무관, 행정직</option>
					<option value="교육계">교육계</option>
					<option value="사무직">사무직</option>
					<option value="법조계,의료계">법조계, 의료계</option>
					<option value="회계사,변리사,세무사">회계사, 변리사, 세무사</option>
					<option value="사업,자영업">사업, 자영업</option>
					<option value="예능계,서비스,프리랜서">예능계, 서비스, 프리랜서</option>
					<option value="사업,자영업">사업, 자영업</option>
					<option value="유학생 및 석박사 과정">유학생 및 석박사 과정</option>
					<option value="방송인">방송인</option>
					<option value="무직">무직</option>
				</select> <br> <br> <label>연봉</label> <select class="mys"
					name="money">
					<option value="">${user.money }</option>
					<option value="3000만 원 이하">3000만 원 이하</option>
					<option value="3000 ~ 5000만원">3000 ~ 5000만 원</option>
					<option value="5000 ~ 1억원">5000 ~ 1억 원</option>
					<option value="1 ~ 3 억원">1 ~ 3억 원</option>
					<option value="3억이상">3억 이상</option>
				</select> <br> <br> <label>종교</label> <select class="mys"
					name="religion">
					<option value="">${user.religion }</option>
					<option value="기독교">기독교</option>
					<option value="불교">불교</option>
					<option value="천주교">천주교</option>
					<option value="무교">무교</option>
				</select> <br> <br>
				<div class="mym">
					<label>멤버쉽</label> <input type="radio" name="membership"
						value="" onclick="f()">네</a> <input
						type="radio" name="membership" value="" checked>아니오
				</div>
				<br>
				<br>
				<br> <input type="submit" class="myb" value="수정">
			</form>
		</div>
	</div>
	<footer id="footer">
		<%@ include file="../include/footer.jsp"%>
	</footer>
</body>
</html>

