<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% session.setAttribute("name", "hong"); %>
    <% session.setAttribute("age", "100"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
브라우저에 세션을 심었음. <a href="세션보기.jsp">세션보러 가기</a>
</body>
</html>