<!--
	작성자 : 손옥무
	변경이력 : 
	프로그램 설명 : 축구 경기결과, 경기일정 상세 페이지.
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
<title>Football</title>
</head>
<body>
	<div id="header">
		<h1 class="mainTitle">직진</h1>
		<ul id="navigation">
			<li>
				<a href="index.jsp">home</a>
			</li>
			<li class="selected">
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
			<li>
				<a href="contact.jsp">contact</a>
			</li>
		</ul>
	</div>
	<hr>
	<div id="body">
		<h1><span>football</span></h1>
		<div>
			<!-- <img src="images/photographer.jpg" alt=""> -->
			<div class="article">
				<h3>Example Title here</h3>
				<p>Example description here Example description here Example description here</p>
			</div>
			
			<div class="gameResultBorder">
				<div class="result">
					<ul>
						<li>A Team 3 : 2 B Team</li>
						<li>A Team 3 : 1 B Team</li>
						<li>A Team 3 : 0 B Team</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div id="footer">
		<div>
			<p>&copy; 2022 JSP 웹 프로젝트 최혁재, 박재용, 손옥무</p>
		</div>
	</div>
</body>
</html>