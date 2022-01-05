
package com.wool.board.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.wool.board.dto.MemberDTO;
import com.wool.board.service.LoginService;

@Controller
public class LoginController {

	@Autowired
	private LoginService loginService;
	HttpSession session;

	String returnURL = "";

	// 로그인 폼 화면 띄우기

	@RequestMapping(value = "/Login", method = RequestMethod.GET)
	public String Login() {
		return "./login/login";
	}

	@RequestMapping(value = "/LoginProcess", method = RequestMethod.POST)
	public String Login(@RequestParam("memberId") String memberId, @RequestParam("memberPassword") String memberPassword, HttpServletRequest request) {
		session = request.getSession();
		MemberDTO memberDTO = new MemberDTO();
		memberDTO.setMemberId(memberId);
		memberId = memberDTO.getMemberId();
		memberDTO.setMemberPassword(memberPassword);
		
		//기존 세션존재하면 세션 삭제
		if ( session.getAttribute("login") !=null ){
            session.removeAttribute("login");
        }
		
		
		int result = loginService.login(memberDTO);
		returnURL = "";

		if (result == 1) {
			session.setAttribute("login", memberDTO.getMemberId());
			
			returnURL = "redirect:./index.jsp";
		} else {
			returnURL = "./login/loginFail";
		}
		return returnURL;
	}

	@RequestMapping(value = "/LoginNull", method = RequestMethod.GET)
	public String LoginNull() {
		return "./login/loginNull";
	}

	@RequestMapping(value = "/LogOut", method = RequestMethod.GET)
	public String Logout() {
		session.invalidate();
		return "redirect:./index.jsp";
	}

}
