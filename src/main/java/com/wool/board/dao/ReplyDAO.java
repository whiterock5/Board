package com.wool.board.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.stereotype.Repository;

import com.wool.board.dto.ReplyDTO;

@Repository

@EnableAspectJAutoProxy(proxyTargetClass = true)
public class ReplyDAO {
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public List<ReplyDTO> ReplySelect(int bno) {
		return sqlSessionTemplate.selectList("replySelect" , bno);
	}
	
	public int ReplyCheck(int bno) {
		return sqlSessionTemplate.selectOne("replyCheck" , bno);
	}
	
	public void ReplyInsert(ReplyDTO replyDTO) {
		sqlSessionTemplate.insert("replyInsert" , replyDTO);	
	}

	public void ReplyDelete(ReplyDTO replyDTO) {
		sqlSessionTemplate.delete("replyDelete" , replyDTO);
	}
}
