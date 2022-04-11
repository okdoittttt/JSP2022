<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.sql.*"%>
<!DOCTYPE html>
<html>

<head>
<%
	// 1. JDBC Driver 로드
	Class.forName("org.mariadb.jdbc.Driver");
	
	// 2. DB와의 연결(connection)을 생성
	String url = "jdbc:mariadb://localhost:3306/OKMOO";
	Connection con = DriverManager.getConnection(url, "root", "0070");
	
	// 3. 연결 후 그 통로를 통해 SQL문을 실행시킨다.
	String sql = "select * from login";
	Statement stmt = con.createStatement();
	
	// 4. SQL문 실행
	ResultSet rs = stmt.executeQuery(sql);
%>
<meta charset="UTF-8">
<title>DB 연동</title>
</head>
<body>
	<table>
		<tr>
			<th>id</th>
			<th>name</th>
			<th>pwd</th>
		
<%
	// 5. 반환된 데이터 출력
	while(rs.next()) {
		String id = rs.getString("id");
		String name = rs.getString("name");
		String pwd2 = rs.getString("pwd");
/* 		out.println(rs.getString("id"));
		out.println(rs.getString("pwd"));
		out.println("<br>"); */
	
%>
			<td><a href='update.jsp?id=<%=id %>'><%=id %></a></td>
			<td><%=name  %></td>
			<td><%=pwd2  %></td>
		</tr>
		
<%	} %>
	</table>
<%
	// 6. 객체 해지
	rs.close();
	stmt.close();
	con.close();	
%>
</body>
</html>