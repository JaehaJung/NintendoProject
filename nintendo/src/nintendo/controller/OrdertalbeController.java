package nintendo.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import nintendo.service.Service;
import nintendo.vo.OrderVO;

public class OrdertalbeController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String path = null;
		Service s = Service.getInstance();
		ArrayList <OrderVO> list = s.ordertable();
		
		request.setAttribute("list", list);
		path = "/result/OrderTableOutput.jsp";
		HttpUtil.forward(request, response, path);
	}

}
