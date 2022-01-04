package com.wool.board.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
			return "./board/board_select_all_view";
	}
		
	@RequestMapping(value = "/BoardSelect", method = RequestMethod.GET)
	public String NoticeSelect(Model model, BoardDTO boardDTO) {
		
		model.addAttribute("boardDTO",boardService.BoardSelect(boardDTO.getBno()));
		
		return "./board/board_select_view";
	}
		
	
		@RequestMapping(value = "/BoardInsert", method = RequestMethod.GET)
		public String BoardInsert() {
			return "./board/board_insert";
		}
		
		@RequestMapping(value = "/BoardInsert", method = RequestMethod.POST)
		public String BoardInsert(BoardDTO boardDTO) {
			boardService.BoardInsert(boardDTO);
			return "./board/board_insert_view";
		}
		
	
		@RequestMapping(value = "/BoardUpdate", method = RequestMethod.GET)
		public String BoardUpdate(@RequestParam(value="Bno") int Bno, Model model , BoardDTO boardDTO) {
			model.addAttribute("boardDTO", boardService.BoardSelect(Bno));
			return "./board/board_update";
		}
		
		@RequestMapping(value = "/BoardUpdate", method = RequestMethod.POST)
		public String BoardUpdate(Model model, BoardDTO boardDTO) {
			model.addAttribute("boardDTO" , boardDTO);
			boardService.BoardUpdate(boardDTO);
			return "./board/board_update_view";
		}
		
	
		@RequestMapping(value = "/BoardDelete", method = RequestMethod.GET)
		public String BoardDelete(@RequestParam(value="Bno") int bno) {
			boardService.BoardDelete(bno);
			return "./board/board_delete_view";
		}
		
}
