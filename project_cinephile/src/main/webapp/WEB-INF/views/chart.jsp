<%@page import="com.project.cine.dtos.FavorDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
<%response.setContentType("text/html; charset=UTF-8"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
	List<FavorDto>list=(List<FavorDto>)request.getAttribute("list");
%>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">

	google.charts.load('current', {'packages':['corechart']});
	google.charts.setOnLoadCallback(drawChart);

	var data;
	var options;
	var chart;

	function drawChart(){
		//데이터 테이블 생성
		data = new google.visualization.DataTable();
		data.addColumn('string', '장르');			//컬럼추가(타입, 이름)
		data.addColumn('number', '선호도');
		<% 
			for(FavorDto dto:list){
				%>
				 data.addRow(['<%=dto.getF_genre()%>', <%=dto.getF_score()%>]);
				<%
			}
		%>

		options = {
			title: '나의 장르 선호도',
			pieHole: 0.3
		};

		chart = new google.visualization.PieChart(document.getElementById('donutchart'));
		
		//반영
		chart.draw(data, options);
	}

</script>
</head>
<body>
	<div id="donutchart" style="width: 690px; height: 500px;"></div>
</body>
</html>