<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
Cookie[] cookies = request.getCookies();
for (Cookie c : cookies) {
	//out: 브라우저에 텍스트로 프린트하고자 하는 경우
	//out.print(c.getName() + ", " + c.getValue() + "<br>");
	//쿠키의 이름이 age인 값만 프린트
	
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	쿠키의 개수:
	<%=cookies.length%>
	<br>
	<% String ban = "JSESSIONID";
	for (Cookie c : cookies) {
		if(!c.getName().equals(ban)){
			c.getName();
			c.getValue();
		}
		
		
	%>
	<%-- 쿠키이름
	<%=c.getName()%>. 쿠키값
	<%=c.getValue()%>
	<br> --%>
	<%
	}
	%>
</body>
</html>