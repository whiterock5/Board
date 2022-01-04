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
<script type="text/javascript">
//글 내용 높이 자동조절
$(document).ready(function() {
	  $('textarea').on( 'keyup', function (e){
	    $(this).css('height', 'auto');
	    $(this).height(this.scrollHeight);
	  });
	  $('textarea').keyup();
	});
</script>
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
		<div class="container col-12 board">
		<h5 class="title"> 
			<i class="bi bi-box"></i> 이것저것 게시판  <b class="title-sub">ㅣ  자유게시판 입니다.</b> 
		</h5>
		<form action="./BoardUpdate" method="post" class="form">
			 	<div class="title_insert">
					<label for="title"  id="titleLabel">제목</label> 
					<input type="text" id="title" name="title" value="${boardDTO.title}" > 
					<input type="hidden" id="memberId" name="memberId"  value="${sessionScope.login}"> 
				</div>
				<textarea  id="contents" name="contents" id="contents">${boardDTO.contents}</textarea>
				<input type="hidden" id="bno" name="bno" value="${boardDTO.bno}">
				<input type="submit" value="작성" class="btn btn-outline-light btn-sm"> 
		</form>
	</div>
	</section>

	<footer>
    
    </footer>
</body>
</html>