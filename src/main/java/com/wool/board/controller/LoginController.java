
package wool.trade.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import wool.trade.dto.MemberDTO;
import wool.trade.service.LoginService;

@Controller
public class LoginController {

	@Autowired
	private LoginService loginService;
	HttpSession session;

	String returnURL = "";

	// 로그인 폼 화면 띄우기

	@RequestMapping(value = "/Login", method = RequestMethod.GET)
	public String Login() {
		return "./login/login";
	}

	@RequestMapping(value = "/LoginProcess", method = RequestMethod.POST)
	public String Login(@RequestParam("memberId") String memberId, @RequestParam("memberPassword") String memberPassword, HttpServletRequest request) {
		session = request.getSession();
		MemberDTO memberDTO = new MemberDTO();
		memberDTO.setMemberId(memberId);
		memberId = memberDTO.getMemberId();
		memberDTO.setMemberPassword(memberPassword);
		
		//기존 세션존재하면 세션 삭제
		if ( session.getAttribute("login") !=null ){
            session.removeAttribute("login");
        }
		
		
		int result = loginService.login(memberDTO);
		returnURL = "";

		if (result == 1) {
			session.setAttribute("login", memberDTO);
			
			returnURL = "../../index";
		} else {
			returnURL = "./login/login";
		}
		return returnURL;
	}

	@RequestMapping(value = "/IdCheck", method = RequestMethod.GET)
	public String LoginCheck(HttpServletRequest request) {

		session = request.getSession();
		String memberId = (String) session.getAttribute("memberId");
		String result = "";

		result = loginService.PermissionCheck(memberId);
		session.setAttribute("permission", result);

		returnURL = "";

		if (result.equals("admin")) { // 유저,관리자페이지 선택가능하게

			returnURL = "./admin/admin_main";

		} else if (result.equals("user")) { // 유저페이지?

			returnURL = "./user/user_page_test";
		} else { // 정지계정?

			returnURL = "./user/user_alert";
		}

		return returnURL;
	}

	@RequestMapping(value = "/LogOut", method = RequestMethod.GET)
	public String Logout() {

		session.invalidate();

		return "../../index";
	}

}
