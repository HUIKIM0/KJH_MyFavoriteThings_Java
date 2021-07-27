<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!-- 이건 JSP한테 지시하는 거고 HTML아님 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1712107김주희</title>

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


<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Lato", sans-serif}
.w3-bar,h1,button {font-family: "Montserrat", sans-serif}
.fa-anchor,.fa-coffee {font-size:200px}

.w3-sidebar a {font-family: "Roboto", sans-serif}
body,h1,h2,h3,h4,h5,h6,.w3-wide {font-family: "Montserrat", sans-serif;}
</style>


</head>
<body>



<!-- Sidebar/menu -->
<nav class="w3-sidebar w3-red w3-collapse w3-top w3-large w3-padding" style="z-index:3;width:280px;font-weight:bold;" id="mySidebar"><br>
  <a href="javascript:void(0)" onclick="w3_close()" class="w3-button w3-hide-large w3-display-topleft" style="width:100%;font-size:22px">Close Menu</a>
  <div class="w3-container">
    <h3 class="w3-padding-64"><b>Menu</b></h3>
  </div>



<!-- 메뉴 내용 한 세트 -->
  <a onclick="myPop()" href="javascript:void(0)" class="w3-button w3-block w3-white w3-left-align" id="myBtnPop">
      POP-Song<i class="my-Pop-down"></i>
  </a>
  <div id="pop" class="w3-bar-block  w3-padding-large w3-medium">
     <a href="SongNow.do" class="w3-bar-item w3-button w3-hover-white">요즘 잘 듣는 노래</a>
     <a href="SongSia.do" class="w3-bar-item w3-button w3-hover-white">Sia</a>
     <a href="SongImagine.do" class="w3-bar-item w3-button w3-hover-white">Imagine dragons</a>
     <a href="SongBillie.do" class="w3-bar-item w3-button w3-hover-white">Billie Eilish</a>
     <a href="SongPanic.do" class="w3-bar-item w3-button w3-hover-white">Panic! at the Disco</a>
  </div>
  <!-- 메뉴 내용 한 세트 끝 -->
  
<!-- 메뉴 내용 한 세트 -->
  <a onclick="mySakura()" href="javascript:void(0)" class="w3-button w3-block w3-white w3-left-align" id="myBtnSakura">
              카드캡터체리<i class="my-Sakura-down"></i>
  </a>
  <div id="sakura" class="w3-bar-block  w3-padding-large w3-medium">
     <a href="SakuraStory.do" class="w3-bar-item w3-button w3-hover-white">스토리</a>
     <a href="SakuraCherry.do" class="w3-bar-item w3-button w3-hover-white">체리</a>
     <a href="SakuraSong.do" class="w3-bar-item w3-button w3-hover-white w3-white">노래</a>
  </div>
  <!-- 메뉴 내용 한 세트 끝 -->
  
  
  <!-- 메뉴 내용 한 세트 -->
  <a onclick="myPin()" href="javascript:void(0)" class="w3-button w3-block w3-white w3-left-align" id="myBtnPin">
              핀과제이크의어드벤처타임<i class="my-Pin-down"></i>
  </a>
  <div id="pin" class="w3-bar-block w3-padding-large w3-medium">
     <a href="PinStory.do" class="w3-bar-item w3-button w3-hover-white">스토리</a>
     <a href="Pinpin.do" class="w3-bar-item w3-button w3-hover-white">핀</a>
     <a href="PinJake.do" class="w3-bar-item w3-button w3-hover-white">제이크</a>
     <a href="PinSong.do" class="w3-bar-item w3-button w3-hover-white">노래</a>
  </div>
  <!-- 메뉴 내용 한 세트 끝 -->


<!-- 메뉴 내용 한 세트 -->
  <a href="boardList.do" onclick="myWriting()" href="javascript:void(0)" class="w3-button w3-block w3-white w3-left-align" id="myBtnWriting">
      게시판<i class="my-Writing-down"></i>
  </a>
  
  <form action="logoutOK.do" target="post">
  <input type="submit" value="로그아웃" class=" w3-button w3-block  w3-left-align"><br>
  </form>

</nav>



<!-- Top menu on small screens -->
<header class="w3-container w3-top w3-hide-large w3-red w3-xlarge w3-padding">
  <a href="javascript:void(0)" class="w3-button w3-red w3-margin-right" onclick="w3_open()">☰</a>
  <span>Menu</span>
</header>

<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- !PAGE CONTENT! -->
<div class="w3-main" style="margin-left:340px;margin-right:40px">

<!-- ****************************** -->
<%
	String name = (String)session.getAttribute("name");//로그인 성공 시에 name변수에 저장시켜놓은 것을 가져옴
	%>

<h1 class="w3-large w3-text-red"><b><%=name %>님 환영합니다:)</b></h1>
<center>
  <!-- Services/주제선정이유 -->
  <div class="w3-container" id="services" style="margin-top:75px">
  <h1 class="w3-xxlarge w3-text-red"><b>카드캡터 체리</b></h1>
    <hr style="width:50px;border:5px solid red" class="w3-round">

    <img src="/smvc/resources/SakuraSong.jpg" width="500" height="250"/>
    
    <p><strong>다양한 OST</strong></p><p><br>
카드캡터 체리는 1기,2기,3기로 나뉘어 방영 되었기 때문에 분기별로 OST가 다 달랐다<br>
10년 전 처음 한국에 방영 되었을 때는 일본과 달리 오프닝이 하나였고,노래도 달랐으나<br>
재 방영을 시작하면서 일본의 OST를 전부 다 현지화 하여 방영했다<br>

  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
</p>
  

  <h1 class="w3-large w3-text-red"><b>카드캡터 체리 1기 OST</b></h1>
    <hr style="width:50px;border:5px solid red" class="w3-round">
     <video src="/smvc/resources/오프닝한국.mp4" controls width="650" height="200">
   </video>
       <p><strong>한국 버전의 오프닝</strong></p><p><br>
       
    <video src="/smvc/resources/오프닝일본.mp4" controls width="650" height="200">
   </video>
       <p><strong>일본 버전의 오프닝</strong></p><p><br>  
       
영상만 같고 노래와 가사는 전혀 다르다<br>
재 방영을 하면서 기존의 한국버전 OST를 사용하지 않고 일본버전의 OST를 사용했다.<br>
한국버전의 OST가 아주 훌륭했기에 세계적으로 반응이 좋았다.<br>

  <br>
  <br>
  <br>
  <br>
    </p>  
  
  
    <h1 class="w3-large w3-text-red"><b>카드캡터 체리 2기 OST</b></h1>
    <hr style="width:50px;border:5px solid red" class="w3-round">
     <video src="/smvc/resources/문을열고서한국.mp4" controls width="650" height="500">
   </video>
       <p><strong>재방영 후 생기게된 한국어 버전</strong></p><p><br>

10년전 방영했을 당시, 한국은 오프닝이 하나였기 때문에 '문을 열고서' 라는 곡은 일본 밖에 없었다<br>
하지만 재 방영을 시작하면서 가사를 개사하여 2기 오프닝 곡으로 사용했다<br>
카드캡터 체리 노래 중에서는 가장 반응도 약했고,금방 3기 오프닝 곡으로 교체 되었기 때문에<br>
많이 사용되지는 않았다<br>

  <br>
  <br>
  <br>
  <br>
    </p>  
    
    
    <h1 class="w3-large w3-text-red"><b>카드캡터 체리 3기 OST</b></h1>
    <hr style="width:50px;border:5px solid red" class="w3-round">
     <video src="/smvc/resources/플라티나한국.mp4" controls width="650" height="500">
   </video>
       <p><strong>모든 팬들이 기다리던곡</strong></p><p><br>

투니버스에서 '카드캡터 체리 재 방영' 이 결정되자 모든 팬들이<br>
'드디어 플라티나 정식 한국 버전을 들을 수 있나?'<br>
하며 많은 기대를 가졌다<br>
1기 오프닝 곡 부터 일본버전 이였기 때문에 사람들의 기대는 더 커졌고<br>
드디어 대망의 3기 오프닝 플라티나가 나오자 모든 팬들이 좋아했다. 그 정도로 많은 사랑을 받는 곡<br>
음악,가사,분위기,영상 모든게 다 완벽하기 떄문에 지금도 대다수의 팬들은 제일 좋아하는 OST로 플라티나를 고른다<br>
  <br>
  <br>
  <br>
  <br>
    </p>  
  
</center>
 </div>
 </body>
 </html>