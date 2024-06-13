<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.bookstore.mvc.MemberDTO"%>

    
<style>
* {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
}

body {
    font-family: 'Arial', sans-serif;
    display: flex;
    flex-direction: column;
    align-items: center;
}


a {
    text-decoration: none;
    color: black;
}
header {
    width: 100%;
    background-color: #f1f1f1;
    padding: 20px 0;
    display: flex;
    justify-content: center;
}

nav {
    display: flex;
    align-items: center;
    width: 90%;
}

.logo img {
    height: 60px;
}

.menu {
    list-style: none;
    display: flex;
    justify-content: center;
    gap: 20px;
    flex-grow: 1;
    text-align: center;
}

.menu li {
    padding: 20px 10px;
    width: 20%;
    border-radius: 10%;
}

.menu li:hover {
    background-color: #e1e1e1;
}

.auth-links {
    position: relative;
    bottom: 30px;
}

#welcome {
	font-size: smaller;
	font-weight: bolder;
}

</style>
<div id="wrapper">
    <header>
        <nav>
            <div class="logo">
                <a href="index.jsp"><img src="wuseongMungo.png" alt="홈페이지 로고" width="200px"></a>
            </div>
            <ul class="menu">
                <li><a href="#">베스트셀러</a></li>
                <li><a href="#">장르</a></li>
                <li><a href="#">장바구니</a></li>
                <li><a href="#">게시판</a></li>
            </ul>
            <div class="auth-links">
<%
	MemberDTO mem_id = (MemberDTO)session.getAttribute("member");

	if(mem_id == null) {
%>
				<a href="login.jsp">로그인</a> | <a href="signup.jsp">회원가입</a>
<%
	} else {
%>
				<div id="welcome"><%= mem_id.getName() %>님 환영합니다.</div>
				<a href="logout.do">로그아웃</a> | <a href="#">회원수정</a>
<%
	}
%>
            </div>
        </nav>
    </header>
    