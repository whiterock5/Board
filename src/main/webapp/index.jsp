<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인화면</title>
</head>
<body>
<p>메인화면</p>

<c:if test="${login == null }">
<a href="./Login">로그인</a>
</c:if>
<br/>

<c:if test="${login != null}">
	<a href="./MemberSelectAll">회원관리</a> <br />
	<a href="./BoardSelectAll">게시판가기</a> <br />
	<a href="./LogOut">로그아웃</a>
</c:if>

</body>
</html>