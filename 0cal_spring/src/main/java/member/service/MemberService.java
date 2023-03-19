package member.service;


import member.dto.AuthInfo;
import member.dto.MemberDTO;
import member.dto.ChangePwdCommand;

public interface MemberService {
	public AuthInfo addMemberProcess(MemberDTO dto);
	public AuthInfo loginProcess(MemberDTO dto); 	
	public MemberDTO updateMemberProcess(String id);
	public AuthInfo updateMemberProcess(MemberDTO dto);
	public void updatePassProcess(String Id, ChangePwdCommand changePwd);
	public void deleteMemberProcess(String id);
	public int dupCheckId(String userId);  //중복체

}
