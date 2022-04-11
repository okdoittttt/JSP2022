<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%
	request.setCharacterEncoding("UTF-8");

	String kor = request.getParameter("kor");
	int korI = Integer.parseInt(kor);
	
	String eng = request.getParameter("eng");
	int engI = Integer.parseInt(eng);
	
	String math = request.getParameter("math");
	int mathI = Integer.parseInt(math);
	
	int sum = korI + engI + mathI;
	float avg = sum/3;
	String result = String.format("%.2f", avg);
	
	
%>
<title>Insert title here</title>
</head>
<body>
	국어 : <%=korI %> <br><br>
	영어 : <%=engI %> <br><br>
	수학 : <%=mathI %> <br><br>
	합 : <%=sum %> <br><br>
	평균 : <%=result %>

</body>
</html>