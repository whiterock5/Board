package com.wool.board.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wool.board.dao.BoardDAO;
import com.wool.board.dto.BoardDTO;
import com.wool.board.dto.BoardSearchDTO;

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
	
	public List<BoardDTO> BoardSearch(BoardSearchDTO boardSearchDTO) {
		return boardDAO.BoardSearch(boardSearchDTO);		
	}
	
	public void BoardInsert(BoardDTO boardDTO) {
		boardDAO.BoardInsert(boardDTO);
	}
	
	public void BoardUpdate(BoardDTO boardDTO) {
		boardDAO.BoardUpdate(boardDTO);
	}
	
	public void BoardDelete(int bno) {
		boardDAO.BoardDelete(bno);
	}
	
	public List<BoardDTO> ReplySelect(int bno) {
		return boardDAO.ReplySelect(bno);
	}
	
	public void ReplyInsert(BoardDTO boardDTO) {
		boardDAO.ReplyInsert(boardDTO);
	}
	
	public int ReplyCheck(BoardDTO boardDTO) {
		return boardDAO.ReplyCheck(boardDTO);
	}
	
	public void ReplyDelete(BoardDTO boardDTO) {
		boardDAO.ReplyDelete(boardDTO);
	}
}
