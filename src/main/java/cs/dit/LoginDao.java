package cs.dit;

import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

/** ==========================================================
 * 패키지명 : cs.dit
 * 파일명 : loginDao.java
 * 작성자 : 손옥무
 * login 테이블과 연동하는 프로그램
 * - insert() 
 ========================================================== */
public class LoginDao {
	// connection pool에서 db connection 불러오기.
	private Connection getConnection() throws Exception{
		
		// db에서 connection 불러오기
		Context initCtx =  new InitialContext();
		Context envCtx = (Context) initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource) envCtx.lookup("jdbc/jsson");
		Connection con = ds.getConnection();
		
		return con;
	}
	// login 테이블에 사용자 정보 입력
	public void insert(LoginDto dto) {
		String sql = "INSERT INTO login(id,name,pwd) VALUES(?,?,?)";
		try(
			Connection con = getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);
			)
		{
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getName());
			pstmt.setString(3, dto.getPwd());
			
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	// login 테이블에 사용자 정보 삭제
	public void delete() {}
	// login 테이블에 사용자 정보 업데이트
	public void update(LoginDto dto) {
		String sql = "UPDATE LOGIN SET NAME=?, PWD=? WHERE ID=?";
		try(
			Connection con = getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);
			)
		{
			pstmt.setString(1, dto.getName());
			pstmt.setString(2, dto.getPwd());
			pstmt.setString(3, dto.getId());
			
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
