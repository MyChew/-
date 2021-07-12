<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<style>
div#wrap {
	margin: 0 auto;
	background: #ddd;
}

header#header {
	background: #fdd;
}

nav#nav {
	background: #dfd;
}

section#container {
	background: #ddf;
}

div.content {
	background: #eee;
}

aside#aside {
	background: #fef;
}

footer#footer {
	background: #ffe;
}

div#warp, header#header, nav#nav, section#container, div.content, aside#aside,
	footer#footer {
	padding: 10px;
}

nav#nav ul {
	margin: 0;
	padding: 0;
	list-style: none;
}

nav#nav ul li {
	background: #eee;
	padding: 10px;
	display: inline-block;
}

div.content {
	float: light;
}

aside#aside {
	float: left;
}

section#container::after {
	content: "";
	display: block;
	clear: both;
}

@media screen and (max-width: 910px) {
	div#wrap {
		width: calc(100% - 20px);
	}
	div.content {
		width: calc(100% - 20px - 240px - 20px);
	}
	aside#aside {
		width: 220px;
	}
	@media screen and (max-width: 650px) {
		div.content, aside#aside {
			width: calc(100% - 20px);
			float: none;
		}
	}
}
</style>
<body>
<div id="wrap">
    <header id="header">
		<%@ include file="../include/header.jsp"%>
    </header>
    <nav id="nav">
        <ul>
            <li>메뉴 1</li>
            <li>메뉴 2</li>
            <li>메뉴 3</li>   
        </ul>       
    </nav>
    <section id="container">
        <aside id="aside">
            <%@ include file="../include/aside.jsp"%>
        </aside>
        <div class="content">
            <article>
             <h2 align="center">테스트 > 이상형 테스트</h2>
			<table>
				<form action="insertTest1.do" method="post">
					<tr>
						<td class="c1">이름</td>
						<td><input type="text" name="name"></td>
					</tr>
					<tr>
						<td class="c1">나이</td>
						<td><input type="radio" name="age" value="20~24세">20~24세 
							<input type="radio" name="age" value="25~29세">25~29세 
							<input type="radio" name="age" value="30~34세">30~34세 
							<input type="radio" name="age" value="35~39세">35~39세
							<input type="radio" name="age" value="40~44세">40~44세 
							<input type="radio" name="age" value="45~49세">45~49세 
							<input type="radio" name="age" value="50~54세">50~54세
							<input type="radio" name="age" value="55~59세">55~59세</td>
					</tr>
					<tr>
						<td class="c1">결혼 경력</td>
						<td><input type="radio" name="marriage" value="초혼">초혼 
							<input type="radio" name="marriage" value="재혼">재혼
							<input type="radio" name="marriage" value="무관">무관</td>
					</tr>
					<tr>
						<td class="c1">신장</td>
						<td><input type="radio" name="height" value="150~154cm">150~154cm 
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
						<td class="c1">학력</td>
						<td><input type="radio" name="academicBackground" value="중학교 졸업">중학교 졸업 
							<input type="radio" name="academicBackground" value="고등학교 졸업">고등학교 졸업
							<input type="radio" name="academicBackground" value="대학교(전문대) 졸업">대학교(전문대) 졸업 
							<input type="radio" name="academicBackground" value="대학교(4년제) 졸업">대학교(4년제) 졸업 
							<input type="radio" name="academicBackground" value="대학원(석사)">대학원(석사) 
							<input type="radio" name="academicBackground" value="대학원(박사)">대학원(박사)</td>
					</tr>
					<tr>
						<td class="c1">직업</td>
						<td><input type="radio" name="job" value="사무관, 행정직">사무관, 행정직
							<input type="radio" name="job" value="교육계">교육계 
							<input type="radio" name="job" value="사무직">사무직 
							<input type="radio" name="job" value="법조계, 의료계">법조계, 의료계 
							<input type="radio" name="job" value="회계사, 변리사, 세무사">회계사, 변리사, 세무사 
							<input type="radio" name="job" value="자영업, 사업">자영업, 사업 
							<input type="radio" name="job" value="예능계, 서비스, 프리랜서">예능계, 서비스, 프리랜서 
							<input type="radio" name="job" value="유학생 및 석박사 과정">유학생 및 석박사 과정 
							<input type="radio" name="job" value="방송인">방송인</td>
					</tr>
					<tr>
						<td class="c1">연봉</td>
						<td><input type="radio" name="money" value="3000만 원 이하">3000만 원 이하 
						<input type="radio" name="money" value="3000 ~ 5000만 원">3000 ~ 5000만 원 
						<input type="radio" name="money" value="5000 ~ 1억 원">5000 ~ 1억 원 
						<input type="radio" name="money" value="1 ~ 3억 원">1 ~ 3억 원 
						<input type="radio" name="money" value="3억이상">3억이상</td>
					</tr>
					<tr>
						<td class="c1">종교</td>
						<td><input type="radio" name="religion" value="기독교">기독교 
							<input type="radio" name="religion" value="불교">불교
							<input type="radio" name="religion" value="천주교">천주교 
							<input type="radio" name="religion" value="무교">무교
							<input type="radio" name="religion" value="무관">무관</td>
					</tr>
					<tr>
						<td align="center" colspan=2>
							<input type="submit" value="다음">
							<input type="reset" value="다시 작성"></td>
					</tr>
				</form>
			</table>
            </article>           
        </div>
    </section>
    <footer id="footer">
       <%@ include file="../include/footer.jsp"%>   
    </footer>
</div>
</body>
</html>