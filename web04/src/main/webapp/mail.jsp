<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>메일화면</h3>
<hr color="red">
<!-- 세션은 특정한 브라우저와 서버와의 연결을 의미 -->
<!-- mail.jsp를 클릭했을 떄, 로그인이 안되어있으면, 로그인페이지로 자동으로 넘어가게 하고 -->
<!-- 로그인이 되어있으면, 로그인한 사람이 누구인지 프린트 -->
<%
	if(session.getAttribute("id") != null){
%>
	로그인한 사람: <%= session.getAttribute("id") %>	
<%
}else{	
	response.sendRedirect("login.html"); //페이지자동호출
	//브라우저에 login.html호출요청
}
%>
</body>
</html>