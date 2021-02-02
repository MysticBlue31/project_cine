<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<%
response.setContentType("text/html; charset=UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>마이페이지 | Cinephile</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script>
$(document).ready(function(){
	 $("#tab1").load("comment.do");
	 $("#tab2").load("getUserFavor.do?id=kc1");
	    
	 $(".tab").click(function(){
	 	$("#tab2").load("getUserFavor.do?id=kc1");
	 });
});
</script>
<style type="text/css">

 a:link { color: black; text-decoration: none;}
 a:visited { color: black; text-decoration: none;}
 a:hover { color:gray; text-decoration: underline;}

#wrapper {
	width: 1200px;
	border: 1px solid #eee;
	margin: 20px auto;
}

#body, #right {
	float: left;
}

#body {
	width: 400px;
	margin-left: 20px;
}

#head {
	height: 110px;
	margin: 20px;
}

#right {
	width: 715px;
	margin: 20px;
}

#foot {
	clear: both;
	height: 15px;
	margin: 20px;
	background: #eee;
	font-size: small;
	text-align: center;
}

table {
	text-align: left;
}

.c1 {
	width: 150px;
}

#button {
	position: relative;
	left: 320px;
}

h1 {
	text-align: center
}

h2 {
	text-align: left
}

h4 {
	text-align: right
}

.box-container {
	padding: 70px;
}

#container {
	width: 715px;
	margin: 0 auto;
	text-align: center;
}

.tab {
	list-style: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
}
/* Float the list items side by side */
.tab li {
	float: left;
}
/* Style the links inside the list items */
.tab li a {
	display: inline-block;
	color: #000;
	text-align: center;
	text-decoration: none;
	padding: 14px 16px;
	font-size: 17px;
	transition: 0.3s;
	border: 1px solid #eee;
}
/* Style the tab content */
.tabcontent {
	display: none;
	background-color: #fff;
	padding: 6px 12px;
	color: #000;
}

ul.tab li.current {
	background-color: #eee;
	color: #222;
}

.tabcontent.current {
	display: block;
}
</style>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
</head>

<body>

	<div id="wrapper" style="border: 1px solid white">

		<div id="head" style="border: 1px solid white">
			<h1>Cinephile</h1>
			<h4><a href="getMovies.do">HOME</a>&nbsp;|&nbsp;<a href="board.do">영화수다</a>&nbsp;|&nbsp;<a href="login.do">로그인</a></h4>
			<hr>
		</div>
<div id="body" style="border: 1px solid white">
			<h2>마이페이지</h2>
			<br> <br>
			<div id="login">
				<table>
					<colgroup>
						<col class="c1">
						<col class="c2">
					</colgroup>
					<tr>
						<th>회원등급</th>
						<td>회원</td>
					</tr>
					<tr>
						<th>아이디*</th>
						<td><form name="name" action="값을 보낼 주소"
								method="post 방식인지 get 방식인지">
								<input type="text" name="name" value="" placeholder="parasite"
									maxlength="입력가능 글자 수" /></td>
					</tr>
					<tr>
						<th>비밀번호*</th>
						<td><form name="name" action="값을 보낼 주소"
								method="post 방식인지 get 방식인지">
								<input type="text" name="name" value="" placeholder="********"
									maxlength="입력가능 글자 수" /></td>
					</tr>
					<tr>
						<th>비밀번호 확인*</th>
						<td><form name="name" action="값을 보낼 주소"
								method="post 방식인지 get 방식인지">
								<input type="text" name="name" value="" placeholder="********"
									maxlength="입력가능 글자 수" /></td>
					</tr>
					<tr>
						<th>이름*</th>
						<td><form name="name" action="값을 보낼 주소"
								method="post 방식인지 get 방식인지">
								<input type="text" name="name" value="" placeholder="성이름"
									maxlength="입력가능 글자 수" /></td>
					</tr>
					<tr>
						<th>이메일*</th>
						<td><form name="name" action="값을 보낼 주소"
								method="post 방식인지 get 방식인지">
								<input type="text" name="name" value="" placeholder="parasite@parasite.com"
									maxlength="입력가능 글자 수" /></td>
					</tr>
				</table>
				<br><br><br>
			</div>

			<div id="button" class="button">
				<a href="myPageView.do"><input id="next" type="button" value="수정완료"></a>
			</div>
			<br><br><br><br><br>
		</div>

		 <div id="right" style="border: 1px solid white">
		
<div id="container">
		<ul class="tab">
			<li class="current" data-tab="tab1"><a href="#">나의 한줄평</a></li>
			<li data-tab="tab2"><a href="#">내 취향분석</a></li>

		</ul>

		<div id="tab1" class="tabcontent current" style="border: solid #eee;">
		</div>

		<div id="tab2" class="tabcontent" style="border: solid #eee;">
		</div>
	</div>
			

		</div>
		<br><br><br>
		<div id="foot" style="border: 1px solid white;">
			<b>'Cinephile'</b> since 2021 || Website administrator: 문해봄, 윤기천, 이하영,
			이현용 || Advisor: 강병진
		</div>
	</div> 

	<script>
		$(function() {
			$('ul.tab li').click(function() {
				var activeTab = $(this).attr('data-tab');
				$('ul.tab li').removeClass('current');
				$('.tabcontent').removeClass('current');
				$(this).addClass('current');
				$('#' + activeTab).addClass('current');
			})
		});
	</script>

</body>
</html>