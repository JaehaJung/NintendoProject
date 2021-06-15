<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <link rel ="stylesheet" href="/css/style_login.css?ver=1.2">
</head>
<body>
    <header>
      <a href="main.jsp"><img src="../images/logo.png"></a>
    </header>
    
<body>
	 <div class= "box1">
          <div class = "box2">
          <div class = "msg">
        ${id } :logout 되었습니다.
        </div>
	<%
		session.invalidate();
	%>
	<p>
	<%@ include file = "home_logout.jsp"%>
      </div>
      </div>
</body>
</html>

