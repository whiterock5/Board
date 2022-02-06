package com.wool.board.dto;



import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString

public class ReplyDTO {
	//글 번호
	private int bno;
	//댓글번호
	private int rno;
	//댓글내용
	private String rcontents;
	//댓글 작성 시간
	private String rwritingTime;
	//사용자아이디
	private String memberId;
}
