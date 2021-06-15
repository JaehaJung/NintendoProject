package nintendo.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import nintendo.vo.MemberVO;
import nintendo.vo.OrderVO;

public class nintendoDao{
	private static nintendoDao dao = new nintendoDao();
	private nintendoDao() {}
	public static nintendoDao getInstance() {
		return dao;
}

public Connection connect() {
	Connection conn = null;
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/nintendo","root","cs1234");
	} catch (Exception e) {
		System.out.print("MDAO:Connect " + e);
	} 
	return conn;
}

public void close(Connection conn, PreparedStatement pstmt) {
	if (pstmt != null) {
		try {
			pstmt.close();
		} catch (Exception e) {
			System.out.print("pstmt close error" + e);				
		}
	}
	if(conn != null) {
		try {
			conn.close();
		} catch (Exception e) {
			System.out.print("conn close error" + e);				
		}
	}
} // close

private void close(Connection conn, PreparedStatement pstmt, ResultSet rs) {
	// TODO Auto-generated method stub
	if (rs != null) {
		try {
			rs.close();
		} catch (Exception e) {
			System.out.print("rs close error" + e);				
		}
	}
	close(conn, pstmt);
	} // close
public int login(String id, String pwd, String type) {
	// TODO Auto-generated method stub
	int result= 0;
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String mem = "member";
	String manager = "manager";
	try {
		conn = connect();
		
		//고객일 때
		if(mem.equals(type))
		{
		pstmt = conn.prepareStatement("select * from member where U_id = ? and U_pw = ?;");
		pstmt.setString(1, id);
		pstmt.setString(2, pwd);
		rs = pstmt.executeQuery();
		
		if (rs.next()) // 값이 있으면.
			result = 1;
		else
			result = 3;
		}
		
		//관리자일 때
		if(manager.equals(type))
		{
		pstmt = conn.prepareStatement("select * from manager where M_id = ? and M_pw = ?;");
		pstmt.setString(1, id);
		pstmt.setString(2, pwd);
		rs = pstmt.executeQuery();
		
		if (rs.next()) // 값이 있으면.
			result = 2;
		else
			result = 3;
		}
		
	} catch (Exception e) {
		System.out.print("login error" + e);
	}
	finally
	{
		close(conn, pstmt, rs);
	}
	
	return result;
}
public void payment(String p_many, String u_id, String p_id, String p_price) {
	// TODO Auto-generated method stub
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	

		try {
			conn = connect();
			pstmt = conn.prepareStatement("insert into orders values(?,?,?,?);");
			pstmt.setString(1, u_id);
			pstmt.setString(2, p_id);
			pstmt.setString(3, p_price);
			pstmt.setString(4, p_many);
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			System.out.print("payment error" + e);
		}
		finally
		{
			close(conn, pstmt, rs);
		}

}
public void join(String id, String pwd, String name, String phone, String mail, String adress) {
	// TODO Auto-generated method stub
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

		try {
			conn = connect();
			pstmt = conn.prepareStatement("insert into member values(?,?,?,?,?,?);");
			pstmt.setString(2, id);
			pstmt.setString(3, pwd);
			pstmt.setString(1, name); 
			pstmt.setString(4, mail);
			pstmt.setString(5, adress);
			pstmt.setString(6, phone);
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			System.out.print("enroll error" + e);
		}
		finally
		{
			close(conn, pstmt, rs);
		}

}
public ArrayList<MemberVO> membertable() {
	// TODO Auto-generated method stub
	ArrayList<MemberVO> list = new ArrayList<MemberVO>();
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	MemberVO member = null;
	try {
		conn = connect();
		pstmt = conn.prepareStatement("select * from member;");
		rs = pstmt.executeQuery();
		
		while (rs.next()) {
			member= new MemberVO();
			member.setName(rs.getString(1));
			member.setId(rs.getString(2));
			member.setPwd(rs.getString(3));
			member.setEmail(rs.getString(4));
			member.setAdress(rs.getString(5));
			member.setPhonenum(rs.getString(6));
			list.add(member);
		}

		} catch (Exception e) {
			System.out.print("memberTable error" + e);
		}
		finally
		{
			close(conn, pstmt, rs);
		}
	return list;
}
public ArrayList<OrderVO> ordertable() {
	// TODO Auto-generated method stub
	ArrayList<OrderVO> list = new ArrayList<OrderVO>();
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	OrderVO order= null;
	try {
		conn = connect();
		pstmt = conn.prepareStatement("SELECT @num:=@num+1 AS num, O_U_id, O_P_num, O_P_price FROM (SELECT @num:=0) AS n, orders;");
		rs = pstmt.executeQuery();
		
		while (rs.next()) {
			order = new OrderVO();
			order.setNum(rs.getString(1));
			order.setO_U_name(rs.getString(2));
			order.setO_P_id(rs.getString(3));
			order.setO_P_price(rs.getString(4));	
			list.add(order);
		}

		} catch (Exception e) {
			System.out.print("orderTable error" + e);
		}
		finally
		{
			close(conn, pstmt, rs);
		}
	return list;
}
public void delete(String id, String product) {
	// TODO Auto-generated method stub

	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	

		try {
			conn = connect();
			pstmt = conn.prepareStatement("delete from orders where O_U_id=? && O_P_num=?;");
			pstmt.setString(1, id);
			pstmt.setString(2, product);
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			System.out.print("delete error" + e);
		}
		finally
		{
			close(conn, pstmt, rs);
		}

}
}