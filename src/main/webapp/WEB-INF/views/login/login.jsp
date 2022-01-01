<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/login.css">
<script type="text/javascript" src="./js/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="./js/login.js"></script>
<script type="text/javascript" src="./js/jquery.validate.min.js"></script>
<title>로그인</title>
</head>

<body>
	<div class="login">
		<div class="line"></div>
		<div id="login_logo">로그인</div>

		<form action="./LoginProcess" name="memberlogin" id="memberlogin"
			enctype="application/x-www-form-urlencoded" method="post"
			class="login_form">
			<fieldset>
				<div class="login_box">
					<input class="login_text" type="text"
						placeholder="String memberId varchar2(15)" name="memberId"
						id="memberId" maxlength="15">
				</div>
				<div class="login_box">
					<input class="login_text" type="password"
						placeholder="String memberPassword varchar2(30)"
						name="memberPassword" id="memberPassword" maxlength="30">
				</div>
				<button type="submit" class="btn-login">로그인</button>
			</fieldset>
		</form>
		<div class="SideMenu">
			<div class="login_sub">
				<!-- 아이디가 없으신가요? <a href="./signup.html" class="blue"> 회원가입하기 </a> -->
			</div>

		</div>
	</div>
</body>
</html>