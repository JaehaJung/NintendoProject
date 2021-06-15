package nintendo.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import nintendo.service.Service;
import nintendo.controller.HttpUtil;

public class JoinController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = request.getParameter("user_id");
		String pwd = request.getParameter("user_pw");
		String name = request.getParameter("user_name");
		String phone = request.getParameter("user_phone");
		String mail = request.getParameter("user_mail");
		String adress = request.getParameter("user_adress");
		String path = null;
		if(id.equals("")||pwd.equals("")||name.equals("")||phone.equals("")||mail.equals("")||adress.equals("")) {
			path = "login.jsp";
			HttpUtil.forward(request, response, path);
		}
		else {
		Service s = Service.getInstance();
		s.join(id,pwd, name, phone, mail, adress);
		
		path = "/result/joinResult.jsp";
		HttpUtil.forward(request, response, path);
	}
	}
}


