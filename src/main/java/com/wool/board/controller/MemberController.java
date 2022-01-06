package com.wool.board.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.wool.board.dto.MemberDTO;
import com.wool.board.service.MemberService;


@Controller
public class MemberController {
	private static Logger logger = LoggerFactory.getLogger(MemberController.class);

	@Autowired
	private MemberService memberService;

		//리스트 전체 조회
		@RequestMapping(value = "/MemberSelectAll", method = RequestMethod.GET)
		public String MemberSelectAll(Model model) {
			model.addAttribute("list", memberService.memberListAll());
			logger.info("list", model);
			return "./member/member_select_all_view";
		}

		//회원 상세 조회
		@RequestMapping(value = "/MemberSelect", method = RequestMethod.GET)
		public String MemberSelect(Model model, MemberDTO memberDTO) {
			model.addAttribute("memberDTO", memberService.memberSelect(memberDTO));
			return "./member/member_select_view";
		}
		
		//회원 추가
		@RequestMapping(value = "/MemberInsert", method = RequestMethod.GET)
		public String insert() {
			return "./member/member_insert";
		}
		
		@RequestMapping(value = "/MemberInsert", method = RequestMethod.POST)
		public String insert(Model model, MemberDTO memberDTO) {
			model.addAttribute("list", memberService.memberListAll());
			memberService.memberInsert(memberDTO);
			return "./member/member_insert_view";
		}
		
		//회원 수정
		@RequestMapping(value = "/MemberUpdate", method = RequestMethod.GET)
		public String memberUpdate() {
			return "./member/member_update";
		}
		
		@RequestMapping(value = "/MemberUpdate", method = RequestMethod.POST)
		public String memberUpdate(Model model, MemberDTO memberDTO) {
			model.addAttribute(memberDTO);
			memberService.memberUpdate(memberDTO);
			return "./member/member_update_view";
		}
		
		//회원삭제
		@RequestMapping(value = "/MemberDelete", method = RequestMethod.GET)
		public String memberDelete(String memberId) {
			memberService.memberDelete(memberId);
			return "./member/member_delete_view";
		}
		
		@RequestMapping(value = "/SignUp", method = RequestMethod.GET)
		public String SignUp() {
			return "./login/signup";
		}
		@RequestMapping(value = "/SignUp", method = RequestMethod.POST)
		public String SignUp(Model model, MemberDTO memberDTO) {
			model.addAttribute("list", memberService.memberListAll());
			memberService.memberInsert(memberDTO);
			return "./login/signup_success";
		}
}
