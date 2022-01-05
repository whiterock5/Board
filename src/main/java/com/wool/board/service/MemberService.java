package com.wool.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wool.board.dao.MemberDAO;
import com.wool.board.dto.MemberDTO;

@Service
public class MemberService {
	
	@Autowired
	private MemberDAO memberDAO;
	
	public List<MemberDTO> memberListAll() {
		return memberDAO.MemberSelectAll();
	}
	
	public MemberDTO memberSelect(MemberDTO memberDTO) {
		MemberDTO result = memberDAO.MemberSelect(memberDTO);
		return result;		
	}
	
	public void memberInsert(MemberDTO memberDTO) { 	
		memberDAO.MemberInsert(memberDTO);
	}
	
	public void memberUpdate(MemberDTO memberDTO) {
		memberDAO.MemberUpdate(memberDTO);
	}
	
	public void memberDelete(String memberId) {
		memberDAO.MemberDelete(memberId);
	}
}