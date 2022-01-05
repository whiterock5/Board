package com.wool.board.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.wool.board.dto.BoardDTO;
import com.wool.board.dto.BoardSearchDTO;

@Repository

@EnableAspectJAutoProxy(proxyTargetClass = true)
public class BoardDAO {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public List<BoardDTO> BoardSelectAll() {
		return sqlSessionTemplate.selectList("boardSelectAll");	
	}
	
	public BoardDTO BoardSelect(int bno) {
		
		return sqlSessionTemplate.selectOne("boardSelect", bno);	
	}
	
	public List<BoardDTO> BoardSearch(BoardSearchDTO boardSearchDTO) {
		return sqlSessionTemplate.selectList("boardSearch", boardSearchDTO);	
	}
	
	
	public List<BoardDTO> ReplySelect(int bno) {
		return sqlSessionTemplate.selectList("replySelect" , bno);	
	}
	
	public int ReplyCheck(BoardDTO boardDTO) {
		return sqlSessionTemplate.selectOne("replyCheck" , boardDTO);
	}
	
	@Transactional
	public void BoardInsert(BoardDTO boardDTO) {
		sqlSessionTemplate.insert("boardInsert" , boardDTO);	
	}
	
	public void BoardUpdate(BoardDTO boardDTO) {
		sqlSessionTemplate.update("boardUpdate" , boardDTO);		
	}
	
	public void BoardDelete(int bno) {
		sqlSessionTemplate.delete("boardDelete", bno);
	}
	public void BoardHit(int bno) {
		sqlSessionTemplate.update("boardHit" , bno);	
	}
	
	public void ReplyInsert(BoardDTO boardDTO) {
		sqlSessionTemplate.insert("replyInsert" , boardDTO);	
	}

	public void ReplyDelete(BoardDTO boardDTO) {
		sqlSessionTemplate.delete("replyDelete" , boardDTO);
	}
}
