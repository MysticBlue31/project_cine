<%@page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html;charset=utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%	//전달된 메세지를 받는다.request.setAttribute("msg","실패메세지")
	String msg=(String)request.getAttribute("msg");
%>
<h1>시스템 오류입니다.</h1>
<h2>계속 문제 발생시 관리자에게 문의하세요. 02-1234-5678</h2>
<h3>오류내용:(<%=msg%>)</h3>
<a href="index.jsp">메인으로 돌아가기</a>
</body>
</html>


