package spring.vo;

public class Member {

	private long member_number;
	private String member_id;
	private String member_pwd;
	private String member_name;
	private String member_nickname;
	private String member_phone;
	private String member_email;
	private String member_zipcode;
	private String member_adress;
	private String member_detailadress;
	private long member_point;

	public Member() {
	}
	

	public Member(String member_id, String member_pwd, String member_name, String member_nickname, String member_phone,
			String member_email, String member_adress) {
		this.member_id = member_id;
		this.member_pwd = member_pwd;
		this.member_name = member_name;
		this.member_nickname = member_nickname;
		this.member_phone = member_phone;
		this.member_email = member_email;
		this.member_adress = member_adress;
	}
	
	


	public Member(String member_id, String member_pwd, String member_name, String member_nickname, String member_phone,
			String member_email, String member_zipcode, String member_adress, String member_detailadress) {
		this.member_id = member_id;
		this.member_pwd = member_pwd;
		this.member_name = member_name;
		this.member_nickname = member_nickname;
		this.member_phone = member_phone;
		this.member_email = member_email;
		this.member_zipcode = member_zipcode;
		this.member_adress = member_adress;
		this.member_detailadress = member_detailadress;
	}


	public String getMember_zipcode() {
		return member_zipcode;
	}

	public void setMember_zipcode(String member_zipcode) {
		this.member_zipcode = member_zipcode;
	}

	public String getMember_detailadress() {
		return member_detailadress;
	}

	public void setMember_detailadress(String member_detailadress) {
		this.member_detailadress = member_detailadress;
	}

	public long getMember_number() {
		return member_number;
	}

	public void setMember_number(long member_number) {
		this.member_number = member_number;
	}

	public String getMemer_id() {
		return member_id;
	}

	public void setMemer_id(String memer_id) {
		this.member_id = memer_id;
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

	public String getMember_nickname() {
		return member_nickname;
	}

	public void setMember_nickname(String member_nickname) {
		this.member_nickname = member_nickname;
	}

	public String getMember_phone() {
		return member_phone;
	}

	public void setMember_phone(String member_phone) {
		this.member_phone = member_phone;
	}

	public String getMember_email() {
		return member_email;
	}

	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}

	public String getMember_adress() {
		return member_adress;
	}

	public void setMember_adress(String member_adress) {
		this.member_adress = member_adress;
	}

	public long getMember_point() {
		return member_point;
	}

	public void setMember_point(long member_point) {
		this.member_point = member_point;
	}

}
