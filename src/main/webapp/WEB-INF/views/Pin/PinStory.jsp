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
     <a href="SakuraStory.do" class="w3-bar-item w3-button w3-hover-whitee">스토리</a>
     <a href="SakuraCherry.do" class="w3-bar-item w3-button w3-hover-white">체리</a>
     <a href="SakuraSong.do" class="w3-bar-item w3-button w3-hover-white">노래</a>
  </div>
  <!-- 메뉴 내용 한 세트 끝 -->
  
  
  <!-- 메뉴 내용 한 세트 -->
  <a onclick="myPin()" href="javascript:void(0)" class="w3-button w3-block w3-white w3-left-align" id="myBtnPin">
              핀과제이크의어드벤처타임<i class="my-Pin-down"></i>
  </a>
  <div id="pin" class="w3-bar-block w3-padding-large w3-medium">
     <a href="PinStory.do" class="w3-bar-item w3-button w3-hover-white w3-white">스토리</a>
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
  <h1 class="w3-xxlarge w3-text-red"><b>핀과 제이크의 어드벤처 타임</b></h1>
    <hr style="width:50px;border:5px solid red" class="w3-round">

    <img src="/smvc/resources/PinStory.gif" width="500" height="250"/>
    
    <p><strong>스토리</strong></p><p><br>
카툰네트워크에서 2010년 4월 5일부터 2018년 9월 3일까지 방영했었던 미국 애니메이션.<br>
초현실적 유머(부조리 코미디)의 요소가 섞인 판타지 애니메이션이다. <br>
<br>
공주, 악당, 마법 등이 공존하는 판타지 세계 우 랜드(The Land of Ooo)에서 영웅이 되는 것이 꿈인 인간 핀과<br>
마법을 쓰는 개 제이크가 벌이는 다양한 활약상이 주된 내용이다.<br>
아기자기하면서도 귀여운 그림체와 독특한 캐릭터성,그리고 성우들의 실감나는 연기력 등<br>
여러 개성적인 요소가 오묘한 시너지 효과를 내어 많은 인기를 끌었다.<br>
<br>
단순하고 귀엽고 재밌는 애니메이션 인것 처럼 보이지만 사실 그렇지 않다.<br>
핵 전쟁 이후 얼어 붙은 지구. 몇 천년의 시간이 지나면서 지구가 녹기 시작하고<br>
황폐화된 지구에 핵 전쟁으로 인해 생겨난 기이한 생명체들이 모여 살게 된다<br>
그렇기에 마법사,뱀파이어,캔디인간 등.. 핀을 제외한 모든 등장인물이 사람이 아니다.<br>
<br>
시즌 1 까지만 해도 단순 재미위주의 내용 이였으나,<br>
시즌 2 부터 등장인물들의 심오한 스토리,숨겨진 이야기 등의 내용이 늘어났다<br>
단편 에피소드가 주를 이루기는 하지만, 장편 에피소드도 존재하며<br>
서로 관계있는 에피소드가 많기 때문에 많이 보고 알 수록 더 보이는 사실들이 많다.<br>
<br>
우 랜드 최고의 악당 '리치'의 경우 시즌2 부터 곳곳에 리치의 부활을 알리는 떡밥이 존재했고<br>
이상한 얼음마법사 인줄 알았던 아이스킹의 경우 기억의 파편을 찾는 듯한 에피소드와<br>
 중간중간 왕관 때문에 원인모를 행동을 하는 모습을 보이기도 한다<br>
<br>
사회적 풍자를 보여주는 에피소드, 성별과 동성애자 등의 차별 없이 살아가는 등장인물들의 모습,교훈이 담긴 에피소드 등..<br>
우리 사회의 여러 모습에 대해서도 잘 담아냈으며<br>
<br>
캐릭터의 매력,스토리,재미,감동을 다 잡아낸 최고의 만화이기 때문에<br>
남녀노소 아이어른 할 것 없이 많은 사랑을 받았다.<br>
<br>
많은 사랑을 받은 핀과 제이크의 어드벤처 타임은 2018년 시즌 10으로 8년만에 완결났다<br>
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