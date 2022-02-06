package com.wool.board.controller;

import java.util.List;

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
	private static Logger logger = LoggerFactory.getLogger(BoardController.class);
	@Autowired
	private BoardService boardService;
	HttpSession session;

	// 게시판 전체 리스트
	// 리스트 <DTO>에 전체 리스트 저장 -> 모델에 속성으로 저장 -> jsp로 리턴
	@RequestMapping(value = "/BoardList", method = RequestMethod.GET)
	public String BoardSelectAll(Model model, BoardDTO boardDTO) {

		if (boardDTO.getSearchName() == null) {
			// 리스트 제네릭 BoardDTO로 설정
			// boardDTO에 boardService에 있는 BoardListAll()메소드 호출
			List<BoardDTO> boardList = boardService.BoardListAll();
			model.addAttribute("list", boardList);

		}
		// 게시판 검색
		else {
			logger.info("검색이름:" + boardDTO.getSearchName());
			logger.info("검색타입:" + boardDTO.getSearchType());

			model.addAttribute("list", boardService.BoardSearch(boardDTO));
		}

		// jsp로 리턴
		return "./board/board_select_all_view";
	}

	// 게시판 - 게시글 상세보기
	@RequestMapping(value = "/BoardSelect", method = RequestMethod.GET)
	public String BoardSelect(Model model, BoardDTO boardDTO) {

		model.addAttribute("boardDTO", boardService.BoardSelect(boardDTO.getBno()));

		return "./board/board_select_view";
	}

	// 게시판 - 게시글 등록페이지로 이동
	@RequestMapping(value = "/BoardInsert", method = RequestMethod.GET)
	public String BoardInsert() {
		return "./board/board_insert";
	}

	// 게시판 - 게시글 등록
	@RequestMapping(value = "/BoardInsert", method = RequestMethod.POST)
	public String BoardInsert(BoardDTO boardDTO) {
		boardService.BoardInsert(boardDTO);
		return "./board/board_insert_view";
	}

	@RequestMapping(value = "/BoardUpdate", method = RequestMethod.GET)
	public String BoardUpdate(@RequestParam(value = "Bno") int Bno, Model model, BoardDTO boardDTO) {
		model.addAttribute("boardDTO", boardService.BoardSelect(Bno));
		return "./board/board_update";
	}

	@RequestMapping(value = "/BoardUpdate", method = RequestMethod.POST)
	public String BoardUpdate(Model model, BoardDTO boardDTO) {
		model.addAttribute("boardDTO", boardDTO);
		boardService.BoardUpdate(boardDTO);
		return "./board/board_update_view";
	}

	@RequestMapping(value = "/BoardDelete", method = RequestMethod.GET)
	public String BoardDelete(@RequestParam(value = "Bno") int bno) {
		boardService.BoardDelete(bno);
		return "./board/board_delete_view";
	}



}
