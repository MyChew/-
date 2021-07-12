<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>MY PAGE</title>
<meta charset="utf-8">
<link rel="stylesheet" href="css/myPage.css">
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
					<label>아이디</label>
						<input type="text" class="myc" name="userId" value="${user.id}" readonly />
					<br>
					<label>비밀번호</label>
						<input type="password" class="myc" name="password" value="${user.password}"/>
					<br>
					<label>이름</label>
						<input type="text" class="myc" name="userName" value="${user.name}" />
					<br>
					<div class="myg">
					<label>성별</label>
						<input type="radio" name="gender" value="${user.gender}">남
						<input type="radio" name="gender" value="${user.gender}">여
					</div>
					<br>
					<label>출생년도</label>
						<input type="text" class="myc" name="age" value="${user.age}">
					<br>
					<div class="mym">
					<label>결혼</label>
						<input type="radio" name="marriage" value="${user.marriage}">미혼
						<input type="radio" name="marriage" value="${user.marriage}">이혼
					</div>
					<br>
					<label>학력</label>
						<select class="mys" name="academicBackground">
							<option value="none">======== 선택 =======</option>
							<option value="aca1">중학교 졸업</option>
							<option value="aca2">고등학교 졸업</option>
							<option value="aca3">대학교(전문대) 졸업</option>
							<option value="aca4">대학교(4년제) 졸업</option>
							<option value="aca5">대학원(석사) 졸업</option>
							<option value="aca6">대학원(박사) 졸업</option>
						</select>
					<br><br>
					<label>직종</label>
						<select class="mys" name="job">
							<option value="none">======== 선택 =======</option>
							<option value="job1">사무관, 행정직</option>
							<option value="job2">교육계</option>
							<option value="job3">사무직</option>
							<option value="job4">법조계, 의료계</option>
							<option value="job5">회계사, 변리사, 세무사</option>
							<option value="job6">사업, 자영업</option>
							<option value="job7">예능계, 서비스, 프리랜서</option>
							<option value="job8">사업, 자영업</option>
							<option value="job9">유학생 및 석박사 과정</option>
							<option value="job10">방송인</option>
							<option value="job11">무직</option>
						</select>
					<br><br>
					<label>연봉</label>
						<select class="mys" name="money">
							<option value="none">======== 선택 =======</option>
							<option value="m1">3000만 원 이하</option>
							<option value="m2">3000 ~ 5000만 원</option>
							<option value="m3">5000 ~ 1억 원</option>
							<option value="m4">1 ~ 3억 원</option>
							<option value="m5">3억 이상</option>
						</select>
					<br><br>
					<label>종교</label>
						<select class="mys" name="religion">
							<option value="none">======== 선택 =======</option>
							<option value="rel1">기독교</option>
							<option value="rel2">불교</option>
							<option value="rel3">천주교</option>
							<option value="rel4">무교</option>
						</select>
					<br><br><br>
					<input type="submit" class="myb" value="수정">
				</form>
			</div>
		</div>
    <footer id="footer">
       <%@ include file="../include/footer.jsp"%>   
    </footer>
</body>
</html>

