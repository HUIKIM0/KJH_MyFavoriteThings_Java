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
<script>
$(document).on('click', '#btnUpdate', function(){

	var url = "${pageContext.request.contextPath}/board/editForm";

	url = url + "?bid="+${boardContent.bid};

	url = url + "&mode=edit";



	location.href = url;

});

</script>



 
 <!-- ********************** -->
 
 

 
 
<center>
<br>
<h2><font color=#FF4848>�Խù� ����</font></h2>

<form action="boardInsertOK.do" method="post">
   �۹�ȣ<input type="text" name="name" placeholder="�г���" size=10 value="${vo.getNum()}" disabled style="width:150px;" required>
     ��¥<input type="text" name="name" placeholder="�г���" size=10 value="${vo.getRegdate()}" disabled style="width:150px;" required><br />
			�г���:<input type="text" name="name" placeholder="�г���" size=10 value="${vo.getName()}" style="width:400px;" required><br /> 
			������:<input type="text" name="subject" placeholder="������" size=10 value="${vo.getSubject()}"  style="width:400px;" required><br />
			<br>
			<input type="text" cols="50" rows="25" name="content" placeholder="�۳���" value="${vo.getContent()}" style="width:400px; height:400px;" required><br />

			<input type="button" value="����"  onClick="location.href='update.do?num=${vo.getNum()}'">
			<input type="button" value="����"  onClick="location.href='delete.do?num=${vo.getNum()}'">
			<input type="button" value="���ư���" onClick="location.href='boardList.do'">

		</form>

</center>

 <!-- ********************** -->
</body>
</html>