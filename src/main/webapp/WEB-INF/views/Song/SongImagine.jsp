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
     <a href="SongImagine.do" class="w3-bar-item w3-button w3-hover-white w3-white">Imagine dragons</a>
     <a href="SongBillie.do" class="w3-bar-item w3-button w3-hover-white">Billie Eilish</a>
     <a href="SongPanic.do" class="w3-bar-item w3-button w3-hover-white">Panic! at the Disco</a>
  </div>
  <!-- 메뉴 내용 한 세트 끝 -->
  
<!-- 메뉴 내용 한 세트 -->
  <a href="boardList.do" onclick="mySakura()" href="javascript:void(0)" class="w3-button w3-block w3-white w3-left-align" id="myBtnSakura">
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
  <h1 class="w3-xxlarge w3-text-red"><b>Imagine Dragons</b></h1>
    <hr style="width:50px;border:5px solid red" class="w3-round">

    <img src="/smvc/resources/imagMain.png" width="500" height="250"/>
    
    <p><strong>계속 찾아듣게 되는 밴드</strong></p><p><br>
독특한 일렉트로니카 장르와 락을 결합시켜 2010년대 중반 최고의 상업적인 성공을 이룬 밴드다.<br>
시적인 가사와 인디밴드스러운 락, 일렉 사운드와의 접목 등의 시도<br>
또 그러한 시도로 나온 독창적인 곡들, 밴드의 이름 Imagine과 어울리는 묘하게 몽환적인 멜로디<br>
그리고 보컬 댄 레이놀즈의 힘있는 목소리에 힘입어 2015년부터 폭발적인 인기를 얻고 있는 밴드.<br>
밴드의 이름인 Imagine Dragons는 멤버들이 모여서 밴드의 이름을 고민하던 중 아나그램으로 지은 이름이라고 한다.<br>
많은 팬들은 Ragged Insomnia으로 추정하며<br>
실제로 On Top Of The World 뮤직 비디오 중간에 Ragged Insomnia라는 말이 나온다<br>
국내에서는 팀명을 직역한 상상용으로도 부른다<br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
</center>


  <h1 class="w3-large w3-text-red"><b>Imagine Dragons의 스토리</b></h1>
    <hr style="width:50px;border:5px solid red" class="w3-round">
    <img src="/smvc/resources/Imag1.jpg" width="500" height="250"/>
    <p><strong>우연의 시작</strong></p><p><br>
초기 Imagine Dragons는 'Hell and Silence' 같은 EP를 발매하며 지역에서 반향을 일으켰고,<br>
이를 발판으로 댄 레이놀즈의 고향인 라스베이거스로 옮겨가 활동을 지속하게 된다.<br>
라스베이거스에서 활동을 하던 중, 지역 락 페스티발에서 헤드라이너 밴드의 보컬이 아파서 급작스럽게 못 나오게 되자<br>
26,000명에 가까운 관중들 앞에서 대타로 나서게 되는데 이게 대박이 났다.<br>
지역 언론들에 의해 핫한 신인으로 지목받게 된 Imagine Dragons는 유명 프로듀서와 계약을 하게 되는데, <br>
계약 직전에 드러머였던 앤드류 톨먼이 자리에서 빠지게 된다.<br>
벤 맥키가 버클리 음대를 같이 다닌 다니엘 플래츠먼을 드러머로 밴드에 합류시킴으로써 우리가 아는 Imagine Dragons의 모습이 된다.<br>
그리고 데뷔 앨범 Night Visions(타이틀곡 Radioactive)이 초대박을 터뜨리게 된다.<br>
이후로는 승승장구가 이어져, 빌보드 차트 얼터너티브 록 1위.<br>
빌보드 뮤직 어워드 최고의 락 앨범 수상 등의 대성공을 거뒀고,그에 힘입어 그래미 어워드에서 공연도 하였으며<br>
당해 그래미 어워즈 최고의 락 퍼포먼스까지 수상하는 등 최고로 핫한 밴드로 떠올랐다.<br>
  <br>
  <br>
  <br>
  <br>
</p>


  <h1 class="w3-large w3-text-red"><b>Imagine Dragons-Radioactive</b></h1>
    <hr style="width:50px;border:5px solid red" class="w3-round">
     <video src="/smvc/resources/Radioactive.mp4" controls width="650" height="500">
   </video>
       <p><strong>Imagine Dragons를 세상에 알린 노래</strong></p><p><br>
데뷔 앨범 Night Visions의 타이틀 곡. 신인 이매진 드래곤스를 빌보드 차트 1위에 오랫동안 랭크시킨 노래<br>
평론가들이나 락팬들에게 좋은 평가를 받는 편은 아니며 팝 밴드로 취급받는 경향이 있지만<br>
접근하기 힘든 락을 대중적으로 이끌었다는 점에서 이 노래는 굉장히 좋은 평가를 받고 있다<br>
도전적이며 폭팔적인 사운드,노래의 흐름과 잘 어울리는 창법과 목소리,밴드 연주와의 합이 잘 어울려졌기 때문에<br>
이매진 드래곤스가 아니면 살릴 수 없는 노래 이기도 하다<br>
  <br>
  <br>
  <br>
  <br>
    </p>
    
    
      <h1 class="w3-large w3-text-red"><b>Imagine Dragons-Zero</b></h1>
    <hr style="width:50px;border:5px solid red" class="w3-round">
     <video src="/smvc/resources/Zero.mp4" controls width="650" height="500">
   </video>
       <p><strong>주먹왕 랄프2 OST</strong></p><p><br>
영화나 게임등의 노래에 많이 참여했지만,어린이 영화에는 처음 참여하였다<br>
다양한 음악을 시도하는 이매진 드래곤스의 또 다른 매력이 담긴 곡으로,폭팔적인 사운드가 아닌<br>
신나는 사운드에 자신들의 색깔을 입힌 매력적인 곡 이다. 보컬 댄 레이놀즈 특유의 찢어지는 창법이 없는 노래 중 하나<br>
뮤직비디오도 주먹왕 랄프2의 컨셉과 아주 유사하다. 뮤직비디오가 상당히 귀여운 편이므로 보는걸 추천<br>
영화는 흥행에 실패했지만, 노래는 꽤나 성공하여 차트 10위권 안에 진입했다<br>
  <br>
  <br>
  <br>
  <br>
    </p>
    
    
          <h1 class="w3-large w3-text-red"><b>Imagine Dragons-Walking The Wire</b></h1>
    <hr style="width:50px;border:5px solid red" class="w3-round">
     <video src="/smvc/resources/Walking The Wire.mp4" controls width="650" height="500">
   </video>
       <p><strong>힘들때 들으면 좋은 노래</strong></p><p><br>
한국에서는 삼성 갤럭시 S9광고 음악으로 잘 알려져 있는 이메진드래곤스의 명곡 중 하나<br>
와이어 위를 타고 있는 듯한 아슬함과 불안함을 겪을때에도 우리는 함께이니 해낼 수 있다는 희망적인 가사가 담겨있다<br>
이메진드래곤스가 말하는 사랑은 이런 것인것 같다.힘들고 위태로울때 서로를 잡아주는 사랑.<br>
그렇기에 이 노래를 들으면 마음에 큰 위로가 찾아오는 것 같다.<br>
유튜브에 해석 영상이 있으니 모든 사람들이 찾아봤으면 좋겠다.<br>
  <br>
  <br>
  <br>
  <br>
    </p>
    
    
              <h1 class="w3-large w3-text-red"><b>Imagine Dragons-Demons</b></h1>
    <hr style="width:50px;border:5px solid red" class="w3-round">
     <video src="/smvc/resources/Demons.mp4" controls width="650" height="500">
   </video>
       <p><strong>들을수록 더 좋아지는 노래</strong></p><p><br>
이메진드래곤스를 사랑하는 사람들이 꼭 추천해주는 곡 이라고 생각한다<br>
그정도로 팬들에게 엄청난 인기를 받고 있으며,타이틀 곡이 아님에도 불구하고 엄청난 인기를 끌어<br>
자신들의 콘서트 영상을 뮤직비디오로 제작하여 업로드했다.<br>
뮤직비디오에는 팬의 모습이 자주 등장하는데,Demons를 만들게 된 계기가 팬이기 때문이다<br>
이 노래는 공연 중 만난 팬이 희귀암을 앓고 있다는 것을 알고 "It's Time"을 불러주며 응원하였는데<br>
덕분에 암을 힘든 화학요법으로 이겨냈지만 안타깝게도 얼마 뒤 2013년에 갑작스럽게 의식 불명 상태로 빠졌고,결국 세상을 떠났다<br>
그 이후,이매진 드래곤스가 팬을 위해 Demons를 작사,작곡했다<br>
팬들을 위한 헌정곡  이라고 할 수 있다.실제로 많은 사람들이 사랑하고 있는 노래이기도 하다.<br>
  <br>
  <br>
  <br>
  <br>
    </p>
    
    
                  <h1 class="w3-large w3-text-red"><b>Imagine Dragons-Believer</b></h1>
    <hr style="width:50px;border:5px solid red" class="w3-round">
     <video src="/smvc/resources/Believer.mp4" controls width="650" height="500">
   </video>
       <p><strong>초창기 색깔을 느낄 수 있는 곡</strong></p><p><br>
Radioactive와 같은 폭팔적인 느낌의 곡을 타이틀 곡으로 들고왔다<br>
터질듯한 북 소리가 포인트인데,실제 라이브 영상을 보면 북을 부술듯이 친다.<br>
세계적으로 많은 사랑을 받아,빌보드 차트 1위에 오랫동안 랭크되었고<br>
한국 예능에서 종종 이 노래가 사용되기도 하였다.같이 공개된 Thunder라는 곡 또한 인기를 끌었다.<br>
폭팔할듯한 음이 매력이기 때문에 꼭 이어폰을 꽂고 듣는 것을 추천!<br>
  <br>
  <br>
  <br>
  <br>
    </p>
    
 </div>
 </body>
 </html>