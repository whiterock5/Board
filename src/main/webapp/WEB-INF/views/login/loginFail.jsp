<%@page import="wool.trade.dto.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인확인</title>
</head>
<body>
<script type="text/javascript">
	
</script>
<% 
	MemberDTO memberDTO = new MemberDTO();
	memberDTO = (MemberDTO) session.getAttribute("login");
	String memberId = (String) memberDTO.getMemberId(); 
	String memberPassword = (String) memberDTO.getMemberPassword(); 
	out.print("세션:" + memberId);
%>
</body>
</html>