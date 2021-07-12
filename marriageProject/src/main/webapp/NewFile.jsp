<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<center>
		<div style="width:50%; height:100%; padding-top:10px; padding-bottom:10px; border:1px solid red ;">
	
			<table style="align-content: center; text-align: center;" border="1"
				bordercolor="red" width="800px" height="200px">
				<tr>
					<td>
					<td>&nbsp;&nbsp;제목&ensp;&nbsp;&nbsp;</td>
					<td style="margin-left: 400px"><textarea name="title"
							cols="60" rows="2" /></textarea></td>
				</tr>
					
					<table border="8" cellpadding="0" cellspacing="0" width="890px">
					<tr>
						<td bgcolor="#F3DBF2">작성자</td>
						<td align="left">${board.writer }</td>
						
						<td bgcolor="#F2F0D9">작성일자</td>
						<td align="left">${board.regDate }</td>
	
						<td bgcolor="#C5E8E6">조회수</td>
						<td align="left">${board.cnt }</td>
					</tr>
					</table>
					
					
					<table border="5">
					<tr>
						<td align="center">내용</td>
						<td><textarea name="content" cols="100" rows="30"></textarea></td>
					</tr>

					<tr>
						<td bgcolor="ABD6AF" width="200">업로드</td>
						<td align="right"><input type="file" name="uploadFile" /></td>
					</tr>

					<tr>
						<td colspan="3" align="center"><input type="submit"
							value=" 등록" /></td>
					</tr>
				</table>
				
			</table>
	
			</div>
			</center>
</body>
</html>