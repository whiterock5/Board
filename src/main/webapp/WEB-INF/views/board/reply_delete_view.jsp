<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 게시판 </title>
</head>
<body>
<script type="text/javascript">
alert("댓글을 삭제하였습니다.")
location.href="./BoardSelect?bno=${boardDTO.bno}"
</script>
</body>
</html>