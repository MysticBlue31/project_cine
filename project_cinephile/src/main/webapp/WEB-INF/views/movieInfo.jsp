<%@page import="com.project.cine.dtos.MovieDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>
<%response.setContentType("text/html; charset=UTF-8");%>
<%@page import="com.project.cine.utils.Util"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>영화정보 | Cinephile</title>

<script type="text/javascript">
</script>

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
<%
	MovieDto dto = (MovieDto)request.getAttribute("dto");
%>

<body>

	<div id="wrapper" style="border: 1px solid white">

		<div id="head" style="border: 1px solid white">
			<h1>Cinephile</h1>
			<h4><a href="getMovies.do">HOME</a>&nbsp;|&nbsp;<a href="board.do">영화수다</a>&nbsp;|&nbsp;<a href="login.do">로그인</a></h4>
			<hr>
		</div>

		<div id="body" style="border: 1px solid white">
			<h2>영화정보 </h2>
			<div id="movieInfo">
				<table style>
					<colgroup>
						<col class="c1">
						<col class="c2">
						<col class="c3">
					</colgroup>
					<thead><tr><th colspan="3">
					${dto.m_title}<br>${dto.m_titleen}
					</th></tr></thead>
					<tr>
						<td rowspan="6">
							<img src="${dto.m_imgurl}" width="165" height="235.5">
						</td>
						<th>평점: </th>
						<td>${dto.m_avgrate}</td>
					</tr>
					<tr>
						<th>개요: </th>
						<td>${dto.m_genre} | ${dto.m_nation} | ${dto.m_showtime}분 | ${dto.m_opendate}</td>
					</tr>
					<tr>
						<th>감독: </th>
						<td>${dto.m_director}</td>
					</tr>
					<tr>
						<th>출연: </th>
						<td><%=Util.getActorList(dto.getM_actor())%></td>
					</tr>
					<tr>
						<th>등급: </th>
						<td>${dto.m_grade}</td>
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