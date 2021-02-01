<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
<%response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>검색결과 | Cinephile</title>

<script type="text/javascript">
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

.c1{
	width:100px;
	text-align:left;
}

.c2{
	width:700px;
	text-align:left;
}

#button {
	position: relative;
	left: 320px;
}

table {
	border: 1px;
}


th, td {
	vertical-align: top;
	text-align: left;
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
			<h2>검색결과 X 건 </h2>
			<div id="searchResult">
				<table>
					<colgroup>
						<col class="c1">
						<col class="c2">
					</colgroup>
					<tr>
						<td>
							<img src="https://ssl.pstatic.net/imgmovie/mdi/mit110/1891/189141_P52_153007.jpg" width="77px" height="109.9px">
						</td>
						<td>
							<br><b>한글제목</b> (영어제목)<br>
							장르 | 국가 | 상영시간 | 개봉연도<br>
							감독: ㅇㅇㅇ |출연: ㅇㅇㅇ, ㅇㅇㅇ, ㅇㅇㅇ
						</td>
					</tr>
				</table>
				<table>
					<colgroup>
						<col class="c1">
						<col class="c2">
					</colgroup>
					<tr>
						<td>
							<img src="https://ssl.pstatic.net/imgmovie/mdi/mit110/1891/189141_P52_153007.jpg" width="77px" height="109.9px">
						</td>
						<td>
							<br><b>한글제목</b> (영어제목)<br>
							장르 | 국가 | 상영시간 | 개봉연도<br>
							감독: ㅇㅇㅇ |출연: ㅇㅇㅇ, ㅇㅇㅇ, ㅇㅇㅇ
						</td>
					</tr>
				</table>
				<table>
					<colgroup>
						<col class="c1">
						<col class="c2">
					</colgroup>
					<tr>
						<td>
							<img src="https://ssl.pstatic.net/imgmovie/mdi/mit110/1891/189141_P52_153007.jpg" width="77px" height="109.9px">
						</td>
						<td>
							<br><b>한글제목</b> (영어제목)<br>
							장르 | 국가 | 상영시간 | 개봉연도<br>
							감독: ㅇㅇㅇ |출연: ㅇㅇㅇ, ㅇㅇㅇ, ㅇㅇㅇ
						</td>
					</tr>
				</table>
				<br><br><br>
			</div>
		</div>
		<div id="foot" style="border: 1px solid white;">
			<b>'Cinephile'</b> since 2021 || Website administrator: 문해봄, 윤기천, 이하영,
			이현용 || Advisor: 강병진
		</div>
	</div>
</body>
</html>