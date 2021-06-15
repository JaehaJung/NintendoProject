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
  <link rel ="stylesheet" href="css/style.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>

<script>
 $(document).ready(function () {

    $('.bxslider').bxSlider({ // 클래스명 주의!
        auto: true, // 자동으로 애니메이션 시작
        speed: 500,  // 애니메이션 속도
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

    <div class="bxslider">
    <div><img src= "images/Smario3d.jpg" alt="" width="100%"></div>
    <div><img src= "images/g2.jpeg" alt="" width="100%"></div>
    <div><img src= "images/g3.jpg" alt="" width="100%"></div>
    </div>
    
    <h1>Nintendo Items</h1>

  <div class= "plist">
  <ul>
    <li class= "product">
      <a href="product1.jsp">
      <img src=images/prod1.png alt="" width=300px height=200px>
        <h2>Nintendo Switch <br>블루/네온 레드</h2>
        <p>희망소비자가격 : 360,000</p>
    </a>
    </li> 

  <li class= "product">
      <a href="#">
      <img src=images/prod2.png alt="" width=300px height=200px>
        <h2>Nintendo Switch <br>그레이</h2>
        <p>희망소비자가격 : 360,000</p>
    </a>
    </li>

 <li class= "product">
      <a href="product1.jsp">
      <img src=images/prod3.png alt="" width=300px height=200px>
        <h2>Nintendo Switch <br>모여봐요 동물의숲 에디션</h2>
        <p>희망소비자가격 : 360,000</p>
      </a>
    </li>

<li class= "product">
      <a href="#">
      <img src=images/procon1.jpg alt="" width=300px height=200px>
        <h2>Nintendo Switch <br>Pro 컨트롤러</h2>
        <p>희망소비자가격 : 77,800</p>
    </a>
    </li>

 <li class= "product">
    <a href="#">
      <img src=images/case1.jpg alt="" width=250px height=200px>
        <h2>Nintendo Switch <br>휴대용 케이스</h2>
        <p>희망소비자가격 : 22,800</p>
    </a>
    </li> 

 <li class= "product">
    <a href="eproduct1.jsp">
     <img src=images/topmenu3/ep1.jpg alt="" width=300px height=200px>
        <h2>차근차근 게임 코딩</h2>
        <p>희망소비자가격 : 32,800</p>
    </a>
    </li> 

 <li class= "product">
    <a href="#">
     <img src=images/topmenu3/ep2.jpg alt="" width=300px height=200px>
        <h2>젤다의 전설<br>야생의 숨결</h2>
        <p>희망소비자가격 : 74,800</p>
    </a>
    </li> 
  </ul>

</div>

  </main>
  <footer>
     <section id="bottomMenu">
      <p>고객지원 문의전화 : 1670-9900 (평일 오전 9시 30분~오후 5시 30분)</p>
      </section>
  </footer>