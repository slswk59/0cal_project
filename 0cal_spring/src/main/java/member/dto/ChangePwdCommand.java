package member.dto;

public class ChangePwdCommand {
	private String user_pass;
	private String newPassword;
	
	public ChangePwdCommand() {
	}

	public String getUser_pass() {
		return user_pass;
	}

	public void setUser_pass(String user_pass) {
		this.user_pass = user_pass;
	}

	public String getNewPassword() {
		return newPassword;
	}

	public void setNewPassword(String newPassword) {
		this.newPassword = newPassword;
	}

	
	

}
