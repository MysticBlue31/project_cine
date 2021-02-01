<%@page import="com.project.cine.utils.Util"%>
<%@page import="com.project.cine.dtos.MovieDto"%>
<%@page import="java.util.List"%>
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
<%
	List<MovieDto> list = (List<MovieDto>)request.getAttribute("list");
%>

<body>

	<div id="wrapper" style="border: 1px solid white">

		<div id="head" style="border: 1px solid white">
			<h1>Cinephile</h1>
			<h4><a href="getMovies.do">HOME</a>&nbsp;|&nbsp;<a href="board.do">영화수다</a>&nbsp;|&nbsp;<a href="login.do">로그인</a></h4>
			<hr>
		</div>

		<div id="body" style="border: 1px solid white">
			<h2>검색결과 <%=list.size()%>건 </h2>
			<div id="searchResult">
			<%
				for(int i = 0; i < list.size(); i++)
				{
					MovieDto dto = list.get(i);
				%>
					<table>
						<colgroup>
							<col class="c1">
							<col class="c2">
						</colgroup>
						<tr>
							<td>
								<a href="getMovieInfo.do?m_code=<%=dto.getM_code()%>"><img src="<%=dto.getM_imgurl()%>" width="77px" height="109.9px"></a>
							</td>
							<td>
								<br><b><a href="getMovieInfo.do?m_code=<%=dto.getM_code()%>"><%=dto.getM_title()%></a></b> <%=dto.getM_titleen()%><br>
								<%=dto.getM_genre()%> | <%=dto.getM_nation()%> | <%=dto.getM_showtime()%> | <%=dto.getM_opendate()%><br>
								감독: <%=dto.getM_director()%> | 출연: <%=Util.getActorNameKR(dto.getM_actor()) %>
							</td>
					</table>
				<%
				}
			%>
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