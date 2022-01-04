package com.wool.board.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class BoardDTO {

	//글 번호
	private int bno;
	//글 제목
	private String title;
	//글 내용
	private String contents;
	//글 작성시간
	private String writingTime;	
	//글 수정 시간
	private String modifiedTime;
	//작성자
	private String memberId;
	//조회수
	private int hit;
	//추천수
	private int recommend;
	//분류
	private String division;
	
	//-------------
	
	//댓글번호
	private int rno;
	//댓글내용
	private String rcontents;
	//댓글 작성 시간
	private String rwritingTime;
	
}
