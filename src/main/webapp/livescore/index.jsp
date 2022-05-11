<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Live Score Site</title>
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/fun.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<body>
	<div id="header">
		<center><h1>Live Score</h1></center>
		<ul id="navigation">
			<li class="selected">
				<a href="index.jsp">home</a>
			</li>
			<li>
				<a href="football.jsp" class="menu-link">Football</a>
			</li>
			<li>
				<a href="baseball.jsp">BaseBall</a>
			</li>
			<li>
				<a href="basketball.jsp">Basketball</a>
			</li>
			<li>
				<a href="news.jsp">News</a>
			</li>
			<li>
				<a href="service.jsp">Service</a>
			</li>
		</ul>
	</div>
	<hr>
	<div class="leftbar">
		<h3>경기일정</h3>
		<form>
			<input type="text" value="Search..." class="stxt" name="search">
			<hr>
			<ul>
				<li>Data1</li>
				<li>Data2</li>
				<li>Data3</li>
			</ul>
		</form>
	</div>
	
	<div class="mainNews">
		<p>뉴스 1 영역</p>
	</div>
	
	<div class="mainNews">
		<p>뉴스 2 영역</p>
	</div>
	
	<div class="mainNews">
		<p>뉴스 3 영역</p>
	</div>
	
	<div class="mainSchedule">
		<p>경기 결과</p></div>
</body>
</html>
