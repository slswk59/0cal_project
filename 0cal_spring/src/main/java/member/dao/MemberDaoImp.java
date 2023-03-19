package member.dao;

import org.apache.ibatis.session.SqlSession;

import member.dto.MemberDTO;

public class MemberDaoImp implements MemberDAO{
	
	private SqlSession sqlSession;
	
	public MemberDaoImp() {
		// TODO Auto-generated constructor stub
	}
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	
	//회원가입
	@Override
	public int insertMember(MemberDTO dto) {
		return sqlSession.insert("member.insertMember", dto);
	}

	//특정id 조회
	@Override
	public MemberDTO selectById(String id) {
		return sqlSession.selectOne("member.selectById", id);
	}

	//회원정보 수정
	@Override
	public void updateMember(MemberDTO dto) {
		sqlSession.update("member.updateMember", dto);
		
	}

	//비밀번호 변경
	@Override
	public void updateByPass(MemberDTO dto) {
		sqlSession.update("member.updateByPass", dto);		
	}

	//회원탈퇴
	@Override
	public void deleteMember(String id) {
		sqlSession.delete("member.deleteMember", id);
	}

	//중복확
	@Override
	public int dupCheckId(String userId) {
		return sqlSession.selectOne("member.dupCheckId", userId);
		// TODO Auto-generated method stub
		
	}

}
