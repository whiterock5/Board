<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이것저것 게시판 - 글작성</title>
<link rel="stylesheet" type="text/css" href="./css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="./css/common.css">
<link rel="stylesheet" type="text/css" href="./css/board.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
<script src="./js/jquery-3.5.1.min.js" type="text/javascript"></script>
<script src="./js/bootstrap.min.js" type="text/javascript"></script>
<script src="./js/jquery.validate.min.js" type="text/javascript"></script>
</head>
<body>
	<header class="header">
		<nav class="navbar navbar-expand-sm navbar-dark">
			<div>
				<a href="./index.jsp" class=" navbar-brand"><i
					class="bi bi-house-door-fill"></i></a>
			</div>
			<ul class="navbar-nav">
				<li class="nav-item"><a href="./BoardList"
					class="nav-link active">게시판</a></li>
				<c:if test="${sessionScope.login == 'admin'}">
					<li class="nav-item"><a href="./MemberSelectAll"
						class="nav-link">유저관리</a></li>
				</c:if>
			</ul>
			<div class="navbar-collapse collapse dual-collapse2">
				<div class="navbar-nav ml-auto">
					<div class=" logcheck">
						접속아이디 : ${sessionScope.login} &nbsp; <a href="./LogOut"
							class="btn btn-sm btn-outline-light">로그아웃</a>
					</div>
				</div>
			</div>
		</nav>
	</header>
	<section>
		<div class="container col-12 board">
			<h5 class="title">
				<i class="bi bi-box"></i> 이것저것 게시판 <b class="title-sub">ㅣ 자유게시판
					입니다.</b>
			</h5>
			<form action="./BoardInsert" method="post" class="form">
					<select class="titleLabel tap" id="division" name="division">
						<option value="잡담">잡담</option>
						<option value="정보">정보</option>
						<c:if test="${ sessionScope.login eq 'admin' }">
							<option value="공지">공지</option>
						</c:if>
					</select>
				<div class="title_insert">
					<label for="title" class="titleLabel">제목</label> <input type="text"
						id="title" name="title"> <input type="hidden"
						id="memberId" name="memberId" value="${sessionScope.login}">
				</div>
				<textarea id="contents" name="contents" id="contents"></textarea>
				<input type="submit" value="작성" class="btn btn-outline-light btn-sm">
			</form>
		</div>
	</section>
	<footer> </footer>
</body>
</html>