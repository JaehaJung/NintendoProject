<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
   <title>로그인</title>
    <link rel ="stylesheet" href="css/style_login.css?ver=1.1">
</head>
<body>
  <div>
    <header>
      <a href="main.jsp"><img src="images/logo.png"></a>
    </header>
    <form action ="login.do" method = "post">
      <ul>
        <div class= "box1">
          <div class = "box2">
        <li><label>아이디: <input type="text" name="id" style=font-size:25px></label></li>
        <li><label>비밀번호: <input type="password" name="pw"style=font-size:25px></label></li>
        <li><a href="login.do"><input type="submit" value="로그인" class= "button"></a></li>
		<div class = "radio">
		<li><input type = "radio" name = "type" value = "member" >회원 로그인</li>
		<li><input type = "radio" name = "type" value = "manager" >관리자 로그인</li>
		</div>	
      </div>
      
        <div class= no_id>
        <li><p>아이디가 없을 경우</p></li>
        <li><a href="join.jsp">새로운 계정 생성하기</a></li>
      </div>
      </ul>
      </div>
  </form>

      </section>
  </footer>
  </div>  
</body>
</html>
