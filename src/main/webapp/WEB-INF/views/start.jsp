<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<title>1712107 My Favorite Things</title>
<meta charset="UTF-8">
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

<!-- Sidebar/menu -->
<nav class="w3-sidebar w3-red w3-collapse w3-top w3-large w3-padding" style="z-index:3;width:280px;font-weight:bold;" id="mySidebar"><br>
  <a href="javascript:void(0)" onclick="w3_close()" class="w3-button w3-hide-large w3-display-topleft" style="width:100%;font-size:22px">Close Menu</a>
  <div class="w3-container">
    <h3 class="w3-padding-64"><b>Menu</b></h3>
  </div>

<!-- 메뉴  -->
  <div class="w3-bar-block">
    <a href="#" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">My Favorite Things</a> 
    <a href="#showcase" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">내가 좋아하는 것들</a> 
    <a href="#services" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">주제 선정 이유</a> 
    <a href="#designers" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">간단소개</a> 
    <a href="#contact" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">로그인</a>
    <a href="join.do" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">회원가입</a>
  </div>
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

  <!-- Header -->
  <div class="w3-container" style="margin-top:80px" id="showcase">
    <h1 class="w3-jumbo"><b>My Favorite Things</b></h1>
    <h1 class="w3-xx'large w3-text-red"><b>내가 좋아하는 것들</b></h1>
    <hr style="width:50px;border:5px solid red" class="w3-round">
  </div>
  
  <!-- Photo grid (modal) -->
  <div class="w3-row-padding">
    <div class="w3-half">
      <img src="/smvc/resources/dua_title.jpg" style="width:100%" onclick="onClick(this)" alt="POP-Song">
      <img src="/smvc/resources/pin_title.jpg" style="width:100%" onclick="onClick(this)" alt="핀과 제이크의 어드벤처 타임">
     <!-- <img src="/smvc/resources/sakura_title.jpg" style="width:100%" onclick="onClick(this)" alt="White walls with designer chairs"> --> 
    </div>

    <div class="w3-half">
      <img src="/smvc/resources/sakura_title.jpg" style="width:100%" onclick="onClick(this)" alt="카드캡터 체리">
      <img src="/smvc/resources/love.jpg" height="360" style="width:100%"  onclick="onClick(this)" alt="♥">
    </div>
  </div>

  <!-- Modal for full size images on click-->
  <div id="modal01" class="w3-modal w3-black" style="padding-top:0" onclick="this.style.display='none'">
    <span class="w3-button w3-black w3-xxlarge w3-display-topright">×</span>
    <div class="w3-modal-content w3-animate-zoom w3-center w3-transparent w3-padding-64">
      <img id="img01" class="w3-image">
      <p id="caption"></p>
    </div>
  </div>

  <!-- Services/주제선정이유 -->
  <div class="w3-container" id="services" style="margin-top:75px">
    <h1 class="w3-xxlarge w3-text-red"><b>주제 선정 이유</b></h1>
    <hr style="width:50px;border:5px solid red" class="w3-round">
    <p><strong>이왕 한다면 재밌게!</strong></p><p>무엇을 주제로 하면 좋을까? 고민한 끝에, 내가 좋아하는 것들을 소개하는 페이지를 만들자! 하는 생각이 들었습니다.<br>
    때놓을래야 때 놓을 수 없는 등굣길 친구 POP-Song. 어렸을때 부터 쭉 좋아해온 카드캡터 체리. 동생들과 컴퓨터 앞에 앉아 잠들때 까지 봤던 핀과 제이크의 어드벤처 타임.<br>
    시간이 오래 걸릴지라도, 내가 좋아하는 것들을 적어간다면 더할 나위 없이 즐거울 것 같아 이 주제를 선정하게 되었습니다.
    </p>
  </div>
  
  <!-- 간단소개 -->
  <div class="w3-container" id="designers" style="margin-top:75px">
    <h1 class="w3-xxlarge w3-text-red"><b>간단소개</b></h1>
    <hr style="width:50px;border:5px solid red" class="w3-round">
    <p><strong>간단하게 알아볼까요?</strong></p>
    <p>POP-Song,카드캡터 체리,핀과 제이크의 어드벤처 타임!<br>뭔지 잘 모르겠다구요? 살짝 소개해 드리겠습니다. 회원가입 시 더 많은 정보를 볼 수 있어요:)</p>
    
  </div>

  <!-- The Team -->
  <div class="w3-row-padding w3">
    <div class="w3-col m4 w3-margin-bottom">
      <div class="w3-light-grey">
        <img src="/smvc/resources/imag_title.png" alt="imag" style="width:100%">
        <div class="w3-container">
          <h3>POP-Song</h3>
          <p class="w3-opacity">다양함</p>
          <p><font size="2">K-POP에서 들을 수 없는 도전적인 사운드와 인생,사랑,교훈,이야기,역사 등을 담아낸 다양한 가사까지!<br>제가 요즘 잘 듣고있는 노래들과 좋아하는 가수Sia,
          imagine dragons,Billie Eilish,Panic! at the Disco의 추천곡을 소개해 드려요</font></p>
        </div>
      </div>
    </div>
    <div class="w3-col m4 w3-margin-bottom">
      <div class="w3-light-grey">
        <img src="/smvc/resources/sakura_title2.jpg" alt="sakura" style="width:100%">
        <div class="w3-container">
        
          <h3>봉인해제!</h3>
          <p class="w3-opacity">추억의 만화</p>
          <p><font size="2">어릴적 티비 앞에 앉아 동생들과 함께 본 만화<br> 화려한 마법과 매력적인 등장인물 흥미진진한 스토리<br>10년전에 만들어진 만화 '카드캡터 체리'는 
          지금까지도 엄청난 인기를 얻고 있으며, 현재 '카드캡터 체리 클리어카드 편' 으로 신 연재중에 있습니다.<br></font></p>
        </div>
      </div>
    </div>
    <div class="w3-col m4 w3-margin-bottom">
      <div class="w3-light-grey">
        <img src="/smvc/resources/pin_title2.jpeg" alt="Mike" style="width:100%">
        <div class="w3-container">
          <h3>모험의 시간</h3>
          <p class="w3-opacity">카툰네트워크 인기 애니메이션</p>
          <p><font size="2">핵전쟁 이후 얼어버린 지구.우리가 알고있는 모든 생명체가 멸종하게 되고,그로부터 100년후 지구에 새로운 생명체가 살게된다.<br>
          유일하게 살아남은 인간 핀과 마법개 제이크가 함께 떠나는 모험의 시간! 전세계에서 선풍적인 인기를 끌었으며,현재 9시즌을 마지막으로 종영했다.<br></font></p>
        </div>
      </div>
    </div>
  </div>


 
  
  <!-- Contact -->
  <div class="w3-container" id="contact" style="margin-top:65px">
    <h1 class="w3-xxlarge w3-text-red"><b>Login</b></h1>
    <hr style="width:50px;border:5px solid red" class="w3-round">
    <p>환영합니다:) 로그인을 해 주세요</p>
    <form action="StartLoginOK.do" target="post">
      <div class="w3-section">
        <label>아이디</label>
        <input class="w3-input w3-border" type="text" name="id" required>
      </div>
      <div class="w3-section">
        <label>비밀번호</label>
        <input class="w3-input w3-border" type="text" name="passwd" required>
      </div>
      
      <input type="submit" value="로그인" class="w3-button w3-block w3-padding-large w3-red w3-margin-bottom">
  <!--  <button type="submit" value="로그인" class="w3-button w3-block w3-padding-large w3-red w3-margin-bottom">로그인!!</button> -->   
    </form>  
  </div>

<!-- End page content -->
</div>

<!-- W3.CSS Container -->
<div class="w3-light-grey w3-container w3-padding-32" style="margin-top:75px;padding-right:58px"><p class="w3-right"> <a href="https://www.w3schools.com/w3css/default.asp" title="W3.CSS" target="_blank" class="w3-hover-opacity"></a></p></div>

<script>
// Script to open and close sidebar
function w3_open() {
  document.getElementById("mySidebar").style.display = "block";
  document.getElementById("myOverlay").style.display = "block";
}
 
function w3_close() {
  document.getElementById("mySidebar").style.display = "none";
  document.getElementById("myOverlay").style.display = "none";
}

// Modal Image Gallery
function onClick(element) {
  document.getElementById("img01").src = element.src;
  document.getElementById("modal01").style.display = "block";
  var captionText = document.getElementById("caption");
  captionText.innerHTML = element.alt;
}
</script>

</body>
</html>
