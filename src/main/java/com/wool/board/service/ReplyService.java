package com.wool.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wool.board.dao.ReplyDAO;
import com.wool.board.dto.ReplyDTO;

@Service
public class ReplyService {
	
	@Autowired
	private ReplyDAO replyDAO;
	
	public List<ReplyDTO> ReplySelect(int bno) {
		return replyDAO.ReplySelect(bno);
	}
	
	public void ReplyInsert(ReplyDTO replyDTO) {
		replyDAO.ReplyInsert(replyDTO);
	}
	
	public int ReplyCheck(int bno) {
		return replyDAO.ReplyCheck(bno);
	}
	
	public void ReplyDelete(ReplyDTO replyDTO) {
		replyDAO.ReplyDelete(replyDTO);
	}
}