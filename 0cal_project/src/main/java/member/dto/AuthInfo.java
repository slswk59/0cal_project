package member.dto;

//로그인 성공 후 인증 상태 정보를 세션에 보관할 때 사용
public class AuthInfo {
	
	private String id;
	private String userName;
	private String userPass;
	
	public AuthInfo() {

	}

	public AuthInfo(String id, String userPass) {
		this.id = id;
		this.userPass = userPass;
	}
	
	public AuthInfo(String id, String userName, String userPass) {
		this.id = id;
		this.userName = userName;
		this.userPass = userPass;
	}

	public String getid() {
		return id;
	}

	public String getuserName() {
		return userName;
	}

	public String getuserPass() {
		return userPass;
	}
	
}