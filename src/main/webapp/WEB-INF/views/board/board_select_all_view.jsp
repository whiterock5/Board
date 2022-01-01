<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
		<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
			<div>
				<a href="./MemberSelect" class=" navbar-brand">ADMIN</a>
			</div>
			<ul class="navbar-nav">
				<li class="nav-item"><a href="./MemberSelect.go"
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
		<div class="container col-8 text-center">
		<h2 class="mt-4">공지 사항</h2>
			<p>공지 사항을 관리 할수 있습니다.</p>
		<table class="table">
				<tr class="list">
					<th><input type="checkbox"></th>
					<th>글번호</th>
					<th>제목</th>
					<th>글작성시간</th>
					<th>상세보기</th>
				</tr>

				<c:forEach var="arrayList" items="${arrayList}">
					<tr>
						<td><input type="checkbox"></td>
						<td>${arrayList.getNo()}</td>
						<td>${arrayList.getTitle()}</td>
						<td>${arrayList.getWritingTime()}</td>
						<td><a
							href="./NoticeSelectDetail.go?no=${arrayList.getNo()}"
							class="btn btn-sm btn-info"> 글 내용 보기</a></td>
					</tr>
				</c:forEach>

			</table>
			<div>
				<a href="./NoticeInsert.go" class="btn btn-primary btn-block">
					글 작성</a>
			</div>
		</div>
	</section>
	<footer> </footer>
</body>
</html>