<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
  	<title>테스트 > 이상형 테스트</title>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="css/test1.css"/>
	</head>
<body>
    <header id="header">
		<%@ include file="../include/header.jsp"%>
    </header>
    <br><br>
	<section class="test1-section">
		<div>
		<center>
			<div class="test1-header">
				<h2>테스트 > 이상형 테스트</h2>
			</div>
			<form action="insertTest1.do" method="post">	
				<table class="test1-table">
					<tr>
						<td width="100px">이름</td>
						<td><input type="text" class="test1-name" name="name"></td>
					</tr>
					<tr>
						<td>나이</td>
						<td>
						<input type="radio" name="age" value="20~24세">20~24세 
						<input type="radio" name="age" value="25~29세">25~29세
						<input type="radio" name="age" value="30~34세">30~34세
						<input type="radio" name="age" value="35~39세">35~39세
						<input type="radio" name="age" value="40~44세">40~44세
						<input type="radio"	name="age" value="45~49세">45~49세 
						<input type="radio" name="age" value="50~54세">50~54세
						<input type="radio" name="age" value="55~59세">55~59세
						</td>
					</tr>
					<tr>
						<td>결혼 경력</td>
						<td>
						<input type="radio" name="marriage" value="초혼">초혼
						<input type="radio" name="marriage" value="재혼">재혼
						<input type="radio"	name="marriage" value="무관">무관
						</td>
					</tr>
					<tr>
						<td>신장</td>
						<td>
						<input type="radio" name="height" value="150~154cm">150~154cm 
						<input type="radio" name="height" value="155~159cm">155~159cm 
						<input type="radio" name="height" value="160~164cm">160~164cm 
						<input type="radio" name="height" value="165~169cm">165~169cm 
						<input type="radio" name="height" value="170~174cm">170~174cm 
						<input type="radio" name="height" value="175~179cm">175~179cm 
						<input type="radio" name="height" value="180~184cm">180~184cm
						<input type="radio" name="height" value="185~189cm">185~189cm
						</td>
					</tr>
					<tr>
						<td>학력</td>
						<td>
						<input type="radio" name="academicBackground" value="중학교 졸업">중학교 졸업
						<input type="radio" name="academicBackground" value="고등학교 졸업">고등학교 졸업 
						<input type="radio" name="academicBackground" value="대학교(전문대) 졸업">대학교(전문대) 졸업
						<input type="radio" name="academicBackground" value="대학교(4년제) 졸업">대학교(4년제) 졸업
						<input type="radio" name="academicBackground" value="대학원(석사)">대학원(석사)
						<input type="radio" name="academicBackground" value="대학원(박사)">대학원(박사)
						</td>
					</tr>
					<tr>
						<td>직업</td>
						<td>
						<input type="radio" name="job" value="사무관, 행정직">사무관, 행정직
						<input type="radio" name="job" value="교육계">교육계 
						<input type="radio" name="job" value="사무직">사무직
						<input type="radio" name="job" value="법조계, 의료계">법조계, 의료계
						<input type="radio" name="job" value="회계사, 변리사, 세무사">회계사, 변리사, 세무사 
						<input type="radio" name="job" value="자영업, 사업">자영업, 사업 
						<input type="radio" name="job" value="예능계, 서비스, 프리랜서">예능계, 서비스, 프리랜서 
						<input type="radio" name="job" value="유학생 및 석박사 과정">유학생 및 석박사 과정
						<input type="radio" name="job" value="방송인">방송인
						</td>
					</tr>
					<tr>
						<td>연봉</td>
						<td>
						<input type="radio" name="money" value="3000만 원 이하">3000만 원 이하
						<input type="radio" name="money" value="3000 ~ 5000만 원">3000 ~ 5000만 원
						<input type="radio" name="money" value="5000 ~ 1억 원">5000 ~ 1억 원 
						<input type="radio" name="money" value="1 ~ 3억 원">1 ~ 3억 원 
						<input type="radio" name="money" value="3억 이상">3억 이상
						</td>
					</tr>
					<tr>
						<td>종교</td>
						<td>
						<input type="radio" name="religion" value="기독교">기독교
						<input type="radio" name="religion" value="불교">불교 
						<input type="radio" name="religion" value="천주교">천주교 
						<input type="radio" name="religion" value="무교">무교 
						<input type="radio" name="religion" value="무관">무관
						</td>
					</tr>
				</table>
				<br><br>
				<input type="reset" class="test1b" value="다시 작성">
				<input type="submit" class="test1b" value="저장"> 
			</form>
			</center>
		</div>
	</section>
<%--     <aside class="test1-aside">
		<%@ include file="../include/aside.jsp"%>    
    </aside> --%>
    <div class="footer">
    <footer>
       <%@ include file="../include/footer.jsp"%>   
    </footer>
    </div>
</body>
</html>

