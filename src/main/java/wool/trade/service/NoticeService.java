package wool.trade.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import wool.trade.dao.NoticeDAO;
import wool.trade.dto.NoticeDTO;

@Service
public class NoticeService {
	@Autowired
	private NoticeDAO noticeDAO;
	
	public List<NoticeDTO> NoticeListAll() {
		return noticeDAO.NoticeSelectAll();
	}
	public NoticeDTO NoticeSelect(String title) {
		return noticeDAO.NoticeSelect(title);		
	}
	
	public void NoticeInsert(NoticeDTO noticeDTO) { 	
		noticeDAO.NoticeInsert(noticeDTO);
	}
	
	public void NoticeUpdate(NoticeDTO noticeDTO) {
		noticeDAO.NoticeUpdate(noticeDTO);
	}
	
	public void NoticeDelete(String title) {
		noticeDAO.MemberDelete(title);
	}
}
