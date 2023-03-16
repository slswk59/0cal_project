package member.service;

import member.dao.MemberDAO;
import member.dto.MemberDTO;
import member.dto.AuthInfo;
import member.dto.ChangePwdCommand;

public class MemberServiceImp implements MemberService {
	private MemberDAO memberDao;
	
	public MemberServiceImp() {
	}
	
	public void setMemberDao(MemberDAO memberDao) {
		this.memberDao = memberDao;
	}

	//회원가입
	@Override
	public AuthInfo addMemberProcess(MemberDTO dto) {
		memberDao.insertMember(dto);
		return new AuthInfo(dto.getId(), dto.getUser_name(), dto.getUser_pass());
	}

	//로그인처리
	@Override
	public AuthInfo loginProcess(MemberDTO dto) {
		MemberDTO member = memberDao.selectById(dto.getId());
		return new AuthInfo(member.getId(), member.getUser_pass());
	}

	//특정id조회
	@Override
	public MemberDTO updateMemberProcess(String id) {
		return memberDao.selectById(id);
	}

	//회원정보 변경
	@Override
	public AuthInfo updateMemberProcess(MemberDTO dto) {
		memberDao.updateMember(dto);
		MemberDTO member = memberDao.selectById(dto.getId());
		return new AuthInfo(member.getId(), member.getUser_name(), member.getUser_pass());
	}

	//회원탈퇴 
	@Override
	public void deleteMemberProcess(String id) {
		memberDao.deleteMember(id);
	}

	@Override
	public void updatePassProcess(String id, ChangePwdCommand changePwd) {
		MemberDTO member = memberDao.selectById(id);
		try {
			member.changePassword(changePwd.getUser_pass(), changePwd.getNewPassword());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		memberDao.updateByPass(member);
		
	}

	
}
