<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="./css/reset.css">
    <link rel="stylesheet" href="./css/signup.css">
        
    <script type="text/javascript" src="./js/jquery-3.5.1.min.js"></script>
    <script type="text/javascript" src="./js/jquery.validate.min.js"></script>
    <script type="text/javascript" src="./js/signup.js"></script>
    <title>회원가입</title>
</head>

<body>
    
    <form name="member" action="./SignUp" method="post" enctype="application/x-www-form-urlencoded" class="form" novalidate>
        <div class="line"> </div>  
        <fieldset>
            <p class="clearfix">
                <label for="id">아이디 (최소4자 ,최대 15자 소문자,숫자만 입력가능합니다.)</label>
                <input type="text" placeholder="String memberId varchar2(15)" class="box" id="memberId" name="memberId">
            </p>
            <p class="clearfix">
                <label for="passwd">비밀번호 (최소8자 , 최대 15자 영어와특수문자가 포함되어야합니다.)</label>
                <input type="password" placeholder="String memberPassword varchar2(15)" class="box" id="memberPassword"
                    name="memberPassword">
            </p>
            <p class="clearfix">
                <label for="pwdre">비밀번호 확인</label>
                <input type="password" placeholder="String memberPassword varchar2(15)" class="box" id="pwdre"
                    name="pwdre">
            </p>
            <p class="clearfix">
                <label for="name">이름</label>
                <input type="text" placeholder="String Name varchar2(15)" class="box" id="name" name="name">
            </p>
            <p class="clearfix">
                <label for="age">나이</label>
                <input type="text" placeholder="int age number" class="box"  id="age"
                    name="age">
            </p>
            <p class="clearfix">
                <label for="phone">핸드폰번호</label>
                <input type="text" placeholder="ex) 010-1234-5678 String PhoneNumber Number" class="box" maxlength="13"
                    id="phoneNumber" name="phoneNumber">
            </p>
            <p class="clearfix">
                <label for="email">이메일</label>
                <input type="email" placeholder="String email varchar2(40)" class="box" id="email" name="email">
            </p>
            <p class="clearfix">
                <input type="submit" value="회원 가입" class="button">
            </p>
        </fieldset>
    </form>

</body>

</html>