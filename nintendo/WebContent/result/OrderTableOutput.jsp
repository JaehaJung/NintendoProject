<%@page import="nintendo.vo.OrderVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel ="stylesheet" href="css/style_login.css?ver=1.1">
<body>
  <div>
    <header>
      <a href="main.jsp"><img src="images/logo.png"></a>
    </header>
   <div class= "box1">
          <div class = "box2">
          <div class = "msg">
          <h2> Nintendo 주문 목록</h2>
<%  ArrayList<OrderVO> list = (ArrayList<OrderVO>) request.getAttribute("list"); 
    if(!list.isEmpty()) {  %>
	   <table border="1">
	   		<tr><th>no</th><th>아이디</th><th>제품번호</th><th>제품가격</th><th>배송 체크</th></tr>
			
			<%   for(int i=0; i<list.size(); i++){   
			       OrderVO order = list.get(i);   %>
			                <tr>
			                <td><%=order.getNum()%></td>
						<td><%=order.getO_U_name() %></td>
			            <td><%=order.getO_P_id() %></td>
			            <td><%=order.getO_P_price() %></td>
			            <td>
			            <form action = "delete.do" method= "post">
			            <input type = hidden name = "O_U_name" value = <%=order.getO_U_name() %>>
			            <input type = hidden name = "O_P_id" value = <%=order.getO_P_id() %>>
			            <input type="submit" value="x">
			            </form>
			            </td>
			       </tr>
			       
			<%   }
       }else{
    	   out.print("<h3>주문 정보가 없습니다.</h3>");
       }
	%>
	  </table>
	  </div>
	</div>
      </div>
</body>
</html>