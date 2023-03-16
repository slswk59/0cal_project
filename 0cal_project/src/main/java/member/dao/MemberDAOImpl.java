package member.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import member.dto.MemberDTO;

@Repository
public class MemberDAOImpl implements MemberDAO {
    
    private static final String NAMESPACE = "member.mapper.MemberMapper.";

    @Autowired
    private SqlSession sqlSession;

    @Override
    public void insertMember(MemberDTO member) {
        sqlSession.insert(NAMESPACE + "insertMember", member);
    }

    @Override
    public void updateMember(MemberDTO member) {
        sqlSession.update(NAMESPACE + "updateMember", member);
    }

    @Override
    public void deleteMember(String id) {
        sqlSession.delete(NAMESPACE + "deleteMember", id);
    }

    @Override
    public MemberDTO selectMemberById(String id) {
        return sqlSession.selectOne(NAMESPACE + "selectMemberById", id);
    }

    @Override
    public List<MemberDTO> selectAllMembers() {
        return sqlSession.selectList(NAMESPACE + "selectAllMembers");
    }
}