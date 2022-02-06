package com.wool.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.wool.board.dto.ReplyDTO;
import com.wool.board.service.ReplyService;

@RestController
public class ReplyController {
	
	@Autowired
	ReplyService replyService;
	
	@ResponseBody
	@RequestMapping(value = "/ReplySelect", method = RequestMethod.POST)
	public List<ReplyDTO> ReplyList(@RequestParam(value = "bno") int bno) {
		
	List<ReplyDTO> reply = replyService.ReplySelect(bno);
	
	return reply;
	}
	
	@ResponseBody
	@RequestMapping(value = "/ReplyInsert", method = RequestMethod.POST)
	public void ReplyInsert(ReplyDTO replyDTO){
		try {
			int rno = replyService.ReplyCheck(replyDTO.getBno()) + 1;
			replyDTO.setRno(rno);
			replyService.ReplyInsert(replyDTO);

		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@ResponseBody
	@RequestMapping(value = "/ReplyDelete", method = RequestMethod.POST)
	public String ReplyDelete(ReplyDTO replyDTO, @RequestParam(value = "rno") int rno, @RequestParam(value = "bno") int bno) {
		replyDTO.setBno(bno);
		replyDTO.setRno(rno);
		replyService.ReplyDelete(replyDTO);
		
		return "./board/board_delete_view";
	}
}
