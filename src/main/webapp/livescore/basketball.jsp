<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Football</title>
<link href="style.css" rel="stylesheet" type="text/css" />
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
				<a href="football.jsp">Football</a>
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
	<center><h1><span style="background-color: orange;">BASKETBALL</span></h1></center>
		<div class="sideBar">
			<center><h3>경기 일정</h3></center>
			<ul class="gameSchedule">
				<li>Data 1</li>
				<li>Data 2</li>
				<li>Data 3</li>
			</ul>
		</div>
		
		<div class="gameResult">
			<center><h3>경기 결과</h3></center>
		</div>
</body>
</html>