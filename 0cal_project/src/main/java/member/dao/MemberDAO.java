package member.dao;

import java.util.List;

import member.dto.MemberDTO;

public interface MemberDAO {
    public void insertMember(MemberDTO member);
    public void updateMember(MemberDTO member);
    public void deleteMember(String id);
    public MemberDTO selectMemberById(String id);
    public List<MemberDTO> selectAllMembers();
}