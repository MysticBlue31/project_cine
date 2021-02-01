<%@page import="com.project.cine.dtos.MovieDto"%>
<%@page import="java.util.List"%>
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
	width: 13.5%;
	height: 13.5%;
	margin-left: 3.5px;
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
			<h4><a href="getMovies.do">HOME</a>&nbsp;|&nbsp;<a href="myPageView.do">마이페이지</a>&nbsp;|&nbsp;<a href="board.do">영화수다</a>&nbsp;|&nbsp;<a href="login.do">로그인</a></h4>
		</div>

		<div id="body" style="border: 1px solid white">
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
			<%
				for(int i = 0; i < list.size(); i++)
				{
					MovieDto dto = list.get(i);
					%>
					<a href="movieInfo.do"><img alt="<%=dto.getM_title()%>" src="<%=dto.getM_imgurl()%>"></a>
					<%
				}
			%>
			</div>
		</div>
		<div id="foot" style="border: 1px solid white;"></div>
	</div>
</body>

</html>