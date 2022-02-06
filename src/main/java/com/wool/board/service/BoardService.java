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
	
	//전체 게시글
	public List<BoardDTO> BoardListAll() {
		return boardDAO.BoardSelectAll();
	}
	//게시글 상세보기
	public BoardDTO BoardSelect(int bno) {
		boardDAO.BoardHit(bno);
		return boardDAO.BoardSelect(bno);		
	}
	//게시글 검색
	public List<BoardDTO> BoardSearch(BoardDTO boardDTO) {
		return boardDAO.BoardSearch(boardDTO);		
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
	
}
