<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인화면</title>
<link rel="stylesheet" type="text/css" href="./css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="./css/common.css">
<link rel="stylesheet" type="text/css" href="./css/main.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
<script src="./js/jquery-3.5.1.min.js" type="text/javascript"></script>
<script src="./js/bootstrap.min.js" type="text/javascript"></script>
</head>
<body>
<div class="main">
<p>메인화면</p>
<c:if test="${login == null }">
<a href="./Login" class="btn btn-outline-light">로그인</a>
</c:if>
<br/>

<c:if test="${login != null}">
	<c:if test="${login =='admin'}">
	<a href="./MemberSelectAll" class="btn btn-outline-light">회원관리</a> <br />
	</c:if>
	<a href="./BoardSelectAll" class="btn btn-outline-light">게시판가기</a> <br />
	<a href="./LogOut" class="btn btn-outline-light">로그아웃</a>
</c:if>
</div>
</body>
</html>