package wool.trade.dto;

public class NoticeDTO {

	//글 번호
	private int no;
	//글 제목
	private String title;
	//글 내용
	private String contents;
	//글 작성시간
	private String writingTime;
	
	public int getNo() {
		return no;
	}
	
	public void setNo(int no) {
		this.no = no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getWritingTime() {
		return writingTime;
	}
	public void setWritingTime(String writingTime) {
		this.writingTime = writingTime;
	}

	@Override
	public String toString() {
		return "NoticeDTO [no=" + no + ", title=" + title + ", contents=" + contents + ", writingTime=" + writingTime
				+ "]";
	}

}
