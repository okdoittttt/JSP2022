<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>

<!-- insert와 update를 하나의 파일로 만다는 방법
	if(id!=null || id="")
		update 소스코드
	else
		insert 소스코드

 -->
<body>
	<h2>로그인</h2>
	<form name="login" action="insertPro.jsp" method="post">
		아이디 : <input type="text" name="id" /> <br>
		이름 : <input type="text" name="name" /> <br>
		암호 : <input type="password" name="pwd" /> <br /> <br>
		<input type="submit" value="로그인" />
	</form>
</body>
</html>