<%@page import="java.util.LinkedList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	
	<c:set var="id" value="sonny" scope="session" />
	<c:set var="income" value="2000" scope="session" />
	<c:out value="${id }의 수입은 ${income } 입니다." />
	
	<c:if test="${income >= 1}" var="result">
		<p>My income is : ${income }</p>
		<p>Result : ${result }</p>
	</c:if>
</body>
</html>