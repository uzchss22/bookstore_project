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
	<h3> 로그인</h3>	
	
	<form method="post" action="login.do">
		ID : <input type="text" name="id"><br>
		Password :<input type="password" name="password"> <br>
		<input type="submit" value="login">	<input type="reset" value="reset">
	</form>
	</div>
<%@ include file="footer.jsp" %>

</body>
</html>