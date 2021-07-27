<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1712107게시판</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins">


<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Lato", sans-serif}
.w3-bar,h1,button {font-family: "Montserrat", sans-serif}
.fa-anchor,.fa-coffee {font-size:200px}

.w3-sidebar a {font-family: "Roboto", sans-serif}
body,h1,h2,h3,h4,h5,h6,.w3-wide {font-family: "Montserrat", sans-serif;}


.sub_news,.sub_news th,.sub_news td{border:0}
.sub_news a{color:#383838;text-decoration:none}
.sub_news{width:100%;border-bottom:1px solid #FFB4B4;color:#666;font-size:12px;table-layout:fixed}
.sub_news caption{display:none}
.sub_news th{padding:5px 0 6px;border-top:solid 1px #FFB4B4;border-bottom:solid 1px #b2b2b2;background-color:#FFB4B4;color:#333;font-weight:bold;line-height:20px;vertical-align:top}
.sub_news td{padding:8px 0 9px;border-bottom:solid 1px #d2d2d2;text-align:center;line-height:18px;}
.sub_news .date,.sub_news .hit{padding:0;font-family:Tahoma;font-size:11px;line-height:normal}
.sub_news .title{text-align:left; padding-left:15px; font-size:13px;}
.sub_news .title .pic,.sub_news .title .new{margin:0 0 2px;vertical-align:middle}
.sub_news .title a.comment{padding:0;background:none;color:#f00;font-size:12px;font-weight:bold}
.sub_news tr.reply .title a{padding-left:16px;background:url(ic_reply.png) 0 1px no-repeat}


</style>
<body>






<div class="w3-top">
  <div class="w3-bar w3-white w3-card w3-left-align w3-large">
    <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-red w3-large w3-red" href="javascript:void(0);" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    <a href="main.do" class="w3-bar-item w3-button w3-padding-large w3-white">정보 페이지</a>

  </div>
  
  
  
<center>
<br>
<h3><font color=#FF0000>게시판</font></h3>
<!-- 리스트 게시판 시작-->
<c:forEach items="${boardBotari}" var="vo">

<table class="sub_news" border="1" cellspacing="0" summary="게시판의 글제목 리스트">
<caption>게시판 리스트</caption>
<colgroup>
<col>


<col width="110">
<col width="100">
<col width="80">




</colgroup>
<thead>

<tr>
<th scope="col">제목</th>
<th scope="col">닉네임</th>
<th scope="col">작성날짜</th>
<th scope="col">글번호</th>



</tr>
</thead>




  <tr>      
       <!-- no가 PK!(글번호) 제목-PK를 셋트로 묶어서 넘겨야 값이 정확하게 하나만 선택된다! -->
       <td><a href="listContent.do?num=${vo.getNum()}">${vo.getSubject()}</a></td>  <!-- 제목을 클릭하면 링크로 연결됨(글 내용을 보여준다) -->
       <td>${vo.getName()}</td>
       <td>${vo.getRegdate()}</td>
       <td>${vo.getNum()}</td> 
    </tr>
    
<!-- tr이 제목 1줄입니다 보일 list 갯수만큼 li반복합니다.-->


</c:forEach>
</table>
<!-- 리스트 게시판 끝-->
<br>

</center>

<a href="boardInsertForm.do" img src="이미지 경로" alt="" class ="btn btn-primary pull-right" >게시판 등록</a>

</body>
</html>