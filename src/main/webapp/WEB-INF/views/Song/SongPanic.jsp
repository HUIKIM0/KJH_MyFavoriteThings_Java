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
     <a href="SongPanic.do" class="w3-bar-item w3-button w3-hover-white w3-white">Panic! at the Disco</a>
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
  <h1 class="w3-xxlarge w3-text-red"><b>Panic! at the Disco</b></h1>
    <hr style="width:50px;border:5px solid red" class="w3-round">

    <img src="/smvc/resources/Panic.gif" width="500" height="250"/>
    
    <p><strong>1인 팝 록밴드</strong></p><p><br>
미국의 팝 록 밴드. 주로 '패닉!' 또는 'P!ATD'로 자주 불린다.<br>
The Killers와 함께 네바다주 라스베가스 출신의 가장 성공한 밴드로서도 유명하다<br>
유명해 진 건 폴 아웃 보이의 베이시스트인 피트 웬츠의 공이 컸다.<br>
피트는 자신과 같은 레이블과 계약할 수 있도록 도와줬으며 언론에서 패닉을 자주 언급하는 등 띄워주려고 상당한 노력을 했었다.<br>
결국 패닉 엣 더 디스코는 인기몰이에 성공하게 되고 자신들을 발굴해낸 폴 아웃 보이보다 먼저 롤링스톤 지의 표지모델이 된다.<br>
폴 아웃 보이, 파라모어를 제외한 이모 밴드와 팝 펑크 밴드들이 대부분 해체 내지는 사라진 가운데 비교적 활발하게 활동을 이어가고 있다.<br>
허나 그만큼 음악적 성향이 크게 바뀌었으며,1~4집까지 멤버도 수시로 교체되어 오다가<br>
끝내 브랜든 유리의 1인 밴드로 정착해 활동을 이어가고 있다.<br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
</center>


  <h1 class="w3-large w3-text-red"><b>Panic! at the Disco의 스토리</b></h1>
    <hr style="width:50px;border:5px solid red" class="w3-round">
    <img src="/smvc/resources/Panic.jpg" width="500" height="250"/>
    <p><strong>순탄치 않는 역사</strong></p><p><br>
어린 시절부터 친구였던 라이언 로스가 마이크와 기타를 잡고, 스펜서 스미스가 드럼을 잡으면서 밴드의 기틀을 마련하였다.<br>
이후 브랜든 유리와 브렌트 윌슨을 멤버로 더 모집하면서 "패닉! 앳 더 디스코"라는 이름으로 결성하게 되었지만,<br>
데뷔 직전에 당시 기타리스트였던 브렌든이 메인 보컬을 맡게 되고<br>
데뷔 후 얼마 지나지 않아 브렌트 윌슨이 밴드를 나가고 기타 관리를 맡는 스태프 출신이었던 존 워커를 영입했다.<br>
그러다가 첫번째 앨범 A Fever You Can't Sweat Out의 대성공으로 인지도를 높였다.<br>
2016년 현재 이 앨범은 미국 내에서만 200만장 이상이 팔렸다.<br>
I Write Sins Not Tragedies 는 MTV VMA에서 대상 Video of the year를 받고 HOT100 7위까지 등극.<br>
3집 앨범의 방향에서 멤버들간에 의견 충돌이 생겨 두 멤버가 탈퇴하게 된다.<br>
이후 투어와 공백기를 거치며 나머지 멤버들도 떠나게 되고 패닉은 브랜든 유리의 1인 밴드가 되었다.<br>
2016년 1월 15일 5집 Death Of A Bachelor가 발매되었는데, 이제는 그야말로 이모밴드보다는 팝 밴드라고 해야 할정도로 성향이 바뀌었다.<br>
그리고 이 앨범은 2016년 2월 6일자 빌보드 차트 TOP200에 발매 첫주 169,000의 판매고를 올리며<br>
1위 핫샷 데뷔를 함과 동시에 패닉! 앳 더 디스코의 첫 TOP200 1위라는 쾌거를 이루었다.<br>
  <br>
  <br>
  <br>
  <br>
</p>


<h1 class="w3-large w3-text-red"><b>Panic! at the Disco-High Hopes</b></h1>
    <hr style="width:50px;border:5px solid red" class="w3-round">
     <video src="/smvc/resources/High Hopes.mp4" controls width="650" height="500">
   </video>
       <p><strong>역주행의 신화</strong></p><p><br>
6집 Pray for the Wicked의 수록곡 중 하나로 강렬한 사운드와 중독성 있는 멜로디가 특징이다<br>
처음 이 노래가 공개 되었을땐 빌보드 차트 10위안에 들지 못 했으나, 점점 역주행 하더니 차트 4위까지 진입하게 되었다<br>
노래의 분위기는 신나고 희망차지만, 가사는 노래의 분위기 만큼 희망차진 않다.<br>
현실적이면서 와닿는 교훈적인 가사<br>
일이 조금 힘들어져도 더 높고 높은 목표를 향해 노력해야 한다는 뜻을 담고 있다.<br>
'새해 처음으로 들은 노래대로 1년을 보낸다' 한국 네티즌간의 이야기 때문인지<br>
1월 1일 한국에서 'High Hopes'의 스트리밍 수가 늘어났다.<br>
트럼펫 소리,보컬의 시원한 창법으로 인해 노래가 더 매력적으로 느껴지는 노래.<br>
  <br>
  <br>
  <br>
  <br>
    </p>
    
    
    <h1 class="w3-large w3-text-red"><b>Panic! at the Disco-Victorious</b></h1>
    <hr style="width:50px;border:5px solid red" class="w3-round">
     <video src="/smvc/resources/Victorious.mp4" controls width="650" height="500">
   </video>
       <p><strong>가장 잘 알려진 노래</strong></p><p><br>
노래 제목은 잘 모르더라도, 노래를 들려주면 들어본 적 있을정도로 사람들에게 가장 알려진 곡 이다<br>
첫 주에 169,000장을 팔아 데뷔 11년만에 빌보드 200 1위를 얻게 해준 5집의 타이틀 곡<br>
제목이 Victorious 이기 때문에 밝고 희망찬 가사 이라고 상상할 수 있겠지만<br>
마냥 그렇지는 않은 가사<br>
브랜든 유리가 고음을 길게 지르는 부분이 있는데, 놀랍게도 이 부분에서 음원과 라이브를 똑같이 소화한다<br>
호불호가 안 갈릴 정도로 신나고 뻥 뚫리는 듯한 노래이기 때문에<br>
모든 사람이 꼭 들어봤으면 한다<br>
  <br>
  <br>
  <br>
  <br>
    </p>
    
    
       <h1 class="w3-large w3-text-red"><b>Panic! at the Disco-Death Of A Bachelor</b></h1>
    <hr style="width:50px;border:5px solid red" class="w3-round">
     <video src="/smvc/resources/Death Of A Bachelor.mp4" controls width="650" height="500">
   </video>
       <p><strong>기존과는 다른 느낌</strong></p><p><br>
신나고 락/팝 노래를 하던 기존과 달리 비교적 발라드에 속하는 곡 이다<br>
사운드를 상당히 잘 사용하는 것이 패닉 앳 더 디스코의 장점 중 하나인데, 그 장점에 발라드를 녹여낸 듯한 곡이다<br>
빌보트차트 100위 안에 차트인을 했지만 높은 성적은 아니다<br>
하지만 기존에 없던 색깔의 노래 이기도 하고 노래도 좋아서<br>
패닉 앳 더 디스코의 추천곡에 꼭 언급되는 곡 중 하나 이다<br>
Death Of A Bachelor를 직역하면 '독신남의 죽음'이기 때문에<br>
한국 팬들 사이에서 '독신남' 이라고 불리고 있다<br>
  <br>
  <br>
  <br>
  <br>
    </p>
    
           <h1 class="w3-large w3-text-red"><b>Panic! at the Disco-Hey Look Ma, I Made It</b></h1>
    <hr style="width:50px;border:5px solid red" class="w3-round">
     <video src="/smvc/resources/Hey Look Ma, I Made It.mp4" controls width="650" height="500">
   </video>
       <p><strong>연예계의 슬픈 성공</strong></p><p><br>
뮤직비디오를 꼭 보면서 들어야 하는 노래.<br>
가수의 꿈을 가지고 있던 주인공이 사랑하는 부모님을 두고 도시에 상경하면서 성공을 거두게 되는 이야기.<br>
Hey Look Ma, I Made It 라는 제목 답게 주인공은 성공을 하지만, 마약,여자,술에 빠져 피폐해진 삶을 살다가<br>
점점 몸과마음이 병들게 되고 가치가 사라진 주인공은 버려지게 된다.<br>
성공을 했다는 점에선  I Made It 이 맞지만 과연 어머니에게 보여줄만한 성공인가? 에 대한 의문을 주는 뮤직비디오<br>
실제로 많은 밴드들이 마약에 빠지기도 하고, 성공과 함께 피폐해진 정신을 갖기도 하다보니<br>
마냥 거짓의 내용은 아니다.<br>
강렬한 에너지의 곡 이지만 가사와 뮤직비디오를 잘 들여다 보면 정말 안타까운 내용이 담겨 있다<br>
  <br>
  <br>
  <br>
  <br>
    </p>
    
    
               <h1 class="w3-large w3-text-red"><b>Panic! at the Disco-Say Amen</b></h1>
    <hr style="width:50px;border:5px solid red" class="w3-round">
     <video src="/smvc/resources/Say Amen.mp4" controls width="650" height="500">
   </video>
       <p><strong>스토리의 완성</strong></p><p><br>
노래 'this is gospel' 과  'emperor's new clothes'의 스토리는 서로 이어져 있다<br>
'this is gospel'에서 브랜든 유리는 병원에 수술을 받으려 하지만 도망치려 한다<br>
사투 끝에 브랜든은 병원 탈출에 성공하였고, 빛을 따라가게 되는데 빛에 묻혀 보이지 않게 된다<br>
내용이 이어지는 'emperor's new clothes' 에서는 악마의 구역에 떨어지게 된 브랜든이 악마로 흑화하여<br>
지옥으로 갈 수 있는 문을 열고 그 곳으로 들어가게 되는 것이 스토리의 끝<br>
'Say Amen'은 브랜든이 왜 이런 일을 겪게 되었는가? 에 대한 이유를 알려준다<br>
박물관에서 악마의 열쇠를 훔쳐, 악마에게 팔아 넘겼기 때문에 이런 일을 겪게 된 것<br>
시리즈 중 가장 마지막에 나온 노래 이지만 '왜 악마가 되었으며 어떻게 지옥에 가게 되었나?'<br>
에 대한 이유를 'Say Amen'을 통해 알려주면서 긴 스토리가 비로소 완성 되었다<br>
  <br>
  <br>
  <br>
  <br>
    </p>
    
 </div>
 </body>
 </html>