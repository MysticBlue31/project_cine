<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
<%response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title></title>
<script type="text/javascript">
	onload = function(){
		//페이지가 시작하면 바로 MovieController로 보내서 데이터 구하기
		location.href = "getMovies.do";		
	}
</script>
</head>
<body>
</body>
</html>