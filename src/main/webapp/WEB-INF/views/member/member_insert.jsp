<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<script src="./js/jquery.validate.min.js" type="text/javascript"></script>
<script src="./js/member_validate.js" type="text/javascript"></script>

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
	<div class="container col-5 text-center">
	<h2 class="mt-4">회원 등록</h2>
	<p>새로운 회원을 등록할 수 있습니다.</p>

		<form action="./MemberInsert" method="post" class="form memberInsert" >
			
			 	<div class="col-12 my-3">
					<label for="memberId"  class="col-12">아이디 <br /><i class="little">최소4자 ,최대 15자 소문자,숫자만 입력가능합니다.</i></label> 
					<input type="text" id="memberId" name="memberId" class="form-control col-12" > 
				</div>
				
				<div class="col-12 my-3">
				<label for="memberPassword" class="col-12">비밀번호 <br /><i class="little">최소8자 , 최대 15자 영어와특수문자가
							포함되어야합니다.</i></label>
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
				 <label for="phoneNumber" class="col-12">전화번호 <br /> <i class="little">ex) 010-1234-5678</i></label>
				 <input type="text" id="phoneNumber" name="phoneNumber" class="form-control col-12"> 
				</div>
				
				<div class="col-12 my-3">
				<label for="email" class="col-12">이메일<br /> <i class="little">ex) abc@abc.abc</i></label> 
				<input type="text" id="email" name="email" class="form-control col-12">
				</div>
				
				<div class="col-12 my-3">
				<label for="age" class="col-12">나이</label> 
				<input type="text" id="age" name="age" class="form-control col-12">
				</div>
								
				<div class="col-12 bottom_btn">
			
				<button type="submit" class="btn btn-outline-light left"><i class="bi bi-check2-square"></i>&nbsp; 회원 등록	</button> 
				</div>
		</form>
	</div>
	</section>
	<footer>
    
    </footer>
</body>
</html>