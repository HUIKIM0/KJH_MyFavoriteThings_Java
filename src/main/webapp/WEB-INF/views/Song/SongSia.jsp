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
     <a href="SongNow.do" class="w3-bar-item w3-button w3-hover-white ">요즘 잘 듣는 노래</a>
     <a href="SongSia.do" class="w3-bar-item w3-button w3-hover-white w3-white">Sia</a>
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
  <h1 class="w3-xxlarge w3-text-red"><b>Sia</b></h1>
    <hr style="width:50px;border:5px solid red" class="w3-round">

    <img src="/smvc/resources/SiaMain.gif" width="500" height="250"/>
    
    <p><strong>최고의 싱어송 라이터 Sia</strong></p><p><br>
오스트레일리아 출신의 싱어송라이터.<br>
음악계에서는 이름인 'Sia'만 잘라 예명으로 사용하고 있다.<br>
데뷔 초기에는 어덜트 컨템포러리 음악으로 분류되었고 소울, 재즈 등에서 영향을 받았다.<br>
그러나 전세계적인 유명세를 얻은 2010년대 이후에는 오히려 일렉트로 팝 넘버가 많다.<br>
생각보다 나이가 많고(1975년생) 데뷔도 굉장히 빨라서 1996년 밴드 'Crisp'의 보컬로 데뷔하였고,<br>
솔로로는 1997년 "OnlySee"라는 앨범을 발표하며 데뷔하였다.<br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
</center>
 
  <h1 class="w3-large w3-text-red"><b>Sia의 스토리</b></h1>
    <hr style="width:50px;border:5px solid red" class="w3-round">
    <img src="/smvc/resources/Sia1.jpg" width="500" height="250"/>
    <p><strong>침체기와 노래</strong></p><p><br>
시아가 양성애자 라는 사실이 조금 유명세를 얻기 시작하자 언론의 공격의 대상이 되었다.<br>
그렇게 앨범"We are Born"으로 미국 활동을 하면서 이전부터 있던 우울장애가 심해지고 공황장애 증상을 보이기 시작했다.<br>
미국 라이브 투어를 진행하는 동안 무대에 오르기 위해 술과 항우울제에 의존했고 그것은 곧 중독으로 이어졌다.<br>
결국 시아는 투어를 취소해야 했고 칩거하다시피 하며 약물과 술에 의존하며 생활하게 된다.<br>
자살시도 시도 전 걸려 온 친구의 전화가 시아의 자살을 막았고,<br>
그 후 시아는 약물과 알콜 중독을 치료하는 재활원에 입원하여 재활 프로그램에 참여하게 되었다.<br>
당시 갑상선 이상 증세에 관한 치료도 병행되었다.<br>
시아는 이후 재활에 완전히 성공했고 건강을 많이 회복하며<br>
리한나,비욘세,샤키라,네요,케이티 페리 등 여러 아티스트들의 곡을 쓰다가<br>
Flo Rida-Wild Ones를 시작으로 David Guetta-Titanium에 참여<br>
빌보드 차트 10위 안에 드는 대단한 인기를 끌다가,Sia의 메가히트곡 Chandelier를 발표하게 된다<br>
  <br>
  <br>
  <br>
  <br>
</p>

  
    <h1 class="w3-large w3-text-red"><b>Sia-Chandelier</b></h1>
    <hr style="width:50px;border:5px solid red" class="w3-round">
     <video src="/smvc/resources/Chandelier.mp4" controls width="650" height="500">
   </video>
       <p><strong>Sia의 대표곡</strong></p><p><br>
빌보드 차트 1위를 오랫동안 차지한 매가히트곡으로,시아의 애절한 목소리가 잘 드러나있다<br>
TV쇼 '댄스맘'의 우승자 매디 지글러가 시아의 뮤직비디오에 처음 등장한 곡으로,감각적인 뮤직비디오로 큰 인기를 끌었다<br>
힘든 시절을 이겨내고 본인의 이름으로 컴백한 시아의 곡인만큼 많은 관심을 받았다<br>
목소리와 가사의 조화,찢어질듯한 표현력 덕분에 더 노래가 살아나는 것 같다는 찬사를 들었고<br>
SNL라이브 영상에서 매디 지글러와 함께 무대를 꾸려가는 모습을 보고 많은 사람들이 두 천재의 만남에 감탄했다<br>
  <br>
  <br>
  <br>
  <br>
    </p>
    
        <h1 class="w3-large w3-text-red"><b>Sia-Fire Meet Gasoline</b></h1>
    <hr style="width:50px;border:5px solid red" class="w3-round">
     <video src="/smvc/resources/Fire Meet Gasoline.mp4" controls width="650" height="500">
   </video>
       <p><strong>내가 제일 사랑하는 Sia의 곡</strong></p><p><br>
곡 흐름에 끌려가는 듯한 매력적인 곡<br>
앨범의 대표곡이 아니였기에,뮤직비디오 없이 발표가 되었으나 많은 사람들의 사랑을 받아 공식 뮤직비디오가 공개되었다<br>
동성간의 사랑을 표현한 노래로 인정받지 못하고 있는 동성간의 사랑을 시아는 불과 기름의 만남으로 표현했다<br>
지금까지도 많은 팬들의 입에 오르락 내리는 명곡 중 하나이다<br>
  <br>
  <br>
  <br>
  <br>
    </p>
    
    
            <h1 class="w3-large w3-text-red"><b>Sia-Dusk Till Dawn</b></h1>
    <hr style="width:50px;border:5px solid red" class="w3-round">
     <video src="/smvc/resources/Dusk Till Dawn.mp4" controls width="650" height="500">
   </video>
       <p><strong>베이비 드라이버 OST</strong></p><p><br>
원디렉션 전 멤버 제인과 함께한 베이비 드라이버 OST<br>
이 노래 발표 당시 최고의 인기를 끌고있던 제인과,휴식기를 가지고 있던 시아의 만남이라 더욱 더 화제가 되었다<br>
빌보드 차트 1위를 달성할 정도로 많은 사랑을 받았다. 영화 또한 나쁘지 않은 평을 받았다.<br>
이 노래를 들으면 베이비 드라이버의 주인공 베이비 처럼 달려야 할 것 같다는 이야기가 나올정도로 영화와의 합도 좋은 편<br>
듀엣곡은 잘 내지 않는 시아이기에 제인과의 조합은 엄청난 신선을 주었다.<br>
  <br>
  <br>
  <br>
  <br>
    </p>
    
    
      
            <h1 class="w3-large w3-text-red"><b>Sia-Ho Ho Ho</b></h1>
    <hr style="width:50px;border:5px solid red" class="w3-round">
     <video src="/smvc/resources/Ho Ho Ho.mp4" controls width="650" height="500">
   </video>
       <p><strong>크리스마스를 Sia와 함께!</strong></p><p><br>
크리스마스의 달인 12월 달에 발표된 곡 중 하나<br>
앨범 자체를 크리스마스 분위기의 곡으로 꾸려 컴백했다<br>
그 중에서 많은 가장 많은 사랑을 받은 Ho Ho Ho<br>
신나는 분위기의 곡도 시아의 색깔로 꾸며내는 것에 성공했다.중독성 있는 멜로디와 크리스마스 분위기를 풍기는 가사가 포인트<br>
꼭 크리스마스가 아니더라도 찾아 듣게되는 매력적인 곡이다<br>
  <br>
  <br>
  <br>
  <br>
    </p>
    
    
            <h1 class="w3-large w3-text-red"><b>Sia-Elastic Heart</b></h1>
    <hr style="width:50px;border:5px solid red" class="w3-round">
     <video src="/smvc/resources/Elastic Heart.mp4" controls width="650" height="500">
   </video>
       <p><strong>눈과 귀가 즐거운 노래</strong></p><p><br>
Chandelier를 이은 매디 지글러와의 만남<br>
집중해서 보게되는 뮤직비디오 연출이 또 다른 매력포인트. 뮤직비디오 해석에 대해 많은 말이 있었으나,<br>
'어린시절의 sia와 현재의 sia가 만나서 일어나는 갈등과 용서'라는 해석이 가장 많은 지지를 받고 있다.<br>
하이라이트 부분의 가성이 정말 매력적으로 들린다.<br>
이 곡 또한 빌보드 차트 10위 안에 랭크되었을 정도로 많은 사랑을 받았다.한국에서는 믿고 듣는 시아의 곡 이라는 평가를 받았다.<br>
  <br>
  <br>
  <br>
  <br>
    </p>
 </div>
 </body>
 </html>
    