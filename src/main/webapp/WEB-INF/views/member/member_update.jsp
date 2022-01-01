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
<script src="./js/jquery.validate.min.js" type="text/javascript"></script>
<script src="./js/signup.js" type="text/javascript"></script>
</head>
<body>
<header class="sticky-top">
	<nav
		class="navbar navbar-expand-sm bg-dark navbar-dark">
		<div>
			<a href="./MemberSelectAll" class="navbar-brand">ADMIN</a>
		</div>
		<ul class="navbar-nav">
			<li class="nav-item active">
			<a href="./MemberSelectAll" class="nav-link">회원관리</a></li>
			<li class="nav-item disabled"><a href="#" class="nav-link">나중에추가</a>
			</li>
			<li class="nav-item disabled"><a href="#" class="nav-link">지금은없음</a>
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
	<div class="container col-5 text-center">
	<h2 class="mt-4">회원 정보 수정</h2>
	<p>기존 회원 정보를 수정 할 수 있습니다.</p>
		
		<form action="./MemberUpdate" method="post"  class="form">

			 	<div class="col-12 my-3">
					<label for="memberId"  class="col-12">아이디</label> 
					<input type="text" id="memberId" name="memberId" class="form-control col-12" value="${param.memberId}" readonly="readonly"> 
				</div>
				
				<div class="col-12 my-3">
					<label for="memberPassword" class="col-12">비밀번호</label>
					<input type="password" id="memberPassword" name="memberPassword" class="form-control col-12"  onclick="this.value=''" value="${memberPassword}">
				</div>
								
				<div class="col-12 my-3">
					 <label for="name" class="col-12">이름</label> 
				 	<input type="text" id="name" name="name" class="form-control col-12"  onclick="this.value()=''" value="${name}">
				</div>
				<div class="col-12 my-3">
					<label for="phoneNumber" class="col-12">전화번호</label>
				 	<input type="text" id="phoneNumber" name="phoneNumber" class="form-control col-12"  onclick="this.value()=''" value="${phoneNumber}"> 
				</div>
				
				<div class="col-12 my-3">
					<label for="email" class="col-12">이메일</label> 
					<input type="text" id="email" name="email" class="form-control col-12"  onclick="this.value()=''" value="${email}">
				</div>
				
				<div class="col-12 my-3">
					<label for="age" class="col-12">나이</label> 
					<input type="text" id="age" name="age" class="form-control col-12"  onclick="this.value()=''" value="${age}">
				</div>
				
	
				<div class="col-12 my-3 mb-5">
					<label for="permission" class="col-12">권한</label> 
					<input type="text" id="permission" name="permission" class="form-control col-12"  onclick="this.value()=''" value="${permission}">
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