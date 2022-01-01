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


		<div class="container col-5 text-center">
			<h2 class="mt-4">공지사항 상세보기</h2>
			<p>공지사항 수정 및 삭제가 가능 합니다.</p>

			<table class="col-12 bottom_line">
				<tr class="list">
					<th class="text-left">제목</th>
					<td class="text-right">${title}</td>
				</tr>
				<tr class="blank"></tr>
				<tr class="list">
					<th class="text-left">글번호</th>
					<td class="text-right">${no}
					</td>
				</tr>
				<tr class="blank"></tr>
				<tr class="list">
					<th class="text-left">최초작성일자</th>
					<td class="text-right">${writingTime}</td>
				</tr>
				<tr class="blank"></tr>
				<tr class="list">
					<th class="text-left">내용</th>
					<td class="text-right">${contents}</td>
				</tr>
			</table>
			<div class="bottom_btn">
				 <a href="./NoticeUpdate.go?no=${no}"
					class="btn btn-primary left"> 수정 </a> 
					<a onclick="return confirm('정말로 삭제하시겠습니까 ?');" href="./NoticeDelete.go?no=${no}"
					class="btn btn-danger right"> 삭제 </a>
			</div>
		</div>
	</section>
	<footer> </footer>
</body>
</html>