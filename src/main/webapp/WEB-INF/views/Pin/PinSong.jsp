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
     <a href="PinSong.do" class="w3-bar-item w3-button w3-hover-white w3-white">노래</a>
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

    <img src="/smvc/resources/PinSong.jpg" width="500" height="250"/>
    
    <p><strong>다양한 OST</strong></p><p><br>
핀과 제이크의 어드벤처 타임은 애니메이션 만화 이지만, 노래를 굉장히 잘 활용하는 걸로 유명하다<br>
노래들 사용하므로서 상황을 더 슬프고,더 재밌게 만들어 주고 있다<br>
핀과 제이크의 어드벤처 타임은 뮤지컬 만화가 아니지만,<br>
시즌1부터 마지막 시즌까지의 정말 많은 곡들이 존재하고 있다<br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
</p>
  

  <h1 class="w3-large w3-text-red"><b>핀과 제이크의 어드벤처 타임 OST</b></h1>
    <hr style="width:50px;border:5px solid red" class="w3-round">
     <video src="/smvc/resources/핀타이틀송.mp4" controls width="650" height="500">
   </video>
       <p><strong>모험의 시간!</strong></p><p><br>
우랜드를 비춰주면서 시작하는 오프닝 노래<br>
우랜드의 빛과 어둠의 면을 짧은 시간이지만 확실히 보여주고 있다.<br>
상황에 따라 오프닝을 조금씩 바꿔,방영하기 때문에 그를 보는 재미도 쏠쏠하다<br>
성전환 편에서는 모든 등장인물들의 성전환ver이 오프닝에 나온다<br>
짧지만 중독성이 강한 것이 특징<br>
  <br>
  <br>
  <br>
  <br>
    </p>  
  
  
    <h1 class="w3-large w3-text-red"><b>아이스킹과 마셸린의 이야기</b></h1>
    <hr style="width:50px;border:5px solid red" class="w3-round">
     <video src="/smvc/resources/아이스킹마셸린.mp4" controls width="650" height="500">
   </video>
       <p><strong>아이스킹의 비밀을 엿볼 수 있는 에피소드</strong></p><p><br>

'미치광이 얼음마법사' 이미지로 등장하던 아이스킹의 비밀이 처음 밝혀지는 에피소드 이다<br>
핀과 제이크는 뱀파이어 마셸린이 아이스킹에게 호의적인 모습을 보고 항상 의문을 가졌었는데,<br>
그 이유가 이 떄 밝혀지게 된다<br>
핵전쟁 이후 모든걸 잃은 마셸린과 아이스킹(사이먼)은 둘도 없는 친구였으나<br>
아이스킹(사이먼)이 쓰고 있는 왕관의 힘을 못 이기고 결국 슬픈 이별을 하게된다<br>
그렇기에 마셸린은 아이스킹에게 호의적이 였던것<br>
과거의 기억을 전혀 할 수 없는 아이스킹과, 과거의 기억을 알 고 있는 마셸린의 듀엣곡<br>

  <br>
  <br>
  <br>
  <br>
    </p>  
    
    
    <h1 class="w3-large w3-text-red"><b>감자튀김송</b></h1>
    <hr style="width:50px;border:5px solid red" class="w3-round">
     <video src="/smvc/resources/감자튀김송.mp4" controls width="650" height="500">
   </video>
       <p><strong>어드벤처 타임에서 가장 유명한 노래</strong></p><p><br>

오프닝을 제외한 노래 중에서는 이 노래가 가장 유명하고 인기가 많다<br>
마셸린이 '왜 내 감자튀김을 드셨나요?' 하며 아빠에게 귀여운 투정을 하는 노래<br>
이 노래만 들으면 마냥 귀여운 투정이지만<br>
마셸린과 마셸린 아빠와의 과거회상편을 보면 좀 슬픈 투정이기도 하다<br>
마셸린의 아빠가 마셸린의 의견은 생각하지 않고, 강제로 지옥의 왕으로 만든 적도 있었고<br>
그 이전에도 알게 모르게 강요를 해왔기 때문<br>
하지만 이 노래만 놓고 봤을땐 그저 귀엽다<br>
  <br>
  <br>
  <br>
  <br>
    </p>  
  
      <h1 class="w3-large w3-text-red"><b>눈물의 피날래</b></h1>
    <hr style="width:50px;border:5px solid red" class="w3-round">
     <video src="/smvc/resources/핀마지막.mp4" controls width="650" height="500">
   </video>
       <p><strong>액자속에 우리의 추억을</strong></p><p><br>

많은 사랑을 받던 '핀과 제이크의 어드벤처 타임'의 피날래 편에 등장한 노래<br>
모든 우랜드 사람들이 한 마음 한 뜻으로 괴물을 무찌르기 위해 같은 노래를 부르는데,<br>
가사가 너무너무 슬프다<br>
그간 펼쳐졌던 이야기들을 생각하게 되는 가사<br>
'핀과 제이크의 어드벤처 타임' 제작진들이 마지막을 알리는 기자회견에서<br>
이 노래의 작사작곡가가 직접 노래를 불렀는데<br>
제이크 성우분이 끝내 눈물을 흘리셨다<br>
<br>
  <br>
  <br>
  <br>
  <br>
    </p> 
  
  
</center>
 </div>
 </body>
 </html>