package com.wool.board.dto;

import java.sql.Date;

public class MemberDTO {

	//회원아이디
	private String memberId;
	//회원이름
	private String name;
	//회원비밀번호
	private String memberPassword;
	//회원핸드폰번호
	private String phoneNumber;
	//회원이메일
	private String email;
	//회원가입일
	private Date signUpDate;
	//회원나이
	private int age;
	//권한
	private String permission;
	
	//[setter getter]------------------------------
		
	public String getPermission() {
		return permission;
	}
	public void setPermission(String permission) {
		this.permission = permission;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMemberPassword() {
		return memberPassword;
	}
	public void setMemberPassword(String memberPassword) {
		this.memberPassword = memberPassword;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}

	public Date getSignUpDate() {
		return signUpDate;
	}
	public void setSignUpDate(Date signUpDate) {
		this.signUpDate = signUpDate;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	@Override
	public String toString() {
		return "MemberDTO [memberId=" + memberId + ", name=" + name + ", memberPassword=" + memberPassword
				+ ", phoneNumber=" + phoneNumber +  ", email=" + email
				+  ", signUpDate=" + signUpDate + ", age=" + age + ", permission="
				+ permission + "]";
	}
	
	
}
