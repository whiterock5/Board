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
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
<script src="./js/jquery-3.5.1.min.js" type="text/javascript"></script>
<script src="./js/bootstrap.min.js" type="text/javascript"></script>
</head>
<body>
<div id="content-wrap">
<header class="header">
		<nav class="navbar navbar-expand-sm navbar-dark">
			<div>
				<a href="./index.jsp" class=" navbar-brand"><i
					class="bi bi-house-door-fill"></i></a>
			</div>
			<ul class="navbar-nav">
				<li class="nav-item"><a href="./BoardSelectAll"
					class="nav-link">게시판</a></li>
					<li class="nav-item"><a href="./MemberSelectAll"
						class="nav-link  active">유저관리</a></li>
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
		<div class="container col-8 text-center">
			<h2 class="mt-4">회원 목록</h2>
			<p>회원 리스트를 관리할 수 있습니다.</p>
			<table class="table">
				<tr class="list">
					<th>아이디</th>
					<th>이름</th>
					<th>이메일</th>
					<th>상세보기</th>
				</tr>

				<c:forEach var="list" items="${list}">
					<tr>
						<td>${list.getMemberId()}</td>
						<td>${list.getName()}</td>
						<td>${list.getEmail()}</td>
						<td><a
							href="./MemberSelect?memberId=${list.getMemberId()}"
							class="btn btn-sm btn-outline-light"> 회원 상세 보기</a></td>
					</tr>
				</c:forEach>

			</table>
			<div>
				<a href="./MemberInsert" class="btn btn-sm btn-outline-light btn-block">
					<i class="bi bi-person-fill"></i> 회원 등록 </a>
			</div>
		</div>

	</section>
	</div>
		<footer> 
		
		</footer>
</body>
</html>