package nintendo.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import nintendo.service.Service;

public class DeleteController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = request.getParameter("O_U_name");
		String product = request.getParameter("O_P_id");
		String path = null;
		
		Service s = Service.getInstance();
		s.delete(id, product);
		
		path = "/result/DeleteOutput.jsp";
		HttpUtil.forward(request, response, path);
	}

}
