<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int row = (int) request.getAttribute("row");
	if(row == 1){
%>
	<script>
		alert("수정 되었습니다");
		location.href="guest_list.do?page=${page}";
	</script>	
	
<%	
	}else{
%>
	<script>
		alert("수정 실패");
		history.back();
	</script>

<%
	}
%>