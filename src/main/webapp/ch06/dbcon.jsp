<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DB 연동</title>
</head>
<body>
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
	
	// 5. 반환된 데이터 출력
	while(rs.next()) {
		out.println(rs.getString("id"));
		out.println(rs.getString("pwd"));
		out.println("<br>");
	}
	
	// 6. 객체 해지
	rs.close();
	stmt.close();
	con.close();
	
	
%>
</body>
</html>