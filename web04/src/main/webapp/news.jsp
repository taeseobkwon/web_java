<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
<h3>뉴스화면</h3>
<hr color="red">
<%
	if(session.getAttribute("id") != null){
%>
	로그인한 사람: <%= session.getAttribute("id") %> <hr color="blue">
	<div id="d1"></div>
	<hr color="green">
	<form action="amu.jsp">
	댓글 작성<br>
	<input style="width:500px; height:50px;" placeholder="댓글 규정을 준수해주세요.">
	<button id="b1">댓글작성</button>
	
	</form>
<%	
	}else{
%>
	<script type="text/javascript">
	alert('로그인화면으로 넘어갑니다.')
	location.href = "login.html"
	</script>
<%
	}
%>
</body>
</html>
</body>
</html>