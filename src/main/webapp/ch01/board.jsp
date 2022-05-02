<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%
	request.setCharacterEncoding("UTF-8");

	String title = request.getParameter("title");
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String memo = request.getParameter("memo");
%>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	제목 : <%=title %><br><br>
	이름 : <%=name %><br><br>
	비밀번호 : <%=password %><br><br>
	내용 : <%=memo %><br><br>

</body>
</html>