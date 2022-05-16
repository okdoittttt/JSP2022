<!--
	작성자 : 손옥무
	변경이력 : 
	프로그램 설명 : Session을 활용한 DB에 Login 기
-->
<%@page import="cs.dit.LoginDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	LoginDao dao = new LoginDao();
	int check = dao.checkUser(id, pwd);
	
	if(check == 1)
		response.sendRedirect("welcome.jsp");
	else
		response.sendRedirect("insertForm.jsp");
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	넘어옴.
</body>
</html>