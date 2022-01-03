package com.wool.board.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.wool.board.dto.BoardDTO;
import com.wool.board.service.BoardService;

@Controller
public class BoardController {
	private static Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	private BoardService boardService;
	HttpSession session;
	
	
	@RequestMapping(value = "/BoardSelectAll", method = RequestMethod.GET)
		public String NoticeSelectAll(Model model) {
			model.addAttribute("list", boardService.BoardListAll());
			logger.info("list", model);
			return "./board/board_select_all_view";
	}
		
	@RequestMapping(value = "/BoardSelect", method = RequestMethod.GET)
	public String NoticeSelect(Model model, BoardDTO boardDTO) {
		
		model.addAttribute("boardDTO",boardService.BoardSelect(boardDTO.getBno()));
		
		return "./board/board_select_view";
	}
		
		//공지 추가
		@RequestMapping(value = "/BoardInsert", method = RequestMethod.GET)
		public String BoardInsert() {
			return "./board/board_insert";
		}
		
		@RequestMapping(value = "/BoardInsert", method = RequestMethod.POST)
		public String BoardInsert(BoardDTO boardDTO) {
			boardService.BoardInsert(boardDTO);
			return "./board/board_insert_view";
		}
		
		//공지 수정
		@RequestMapping(value = "/BoardUpdate", method = RequestMethod.GET)
		public String NoticeUpdate() {
			return "./board/notice_update";
		}
		
		@RequestMapping(value = "/BoardUpdate", method = RequestMethod.POST)
		public String NoticeUpdate(Model model, BoardDTO noticeDTO) {
			model.addAttribute(noticeDTO);
			boardService.BoardUpdate(noticeDTO);
			return "./board/board_update_view";
		}
		
		//공지 삭제
		@RequestMapping(value = "/BoardDelete", method = RequestMethod.GET)
		public String NoticeDelete(int bno) {
			boardService.BoardDelete(bno);
			return "./board/board_delete_view";
		}
		
}
