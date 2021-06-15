package nintendo.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import nintendo.controller.HttpUtil;
import nintendo.service.Service;

public class LoginController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = request.getParameter("id");
		String pwd = request.getParameter("pw");
		String type = request.getParameter("type");
		
		Service s = Service.getInstance();
		int result = s.login(id,pwd, type);
		String path = null;
		int member=1;
		int manager=2;
		
		
		if (result == member)
		{
			HttpSession session = request.getSession();
			session.setAttribute("id", id);
			path = "/main_mem.jsp";
		}
		
		else if (result == manager)
		{
			HttpSession session = request.getSession();
			session.setAttribute("id", id);
			path = "/manage.jsp";
		}
		
		else 
		{
			path = "/result/loginerror.jsp";
		}
		HttpUtil.forward(request, response, path);
	}

}

