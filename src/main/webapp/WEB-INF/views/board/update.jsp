<%@page import="org.springframework.scripting.ScriptCompilationException"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="com.uc.db.BoardVO" %>
<%@ page import="com.uc.db.BoardDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>




 
 <!-- ********************** -->
 
 
 
 
<center>
<br>
<h2><font color=#FF4848>게시물 수정</font></h2>
<form action="boardInsertOK.do" method="post">
   글번호<input type="text" name="name" placeholder="닉네임" size=10 value="${vo.getNum()}"  style="width:150px;">
     날짜<input type="text" name="name" placeholder="닉네임" size=10 value="${vo.getRegdate()}"  style="width:150px;"><br />
			닉네임:<input type="text" name="name" placeholder="닉네임" size=10 value="${vo.getName()}"  style="width:400px;"><br /> 
			글제목:<input type="text" name="subject" placeholder="글제목" size=10 value="${vo.getSubject()}"   style="width:400px;"><br />
			<br>
			<input type="text" cols="50" rows="25" name="content" placeholder="글내용" value="${vo.getContent()}"  style="width:400px; height:400px;"><br />
			
			<input type="button" value="수정" onClick="location.href='update.do'">
			<input type="button" value="삭제"  onClick="location.href='delete.do'">
			<input type="button" value="돌아가기" onClick="location.href='boardList.do'">

		</form>

</center>

 <!-- ********************** -->
</body>
</html>