<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
<%response.setContentType("text/html; charset=UTF-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>로그인 | Cinephile</title>

<style type="text/css">

 a:link { color: red; text-decoration: none;}
 a:visited { color: black; text-decoration: none;}
 a:hover { color: blue; text-decoration: underline;}

#wrapper {
	width: 1200px;
	border: 1px solid #eee;
	margin: 20px auto;
}

#body {
	width: 1160px;
	height: 450px;
	margin: 20px;
}

#head {
	height: 110px;
	margin: 20px;
}

#foot {
	clear: both;
	height: 30px;
	margin: 20px;
	background: #eee;
}

table {
	margin-left: auto;
	margin-right: auto;
	text-align: right;
}

.login_msg {
	font-size: small;
	text-align: center;
}

h1 {
	text-align: center
}

h2 {
	text-align: center
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
			<h2>로그인</h2>
			<br>
			<br>
			<div id="login">
				<table>
					<colgroup>
						<col class="c1">
						<col class="c2">
					</colgroup>
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
						<th></th>
						<td><input id="loginBtn" type="button" value="로그인"></td>
					</tr>

				</table>
				<br>
				        <p class="login_msg">아직 cinephile이 아니라면 <u><b><a href="signin.do">회원가입</a></b></u> 하세요!</p>
			</div>

		</div>

		<div id="foot" style="border: 1px solid white;"></div>

	</div>

</body>

</html>