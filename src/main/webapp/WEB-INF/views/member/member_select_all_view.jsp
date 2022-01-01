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
<div id="content-wrap">
	<header class="sticky-top">
		<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
			<div>
				<a href="./MemberSelectAll" class=" navbar-brand">ADMIN</a>
			</div>
			<ul class="navbar-nav">
				<li class="nav-item active"><a href="./MemberSelectAll"
					class="nav-link">회원관리</a></li>
				<li class="nav-item disabled"><a href="#" class="nav-link">나중에추가</a>
				</li>
				<li class="nav-item"><a href="./NoticeSelect" class="nav-link">공지사항</a>
				</li>
				<li>
			</ul>
			<div class="navbar-collapse collapse dual-collapse2">
				<div class="navbar-nav ml-auto">
					<a href="./LogOut" class="btn btn-light btn-sm">로그아웃</a>
				</div>

			</div>
		</nav>
	</header>
	<section>
		<div class="container col-8 text-center">
			<h2 class="mt-4">회원 목록</h2>
			<p>회원 리스트를 관리할 수 있습니다.</p>
			<table class="table">
				<tr class="list">
					<th><input type="checkbox"></th>
					<th>아이디</th>
					<th>이름</th>
					<th>이메일</th>
					<th>상세보기</th>
				</tr>

				<c:forEach var="list" items="${list}">
					<tr>
						<td><input type="checkbox"></td>
						<td>${list.getMemberId()}</td>
						<td>${list.getName()}</td>
						<td>${list.getEmail()}</td>
						<td><a
							href="./MemberSelect?memberId=${list.getMemberId()}"
							class="btn btn-sm btn-info"> 회원 상세 보기</a></td>
					</tr>
				</c:forEach>

			</table>
			<div>
				<a href="./MemberInsert" class="btn btn-primary btn-block">
					회원 등록 </a>
			</div>
		</div>

	</section>
	</div>
		<footer> 
		
		</footer>
</body>
</html>