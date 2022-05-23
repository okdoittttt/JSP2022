<%@page import="java.util.LinkedList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String list[] = {"a", "b", "c", "d"};
	pageContext.setAttribute("list", list);
	
	List<String> namelist = new LinkedList<String>();
	namelist.add("홍길동");
	namelist.add("임꺽정");
	namelist.add("이순신");
	pageContext.setAttribute("namelist", namelist);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<ul>
		<li>${list[0]}</li>
		<li>${list[1]}</li>
		<li>${list[2]}</li>
		<li>${list[3]}</li>	
	</ul>
	
	<ul>
		<li>${namelist[2]}</li>
	</ul>
</body>
</html>