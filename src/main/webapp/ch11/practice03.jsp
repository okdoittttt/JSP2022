<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL</title>
</head>
<body>
	<c:set var="id2" value="sonny" scope="session" />
	<c:out value="${id2}" /><br>
	${id }
	
	${param.score }<br>
	${empty param.score ? "비었습니다." : param.id }
	
	<c:set var="loginId" value="gildong" scope="session" />
	<c:set var="name" value="홍길동" scope="session" />
	
	<c:forEach var="i" begin="1" end="5">
		${i }<br>
	</c:forEach>
	
</body>
</html>