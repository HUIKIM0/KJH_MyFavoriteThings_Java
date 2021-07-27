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
     <a href="SongNow.do" class="w3-bar-item w3-button w3-hover-white w3-white">요즘 잘 듣는 노래</a>
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
  <h1 class="w3-xxlarge w3-text-red"><b>Selena Gomez-Back to you</b></h1>
    <hr style="width:50px;border:5px solid red" class="w3-round">
   <video src="/smvc/resources/Back To You.mp4" controls width="650" height="500">
   
   </video>
    <img src="/smvc/resources/BackToYou.gif"/>
    <p><strong>루머의 루머의 루머OST</strong></p><p><br>
   셀레나 고메즈 특유의 중저음이 돋보이는 곡 입니다<br>
   개인적으로 이 노래를 듣고 셀레나 고메즈의 노래를 열심히 찾아 다녔기 때문에 입문으로 좋은 것 같아요<br>
  저스틴 비버랑 헤어지고 나서 많이 힘들어 했다고 하는데, 그래서 그런지 이 노래를 들으면 셀레나의 힘들었던 마음이 느껴집니다ㅠ^ㅠ<br>
  드라마 '루머의 루머의 루머'도 이 노래 못지않은 명작 드라마 라고 해요!<br>
  세심한 감정선이 나타나는 드라마라서 우울증이 있는 분들은 조금 힘들다고 하니 참고하세요
  <br>
  <br>
  <br>
  <br>
   <h1 class="w3-xxlarge w3-text-red"><b>Onerepublic-Rescue me</b></h1>
    <hr style="width:50px;border:5px solid red" class="w3-round">
     <video src="/smvc/resources/Rescue Me.mp4" controls width="650" height="500">
   </video>
   
   <img src="/smvc/resources/Rescue Me.gif"/>
       <p><strong>중독성 있는 멜로디</strong></p><p><br>
   Counting Stars를 만들어낸 원리퍼블릭의 컴백곡 입니다<br>
   Counting Stars로 원리퍼블릭을 알게되었는데 이번 신곡도 너무 좋네요<br>
  원리퍼블릭의 가사는 언제나 너무너무 마음에 들어요 신나는 노래와 대비되는 절절하고 뜻 깊은 가사가 원리퍼블릭의 매력포인트<br>
  뮤직비디오 또한 너무 좋아서 시청하시길 권합니다!<br>
  혹시 원리퍼블릭의 대표곡 Counting Stars를 안 들어보셨다면 꼭꼭 들어보세요 가사를 보며 듣는걸 추천해요<br>
  <br>
  <br>
  <br>
  <br>
    </p>
    
       <h1 class="w3-xxlarge w3-text-red"><b>Anne Marie-2002</b></h1>
    <hr style="width:50px;border:5px solid red" class="w3-round">
     <video src="/smvc/resources/2002.mp4" controls width="650" height="500">
   </video>
    <img src="/smvc/resources/2002.gif"/>
       <p><strong>언제 들어도 좋은 곡</strong></p><p><br>
   한국에서도 큰 인기를 끌고 있는 앤 마리의 대표곡 중 하나입니다<br>
   개인적으로 앤 마리의 노래 중에서 2002가 제일 좋은것 같아요<br>
  앤 마리의 친한 친구이자 유명한 아티스트인 에드 시런이 앤마리에게 선물로 준 곡!<br>
   하이라이트에 나오는 코러스 부분 목소리의 주인공 또한 애드시런입니다<br>
 노래도 정말 좋지만 라이브 또한 훌륭한 가수여서,더 애정이 가는 것 같아요. 노래가 마음에 드셨다면 라이브 영상도 꼭 찾아보세요!<br>
  <br>
  <br>
  <br>
  <br>
    </p>
    
    <h1 class="w3-xxlarge w3-text-red"><b>Eminem-Venom</b></h1>
    <hr style="width:50px;border:5px solid red" class="w3-round">
     <video src="/smvc/resources/Venom.mp4" controls width="650" height="500">
   </video>
    <img src="/smvc/resources/Venom.gif"/>
       <p><strong>영화 Venom의 OST</strong></p><p><br>
    미국인들이 뽑은 최고의 래퍼 1위,빌보드 선정 최고의 래퍼 10명 중 1위에 선정된 에미넴<br>
   영화 베놈에 나오는 베놈의 캐릭터성과 맞게 가사가 이루어져 있습니다<br>
  애미넴은 디스트로이트 슬럼가에서 불우한 생활을 했었지만,실력으로 사람들에게 인정을 받아 현재의 위치에 설 수 있었습니다<br>
   '랩은 흑인의 전유물이다','백인이 랩을?'이라는 생각을 가졌던 시절의 편견을 깨준 인물이기도 합니다<br>
 이 곡을 듣고 마음에 드셨다면,lose yourself,monster도 들어보세요<br>
  <br>
  <br>
  <br>
  <br>
    </p>
    
    
     <h1 class="w3-xxlarge w3-text-red"><b>LSD-Thunderclouds</b></h1>
    <hr style="width:50px;border:5px solid red" class="w3-round">
     <video src="/smvc/resources/Thunderclouds.mp4" controls width="650" height="500">
   </video>
    <img src="/smvc/resources/Thunderclouds.gif" width="500"/>
       <p><strong>Sia,Diplo,Labrinth의 만남</strong></p><p><br>
    대단한 아티스트 3명이 모여 만들어진 그룹 LSD<br>
  LSD는 각자의 앞글자를 따서 만들어 졌습니다. 마약의 한 종류인 LSD과도 같은 이름이네요ㅎㅎ 조금 노린거겠죠?<br>
  시아의 뮤즈인 매디 지글러도 LSD 뮤비에 참여 해서 큰 눈길을 끌었습니다. LSD 뮤비에서도 매디 지글러를 볼 줄은 몰랐으니까요<br>
  상상치도 못한 조합이였는데.. 노래가 너무 좋아서 곡이 발표된 이후로 자주 듣는 곡 이에요<br>
 갤럭시노트9의 광고 삽입곡으로도 사용되었습니다!<br>
 잠깐 곡 참여를 한게 아니라,그룹을 따로 만들었기 때문에 계속 LSD만의 노래를 들을 수 있어서 더 좋은것 같네요<br>
  <br>
  <br>
  <br>
  <br>
    </p>
    
    
  </div>

</center>  
</div>

<!-- ****************************** -->

<script>
// Accordion 

function myWriting() {
	  var x = document.getElementById("writing");
	  if (x.className.indexOf("w3-show") == -1) {
	    x.className += " w3-show";
	  } else {
	    x.className = x.className.replace(" w3-show", "");
	  }
	}

function myPop() {
	  var x = document.getElementById("pop");
	  if (x.className.indexOf("w3-show") == -1) {
	    x.className += " w3-show";
	  } else {
	    x.className = x.className.replace(" w3-show", "");
	  }
	}
	
	
function mySakura() {
	  var x = document.getElementById("sakura");
	  if (x.className.indexOf("w3-show") == -1) {
	    x.className += " w3-show";
	  } else {
	    x.className = x.className.replace(" w3-show", "");
	  }
	}
	
function myPin() {
	  var x = document.getElementById("pin");
	  if (x.className.indexOf("w3-show") == -1) {
	    x.className += " w3-show";
	  } else {
	    x.className = x.className.replace(" w3-show", "");
	  }
	}

// Click on the "Jeans" link on page load to open the accordion for demo purposes
document.getElementById("myBtnPop").click();
document.getElementById("myBtnSakura").click();
document.getElementById("myBtnPin").click();


// Open and close sidebar
function w3_open() {
  document.getElementById("mySidebar").style.display = "block";
  document.getElementById("myOverlay").style.display = "block";
}
 
function w3_close() {
	  document.getElementById("mySidebar").style.display = "none";
	  document.getElementById("myOverlay").style.display = "none";
	}
</script>


</body>
</html>