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
<title>LiveScore</title>
</head>
<body>
<body>
	<div id="header">
		<h1>Live Score</h1>
		<ul id="navigation">
			<li class="selected">
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
			<li>
				<a href="contact.jsp">contact</a>
			</li>
		</ul>
	</div>
	<hr>
	<div id="body">
		<ul>
			<li>
				<div class="mainNews">
					<a href="#">
						<img src="img/img01.jpg" class="image-thumbnail" alt="">
						<span>뉴스기사 1번</span>
					</a>
				</div>
			</li>
			<li>
				<div class="mainNews">
					<a href="#">
						<img src="img/img02.jpg" class="image-thumbnail" alt="">
						<span>뉴스기사 2번</span>
					</a>
				</div>
			</li>
			<li>
				<div class="mainNews">
					<a href="#">
						<img src="img/img03.jpg" class="image-thumbnail" alt="">
						<span>뉴스기사 3번</span>
					</a>
				</div>
			</li>
		</ul>
	</div>
	<div class="mainPage">
		<div class="gameResult">
			<p>경기 결과</p>
			<div>
				<ul class="listStyleNone">
					<li>A Team 3 : 0 B Team</li>
					<li>C Team 3 : 1 D Team</li>
					<li>E Team 3 : 2 F Team</li>
				</ul>
			</div>
		</div>
	</div>
	
	<br><br><br><br><br>
</body>
</html>