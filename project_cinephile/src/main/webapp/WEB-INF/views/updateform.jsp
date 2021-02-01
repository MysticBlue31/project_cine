<%@page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html;charset=utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	//자바스크립트를 이용해서 글목록보기로 이동하기
	function boardListView(){
		location.href="board.do";
	}
</script>
</head>
<body>
<h1>글 수정하기</h1>
<form action="updateboard.do" method="post">
	<input type="hidden" name="w_seq" value="${dto.w_seq}"/>
	<table border="1">
		<tr>
			<th>작성자(ID)</th>
			<td>${dto.id}</td>
		</tr>
		<tr>
			<th>제 목</th>
			<td><input type="text" name="w_title" value="${dto.w_title}"/></td>
		</tr>
		<tr>
			<th>내 용</th>
			<td><textarea  rows="10" cols="60" name="w_content">${dto.w_content}</textarea></td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="수정완료" />
				<input type="button" value="목록" onclick="boardListView()"/>
			</td>
		</tr>
	</table>
</form>
</body>
</html>