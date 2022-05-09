package cs.dit;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

/** ==========================================================
 * 패키지명 : cs.dit
 * 파일명 : loginDao.java
 * 작성자 : 손옥무
 * 소스코드 설명 : 
 * 	login 테이블과 연동하는 프로그램
 * - insert(LoginDto) 
 * - list()
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
	
	// list()
	public ArrayList<LoginDto> list() {
		String sql = "select id, name, pwd from login";
		ArrayList<LoginDto> dtos = new ArrayList<LoginDto>();
		// 1. DB 커넥션 가져오기
		try (
			Connection con = getConnection();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			)
		{
		// 2. SQL 문 실행
			while(rs.next()) {
				LoginDto dto = new LoginDto();
				// LoginDto dto = new LogdinDto(rs.getString("id"), rs,getString("name"), rs.getString("pwd"));
				
				dto.setId(rs.getString("id"));
				dto.setName(rs.getString("name"));
				dto.setPwd(rs.getString("pwd"));
				
				dtos.add(dto);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		// 3. 결과 데이터 리턴
		return dtos;
	}

}
