package com.wool.board.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wool.board.dao.BoardDAO;
import com.wool.board.dto.BoardDTO;

@Service
public class BoardService {
	@Autowired
	private BoardDAO boardDAO;
	
	HttpSession session;
	
	public List<BoardDTO> BoardListAll() {
		return boardDAO.BoardSelectAll();
	}
	public BoardDTO BoardSelect(int bno) {
		boardDAO.BoardHit(bno);
		return boardDAO.BoardSelect(bno);		
	}
	
	public void BoardInsert(BoardDTO boardDTO) {
		boardDAO.BoardInsert(boardDTO);
	}
	
	public void BoardUpdate(BoardDTO noticeDTO) {
		boardDAO.BoardUpdate(noticeDTO);
	}
	
	public void BoardDelete(int bno) {
		boardDAO.BoardDelete(bno);
	}
}
