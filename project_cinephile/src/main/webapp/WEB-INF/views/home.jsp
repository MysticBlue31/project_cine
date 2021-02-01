<%@page import="com.project.cine.dtos.MovieDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
<%response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width">
<title>Welcome to Cinephile!</title>
<link href="style.css" rel="stylesheet" type="text/css" />
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
	height: 100px;
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

input:-ms-input-placeholder {color:a8a8a8;}
input::-webkit-input-placeholder {color:a8a8a8;}
input::-moz-placeholder {color:a8a8a8;}

#search {
  height: 40px;
  width: 400px;
  border: 0px solid black;
  margin: 0 auto;
}

input{
  font-size: 16px;
  width: 300px;
  padding: 10px;
  border: 1px solid black;
  float: left;
}

button{
  color: white;
  font-size: 16px;
  width: 78.0px;
  height: 100%;
  border: 1px solid black;
  float: right;
  background: black;
  text-color: white;
  text-decoration: none;
}

h1 {
	text-align: center
}

h3 {
	text-align: left
}

h4 {
	text-decoration: none;
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
			<hr>
		</div>

		<div id="body" style="border: 1px solid white">
			<br>
			<br>
			<br>
			    <div id="search">
			      <input type="text" placeholder="검색어 입력">
			      <a href="searchResult.do"><button>검색</button></a>
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
					<a href="getMovieInfo.do?m_code=<%=dto.getM_code()%>"><img alt="<%=dto.getM_title()%>" src="<%=dto.getM_imgurl()%>"></a>
					<%
				}
			%>
			</div>
		</div>
		<br>
		
			<div id="foot" style="border: 1px solid white;">
			<b>'Cinephile'</b> since 2021 || Website administrator: 문해봄, 윤기천, 이하영,
			이현용 || Advisor: 강병진
			</div>
	</div>
	<script src="script.js"></script>
</body>

</html>