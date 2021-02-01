<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
<%response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>취향등록 | Cinephile</title>

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

.c2{
	width:100px;
	text-align:left;
}

.c3 {
	text-align: left;
}

#button {
	position: relative;
	left: 320px;
}

thead {
	text-align: left;
}
th {
	padding-left:10px;
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
			<h2>취향등록</h2>
			<div id="favor">
				<table>
					<colgroup>
						<col class="c1">
						<col class="c2">
						<col class="c3">
					</colgroup>
					<thead><tr><th colspan="3">
					삼진그룹 영어토익반<br>SAMJIN COMPANY ENGLISH CLASS
					</th></tr></thead>
					<tr>
						<td rowspan="6">
							<img src="https://ssl.pstatic.net/imgmovie/mdi/mit110/1891/189141_P52_153007.jpg" width="165" height="235.5">
						</td>
						<th>평점: </th>
						<td>9.04</td>
					</tr>
					<tr>
						<th>개요: </th>
						<td>드라마 | 한국 | 110분 | 20201021</td>
					</tr>
					<tr>
						<th>감독: </th>
						<td>이종필</td>
					</tr>
					<tr>
						<th>출연: </th>
						<td>고아성/KO Asung/,이솜/E Som/,박혜수/PARK Hye-su/심보람,김예지//프론트직원,백현진/BEK Hyun-jin/,조현철/CHO Hyun-chul/,김종수/KIM Jong-soo/,김원해/KIM Won-hae/,배해선/BAE Hae-sun/,데이비드 맥기니스/David MCINNIS/,이성욱/LEE Sung-wook/,김희상//마케팅부 직원1,김희상//시사일보 기자</td>
					</tr>
					<tr>
						<th>등급: </th>
						<td>12세이상관람가</td>
					</tr>
					<tr>
				        <th>나의 선호도: </th>
				        <td>
				          <select name="score">
				            <option value="">1~10점 중 선택</option>
				            <option value="10">10</option>
				            <option value="9">9</option>
				            <option value="8">8</option>
				            <option value="7">7</option>
				            <option value="6">6</option>
				            <option value="5">5</option>
				            <option value="4">4</option>
				            <option value="3">3</option>
				            <option value="2">2</option>
				            <option value="1">1</option>
				          </select>
				          <!-- 마지막 취향등록 페이지서는 '다음'버튼 대신 '제출완료'버튼이 뜨도록 -->
				          <a href="favor.do"><button type="submit">다음</button></a>
				          <a href="login.do"><button type="submit">제출완료</button></a>
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