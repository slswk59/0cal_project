package member.dao;

import member.dto.MemberDTO;

public interface MemberDAO {
	public int insertMember(MemberDTO dto); //회원가입
	public MemberDTO selectById(String id); //특정id조회
	public MemberDTO selectByUserInfo(String id, String pw); //특정id조회
	public void updateMember(MemberDTO dto); //개인정보수정
	public void updateByPass(MemberDTO dto); //비번변경
	public void deleteMember(String id); //회원탈퇴
	public String dupCheck(String key, String value); //중복체크
	
}
