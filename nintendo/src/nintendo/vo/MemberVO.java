package nintendo.vo;


public class MemberVO {
	private String name;
	private String id;	
	private String pwd;
	private String email;
	private String adress;
	private String phonenum;
	
	public MemberVO() {}
	public MemberVO (String tName, String tId, String tPwd,String tEmail,String tAdress,String tPhonenum)
	{
		this.name = tName;
		this.id = tId;
		this.pwd = tPwd;
		this.email= tEmail;
		this.adress= tAdress;
		this.phonenum = tPhonenum;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAdress() {
		return adress;
	}
	public void setAdress(String adress) {
		this.adress = adress;
	}
	public String getPhonenum() {
		return phonenum;
	}
	public void setPhonenum(String phonenum) {
		this.phonenum = phonenum;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	
}