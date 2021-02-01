<%@page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html;charset=utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>글쓰기</title>
<script type="text/javascript">
	//자바스크립트를 이용해서 글목록보기로 이동하기
	function boardListView(){
		location.href
		="board.do";
	}
</script>
</head>
<body>
<h1>글 작성하기</h1>
<form action="insertboard.do" method="post">
	<table border="1">
		<tr>
			<th>작성자(ID)</th>
			<td><input required="required" type="text" name="id"/></td>
		</tr>
		<tr>
			<th>제 목</th>
			<td><input required="required" type="text" name="w_title"/></td>
		</tr>
		<tr>
			<th>내 용</th>
			<td><textarea required="required" rows="10" cols="60" name="w_content"></textarea></td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="등록"/>
				<input type="button" value="목록" onclick="boardListView()"/>
			</td>
		</tr>
	</table>
</form>
</body>
</html>





