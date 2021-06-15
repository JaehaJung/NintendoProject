<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>Nintendo</title>
  <link rel ="stylesheet" href="css/style.css">
  <!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>Nintendo</title>
  <link rel ="stylesheet" href="css/style_topmenu1.css">
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>

<script>
 $(document).ready(function () {

    $('.bxslider').bxSlider({ // 클래스명 주의!

        auto: false, // 자동으로 애니메이션 시작

        speed: 0,  // 애니메이션 속도

        pause: 5000,  // 애니메이션 유지 시간 (1000은 1초)

        mode: 'horizontal', // 슬라이드 모드 ('fade', 'horizontal', 'vertical' 이 있음)

        autoControls: true, // 시작 및 중지버튼 보여짐

        pager: true, // 페이지 표시 보여짐

        captions: true, // 이미지 위에 텍스트를 넣을 수 있음

    });

});
</script>

</head>

<body>
  <header>
  <div id="logo">
    <a href="main.jsp"><img src="images/logo.png"></a>
  </div>
  </header>

  <div class= "topmenu">
  <nav> 
    <ul>
    <li class="item"><a href="topmenu1.jsp">Switch 소개</a></li>
    <li class="item"><a href="topmenu2.jsp">Switch 라인업</a></li>
    <li class="item"><a href="topmenu3.jsp">닌텐도 e숍</a></li>
    <li class="item"><a href="login.jsp">로그인 / 회원가입</a></li> 
    </ul>  
  </nav> 
</div>
  <main>

  <img src= "images/topmenu1/p1.png" alt="" width="100%">
  <div class = "banner"><img src= "images/topmenu1/p2.png" alt="" width="100%"></div>
  <div class = "mode"><img src= "images/topmenu1/p3.png" width="80%"></div>
  <div class="text"><p>「Nintendo Switch™」은 플레이 장면에 맞추어 형태를 바꾸는 게임기 입니다.<br>
        언제, 어디에서나, 마음 가는대로, 자유로운 스타일로 게임을 즐길 수 있습니다.</p></div>
<div class = "mode"><img src= "images/topmenu1/p4.png" width ="85%"></div>

<div class="text"><h2>Nintendo Switch 제품 구성</h2></div>
<div class = "box">
<div class="bxslider">
    <div><img src= "images/topmenu1/pro1.jpg" alt="" width="60%"></div>
    <div><img src= "images/topmenu1/pro2.jpg" alt="" width="60%"></div>
    <div><img src= "images/topmenu1/pro3.jpg" alt="" width="60%"></div>
    <div><img src= "images/topmenu1/pro4.jpg" alt="" width="60%"></div>
    <div><img src= "images/topmenu1/pro5.jpg" alt="" width="60%"></div>
    </div>
  </div>
  </main>
  <footer>
     <section id="bottomMenu">
      <p>고객지원 문의전화 : 1670-9900 (평일 오전 9시 30분~오후 5시 30분)</p>
      </section>
  </footer>