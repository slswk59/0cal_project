package member.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import member.dao.MemberDAO;
import member.dto.MemberDTO;

@Service
public class MemberServiceImpl implements MemberService {

    @Autowired
    private MemberDAO memberDao;
    
    public void setMemberDao(MemberDAO memberDao) {
        this.memberDao = memberDao;
    }

    @Override
    @Transactional
    public void addMember(MemberDTO member) {
        memberDao.insertMember(member);
    }

    @Override
    @Transactional
    public void modifyMember(MemberDTO member) {
        memberDao.updateMember(member);
    }

    @Override
    @Transactional
    public void removeMember(String id) {
        memberDao.deleteMember(id);
    }

    @Override
    public MemberDTO getMemberById(String id) {
        return memberDao.selectMemberById(id);
    }

    @Override
    public List<MemberDTO> getAllMembers() {
        return memberDao.selectAllMembers();
    }
}