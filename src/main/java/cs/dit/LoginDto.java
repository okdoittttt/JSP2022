package cs.dit;
/** ==========================================================
 * 패키지명 : cs.dit
 * 파일명 : loginDTto.java
 * 작성자 : 손옥무
 * 소스코드 설명 :
 * 	DB에 내용을 담아 전달하는 객체.
 ========================================================== */
public class LoginDto {
	private String id;
	private String name;
	private String pwd;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public LoginDto() {}// 매개변수가 없는 생성자
	// 생성자
	public LoginDto(String id, String name, String pwd) {
		super();
		this.id = id;
		this.name = name;
		this.pwd = pwd;
	}	
}
