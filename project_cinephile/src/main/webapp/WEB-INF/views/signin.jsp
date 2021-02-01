<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
<%response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>회원가입 | Cinephile</title>

<style type="text/css">

 a:link { color: black; text-decoration: none;}
 a:visited { color: black; text-decoration: none;}
 a:hover { color:gray; text-decoration: underline;}

#wrapper {
	width: 1200px;
	border: 1px solid #eee;
	margin: 20px auto;
}

#body {
	width: 1160px;
	margin: 20px;
}

#head {
	height: 110px;
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

.c1{
	width:150px;
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
</style>

</head>

<body>

	<div id="wrapper" style="border: 1px solid white">

		<div id="head" style="border: 1px solid white">
			<h1>Cinephile</h1>
			<h4><a href="getMovies.do">HOME</a>&nbsp;|&nbsp;<a href="board.do">영화수다</a>&nbsp;|&nbsp;<a href="login.do">로그인</a></h4>
			<hr>
		</div>

		<div id="body" style="border: 1px solid white">
			<h2>회원가입</h2>
			<br> <br>
			<div id="login">
				<table style>
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
								<input type="text" name="name" value="" placeholder="아이디 입력"
									maxlength="입력가능 글자 수" /></td>
					</tr>
					<tr>
						<th>비밀번호*</th>
						<td><form name="name" action="값을 보낼 주소"
								method="post 방식인지 get 방식인지">
								<input type="text" name="name" value="" placeholder="비밀번호 입력"
									maxlength="입력가능 글자 수" /></td>
					</tr>
					<tr>
						<th>비밀번호 확인*</th>
						<td><form name="name" action="값을 보낼 주소"
								method="post 방식인지 get 방식인지">
								<input type="text" name="name" value="" placeholder="비밀번호 한 번 더 입력"
									maxlength="입력가능 글자 수" /></td>
					</tr>
					<tr>
						<th>이름*</th>
						<td><form name="name" action="값을 보낼 주소"
								method="post 방식인지 get 방식인지">
								<input type="text" name="name" value="" placeholder="이름 입력"
									maxlength="입력가능 글자 수" /></td>
					</tr>
					<tr>
						<th>이메일*</th>
						<td><form name="name" action="값을 보낼 주소"
								method="post 방식인지 get 방식인지">
								<input type="text" name="name" value="" placeholder="이메일 입력"
									maxlength="입력가능 글자 수" /></td>
					</tr>
				</table>
				<br><br><br>
			</div>

			<div id="button" class="button">
				<a href="favor.do"><input id="next" type="button" value="다음단계"></a>
			</div>
		</div>
		<br><br><br>
		<div id="foot" style="border: 1px solid white;">
			<b>'Cinephile'</b> since 2021 || Website administrator: 문해봄, 윤기천, 이하영,
			이현용 || Advisor: 강병진
		</div>
	</div>
</body>
</html>