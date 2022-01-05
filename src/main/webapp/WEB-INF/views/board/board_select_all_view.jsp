<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="./css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="./css/common.css">
<link rel="stylesheet" type="text/css" href="./css/board.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
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
				<li class="nav-item active"><a href="./NoticeSelect" class="nav-link">공지사항</a>
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
			<i class="bi bi-box"></i> 이것저것 게시판  <b class="title-sub">ㅣ 컨텐츠 수: <b>${fn:length(list)}</b>ㅣ  자유게시판 입니다.</b> 
		</h5>
		<nav class="nav-tab">
			<a href="">전체</a>
			<a href="">잡담</a>
			<a href="">정보</a>
			<a href="">공지</a>
		</nav>
		
		<table class="board-table">
				<tr class="board-top">
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>글작성시간</th>
					<th>조회수</th>
					<th>추천</th>
				</tr>

				<c:forEach var="list" items="${list}">
				
					<tr class="tr_a" onclick="location.href='./BoardSelect?Bno=${list.getBno()}'" style="cursor:pointer"
					onMouseOver="this.style.backgroundColor='#5a5a64';" onMouseOut="this.style.backgroundColor=''">
					
						<td>${list.getBno()}</td>
						<td><b class="division">${list.division}</b> ${list.getTitle()}</td>
						<td>${list.getMemberId()}</td>
						<td>${list.getWritingTime()}</td>
						<td>${list.getHit()}</td>
						<td>${list.getRecommend()}</td>
					
					</tr>
				</c:forEach>

			</table>
			<form class="searchForm">
				<select name="searchType" id="searchType">
					<option value="제목">제목</option>
					<option value="내용">내용</option>
					<option value="글쓴이">작성자</option>
				</select>
				
				<input type="text" id="searchName">
				<input type="submit" class="btn btn-outline-light btn-sm" value="검색">
			</form>
			<div>
				<a href="./BoardInsert" class="btn btn-outline-light btn-sm">
					<i class="bi bi-pencil-square"></i> 글쓰기</a>
			</div>
		</div>
	</section>
	<footer> </footer>
</body>
</html>