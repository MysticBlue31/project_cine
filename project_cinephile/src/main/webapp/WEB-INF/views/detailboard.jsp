<%@page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html;charset=utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" 
    src="http://code.jquery.com/jquery-latest.js"></script>
<style type="text/css">
	#replyForm{display: none;}
</style>
<script type="text/javascript">
	//자바스크립트를 이용해서 글목록보기로 이동하기
	function boardListView(){
		location.href="board.do";
	}
	//글 삭제요청하기
	function delBoard(seq){//seq는 삭제할 글의 seq값
		location.href="muldel.do&chk="+seq;
	}
	//글 수정요청하기
	function updateBoard(seq){
		location.href="updateform.do?seq="+seq;
	}
	
	//답글달기 폼 보여주기
	function replyForm(){
// 		var divform=document.getElementById("replyForm");
// 		divform.style.display="block";
		$("#replyForm").stop().slideToggle();
	}
</script>
</head>
<body>
<h1>글 상세보기</h1>
<table border="1">
	<tr>
		<th>작성자(ID)</th>
		<td>${dto.id}</td>
	</tr>
	<tr>
		<th>제 목</th>
		<td>${dto.w_title}</td>
	</tr>
	<tr>
		<th>조회수</th>
		<td>${dto.w_readcount}</td>
	</tr>
	<tr>
		<th>내 용</th>
		<td><textarea  rows="10" cols="60" readonly="readonly">${dto.w_content}</textarea></td>
	</tr>
	<tr>
		<td colspan="2">
			<input type="button" value="수정" onclick="updateBoard(${dto.w_seq})"/>
			<input type="button" value="삭제" onclick="delBoard(${dto.w_seq})"/>
			<input type="button" value="목록" onclick="boardListView()"/>
			<input type="button" value="답글" onclick="replyForm()"/>
		</td>
	</tr>
</table>
<div id="replyForm">
<h2>답글추가하기</h2>
<form action="replyboard.do" method="post">
	<input type="hidden" name="w_seq" value="${dto.w_seq}"/>
	<table border="1">
		<tr>
			<th>아이디</th>
			<td><input type="text" name="id" required="required"/></td>
		</tr>
		<tr>
			<th>제 목</th>
			<td><input type="text" name="w_title" required="required"/></td>
		</tr>
		<tr>
			<th>내용</th>
			<td><textarea rows="10" cols="60" name="content" required="required"></textarea> </td>
		</tr>
		<tr>	
			<td colspan="2">
				<input type="submit" value="답글등록"/>
			</td>
		</tr>
	</table>
</form>
</div>
</body>
</html>






