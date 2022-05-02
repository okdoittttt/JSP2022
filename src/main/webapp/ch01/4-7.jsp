<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<% request.setCharacterEncoding("utf-8"); %>
<title>Insert title here</title>
</head>
<body>
	<%
	String[] len = request.getParameterValues("len");
	String hobby = request.getParameter("hobby");
	
	out.println("관심언어 <br>");
	for(String s : len) {
		out.println(s + "<br>");
	}
	out.println("--------- <br>");
	out.println("취미<br>");
	out.println(hobby);
	%>

</body>
</html>