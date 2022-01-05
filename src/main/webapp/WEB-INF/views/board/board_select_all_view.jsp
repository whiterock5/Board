<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="./css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="./css/common.css">
<link rel="stylesheet" type="text/css" href="./css/board.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
<script src="./js/jquery-3.5.1.min.js" type="text/javascript"></script>
<script src="./js/bootstrap.min.js" type="text/javascript"></script>

</head>
<body>
	<header class="header">
		<nav class="navbar navbar-expand-sm navbar-dark">
			<div>
				<a href="./index.jsp" class=" navbar-brand"><i
					class="bi bi-house-door-fill"></i></a>
			</div>
			<ul class="navbar-nav">
				<li class="nav-item"><a href="./BoardSelectAll"
					class="nav-link active">게시판</a></li>
				<c:if test="${sessionScope.login == 'admin'}">
					<li class="nav-item"><a href="./MemeberSelectAll"
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
				<i class="bi bi-box"></i> 이것저것 게시판 <b class="title-sub">ㅣ 컨텐츠 수:
					<b>${fn:length(list)}</b>ㅣ 자유게시판 입니다.
				</b>
			</h5>

			<table class="board-table">
				<tr class="board-top">
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>글작성시간</th>
					<th>조회수</th>
					<th>추천</th>
				</tr>
				<c:if test="${empty list}">
				<tr class="tr_a">
						<td colspan="6">작성 된 글이 없습니다.</td>
				</tr>
				</c:if>
				<c:forEach var="list" items="${list}">

					<tr class="tr_a"
						onclick="location.href='./BoardSelect?Bno=${list.getBno()}'"
						style="cursor: pointer"
						onMouseOver="this.style.backgroundColor='#5a5a64';"
						onMouseOut="this.style.backgroundColor=''">

						<td>${list.getBno()}</td>
						<td><b class="division">${list.division}</b>
							${list.getTitle()}</td>
						<td>${list.getMemberId()}</td>
						<td>${list.getWritingTime()}</td>
						<td>${list.getHit()}</td>
						<td>${list.getRecommend()}</td>

					</tr>
				</c:forEach>

			</table>
			<a href="./BoardInsert"
				class="btn btn-outline-light btn-sm right insert"> <i
				class="bi bi-pencil-square"></i> 글쓰기
			</a>
			<form class="searchForm" action="./BoardSearch" method="get">
				<select name="searchType" id="searchType" class="search">
					<option value="titlecontents">제목/내용</option>
					<option value="title">제목</option>
					<option value="contents">내용</option>
					<option value="memberId">작성자</option>
				</select> <input type="text" id="searchName" name="searchName" class="search">
				<input type="submit" class="btn btn-outline-light btn-sm search"
					value="검색">
			</form>
			<div></div>
		</div>
	</section>
	<footer> </footer>
</body>
</html>