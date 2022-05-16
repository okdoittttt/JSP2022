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
<body>
	<div id="header">
		<h1 class="mainTitle">직진</h1>
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
						<img src="img/4-2.jpeg" class="image-thumbnail" alt="">
						<span>(NBA) ‘버틀러 23P’ 마이애미, 필라델피아 꺾고 시리즈 3-2 만들다</span>
						
					</a>
				</div>
			</li>
			<li>
				<div class="mainNews">
					<a href="news/single_post_1.jsp">
						<img src="img/1-1.jpg" class="image-thumbnail" alt="">
						<span>(EPL) 손흥민 EPL 누적 파워랭킹 1위 등극</span>
					</a>
				</div>
			</li>
			<li>
				<div class="mainNews">
					<a href="#">
						<img src="img/5-1.jpeg" class="image-thumbnail" alt="">
						<span>(K리그) K리그 적응 마친 이승우, 3년 만에 대표팀 복귀 현실로</span>
					</a>
				</div>
			</li>
		</ul>
	</div>
	<div class="mainResult">
		<div>
			<h3>경기 결과</h3>
			<h4>EPL</h4>
			<center><p>토트넘 2 : 0 아스널</p></center>
			<center><p>맨체스터 유나이티드 3 : 0 맨체스터 시티</p></center>
			<center><p>리버풀 2 : 1 울버햄튼</p></center>
			<center><p>뉴캐슬 0 : 0 번리</p></center>
			<center><p>리즈 0 : 1 노리치 시티</p></center>
			
			<h4>KBO</h4>
			<center><p>롯데 자이언츠 7 : 1 두산 베어스</p></center>
			<center><p>기아 타이거즈 4 : 9 NC 다이노스</p></center>
			<center><p>한화 이글즈 0 : 11 KT wiz</p></center>
			
			<h4>NBA</h4>
			<center><p>BOSTON CELTICS 108 : 99 CHARLATTE BOBCATS</p></center>
			<center><p>CHIGAGO BULLS 128 : 110 DALLAS MAVERRICKS</p></center>
			<center><p>DENVER NUGGETS 99 : 87 DETROIT PISTIONS</p></center>
		</div>
	</div>
	<div id="footer">
		<div>
			<p>&copy; 2022 JSP 웹 프로젝트 최혁재, 박재용, 손옥무</p>
		</div>
	</div>
</body>
</html>

<!-- <div class="mainPage">
		<div class="gameResult">
		<p>경기 일정</p>
		<div class="don1">
		<p style="color:black">03:30</p>
			<ul class="listStyleNone">
				<li>맨시티:맨유</li>
			</ul>
		<div class="don2">
			<p style="color:black">21:30</p>
			<ul class="listStyleNone">
				<li>토트넘:아스날</li>
				</ul>
		<div class="don3">
		<p style="color:black">01:30</p>
			<ul class="listStyleNone">
				<li>뉴캐슬:에버튼</li>
			</ul>
		<div class="don4">
		<p style="color:black">04:00</p>
			<ul class="listStyleNone">
				<li>번리:리즈</li>
			</ul>
		<div class="don5">
		<p style="color:black">20:30</p>
			<ul class="listStyleNone">
				<li>첼시:리버풀</li>
			</ul>
		</div>
		</div>
		</div>
		</div>
			<div>
				<ul class="listStyleNone">
				
				</ul>
			</div>
		</div>
	</div>
	<br><br><br><br><br><br> -->