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
     <img src=images/prod1.png alt="" >
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
    <td>360,000</td>
  </tr>
  <tr>
    <th>발매일</th>
    <td>2019.8.1</td>
  </tr>
  <tr>
    <th>화면 크기</th>
    <td>6.2인치</td>
  </tr>
   <tr>
    <th>무게</th>
    <td>398g</td>
  </tr>
</tbody>
  </table>
</div>

  <form action ="payment.do" method = "post">
  <div class = "payment" >
  <input type = "hidden" name="U_id" value="<%=(String) session.getAttribute("id")%>">
  <input type = "hidden" name="P_many" value="1">
  <input type = "hidden" name="P_id" value="001"> 
  <input type = "hidden" name="P_price" value="360,000">
  <input type="submit" value="결제" >
  </div>
</form>

<h2>상품 구성</h2>
<div class="proconf">
<img src=images/topmenu2/pro1.png alt="" >
</div>
</main>

  <footer>
     <section id="bottomMenu">
      <p>고객지원 문의전화 : 1670-9900 (평일 오전 9시 30분~오후 5시 30분)</p>
      </section>
  </footer>

