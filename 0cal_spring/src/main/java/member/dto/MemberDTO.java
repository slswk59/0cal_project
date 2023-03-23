package member.dto;


public class MemberDTO {
	private String id;
	private String nick_name;
	private String user_pass;
	private String user_name;
	private String email;
	private String address;
	private String postcode;
	private String roadAddress;
	private String jibunAddress;
	private String detailAddress;
	private String extraAddress;
	private String phone;
	private String date_birthday;
	private String gender;
	private boolean rememberId; //자동 로그인
	
	public MemberDTO() {
		// TODO Auto-generated constructor stub
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getNick_name() {
		return nick_name;
	}

	public void setNick_name(String nick_name) {
		this.nick_name = nick_name;
	}

	public String getUser_pass() {
		return user_pass;
	}

	public void setUser_pass(String user_pass) {
		this.user_pass = user_pass;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getDate_birthday() {
		return date_birthday;
	}

	public void setDate_birthday(String date_birthday) {
		this.date_birthday = date_birthday;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public boolean isRememberId() {
		return rememberId;
	}
	
	public boolean matchPassword(String user_pass) {
		//this.memberPass는 db가 보내준 비밀번호,인자값으로 넣은 비밀번호는 우리가 입력한 것
		return this.user_pass.equals(user_pass);
	}
	
	public void changePassword(String oldPassword, String newPassword) throws Exception {
		// db에 저장된 비밀번호 this.memberPass
		// 본인인증을 if문으로 작성
		if(!user_pass.equals(oldPassword))
			throw new Exception();
		this.user_pass = newPassword;
	}
	public String getPostcode() {
		return postcode;
	}

	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}

	public String getRoadAddress() {
		return roadAddress;
	}

	public void setRoadAddress(String roadAddress) {
		this.roadAddress = roadAddress;
	}

	public String getJibunAddress() {
		return jibunAddress;
	}

	public void setJibunAddress(String jibunAddress) {
		this.jibunAddress = jibunAddress;
	}

	public String getExtraAddress() {
		return extraAddress;
	}

	public void setExtraAddress(String extraAddress) {
		this.extraAddress = extraAddress;
	}

	public void setRememberId(boolean rememberId) {
		this.rememberId = rememberId;
	}

	public String getDetailAddress() {
		return detailAddress;
	}

	public void setDetailAddress(String detailAddress) {
		this.detailAddress = detailAddress;
	}
	
	

}
