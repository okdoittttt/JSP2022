<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>다중데이터 보내기</title>
</head>
<body>

	<!-- name=""을 동일하게 두고 post 메소드로 넘겨주게 되면 배열의 형태로 넘겨주게 된다.
	출력할 땐 배열의 요소들을 하나씩 꺼내어 출력할 수 있다. -->
	<form method="post" action="textMultiPro.jsp">
		<input type="checkbox" name="hobby" value="음악감상">음악감상<br>
		<input type="checkbox" name="hobby" value="영화감상">영화감상<br>
		<input type="checkbox" name="hobby" value="스포츠 시청">스포츠 시청<br>
		<input type="submit" value="확인">
	</form>

</body>
</html>