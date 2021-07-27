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
     <a href="SongBillie.do" class="w3-bar-item w3-button w3-hover-white w3-white">Billie Eilish</a>
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
  <h1 class="w3-xxlarge w3-text-red"><b>Billie Eilish</b></h1>
    <hr style="width:50px;border:5px solid red" class="w3-round">

    <img src="/smvc/resources/Billie.gif" width="500" height="250"/>
    
    <p><strong>독보적인 음악 스타일</strong></p><p><br>
2001년 12월 18일 LA에서 태어난 싱어송라이터.<br>
2016년 SoundCloud에서 발표한 'Ocean Eyes' 로 주목받기 시작했다.<br>
이후 2017년 8월 EP 'dont smile at me' 를 발매했다.<br>
친오빠인 피니어스 오코널(Finneas O'Connell)과 작곡 활동을 함께 한다. <br>
BBC 선정 Sound of 2018에 노미네이트 되었을 정도로 떠오르는 신예로 인정받았다.<br>
정규 앨범은 발매 후 폭발적인 인기를 끌고 있다.<br>
앨범은 발매 첫 주에 빌보드 200 차트에 1위로 차트 인하였으며,<br>
싱글 bad guy 역시 Hot 100 차트에 7위로 진입했다.<br>
또한 기존 곡들의 순위 역시 오르고 있으며, 앨범 수록곡 역시 데뷔 앨범이라고는 믿기 힘들 정도로 좋은 반응을 얻고 있다.<br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
</center>


  <h1 class="w3-large w3-text-red"><b>Billie Eilish의 스토리</b></h1>
    <hr style="width:50px;border:5px solid red" class="w3-round">
    <img src="/smvc/resources/Billie.jpg" width="500" height="250"/>
    <p><strong>댄서에서 가수로</strong></p><p><br>
8살에 춤을 추기 시작했다.현대 무용에 관심이 있었으며, 댄스 스튜디오에서 일주일에 종종 11시간씩 연습했다.<br>
댄서로 활동한 빌리는 2016년에 성장판과 발목 등의 여러 부상을 입은 후 가수 활동에 전념하기 시작했다.<br>
11살에 작곡을 시작했다.처음 작곡해본 곡은 좀비 드라마 워킹 데드에서 영감을 받았다고 한다.그 노래가 바로 finger crossed.<br>
자신의 이야기를 노래로 쓰기도 하지만,영감을 받아 노래를 쓰는 경우도 많다.<br>
i wish you were gay는 자신의 이야기를,you can see me in a crown는 셜록의 짐 모리아티를 보고 영감을 받아 썼다.<br>
어머니는 작곡을 하고, 아버지는 피아노와 우쿨렐레를 연주할 수 있다보니<br>
온 가족의 음악성이 대단하다.<br>
음악적 스타일과 음색이 독특하기 때문에 처음에는 하드팬들이 많았으나, 앨범의 히트 이후 유입이 많아졌다.<br>
2018년 8월 15일에 Yes24 라이브홀에서 아시아 독점 단독 내한 공연을 진행할 정도로 국내 팬도 많다.<br>
천재 싱어송라이터 라는 타이틀을 어린 나이에 얻었으며,현재 승승장구 하고 있다.<br>
  <br>
  <br>
  <br>
  <br>
</p>


  <h1 class="w3-large w3-text-red"><b>Billie Eilish-Bury a friend</b></h1>
    <hr style="width:50px;border:5px solid red" class="w3-round">
     <video src="/smvc/resources/bury a friend.mp4" controls width="650" height="500">
   </video>
       <p><strong>첫 앨범의 타이틀 곡</strong></p><p><br>
빌리 아일리쉬의 음악적 색을 많은 사람에게 알린 노래이다<br>
노래 제목처럼 섬뜩한 내용의 가사가 특징. 가사에 맞게 효과음도 굉장히 잘 사용되고 있다.<br>
뮤직비디오가 무섭고 어두우며,가사 또한 음침하기 때문에 빌리의 심경을 나타 낸 곡이 아니냐. 라는 추측이 난무했으나<br>
빌리는 '이 노래를 쓸때 나의 어두운 면을 끌어낸건 맞다. 하지만 실제 나의 상태는 이렇지 않다 가상의 인물이다'<br>
라며 논란을 잠재웠다.<br>
Bury a friend에 나오는 남자의 목소리가 굉장히 깊고 매력적이기 때문에<br>
남자의 목소리가 나오는 부분 전용 타임라인이 있을정도로 피쳐링 또한 잘 활용된 곡 이다<br>
  <br>
  <br>
  <br>
  <br>
    </p>
    
      <h1 class="w3-large w3-text-red"><b>Billie Eilish-Bad guy</b></h1>
    <hr style="width:50px;border:5px solid red" class="w3-round">
     <video src="/smvc/resources/bad guy.mp4" controls width="650" height="500">
   </video>
       <p><strong>인기를 굳건히</strong></p><p><br>
빌보드 순위 2위를 거머쥐게 한 곡으로서,빌리만의 색깔에 힙합풍을 섞은 듯한 노래.굉장히 신선하다.<br>
하이라이트 부분에 나오는 'duh'이 선풍적인 인기를 끌기도 했다.<br>
전혀 들어볼 수 없던 분위기의 음악여서 많은 사람들이 빌리의 음악적 스펙트럼에 감탄한 곡이기도 하다.<br>
보통 여성이 본인을 지칭할때 'guy'라는 남성적 성향의 단어로 지칭하지 않기 때문에 <br>
성별에 경계를 나누지 않았다는 점에서 빌리 아일리쉬의 세련된 페미니즘 라는 평가를 받기도 했다<br>
  <br>
  <br>
  <br>
  <br>
    </p>
    
      <h1 class="w3-large w3-text-red"><b>Billie Eilish-All the good girls go to hell</b></h1>
    <hr style="width:50px;border:5px solid red" class="w3-round">
     <video src="/smvc/resources/All the good girls go to hell.mp4" controls width="650" height="500">
   </video>
       <p><strong>빌리의 종교적 생각</strong></p><p><br>
종교를 안 믿는 빌리가 바라보는 종교에 대한 이야기가 노래의 주제이다.<br>
실제 종교적 인물인 '성 베드로'가 가사에 등장하였다<br>
우리가 알고있는 신의 모습은 남성의 모습으로 그려지거나 표현된 경우가 많은데,빌리는 'God herself'<br>
라고 표현하며 꼭 신을 남자로 생각해야 하는가?에 대한 의문을 제시하고 있다.<br>
종교에 대한 부정적 생각이 담겨있기 때문에 종교를 믿는 사람들은 조금 불편할 수 있겠지만<br>
빌리의 생각을 표현한 곡이며 크게 공격적이진 않아서 문제가 되진 않았다.<br>
  <br>
  <br>
  <br>
  <br>
    </p>
    
      <h1 class="w3-large w3-text-red"><b>Billie Eilish-You should see me in a crown</b></h1>
    <hr style="width:50px;border:5px solid red" class="w3-round">
     <video src="/smvc/resources/you should see me in a crown.mp4" controls width="650" height="500">
   </video>
       <p><strong>짐 모리아티를 보고 영감을 받은 곡</strong></p><p><br>
영국BBC 인기 드라마 '셜록'에 등장하는 '짐 모리아티'를 보고 영감을 받은 곡이다<br>
극중 모리아티가 박물관의 왕관을 쓰고 셜록의 관심을 끌기 위해 기다리는 장면이 있는데, 그 장면을 인상깊게 봤다고 한다<br>
모리아티의 예측 불가능한 계획과 파급력을 가사에 잘 녹여냈다<br>
가사와 음악의 조화가 아주 훌륭한 곡 이기 때문에 가사와 함께 보는걸 추천<br>
노래 길이가 3분이지만 전혀 지루하지 않게 흘러가기 때문에 노래가 엄청 짧은 듯한 착각을 주기도 한다<br>
  <br>
  <br>
  <br>
  <br>
    </p>
    
      <h1 class="w3-large w3-text-red"><b>Billie Eilish-Wish you were Gay</b></h1>
    <hr style="width:50px;border:5px solid red" class="w3-round">
     <video src="/smvc/resources/Wish you were Gay.mp4" controls width="650" height="500">
   </video>
       <p><strong>빌리의 짝사랑</strong></p><p><br>
빌리의 첫사랑이자 짝사랑 이야기가 가사로 쓰였다<br>
빌리와 함께 놀러다니던 친한 남자애 2명이 있었는데, 그 중 한명을 짝사랑 했다고 한다<br>
가사속 일들과 이야기는 모두 실제 이야기 이며 '너가 차라리 게이였으면 좋겠어' 라며 원망과 슬픔을 표현하고 있다<br>
이 가사를 쓸 당시에는 몰랐지만 나중에 실제로 게이임을 알게되어 빌리의 사랑은 그렇게 끝이 났다고 한다<br>
빌리는 아무렇지 않게 짝사랑이 끝났다고 말 했지만<br>
가사에서 알 수 있듯이 엄청나게 힘든 시간을 보냈던 것 같다.<br>
  <br>
  <br>
  <br>
  <br>
    </p>
    
 </div>
 </body>
 </html>