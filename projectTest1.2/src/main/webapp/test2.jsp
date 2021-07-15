<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>테스트 > 연애 스타일 테스트</title>
</head>
<link rel="stylesheet" type="text/css" href="css/test2.css" />
<body>
		<header id="header">
			<%@ include file="../include/header.jsp"%>
		</header>
	    <br><br>
		<section class="test2-section">
			<div>
				<center>
					<div class="test2-content">
						<h2>테스트 > 연애 스타일 테스트 </h2>
						<p>아니다 : 1 &nbsp; 약간 아니다 : 2 &nbsp; 보통이다 : 3 &nbsp; 그렇다 : 4 &nbsp; 매우 그렇다 : 5 </p>
					</div>
				<br>
				<form action="insertTest2.do" method="post">
					<table class="test2-table">
						<tr>
							<td>이름  
							<input type="text" name="name"></td>
						</tr>
						<tr>
							<td>드라이브, 인라인 등 스피드를 즐긴다.</td>
							<td>
							<input type="radio" name="outsideActivities" value="1">1 
							<input type="radio" name="outsideActivities" value="2">2 
							<input type="radio" name="outsideActivities" value="3">3 
							<input type="radio" name="outsideActivities" value="4">4 
							<input type="radio" name="outsideActivities" value="5">5
							</td>
						</tr>
						<tr>
							<td>약속이 있으면 5분 정도 일찍 나가 기다린다. / 아침에 눈을 뜨면 한 번에 잘 일어난다.</td>
							<td>
								<input type="radio" name="diligence" value="1">1 
								<input type="radio" name="diligence" value="2">2 
								<input type="radio" name="diligence" value="3">3 
								<input type="radio" name="diligence" value="4">4 
								<input type="radio" name="diligence" value="5">5
							</td>
						</tr>
						<tr>
							<td>TV는 정한 프로그램만 일정시간 시청한다.</td>
							<td>
							<input type="radio" name="plannedness" value="1">1 
							<input type="radio" name="plannedness" value="2">2 
							<input type="radio" name="plannedness" value="3">3 
							<input type="radio" name="plannedness" value="4">4 
							<input type="radio" name="plannedness" value="5">5
							</td>
						</tr>
						<tr>
							<td>처음 만나는 사람과 빨리 친해지는 편이다.</td>
							<td>
							<input type="radio" name="friendly" value="1">1 
							<input type="radio" name="friendly" value="2">2 
							<input type="radio" name="friendly" value="3">3 
							<input type="radio" name="friendly" value="4">4 
							<input type="radio" name="friendly" value="5">5
							</td>
						</tr>
						<tr>
							<td>이성과 의견 충돌이 있으면 대부분 양보한다.</td>
							<td>
							<input type="radio" name="consideration" value="1">1 
							<input type="radio" name="consideration" value="2">2 
							<input type="radio" name="consideration" value="3">3 
							<input type="radio" name="consideration" value="4">4 
							<input type="radio" name="consideration" value="5">5
							</td>
						</tr>
						<tr>
							<td>대화를 할 때 리액션이 좋은 편이다.</td>
							<td>
							<input type="radio" name="empathy" value="1">1 
							<input type="radio" name="empathy" value="2">2 
							<input type="radio" name="empathy" value="3">3 
							<input type="radio" name="empathy" value="4">4 
							<input type="radio" name="empathy" value="5">5
							</td>
						</tr>
						<tr>
							<td>상대의 얼굴보다 몸매나 맵시 같은 전체적인 스타일을 본다.</td>
							<td>
							<input type="radio" name="externalFactors" value="1">1 
							<input type="radio" name="externalFactors" value="2">2 
							<input type="radio" name="externalFactors" value="3">3 
							<input type="radio" name="externalFactors" value="4">4 
							<input type="radio" name="externalFactors" value="5">5
							</td>
						</tr>
						<tr>
							<td>같이 술 한 잔 마실 수 있는 이성이 좋다.</td>
							<td>
							<input type="radio" name="drinking" value="1">1 
							<input type="radio" name="drinking" value="2">2 
							<input type="radio" name="drinking" value="3">3 
							<input type="radio" name="drinking" value="4">4 
							<input type="radio" name="drinking" value="5">5
							</td>
						</tr>
						<tr>
							<td>흡연하는 사람이 멋있다고 생각한 적이 있다.</td>
							<td>
							<input type="radio" name="smoking" value="1">1 
							<input type="radio" name="smoking" value="2">2 
							<input type="radio" name="smoking" value="3">3 
							<input type="radio" name="smoking" value="4">4 
							<input type="radio" name="smoking" value="5">5
							</td>
						</tr>
					</table>
					<br><br>
					<input type="reset" class="test2b" value="다시 작성">
					<input type="submit" class="test2b" value="저장"> 
				</form>
			</center>
		</div>
	</section>
	<footer id="footer">
		<%@ include file="../include/footer.jsp"%>
	</footer>
</body>
</html>