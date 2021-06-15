package nintendo.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import nintendo.service.Service;

public class PaymentController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String P_many= request.getParameter("P_many");
		String U_id = request.getParameter("U_id");
		String P_id= request.getParameter("P_id");
		String P_price = request.getParameter("P_price");
		String path = null;
		
		if(U_id == null || U_id.equals("")||U_id.equals("null")) {
			path = "login.jsp";
			HttpUtil.forward(request, response, path);
		}
		else {
		Service s = Service.getInstance();
		s.payment(P_many, U_id, P_id, P_price);
		
		path = "/result/paymentResult.jsp";
		HttpUtil.forward(request, response, path);
		}
	}

}
