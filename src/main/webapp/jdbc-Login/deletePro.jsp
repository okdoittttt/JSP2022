<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.sql.*"%>
    
<%  System.out.println("ddd?");
	// 한글 처리
	request.setCharacterEncoding("utf-8");

	// 웹 브라우저에 전달될 정보
	String id = request.getParameter("id");
/* 	String name = request.getParameter("name");
	String pwd = request.getParameter("pwd"); */
	
	// 1. 드라이버 코드
	Class.forName("org.mariadb.jdbc.Driver");
	
	// 2. 커넥션 연결
	String url = "jdbc:mariadb://localhost:3306/OKMOO";
	Connection con = DriverManager.getConnection(url, "root", "0070");
	
	// 3. SQL문 준비
	/* String sql = "update login set name=?, pwd=? where id=?"; */
	String sql = "DELETE FROM LOGIN WHERE ID=?";
	
	// 4. SQL문 실행
	/* Statement stmt = con.createStatement(); */
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, id);
	
	int i = pstmt.executeUpdate();
	
	// 5. 객체 해제
	pstmt.close();
	con.close();
	
	
	response.sendRedirect("list.jsp");
%>