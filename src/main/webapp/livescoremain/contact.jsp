<!--
	작성자 : 손옥무
	변경이력 : 
	프로그램 설명 : 라이브 스코어 사이트 메인 페이지.
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
<title>LiveScore</title>
</head>
<body>
	<div id="header">
		<h1 class="mainTitle">직진</h1>
		<ul id="navigation">
			<li>
				<a href="index.jsp">home</a>
			</li>
			<li>
				<a href="football.jsp">football</a>
			</li>
			<li>
				<a href="baseball.jsp">baseball</a>
			</li>
			<li>
				<a href="basketball.jsp">basketball</a>
			</li>
			<li>
				<a href="news.jsp">news</a>
			</li>
			<li  class="selected">
				<a href="contact.jsp">contact</a>
			</li>
		</ul>
	</div>
	<hr>
		<div id="body">
		<h1><span>let's keep in touch</span></h1>
		<form action="#">
			<input type="text" name="fname" id="fname" value="name">
			<input type="text" name="address" id="address" value="address">
			<input type="text" name="email" id="email" value="email">
			<input type="text" name="phone" id="phone" value="phone number">
			<textarea name="message" id="message">message</textarea>
			<input type="submit" name="send" id="send" value="send">
		</form>
	</div>
	<div id="footer">
		<div>
			<p>&copy; 2022 JSP 웹 프로젝트 최혁재, 박재용, 손옥무</p>
		</div>
	</div>
</body>
</html>