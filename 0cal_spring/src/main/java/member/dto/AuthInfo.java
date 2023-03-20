package member.dto;

public class AuthInfo {

	private String id;
	private String user_name;
	private String user_pass;
	
	public AuthInfo() {
		// TODO Auto-generated constructor stub
	}
	
	

	public AuthInfo(String id, String user_pass) {
		super();
		this.id = id;
		this.user_pass = user_pass;
	}



	public AuthInfo(String id, String user_name, String user_pass) {
		super();
		this.id = id;
		this.user_name = user_name;
		this.user_pass = user_pass;
	}

	


	public String getId() {
		return id;
	}

	public String getUser_name() {
		return user_name;
	}

	public String getUser_pass() {
		return user_pass;
	}
	

}
