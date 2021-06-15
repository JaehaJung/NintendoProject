<%@page import="nintendo.vo.MemberVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel ="stylesheet" href="css/style_login.css?ver=1.5">
</head>
<body>
    <header>
      <a href="main.jsp"><img src="images/logo.png"></a>
    </header>
    
<body>
   <div class= "box1">
          <div class = "box2">
          <div class = "msg">
          <h2> Nintendo 회원 목록</h2>
<%  ArrayList<MemberVO> list = (ArrayList<MemberVO>) request.getAttribute("list"); 
    if(!list.isEmpty()) {  %>
	   <table border="1">
	   		<tr><th>이름</th><th>아이디</th><th>비밀번호</th><th>이메일</th><th>주소</th><th>전화번호</th></tr>
			
			<%   for(int i=0; i<list.size(); i++){   
			       MemberVO member = list.get(i);   %>
			                <tr><td><%=member.getName() %></td>
			            <td><%=member.getId() %></td>
			            <td><%=member.getPwd() %></td>
			            <td><%=member.getEmail() %></td>
			            <td><%=member.getAdress() %></td>
			            <td><%=member.getPhonenum() %></td>
			       </tr>
			       
			<%   }
       }else{
    	   out.print("<h3>고객 정보가 없습니다.</h3>");
       }
	%>
	  </table>
	  </div>
	</div>
    </div>
</body>
</html>