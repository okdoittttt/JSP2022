<%@page import="cs.dit.LoginDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	LoginDto dto = new LoginDto("sonny", "홍길동", "1111");
	pageContext.setAttribute("dto", dto);
	
	Cookie cookie = new Cookie("name", "chun");
	response.addCookie(cookie);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL 연습</title>
</head>
<body>
	쿠키 : ${cookie.name}<br>
	문자열 : ${"오늘은 월요일 입니다."}<br>
	연산자 : ${100-45}<br>
	비교 연산 : ${100<45}<br>
	내장 객체 : ${param.id}<br>
	<br>
	id : ${dto.id}<br>
	name : ${dto.name}<br>
	pwd : ${dto.pwd}<br>
	<br>
	프로토콜 : ${pageContext.request.protocol}<br>
	${pageContext.request.remoteHost}
</body>
</html>