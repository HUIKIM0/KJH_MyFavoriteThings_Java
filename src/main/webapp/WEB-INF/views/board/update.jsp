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
<h2><font color=#FF4848>�Խù� ����</font></h2>
<form action="boardInsertOK.do" method="post">
   �۹�ȣ<input type="text" name="name" placeholder="�г���" size=10 value="${vo.getNum()}"  style="width:150px;">
     ��¥<input type="text" name="name" placeholder="�г���" size=10 value="${vo.getRegdate()}"  style="width:150px;"><br />
			�г���:<input type="text" name="name" placeholder="�г���" size=10 value="${vo.getName()}"  style="width:400px;"><br /> 
			������:<input type="text" name="subject" placeholder="������" size=10 value="${vo.getSubject()}"   style="width:400px;"><br />
			<br>
			<input type="text" cols="50" rows="25" name="content" placeholder="�۳���" value="${vo.getContent()}"  style="width:400px; height:400px;"><br />
			
			<input type="button" value="����" onClick="location.href='update.do'">
			<input type="button" value="����"  onClick="location.href='delete.do'">
			<input type="button" value="���ư���" onClick="location.href='boardList.do'">

		</form>

</center>

 <!-- ********************** -->
</body>
</html>