<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<style>
table {
    margin-left:auto; 
    margin-right:auto;
}

table, tr, td {
    border-collapse : collapse;
    border : 1px solid black;
}
.c1 {
    text-align : center;
}
</style>
<body>
	<header>
		<%@ include file="../include/header.jsp"%>
	</header>
	<section>
	<h2 align="center">테스트 > 연애 성향 테스트</h2>
	<table width=500px> <td class="c1">아니다 : 1  약간 아니다 : 2  보통이다 : 3  그렇다 : 4  매우 그렇다 : 5 </td></table>
	<br>
	<table width=850px>
		<form action="" method="post">
			<tr>
				<td>드라이브, 인라인 등 스피드를 즐긴다.</td>
				<td class="c1">
				<input type="radio" name="question1" value="1">1
				<input type="radio" name="question1" value="2">2
				<input type="radio" name="question1" value="3">3
				<input type="radio" name="question1" value="4">4
				<input type="radio" name="question1" value="5">5
				</td>
			</tr>
			<tr>
				<td>약속이 있으면 5분 정도 일찍 나가 기다린다. / 아침에 눈을 뜨면 한 번에 잘 일어난다.</td>
				<td class="c1">
				<input type="radio" name="question2" value="1">1
				<input type="radio" name="question2" value="2">2
				<input type="radio" name="question2" value="3">3
				<input type="radio" name="question2" value="4">4
				<input type="radio" name="question2" value="5">5
				</td>
			</tr>
			<tr>
				<td>TV는 정한 프로그램만 일정시간 시청한다.</td>
				<td class="c1">
				<input type="radio" name="question3" value="1">1
				<input type="radio" name="question3" value="2">2
				<input type="radio" name="question3" value="3">3
				<input type="radio" name="question3" value="4">4
				<input type="radio" name="question3" value="5">5
				</td>
			</tr>
			<tr>
				<td>처음 만나는 사람과 빨리 친해지는 편이다.</td>
				<td class="c1">
				<input type="radio" name="question4" value="1">1
				<input type="radio" name="question4" value="2">2
				<input type="radio" name="question4" value="3">3
				<input type="radio" name="question4" value="4">4
				<input type="radio" name="question4" value="5">5
				</td>
			</tr>
			<tr>
				<td>이성과 의견 충돌이 있으면 대부분 양보한다.</td>
				<td class="c1">
				<input type="radio" name="question5" value="1">1
				<input type="radio" name="question5" value="2">2
				<input type="radio" name="question5" value="3">3
				<input type="radio" name="question5" value="4">4
				<input type="radio" name="question5" value="5">5
				</td>
			</tr>
			<tr>
				<td>대화를 할 때 리액션이 좋은 편이다.</td>
				<td class="c1">
				<input type="radio" name="question6" value="1">1
				<input type="radio" name="question6" value="2">2
				<input type="radio" name="question6" value="3">3
				<input type="radio" name="question6" value="4">4
				<input type="radio" name="question6" value="5">5
				</td>
			</tr>
			<tr>
				<td>상대의 얼굴보다 몸매나 맵시 같은 전체적인 스타일을 본다.</td>
				<td class="c1">
				<input type="radio" name="question7" value="1">1
				<input type="radio" name="question7" value="2">2
				<input type="radio" name="question7" value="3">3
				<input type="radio" name="question7" value="4">4
				<input type="radio" name="question7" value="5">5
				</td>
			</tr>
			<tr>
				<td>같이 술 한 잔 마실 수 있는 이성이 좋다.</td>
				<td class="c1">
				<input type="radio" name="question8" value="1">1
				<input type="radio" name="question8" value="2">2
				<input type="radio" name="question8" value="3">3
				<input type="radio" name="question8" value="4">4
				<input type="radio" name="question8" value="5">5
				</td>
			</tr>
			<tr>
				<td>흡연하는 이성을 보고 "멋있다"고 생각한 적이 있다.</td>
				<td class="c1">
				<input type="radio" name="question9" value="1">1
				<input type="radio" name="question9" value="2">2
				<input type="radio" name="question9" value="3">3
				<input type="radio" name="question9" value="4">4
				<input type="radio" name="question9" value="5">5
				</td>
			</tr>			
			<tr>
				<td align="center" colspan=2><input type="submit" value="다음">
					<input type="reset" value="다시 작성"></td>
			</tr>
			</form>
	</table>
	</section>
		<footer>
		<%@ include file="../include/footer.jsp" %>
	</footer>
</body>
</html>