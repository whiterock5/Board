<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="./css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="./css/common.css">
<link rel="stylesheet" type="text/css" href="./css/list.css">
<link rel="stylesheet" type="text/css" href="./css/board.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
<script src="./js/jquery-3.5.1.min.js" type="text/javascript"></script>
<script src="./js/bootstrap.min.js" type="text/javascript"></script>
</head>
<body>
	<header class="sticky-top">
		<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
			<div>
				<a href="./MemberSelect.go" class="navbar-brand">ADMIN</a>
			</div>
			<ul class="navbar-nav">
				<li class="nav-item disabled"><a href="./MemberSelect"
					class="nav-link">회원관리</a></li>
				<li class="nav-item disabled"><a href="#" class="nav-link">나중에추가</a>
				</li>
				<li class="nav-item active"><a href="./NoticeSelect.go" class="nav-link">공지사항</a>
				</li>
				<li>
			</ul>
			<div class="navbar-collapse collapse dual-collapse2">
				<div class="navbar-nav ml-auto">
					<button type="button" class="btn btn-light btn-sm">로그아웃</button>
				</div>

			</div>
		</nav>
	</header>

	<section>
		<div class="container col-12 board">
		<h5 class="title"> 
			<i class="bi bi-box"></i> 이것저것 게시판  <b class="title-sub">ㅣ  자유게시판 입니다.</b> 
		</h5>
		<div>
		<c:set var="Id" value="" />
		<c:set var="loginId" value="" />
		<c:if test="${boardDTO.memberId eq sessionScope.login}">
			<a class="btn btn-outline-light btn-sm"><i class="bi bi-pencil-square"></i>&nbsp; 수정</a> <a class="btn btn-outline-light btn-sm"><i class="bi bi-x-square"></i>&nbsp; 삭제</a>
		</c:if>
		</div>
		<div class="title hl">
			${boardDTO.title}
		</div>
		<div class="title boardid">
		<c:if test="${boardDTO.modifiedTime != null }">
			<span>${boardDTO.memberId} <i class="bi bi-person-fill"></i></span><span class="right">추천 : ${boardDTO.recommend} ㅣ 조회수 : ${boardDTO.hit} ㅣ 작성시간 : ${boardDTO.writingTime} ㅣ 수정시간 : ${boardDTO.modifiedTime}</span>
		</c:if>
		<c:if test="${boardDTO.modifiedTime == null }">
			<span>${boardDTO.memberId} <i class="bi bi-person-fill"></i></span><span class="right">추천 : ${boardDTO.recommend} ㅣ 조회수 : ${boardDTO.hit} ㅣ 작성시간 : ${boardDTO.writingTime} </span>
		</c:if>
		</div>
		
		<div class="title contents">
			내용 : ${boardDTO.contents}
		</div>
		<div class="title">
			<i class="bi bi-chat-dots"></i> 댓글
		</div>
		
		<div>
			댓글표시
		</div>
		<div>
			댓글 작성
			<form>
				<textarea></textarea><input type="submit" value="작성">
			</form>
		</div>
		
		
		
		
		
	</div>
	</section>
	<footer> </footer>
</body>
</html>