package nintendo.vo;

public class OrderVO {
	private String O_U_name;
	private String O_P_id;	
	private String O_P_price;
	private String O_P_many;
	private String num;
	public OrderVO() {}
	public OrderVO (String num, String tName, String tId,String tPrice)
	{
		this.num = num;
		this.O_U_name = tName;
		this.O_P_id= tId;
		this.O_P_price= tPrice;
}
	public String getO_U_name() {
		return O_U_name;
	}
	public void setO_U_name(String o_U_name) {
		O_U_name = o_U_name;
	}
	public String getO_P_id() {
		return O_P_id;
	}
	public void setO_P_id(String o_P_id) {
		O_P_id = o_P_id;
	}
	public String getO_P_price() {
		return O_P_price;
	}
	public void setO_P_price(String o_P_price) {
		O_P_price = o_P_price;
	}
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
}