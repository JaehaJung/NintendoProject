<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>Nintendo</title>
  <link rel ="stylesheet" href="css/style_product.css">
 
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

    <h2>상품 명</h2>

    <div class ="prophoto">
     <img src=images/topmenu3/ep1.jpg alt="" >
   </div>

  <div class = "pro">  
  <table>
  <colgroup>
  <col style="width:px;">
  <col>
</colgroup>
<tbody>
  <tr>
    <th>판매가</th>
    <td>32,800</td>
  </tr>
  <tr>
    <th>발매일</th>
    <td>2021.6.11</td>
  </tr>
  <tr>
    <th>메이커</th>
    <td>한국닌텐도</td>
  </tr>
   <tr>
    <th>플레이 인원수</th>
    <td>1명</td>
  </tr>
</tbody>
  </table>
</div>

  <form action ="payment.do" method = "post">
  <div class = "payment" >
  <input type = "hidden" name="U_id" value="<%=(String) session.getAttribute("id")%>">
  <input type = "hidden" name="P_many" value="1">
  <input type = "hidden" name="P_id" value="002"> 
  <input type = "hidden" name="P_price" value="32,800">
  <input type="submit" value="결제" >
  </div>
</form>

<div class="explain">
<h1>Nintendo 개발실에서 태어난 새로운 게임 코딩 소프트웨어</h1>
<p>『차근차근 게임 코딩』은 Nintendo Switch 안에서 살고 있는 신비한 생명체 「노든」을 연결하는 것만으로, 즐기면서 코딩을 체험하고 배울 수 있는 소프트웨어입니다.</p>
<p>3가지 기능으로 알기 쉽게. 게임 제작 체험을 통해 컴퓨팅 사고를 접한다.</p>
<p>내비게이션을 따라 노든을 연결하는 것만으로, 다양한 게임을 완성할 수 있는 「내비게이션 레슨」으로 게임 만들기를 체험한 뒤, 「체크 포인트」로 제작 도중의 게임을 완성시키는 퍼즐에 도전하여, 레슨 내용을 이해하고 있는지를 확인할 수 있습니다.</p>
</div>
</main>

  <footer>
     <section id="bottomMenu">
      <p>고객지원 문의전화 : 1670-9900 (평일 오전 9시 30분~오후 5시 30분)</p>
      </section>
  </footer>

