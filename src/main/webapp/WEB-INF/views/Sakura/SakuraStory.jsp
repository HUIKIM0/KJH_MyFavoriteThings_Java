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
     <a href="SakuraStory.do" class="w3-bar-item w3-button w3-hover-white w3-white">스토리</a>
     <a href="SakuraCherry.do" class="w3-bar-item w3-button w3-hover-white">체리</a>
     <a href="SakuraSong.do" class="w3-bar-item w3-button w3-hover-white">노래</a>
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

    <img src="/smvc/resources/SakuraStory.gif" width="500" height="250"/>
    
    <p><strong>스토리</strong></p><p><br>
일본의 유명 작가 그룹인 CLAMP의 만화와, 그를 원작으로 한 동명의 애니메이션이다. <br>
한국에서는 '카드캡터 체리' 일본에서는 '카드캡터 사쿠라' 라고 불리고 있다.<br>
'카캡사'와 '카캡체', 일본에서는 CCS, 'CCさくら'로 통용된다.<br>
<br>
평균 권당 판매량 100만 권 이상. 2001년에는 만화 부문에서 성운상을 수상하기도 했다.<br>
2019년 클리어카드 편이 240만 부의 누적 판매를 기록하며 시리즈 전체 1700만 부를 돌파했다.<br>
일본 미디어 예술 100선 애니메이션 부문 선정작.<br>
<br>
<br>
초등학교 4학년생 체리가 어느 날 마법으로 만들어진 크로우 카드의 봉인을 풀게 되고,<br>
세상을 혼란시킬 힘을 가진 카드들을 다시 모으기 위해 마법소녀가 되는 이야기를 그리고 있다.<br>
<br>
크로우 카드의 봉인을 풀게된 체리는 태양 수호자 케로베로스와 함께 흩어진 카드를 모으게 되는데,<br>
크로우 카드의 힘이 풀려버림을 감지한 홍콩 출신의 리 샤오랑이 체리네 학교에 전학오면서<br>
카드경쟁을 하게 되지만 끝내 리 샤오랑은 체리를 인정하고 도와주게 된다(크로우카드편 1기)<br>
<br>
카드를 봉인하면서, 점점 강한 힘을 얻게 된 체리는 알 수 없는 수상한 기운을 느끼게 되고<br>
최종 카드를 봉인하는 순간, 달의 수호자 유에 공격으로 난관에 부딪히게 된다<br>
하지만 체리의 힘과 카드를 사랑하는 마음을 알게된 유에는 공격을 멈추고<br>
체리를 새로운 주인으로 받아들인다(크로우 카드 편 2기)<br>
<br>
봉인이 끝난 후 평화가 찾아오나 싶었으나 알 수 없는 힘이 또 다시 체리를 덮치기 시작했다.<br>
크로우 카드의 힘을 이용하여 사건을 해결하려 한 체리.<br>
하지만 크로우 카드에서 생명력이 전혀 느껴지지 않았고, 속수무책으로 당하고 만다<br>
위기도 잠시 뿐, 효력이 없던 '크로우 카드'를 '체리 카드'로 바꾸는 것에 성공하게 되고<br>
체리 카드로 바뀌어진 카드들은 다시 생명력을 얻게 된다<br>
체리를 위협하는 모든 사건의 원인이 크로우 카드의 창시자,<br>
크로우가 꾸민 일 이라는 것을 알게 된 체리,케로,유에,샤오랑은 크로우와 만나게 되고<br>
이 세상의 모든 사람들을 잠들게 만든 크로우의 힘을 이기기 위해<br>
마지막 카드 '라이트' 와 '다크'를 세 사람의 힘을 모아 '체리 카드'로 바꾸는 것에 성공하게 된다<br>
<br>
크로우가 이러한 시련을 준 이유는 자신의 힘을 빌리는 것이 아닌<br>
온전히 체리의 힘으로 마법을 사용하길 바랐기 때문이며<br>
<br>
먼 훗날 자신이 만든 카드들의 생명력과 힘이 사라질 것을 예측했기에<br>
새로운 주인, 체리의 힘으로 재 탄생 시켜야만 새 주인으로 카드들이 계속 존재 할 수 있기 때문이다.<br>
<br>
크로우 카드->체리 카드 로 재 탄생에 성공한 체리는<br>
정 들었던 리 샤오랑에게 느끼는 감정이 우정이 아닌 사랑 이라는 것을 알고<br>
서로를 닮은 곰인형을 교환하며 또 만날 것을 기약한다(체리 카드 편 3기)<br>

  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
</center>

    
 </div>
 </body>
 </html>