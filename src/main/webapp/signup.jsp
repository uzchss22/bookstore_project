<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>도서 판매 사이트</title>
</head>
<body>
<%@ include file="top.jsp" %>
<h1> 회원 가입</h1>
<form action="join.do" method="post"> 
	아이디 : <input type="text" name="id" > <br>
	암호 : <input type="password" name="password"><br>
	이름 : <input type="text" name="name"><br>
	<input type="submit" value="로그인"> 
	<input type="reset" value="취소"> <br>
</form>
</div>
<%@ include file="footer.jsp" %>

</body>
</html>