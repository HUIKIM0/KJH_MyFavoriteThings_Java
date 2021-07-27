<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<title>회원가입</title>
<meta charset="UTF-8">
<!-- 디자인 복붙한거 시작  head안에 스타일 넣어야 한다-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Lato", sans-serif}
.w3-bar,h1,button {font-family: "Montserrat", sans-serif}
.fa-anchor,.fa-coffee {font-size:200px}
</style>
<!-- 디자인 복붙한거 끝 -->
<title>로그인</title>
</head>
<body>
<!-- Navbar -->
<div class="w3-top">
  <div class="w3-bar w3-red w3-card w3-left-align w3-large">
    <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-white w3-large w3-red" href="javascript:void(0);" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    <a href="start.do" class="w3-bar-item w3-button w3-padding-large w3-white">Home</a>

  </div>

  <!-- Navbar on small screens -->
  <div id="navDemo" class="w3-bar-block w3-white w3-hide w3-hide-large w3-hide-medium w3-large">
    <a href="#" class="w3-bar-item w3-button w3-padding-large">Link 1</a>
    <a href="#" class="w3-bar-item w3-button w3-padding-large">Link 2</a>
    <a href="#" class="w3-bar-item w3-button w3-padding-large">Link 3</a>
    <a href="#" class="w3-bar-item w3-button w3-padding-large">Link 4</a>
  </div>
</div>
<!-- 입력창 꾸며주는 거 -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins">
<style>
body,h1,h2,h3,h4,h5 {font-family: "Poppins", sans-serif}
body {font-size:16px;}
.w3-half img{margin-bottom:-6px;margin-top:16px;opacity:0.8;cursor:pointer}
.w3-half img:hover{opacity:1}
</style>
<body>

 <center>
   <form action="joinOK.do" method="post">
      <div class="w3-container" id="contact" style="margin-top:100px">
      <h2>회원가입</h2>
      <!-- 회원가입 정보 입력 폼 -->
      <hr style="width:50px; border-radius: 2em; border:5px solid red" class="w3-round">

      <div class="w3-section">
        <label>아이디</label>
        <input class="w3-input w3-border"  placeholder="12자 이하의 영문 및 숫자" type="text" style="width:800px;" name="id" required>
      </div>
      <div class="w3-section">
        <label>비밀번호</label>
        <input class="w3-input w3-border" placeholder="12자 이하의 영문 및 숫자" type="text" style="width:800px;" name="passwd" required>
      </div>
      <div class="w3-section">
      <br>
        <label>이름</label>
        <input class="w3-input w3-border" placeholder="이름" type="text" style="width:800px;" name="name" required>
      </div>
      <div class="w3-section">
        <label>나이</label>
        <input class="w3-input w3-border" placeholder="나이" type="text" style="width:800px;" name="age"  required>
      </div>
      <div class="w3-section">
        <label>성별</label>
        <input class="w3-input w3-border" placeholder="성별" type="text" style="width:800px;" name="gender"  required>
      </div>
      
      <div class="w3-section">
        <label>이메일</label>
        <input class="w3-input w3-border" placeholder="이메일" type="text" style="width:800px;" name="email" required>
      </div>
      <div class="w3-section">
        <label>휴대폰번호</label>
        <input class="w3-input w3-border" placeholder="-를 포함한 번호 입력" type="text" style="width:800px;" name="tel"  required>
      </div>
</div>
      <br>
      <input type="submit" value="가입" class="w3-button w3-block w3-padding-large w3-red w3-margin-bottom">
    </form>  
</center>

   
   
</body>
</html>