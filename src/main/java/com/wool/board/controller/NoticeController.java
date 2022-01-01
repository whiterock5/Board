package wool.trade.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import wool.trade.dto.NoticeDTO;
import wool.trade.service.NoticeService;

public class NoticeController {
	private static Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	private NoticeService noticeService;
	HttpSession session;
	
	
	@RequestMapping(value = "/NoticeSelectAll", method = RequestMethod.GET)
		public String NoticeSelectAll(Model model) {
			model.addAttribute("list", noticeService.NoticeListAll());
			logger.info("list", model);
			return "./notice/notice_select_all_view";
	}
		
	@RequestMapping(value = "/NoticeSelect", method = RequestMethod.GET)
	public String NoticeSelect(Model model, NoticeDTO noticeDTO) {
		model.addAttribute("memberDTO",noticeService.NoticeSelect(noticeDTO.getTitle()));
		return "./notice/notice_select_view";
	}
		
		//회원 추가
		@RequestMapping(value = "/NoticeInsert", method = RequestMethod.GET)
		public String NoticeInsert() {
			return "./notice/notice_insert";
		}
		
		@RequestMapping(value = "/NoticeInsert", method = RequestMethod.POST)
		public String NoticeInsert(Model model, NoticeDTO noticeDTO) {
			model.addAttribute("list", noticeService.NoticeListAll());
			noticeService.NoticeInsert(noticeDTO);
			return "./notice/notice_insert_view";
		}
		
		//회원 수정
		@RequestMapping(value = "/NoticeUpdate", method = RequestMethod.GET)
		public String NoticeUpdate() {
			return "./notice/notice_update";
		}
		
		@RequestMapping(value = "/NoticeUpdate", method = RequestMethod.POST)
		public String NoticeUpdate(Model model, NoticeDTO noticeDTO) {
			model.addAttribute(noticeDTO);
			noticeService.NoticeUpdate(noticeDTO);
			return "./notice/notice_update_view";
		}
		
		//회원삭제
		@RequestMapping(value = "/MemberDelete", method = RequestMethod.GET)
		public String NoticeDelete(String title) {
			noticeService.NoticeDelete(title);
			return "./member/member_delete_view";
		}
		
}
