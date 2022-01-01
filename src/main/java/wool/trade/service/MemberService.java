package wool.trade.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import wool.trade.dao.MemberDAO;
import wool.trade.dto.MemberDTO;

@Service
public class MemberService {
	
	@Autowired
	private MemberDAO memberDAO;
	
	public List<MemberDTO> memberListAll() {
		return memberDAO.MemberSelectAll();
	}
	
	public MemberDTO memberSelect(MemberDTO memberDTO) {
		String permission = memberDAO.PermissionCheck(memberDTO.getMemberId());
		MemberDTO result = memberDAO.MemberSelect(memberDTO);
		result.setPermission(permission);
		return result;		
	}
	
	public void memberInsert(MemberDTO memberDTO) { 	
		memberDTO.setPermission("user");
		memberDAO.MemberInsert(memberDTO);
	}
	
	public void memberUpdate(MemberDTO memberDTO) {
		memberDAO.MemberUpdate(memberDTO);
	}
	
	public void memberDelete(String memberId) {
		memberDAO.MemberDelete(memberId);
	}
}
