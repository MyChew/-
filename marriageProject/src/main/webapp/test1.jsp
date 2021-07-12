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
    
	<section class="test1-section">
		<div>
		<center>
			<div class="test1-header">
				<h2>테스트 > 이상형 테스트</h2>
			</div>
			<form action="" method="post">	
				<table class="test1-table">
					<tr>
						<td width="100px">이름</td>
						<td><input type="text" class="test1-name" name="name"></td>
					</tr>
					<tr>
						<td>나이</td>
						<td>
						<input type="radio" name="age">20~24세 
						<input type="radio" name="age">25~29세
						<input type="radio" name="age">30~34세
						<input type="radio" name="age">35~39세
						<input type="radio" name="age">40~44세
						<input type="radio"	name="age">45~49세 
						<input type="radio" name="age">50~54세
						<input type="radio" name="age">55~59세
						</td>
					</tr>
					<tr>
						<td>결혼 경력</td>
						<td>
						<input type="radio" name="marriage">초혼
						<input type="radio" name="marriage">재혼
						<input type="radio"	name="marriage">무관
						</td>
					</tr>
					<tr>
						<td>신장</td>
						<td>
						<input type="radio" name="height">150~154cm 
						<input type="radio" name="height">155~159cm 
						<input type="radio" name="height">160~164cm 
						<input type="radio" name="height">165~169cm 
						<input type="radio" name="height">170~174cm 
						<input type="radio" name="height">175~179cm 
						<input type="radio" name="height">180~184cm
						<input type="radio" name="height">185~189cm
						</td>
					</tr>
					<tr>
						<td>학력</td>
						<td>
						<input type="radio" name="education">중학교 졸업
						<input type="radio" name="education">고등학교 졸업 
						<input type="radio" name="education">대학교(전문대) 졸업
						<input type="radio" name="education">대학교(4년제) 졸업
						<input type="radio" name="education">대학원(석사)
						<input type="radio" name="education">대학원(박사)
						</td>
					</tr>
					<tr>
						<td>직업</td>
						<td>
						<input type="radio" name="job">사무관, 행정직
						<input type="radio" name="job">교육계 
						<input type="radio" name="job">사무직
						<input type="radio" name="job">법조계, 의료계
						<input type="radio" name="job">회계사, 변리사, 세무사 
						<input type="radio" name="job">자영업, 사업 
						<input type="radio" name="job">예능계, 서비스, 프리랜서 
						<input type="radio" name="job">유학생 및 석박사 과정
						<input type="radio" name="job">방송인
						</td>
					</tr>
					<tr>
						<td>연봉</td>
						<td>
						<input type="radio" name="sal">3000만 원 이하
						<input type="radio" name="sal">3000 ~ 5000만 원
						<input type="radio" name="sal">5000 ~ 1억 원 
						<input type="radio" name="sal">1 ~ 3억 원 
						<input type="radio" name="sal">3억 이상
						</td>
					</tr>
					<tr>
						<td>종교</td>
						<td>
						<input type="radio" name="religion">기독교
						<input type="radio" name="religion">불교 
						<input type="radio" name="religion">천주교 
						<input type="radio" name="religion">무교 
						<input type="radio" name="religion">무관
						</td>
					</tr>
				</table>
			</form>
				<br><br>
				<input type="reset" class="test1b" value="다시 작성">
				<input type="submit" class="test1b" value="저장"> 
			</center>
		</div>
	</section>
    <footer id="footer">
       <%@ include file="../include/footer.jsp"%>   
    </footer>
</body>
</html>

