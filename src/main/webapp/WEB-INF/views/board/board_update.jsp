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
<script src="./js/jquery-3.5.1.min.js" type="text/javascript"></script>
<script src="./js/bootstrap.min.js" type="text/javascript"></script>
</head>
<body>
<header class="sticky-top">
	<nav
		class="navbar navbar-expand-sm bg-dark navbar-dark">
		<div>
			<a href="./MemberSelect" class="navbar-brand">ADMIN</a>
		</div>
		<ul class="navbar-nav">
			<li class="nav-item disabled">
			<a href="./MemberSelect.go" class="nav-link">회원관리</a></li>
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
	<div class="container col-5 text-center">
	<h2 class="mt-4">공지사항 수정</h2>
	<p>공지사항 수정 메뉴 입니다..</p>
		<!-- 자동 정렬 금지 !! -->
		<form action="./NoticeUpdateView.go" method="post"  class="form">

			 	<div class="col-12 my-3">
					<label for="no"  class="col-12">글번호</label> 
					<input type="text" id="no" name="no" class="form-control col-12" placeholder="Text input" value="${param.no}" readonly="readonly"> 
				</div>
			 	<div class="col-12 my-3">
					<label for="title"  class="col-12">제목</label> 
					<input type="text" id="title" name="title" class="form-control col-12" placeholder="Text input"> 
				</div>
				
				<div class="col-12 my-3">
				<label for="contents" class="col-12 away">내용입력</label>
				<textarea id="contents" name="contents" class="form-control col-12"></textarea>
				</div>
				
				<div class="col-12 bottom_btn">
				
					<input onclick="return confirm('정말로 수정하시겠습니까 ?');" type="submit" value="수정" class="btn btn-primary left"> 
					<input type="button" value="취소" class="btn btn-danger right">
				
				</div>
		</form>
	</div>
	</section>
	<footer>
    
    </footer>
</body>
</html>