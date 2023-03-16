package member.service;

import java.util.List;

import member.dto.MemberDTO;

public interface MemberService {
    public void addMember(MemberDTO member);
    public void modifyMember(MemberDTO member);
    public void removeMember(String id);
    public MemberDTO getMemberById(String id);
    public List<MemberDTO> getAllMembers();
}