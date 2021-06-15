<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
   <title>회원가입</title>
    <link rel ="stylesheet" href="css/style_join.css">
</head>
<body>
   <header>
      <a href="main.jsp"><img src="images/logo.png"></a>
    </header>
    <form action ="join.do" method = "post">
      <ul>
        <div class= "box1">
        <li>아이디 : <input type="text" name="user_id" style=font-size:25px></li>
        <li>비밀번호 : <input type="password" name="user_pw"style=font-size:25px></li>
        <li>이름 : <input type="text" name="user_name"style=font-size:25px></li>
        <li>전화번호 : <input type="tel" name="user_phone"style=font-size:25px></li>
        <li>이메일 : <input type="eamil" name="user_mail"style=font-size:25px></li>
        <li>주소 : <input type="text" name="user_adress"style=font-size:25px></li>
        <li><input type="submit" value="회원가입" class= "button"></li>
        </div>
      </ul>
  </form>
</body>
</html>
