<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 회원 입력 </title>

<c:forEach var="arrayList" items="${arrayList}">

<c:if test="${arrayList.memberId == memberDTO.memberId }">
<script type="text/javascript">
alert("해당 ${param.memberId}는 이미 존재합니다.")
location.href="./MemberInsert"
</script>
</c:if>
</c:forEach>
</head>
<body>
<script type="text/javascript">
alert("해당 ${param.memberId}를 등록했습니다..")
location.href="./MemberSelectAll"
</script>


</body>
</html>