package spring.vo;

public class AuthInfo { //세션에 저장할 데이터
	
	private String member_id;
	private String member_pwd;
	private String member_name;
	private long member_number;
	

	public AuthInfo() {
	}

	
	
	public AuthInfo(long member_number, String member_id, String member_name) {
		this.member_id = member_id;
		this.member_name = member_name;
		this.member_number = member_number;
	}



	public AuthInfo(String member_id, String member_pwd, String member_name, long member_number) {
		this.member_id = member_id;
		this.member_pwd = member_pwd;
		this.member_name = member_name;
		this.member_number = member_number;
	}
	
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getMember_pwd() {
		return member_pwd;
	}
	public void setMember_pwd(String member_pwd) {
		this.member_pwd = member_pwd;
	}
	public String getMember_name() {
		return member_name;
	}
	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}
	public long getMember_number() {
		return member_number;
	}
	public void setMember_number(long member_number) {
		this.member_number = member_number;
	}
	
	
}
