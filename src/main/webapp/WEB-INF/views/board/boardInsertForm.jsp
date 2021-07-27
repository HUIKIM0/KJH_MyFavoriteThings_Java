<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
<!-- 브라우저가 알아먹는 언어는 html, js, css
웹서버는 파일 주고받고 하는 역할이고 jsp이런 걸 브라우저가 알아먹는 언어로 번역하는 게 WAS임
웹서버는 IIS, TOMCAT 이런 거 -->
<center>
	<h2><font color=#FF4848>글쓰기</font></h2>
		<form action="boardInsertOK.do" method="post">
			닉네임:<input type="text" name="name" placeholder="닉네임" size=10 style="width:400px;" required><br /> 
			글제목:<input type="text" name="subject" placeholder="글제목" size=10 style="width:400px;" required><br />
			<br>
			<textarea cols="50" rows="25" name="content" placeholder="글내용" style="width:500px;" required></textarea><br /> 
			
			<input type="submit" value="등록">
			<input type="button" value="취소" onClick="location.href='boardList.do'">

		</form>
	</center>
</body>
</html>