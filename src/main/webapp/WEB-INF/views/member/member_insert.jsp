<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
			<li class="nav-item">
			<a href="./BoardSelectALl" class="nav-link">게시판</a></li>
			<li class="nav-item active"><a href="#" class="nav-link">회원관리</a>
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
	<h2 class="mt-4">회원 등록</h2>
	<p>새로운 회원을 등록할 수 있습니다.</p>
		<!-- 자동 정렬 금지 !! -->
		<form action="./MemberInsert" method="post"  class="form" >
			
			 	<div class="col-12 my-3">
					<label for="memberId"  class="col-12">아이디</label> 
					<input type="text" id="memberId" name="memberId" class="form-control col-12" placeholder="Text input"> 
				</div>
				
				<div class="col-12 my-3">
				<label for="memberPassword" class="col-12">비밀번호</label>
				<input type="password" id="memberPassword" name="memberPassword" class="form-control col-12">
				</div>
				
				<div class="col-12 my-3">
				 <label for="passwdre" class="col-12">비밀번호 확인</label> 
				 <input type="password" id="passwdre" name="passwdre" class="form-control col-12"> 
				</div>
				
				<div class="col-12 my-3">
				 <label for="name" class="col-12">이름</label> 
				 <input type="text" id="name" name="name" class="form-control col-12">
				 </div>
				 <div class="col-12 my-3">
				 <label for="phoneNumber" class="col-12">전화번호</label>
				 <input type="text" id="phoneNumber" name="phoneNumber" class="form-control col-12"> 
				</div>
				
				<div class="col-12 my-3">
				<label for="email" class="col-12">이메일</label> 
				<input type="text" id="email" name="email" class="form-control col-12">
				</div>
				
				<div class="col-12 my-3">
				<label for="age" class="col-12">나이</label> 
				<input type="text" id="age" name="age" class="form-control col-12">
				</div>
								
				<div class="col-12 bottom_btn">
				
				<input type="submit" value="등록" class="btn btn-primary left"> 
				
				<input type="reset" value="초기화" class="btn btn-danger right">
				
				</div>
		</form>
	</div>
	</section>
	<footer>
    
    </footer>
</body>
</html>