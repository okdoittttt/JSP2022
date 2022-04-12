<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.sql.*"%>
    
<%
	// 한글 처리
	request.setCharacterEncoding("utf-8");

	// 웹 브라우저에 전달될 정보
	String title = request.getParameter("title");
	String name = request.getParameter("name");
	String pwd = request.getParameter("pwd");
	String content = request.getParameter("content");
	
	// 1. 드라이버 코드
	Class.forName("org.mariadb.jdbc.Driver");
	
	// 2. 커넥션 연결
	String url = "jdbc:mariadb://localhost:3306/OKMOO";
	Connection con = DriverManager.getConnection(url, "root", "0070");
	
	// 3. SQL문 준비
	/* String sql = "insert into login(id, pwd) values('" + id +"', '" + pwd + "')"; */
	String sql = "insert into board(title, name, pwd, content) values(?, ?, ?, ?)";
	
	// 4. SQL문 실행
	/* Statement stmt = con.createStatement(); */
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, title);
	pstmt.setString(2, name);
	pstmt.setString(3, pwd);
	pstmt.setString(4, content);
	
	int i = pstmt.executeUpdate();
	
	// 5. 객체 해제
	pstmt.close();
	con.close();
	
	
	response.sendRedirect("boardList.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>