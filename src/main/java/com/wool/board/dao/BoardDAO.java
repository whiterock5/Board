package com.wool.board.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.wool.board.dto.BoardDTO;

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
	
	@Transactional
	public void BoardInsert(BoardDTO boardDTO) {
		sqlSessionTemplate.insert("boardInsert" , boardDTO);	
	}
	
	public void BoardUpdate(BoardDTO boardDTO) {
		sqlSessionTemplate.update("boardUpdate" , boardDTO);		
	}
	
	public void BoardDelete(int bno) {
		sqlSessionTemplate.delete("boardnDelete", bno);
	}
	public void BoardHit(int bno) {
		sqlSessionTemplate.update("boardHit" , bno);	
	}

}
