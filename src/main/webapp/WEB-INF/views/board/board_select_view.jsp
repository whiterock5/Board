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
			<i class="bi bi-box"></i> 이것저것 게시판  <b class="title-sub">ㅣ  자유게시판 입니다.</b> 
		</h5>
		<div>
		<c:if test="${boardDTO.memberId eq sessionScope.login or 'admin' eq sessionScope.login}">
			<a class="btn btn-outline-light btn-sm" href="./BoardUpdate?Bno=${boardDTO.bno}"><i class="bi bi-pencil-square"></i>&nbsp; 수정</a> 
			<a onclick="return confirm('정말로 글을 삭제하시겠습니까 ?');" class="btn btn-outline-light btn-sm" href="./BoardDelete?Bno=${boardDTO.bno}"><i class="bi bi-x-square"></i>&nbsp; 삭제</a>
		</c:if>
		</div>
		<div class="title hl">
			${boardDTO.title}
		</div>
		<div class="title boardid">
		<c:if test="${boardDTO.modifiedTime ne null }">
			<span>${boardDTO.memberId} <i class="bi bi-person-fill"></i></span><span class="right">  조회수 : ${boardDTO.hit} ㅣ 작성시간 : ${boardDTO.writingTime} ㅣ 수정시간 : ${boardDTO.modifiedTime}</span>
		</c:if>
		<c:if test="${boardDTO.modifiedTime eq null }">
			<span>${boardDTO.memberId} <i class="bi bi-person-fill"></i></span><span class="right">  조회수 : ${boardDTO.hit} ㅣ 작성시간 : ${boardDTO.writingTime} </span>
		</c:if>
		</div>
		<div class="warp">
		<textarea class="title contents" readonly="readonly">${boardDTO.contents}</textarea>
		</div>
		
		<div class="title">
			<i class="bi bi-chat-dots"></i> 댓글
		</div>
		
		<div>
		<c:if test="${reply ne null }">
			<c:forEach var="reply" items="${reply}">
			<div class="title">
				작성자 : ${reply.memberId} 작성일 : ${reply.rwritingTime} 
				<c:if test="${sessionScope.login eq reply.memberId }"> | <a class="" onclick="return confirm('정말로 댓글을 삭제하시겠습니까 ?');" href="./ReplyRemove?rno=${reply.rno}&bno=${boardDTO.bno}"><i class="bi bi-x-square"></i>삭제</a></c:if>
				
				내용 : ${reply.rcontents}
				
			</div>
			</c:forEach>
			</c:if>
		</div>
		<div>
			댓글 작성
			<form action="./ReplyInsert" method="post">
				<textarea id="rcontents" name="rcontents"></textarea><input type="submit" id="btnReplySave" name="btnReplySave" value="작성">
				<input type="hidden" value="${boardDTO.bno}" id="bno" name="bno">
				<input type="hidden" value="${sessionScope.login}" id="memberId" name="memberId">
			</form>
		</div>

	</div>
	</section>
	<footer> </footer>
</body>
</html>