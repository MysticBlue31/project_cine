<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
<%response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<title>Welcome to Cinephile!</title>

<style type="text/css">
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
	height: 100px;
	margin: 20px;
}

#foot {
	clear: both;
	height: 30px;
	margin: 20px;
	background: #eee;
}

#search {
	text-align: center
}

h1 {
	text-align: center
}

h3 {
	text-align: left
}

h4 {
	text-align: right
}

img {
	width: 13.95%;
	height: 13.95%;
}
</style>

</head>

<body>

	<div id="wrapper" style="border: 1px solid black">

		<div id="head" style="border: 1px solid black">
			<h1>Cinephile</h1>
			<h4><a href="board.do">영화수다</a>&nbsp;|&nbsp;<a href="login.do">로그인</a></h4>
		</div>

		<div id="body" style="border: 1px solid black">
			<br>
			<br>
			<br>
			<div id="search">
				<form action="">
					<input type="text" placeholder="검색어 입력">
					<button>검색</button>
				</form>
			</div>
			<br>
			<br>
			<br>
			<h3>인기 영화 랭킹 TOP7</h3>
			<div id="ranking">
				<img
					src="https://ssl.pstatic.net/imgmovie/mdi/mit110/1891/189141_P52_153007.jpg">
				<img
					src="https://ssl.pstatic.net/imgmovie/mdi/mit110/0537/53741_P00_153933.jpg">
				<img
					src="https://ssl.pstatic.net/imgmovie/mdi/mit110/0963/96379_P32_143209.jpg">
				<img
					src="https://ssl.pstatic.net/imgmovie/mdi/mit110/1434/143435_P166_181445.jpg">
				<img
					src="https://ssl.pstatic.net/imgmovie/mdi/mit110/1717/171755_P39_140011.jpg">
				<img
					src="https://ssl.pstatic.net/imgmovie/mdi/mit110/1641/164192_P45_134107.jpg">
				<img
					src="https://ssl.pstatic.net/imgmovie/mdi/mit110/1890/189000_P12_101301.jpg">
			</div>

		</div>

		<div id="foot" style="border: 1px solid black;">Bottom</div>

	</div>

</body>

</html>