package com.wool.board.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wool.board.dao.LoginDAO;
import com.wool.board.dto.MemberDTO;

@Service
public class LoginService  {
	
	@Autowired
	private LoginDAO loginDAO;
	
	public int login(MemberDTO memberDTO) {
		return loginDAO.login(memberDTO);		
	}
	
	public String PermissionCheck(String memberId) {
		return loginDAO.PermissionCheck(memberId);		
	}
}
