<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>사용자 입력</title>
</head>
<body>
	<div class="container">
		<br>
		<h2 class="text-center font-weight-bold">멤버 등록</h2>
		<hr/>
		
		<form action="inPro.jsp" method="post">
		  <div class="form-group">
	      <label for="id">ID:</label>
	      <input type="text" class="form-control" id="id" name="id">
	    </div>
	    <div class="form-group">
	      <label for="name">NAME:</label>
	      <input type="text" class="form-control" id="name" name="name">
	    </div>
	    <div class="form-group">
	      <label for="pwd">PASSWORD:</label>
	      <input type="password" class="form-control" id="pwd" name="pwd">

	    </div>
	    <br>
	    <div class="text-center">
				<input type="submit" value="멤버 등록" class="form-control">
			</div>
		</form>
	
	</div>
</body>
</html>