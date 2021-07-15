<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>JOIN PAGE</title>
</head>
<link rel="stylesheet" type="text/css" href="css/join.css" />
<body>
	<header>
		<%@ include file="../include/header.jsp"%>
	</header>
	<div class="join-page">
		<div class="join-box">
			<div class="join-header">
				<h3>JOIN PAGE</h3>
			</div>
			<form class="join-form" action="insertUser.do" method="post">
				<label>아이디</label> <input type="text" class="joinc" placeholder="ID" name="id"/> <br>
				<label>비밀번호</label> <input type="password" placeholder="password"
					class="joinc" name="password" /> <br> <label>이름</label> <input
					type="text" class="joinc" placeholder="이름" name="name" /> <br>
				<div class="joing">
					<label>성별</label> <input type="radio" name="gender" value="남">남
					<input type="radio" name="gender" value="여">여
				</div>
				<br> <label>출생년도</label> <input type="text" placeholder="년"
					style="text-align: right;" class="joinc" name="age"> <br>
				<div class="joinm">
					<label>결혼</label> <input type="radio" name="marriage" value="미혼">미혼
					<input type="radio" name="marriage" value="이혼">이혼
				</div>
				<br> <br> <label>신장</label> <select class="joins"
					name="height">
					<option value="">======== 선택 =======</option>
					<option value="150~154cm">150~154cm</option>
					<option value="155~159cm">155~159cm</option>
					<option value="160~164cm">160~164cm</option>
					<option value="165~169cm">165~169cm</option>
					<option value="170~174cm">170~174cm</option>
					<option value="175~179cm">175~179cm</option>
					<option value="180~184cm">180~184cm</option>
					<option value="185~189cm">185~189cm</option>
				</select> <br> <br> <br> <label>학력</label> <select
					class="joins" name="academicBackground">
					<option value="">======== 선택 =======</option>
					<option value="중학교 졸업">중학교 졸업</option>
					<option value="고등학교 졸업">고등학교 졸업</option>
					<option value="대학교(전문대) 졸업">대학교(전문대) 졸업</option>
					<option value="대학교(4년제) 졸업">대학교(4년제) 졸업</option>
					<option value="대학원(석사) 졸업">대학원(석사) 졸업</option>
					<option value="대학원(박사) 졸업">대학원(박사) 졸업</option>
				</select> <br> <br> <label>직종</label> <select class="joins"
					name="job">
					<option value="">======== 선택 =======</option>
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
				</select> <br> <br> <label>연봉</label> <select class="joins"
					name="money">
					<option value="">======== 선택 =======</option>
					<option value="3000만 원 이하">3000만 원 이하</option>
					<option value="3000 ~ 5000만원">3000 ~ 5000만 원</option>
					<option value="5000 ~ 1억원">5000 ~ 1억 원</option>
					<option value="1 ~ 3 억원">1 ~ 3억 원</option>
					<option value="3억이상">3억 이상</option>
				</select> <br> <br> <label>종교</label> <select class="joins"
					name="religion">
					<option value="">======== 선택 =======</option>
					<option value="기독교">기독교</option>
					<option value="불교">불교</option>
					<option value="천주교">천주교</option>
					<option value="무교">무교</option>
				</select> <br> <br> <br> 
				<br> <br> <input type="reset" class="joinb" value="다시 작성">
				<input type="submit" class="joinb" value="JOIN">
			</form>
		</div>
	</div>
	<footer id="footer">
		<%@ include file="../include/footer.jsp"%>
	</footer>
</body>
</html>