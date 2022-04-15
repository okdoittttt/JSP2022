<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<%
	String id = request.getParameter("id");

	// 한글 처리
	request.setCharacterEncoding("utf-8");
	
	// 1. 드라이버 코드
	Class.forName("org.mariadb.jdbc.Driver");
	
	// 2. 커넥션 연결
	String url = "jdbc:mariadb://localhost:3306/OKMOO";
	Connection con = DriverManager.getConnection(url, "root", "0070");
	
	// 3. SQL문 준비
	/* String sql = "insert into login(id, pwd) values('" + id +"', '" + pwd + "')"; */
	String sql = "select * from login where id='?'";
	
	// 4. SQL문 실행
	/* Statement stmt = con.createStatement(); */
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, id);
	
	ResultSet rs = pstmt.executeQuery();
	
	String name="";
	String pwd2="";
	
	while(rs.next()) {
		name = rs.getString("name");
		pwd2 = rs.getString("pwd");
	}
	
	// 5. 객체 해제
	rs.close();
	pstmt.close();
	con.close();
	
	/* response.sendRedirect("dbcon.jsp"); */
%>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
	<h2>회원정보수정</h2>
	<form name="login" action="updatePro.jsp" method="post">
		아이디 : <input type="text" name="id" value=<%=id %>> <br>
		이름 : <input type="text" name="name" value=<%=name %>> <br>
		암호 : <input type="password" name="pwd" value=<%=pwd2 %>> <br/>
		<input type="submit" value="변경 저장" />
		<button type="button" onclick="location.href='list.jsp'">목록조회</button>
		<button type="button" onclick="location.href='deletePro.jsp?id=<%=id %>'">삭제</button>
	</form>
</body>
</html>