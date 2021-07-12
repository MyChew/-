<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>연애스타일 테스트</title>
<style>
	.check{
		width: 80px;
		margin: auto;
	}
	.check1{
		width: 60px;
		margin: auto;
	}
</style>
</head>
<body>
		<h1>연애스타일 테스트</h1>
		<hr>
		<form action="insertTest2.do" method="post" >
		<p>이름    <input type="text" name="name"></p>
			<table border="1" >
				<tr>
					<td bgcolor="orange">점수</td>
					<td>매우 아니다</td>
					<td>약간 아니다</td>
					<td>보통이다</td>
					<td>약간 그렇다</td>
					<td>매우 그렇다</td>
				</tr>
				<tr>
					<td bgcolor="orange">드라이브, 인라인 등 스피드를 즐긴다.</td>
					
					<td><input class="check" type="radio" name="outsideActivities" value="1" /></td>
					<td><input class="check" type="radio" name="outsideActivities" value="2" /></td>
					<td><input class="check1" type="radio" name="outsideActivities" value="3" /></td>
					<td><input class="check" type="radio" name="outsideActivities" value="4" /></td>
					<td><input class="check" type="radio" name="outsideActivities" value="5" /></td>
					
				</tr>
				<tr>
					<td bgcolor="orange">약속이 있으면 일찍 나가 기다린다./아침에 눈을 뜨면 한 번에 잘 일어난다.</td>
					<td><input class="check" type="radio" name="diligence" value="1"></td>
					<td><input class="check" type="radio" name="diligence" value="2"></td>
					<td><input class="check1" type="radio" name="diligence" value="3"></td>
					<td><input class="check" type="radio" name="diligence" value="4"></td>
					<td><input class="check" type="radio" name="diligence" value="5"></td>
					
				</tr>
				<tr>
					<td bgcolor="orange">TV는 정한 프로그램만 일정시간 시청한다.</td>
					
					<td><input class="check" type="radio" name="plannedness" value="1"></td>
					<td><input class="check" type="radio" name="plannedness" value="2"></td>
					<td><input class="check1" type="radio" name="plannedness" value="3"></td>
					<td><input class="check" type="radio" name="plannedness" value="4"></td>
					<td><input class="check" type="radio" name="plannedness" value="5"></td>
				</tr>			
				<tr>
					<td bgcolor="orange">처음 만나는 사람과 빨리 친해지는 편이다.</td>
					
					<td><input class="check" type="radio" name="friendly" value="1"></td>
					<td><input class="check" type="radio" name="friendly" value="2"></td>
					<td><input class="check1" type="radio" name="friendly" value="3"></td>
					<td><input class="check" type="radio" name="friendly" value="4"></td>
					<td><input class="check" type="radio" name="friendly" value="5"></td>
				</tr>			
				<tr>
					<td bgcolor="orange">이성과 의견 충돌이 있으면 대부분 양보한다.</td>
					<td><input class="check" type="radio" name="consideration" value="1"></td>
					<td><input class="check" type="radio" name="consideration" value="2"></td>
					<td><input class="check1" type="radio" name="consideration" value="3"></td>
					<td><input class="check" type="radio" name="consideration" value="4"></td>
					<td><input class="check" type="radio" name="consideration" value="5"></td>
					</td>
				</tr>			
				<tr>
					<td bgcolor="orange">대화를 할 때 리액션이 좋은 편이다</td>
					<td><input class="check" type="radio" name="empathy" value="1"></td>
					<td><input class="check" type="radio" name="empathy" value="2"></td>
					<td><input class="check1" type="radio" name="empathy" value="3"></td>
					<td><input class="check" type="radio" name="empathy" value="4"></td>
					<td><input class="check" type="radio" name="empathy" value="5"></td>
					
				</tr>			
				<tr>
					<td bgcolor="orange">상대의 얼굴보다 몸매나 맵시 같은 전체적인 스타일을 본다.</td>
					<td><input class="check" type="radio" name="externalFactors" value="1"></td>
					<td><input class="check" type="radio" name="externalFactors" value="2"></td>
					<td><input class="check1" type="radio" name="externalFactors" value="3"></td>
					<td><input class="check" type="radio" name="externalFactors" value="4"></td>
					<td><input class="check" type="radio" name="externalFactors" value="5"></td>
					
				</tr>
				<tr>
					<td bgcolor="orange">같이 술 한잔 마실 수 있는 이성이 좋다</td>
					<td><input class="check" type="radio" name="drinking" value="1"></td>
					<td><input class="check" type="radio" name="drinking" value="2"></td>
					<td><input class="check1" type="radio" name="drinking" value="3"></td>
					<td><input class="check" type="radio" name="drinking" value="4"></td>
					<td><input class="check" type="radio" name="drinking" value="5"></td>
				</tr>
				<tr>
					<td bgcolor="orange">흡연하는 이성을 보고 '멋있다'고 생각한 적이 있다.</td>
					<td><input class="check" type="radio" name="smoking" value="1"></td>
					<td><input class="check" type="radio" name="smoking" value="2"></td>
					<td><input class="check1" type="radio" name="smoking" value="3"></td>
					<td><input class="check" type="radio" name="smoking" value="4"></td>
					<td><input class="check" type="radio" name="smoking" value="5"></td>
				</tr>					
				<tr>
					<td colspan="6" align="center">
					<input type="submit" value=" 등록 " />
					<input type="reset" value=" 리셋 " />
					</td>
				</tr>
			</table>
		</form>

</body>
</html>