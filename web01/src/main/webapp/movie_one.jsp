<%@page import="db_connect.movieVO"%>
<%@page import="db_connect.movieDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String no = request.getParameter("no");
    
    movieDAO dao = new movieDAO();
    movieVO bag = dao.one(Integer.parseInt(no));
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3><%= bag.getTITLE() %>에 대한 정보입니다.</h3>
<table border="1">
<<tr>
		<td>항목명</td>
		<td>데이터</td>
	</tr>
	<tr>
		<td>번호</td>
		<td>
			<%= bag.getNo() %>
		</td>
	</tr>
	<tr>
		<td>제목</td>
		<td>
			<%= bag.getTITLE() %>
		</td>
	</tr>
	<tr>
		<td>이미지</td>
		<td>
			<%= bag.getIMG() %>
		</td>
	</tr>
</table>
</body>
</html>