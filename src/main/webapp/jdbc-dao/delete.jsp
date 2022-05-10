<%@page import="cs.dit.LoginDao"%>
<%@page import="cs.dit.LoginDto"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.Context"%>
<%@page import="javax.naming.InitialContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*"  %>
    
<%	
	request.setCharacterEncoding("utf-8");
	
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String pwd = request.getParameter("pwd");
	
	LoginDto dto = new LoginDto(id, name, pwd);
	LoginDao dao = new LoginDao();
	dao.delete(dto);
	
	/* response.sendRedirect("list.jsp"); */

/* 	//1. DB 연동 드라이버 로드
	Context initCtx =  new InitialContext();
	Context envCtx = (Context) initCtx.lookup("java:comp/env");
	DataSource ds = (DataSource) envCtx.lookup("jdbc/jsson");
	Connection con = ds.getConnection();
	//3. 생성된 연결을 통해 SQL문 실행 의뢰 준비
	String sql = "DELETE FROM login WHERE ID=?";
	
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, request.getParameter("id"));
	
	//5. SQL 실행
	int i = pstmt.executeUpdate();
	
	//6. 객체 해제
	pstmt.close();
	con.close(); */
%>
	
<script>
		let ans = alert("삭제되었습니다!");
		if (!ans){
			location.href='list.jsp';
		}
</script>