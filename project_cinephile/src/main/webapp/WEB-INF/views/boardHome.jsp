<%@page import="java.util.List"%>
<%@page import="com.project.cine.dtos.BoardDto"%>
<%@page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html;charset=utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>영화수다 게시판 | Cinephile</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<style type="text/css">
	th {
		background-color: blue;
		color: white;
		border-color:   white;
	}
	
	td {
		background-color: orange;
		border-color:  white;
/* 		text-align: center; */
	}
	
	td > img{
		width: 20px;
		height:  20px;
	}
	td > a {  text-decoration: none;}
	td > a:link, td>a:visited {
		color:black;
	}
	td > a:active {
		color: yellow;
	}
	table {
		border-collapse:  collapse;
/* 		position:  absolute; */
/* 		left: 200px; */
/* 		top:10px; */
	}
</style>
<script type="text/javascript">
	function allSel(bool){ //bool 매개변수는 체크박스의 체크여부를 받는다
		//  chks[chk,chk,chk,chk....]
// 		var chks=document.getElementsByName("chk");
// 		for (var i = 0; i < chks.length; i++) {
// 			chks[i].checked=bool;
// 		}
		
// 		$("input:checked")
		
		var $chks=$("input[name='chk']");
		$chks.each(function() {
			//attr()/prop(): 속성정의하는 메서드
			$(this).prop("checked",bool);
		});
		
// 		for (var i = 0; i < $chks.length; i++) {
// 			$chks.eq(i).prop("checked",bool);
// 		}
	}
	
	function chkConfirm(){
		var $chks=$("input[name='chk']:checked");
// 		alert("길이:"+$chks.length);
		if($chks.length==0){//체크박스의 체크상태가 모두 false인경우
			alert("최소하나이상체크하세요(jquery)");
			return false;
		}else{
			return true;
		}
	}
	
	
	
	$(function(){
		//내용 미리보기 기능을 ajax로 구현
		//hover()를 이용해서 마우스 올렸을때 내용보여주고, 마우스나가면 내용 초기화
		$("td>a").hover(function(){
			//           a   td       td     td     text요소
			var seq=$(this).parent().prev().prev().text();
			$.ajax({
				method:"post",  //전송방식 정의
				url:"contentAjax.do", // 요청주소
				data:{"w_seq":w_seq}, //서버쪽에 전송할 데이터
// 				dataType:"text", //서버로부터 받게 될 데이터 타입 정의
				dataType:"json",
				async:false, // $.ajax메서드를 비동기로 실행 할건지 설정
				success:function(obj){//서버통신에 성공하면 기능실행(obj는 받은 데이터 저장)
					var dto=obj["dto"];
					$("textarea[name=preContent]").val(dto["id"]+":"+dto.title+":"+dto.content);
				
// 					$("textarea[name=preContent]").val(obj);
// 					$("h1").after("<p>"+obj+"</p>");
				},
				error:function(){
					$("textarea[name=preContent]").val("서버통신실패");
				}
			});
		},function(){
			$("textarea[name=preContent]").val("");
		});
	});
</script>
</head>
<% 
// 	Object최상위 객체  <----(자동캐스팅) List객체 저장
// 	Object obj=list;
// 	List<HkDto> list=(List<HkDto>)obj;
// request 스코프에 저장된 list객체를 받는다.
	List<BoardDto> list
	=(List<BoardDto>)request.getAttribute("list");
%>
<%! //메서드 선언부
	//답글 표현을 위한 공백과 화살표 만들기
// 	public String arrow(AnsDto dto){
// 		String arrow="";
// 		for(int j=0;j<dto.getDepth();j++){
// 			arrow+="&nbsp;&nbsp;&nbsp;&nbsp;";
// 		}
// 		arrow+=(dto.getDepth()==0?"":"->");
// 		return arrow;
// 	}
//   ---->  Util 클래스에 구현하였음
%>
<body>
<h1>게시판 작업중</h1>
<textarea rows="2" cols="40" name="preContent"></textarea>
<form action="muldel.do"  method="post" onsubmit="return chkConfirm()">
<table border="1">
	<col width="50px" />
	<col width="50px" />
	<col width="100px" />
	<col width="300px" />
	<col width="200px" />
	<col width="50px" />
	<col width="50px" />
	<col width="50px" />
	<col width="50px" />
	<col width="50px" />
	<tr>
		<th><input type="checkbox" name="all"  onclick="allSel(this.checked)" /></th>
		<th>번호</th><th>작성자</th><th>제목</th><th>작성일</th>
		<th>조회수</th>
	</tr>
	<%
		if(list==null||list.size()==0){
			out.print("<tr><td colspan='10'>--작성된 글이 없습니다.--</td></tr>");
		}else{
			for(int i=0;i<list.size();i++){
				BoardDto dto=list.get(i);
				%>
				<tr><td><input type="checkbox" name="chk" value="<%=dto.getW_seq()%>"/></td>
					<td><%=dto.getW_seq()%></td>
					<td><%=dto.getId()%></td>
					<td>
						 <%
							if(dto.getW_delflag().equals("N")){
								%>
								<a href="detailboard.do?w_seq=<%=dto.getW_seq()%>">
							    	<%=dto.getW_title()%>
							    </a>
								<%
							}else{
								%>
								---삭제된 글입니다.---
								<%
							}
						%>
						
				    </td>
					<td><%=dto.getW_regdate()%></td>
					<td><%=dto.getW_readcount()%></td>
				</tr>
				<%
			}
		}
	%>
	<tr>
		<td colspan="10" style="text-align: left;" >
			<a href="insertboard.do">글쓰기</a> 
			<a href="home.do">메인</a>
			<input type="submit" value="삭제"/>
		</td>
	</tr>
</table>
</form>
</body>
</html>






