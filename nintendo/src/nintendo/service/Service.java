package nintendo.service;

import java.util.ArrayList;

import nintendo.dao.nintendoDao;
import nintendo.vo.MemberVO;
import nintendo.vo.OrderVO;

public class Service {
	private static Service service = new Service();
	private Service() {}
	private nintendoDao dao = nintendoDao.getInstance();
	public static Service getInstance()
	{
		return service;
	}
	public int login(String id, String pwd, String type) {
		// TODO Auto-generated method stub
		return dao.login(id,pwd,type);
	}
	public void payment(String p_many, String u_id, String p_id, String p_price) {
		// TODO Auto-generated method stub
		dao.payment(p_many, u_id, p_id, p_price);
	}
	public void join(String id, String pwd, String name, String phone, String mail, String adress) {
		// TODO Auto-generated method stub
		dao.join(id, pwd, name, phone, mail, adress);
	}
	public ArrayList<MemberVO> membertable() {
		// TODO Auto-generated method stub
		ArrayList<MemberVO> list = dao.membertable();
		return list;
	}
	public ArrayList<OrderVO> ordertable() {
		// TODO Auto-generated method stub
		ArrayList<OrderVO> list = dao.ordertable();
		return list;
	}
	public void delete(String id, String product) {
		// TODO Auto-generated method stub
		dao.delete(id,product);
	}
}
