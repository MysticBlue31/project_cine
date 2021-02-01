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
	height: 450px;
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
}
/* Style the tab content */
.tabcontent {
	display: none;
	background-color: rgb(0, 154, 200);
	padding: 6px 12px;
	color: #fff;
}

ul.tab li.current {
	background-color: rgb(0, 154, 200);
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
			<h4>
				<a href="getMovies.do">HOME</a>&nbsp;|&nbsp;<a href="board.do">영화수다</a>&nbsp;|&nbsp;<a
					href="login.do">로그인</a>
			</h4>
			<hr>
		</div>
		<div id="body" style="border: 1px solid white">
			<h2>마이페이지</h2>
			<br>
			<br>
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
						<td>parasite</td>
					</tr>
					<tr>
						<th>비밀번호*</th>
						<td>********</td>
					</tr>
					<tr>
						<th>비밀번호 확인*</th>
						<td>********</td>
					</tr>
					<tr>
						<th>이름*</th>
						<td>성이름</td>
					</tr>
					<tr>
						<th>이메일*</th>
						<td>parasite@parasite.com</td>
					</tr>
				</table>
				<br> <br> <br>
			</div>
			<div id="button" class="button">
				<a href="myPageEdit.do"><input id="next" type="button"
					value="수정하기"></a>
			</div>
		</div>

		<div id="right" style="border: 1px solid black">

		<div id="container">
		<ul class="tab">
			<li class="current" data-tab="tab1"><a href="#">나의 한줄평</a></li>
			<li data-tab="tab2"><a href="#">내 취향분석</a></li>

		</ul>

		<div id="tab1" class="tabcontent current">
			<h3>About</h3>
			<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
		</div>

		<div id="tab2" class="tabcontent">
			<h3>Portfolio</h3>
			<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</p>
		</div>
		</div>


		</div>
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