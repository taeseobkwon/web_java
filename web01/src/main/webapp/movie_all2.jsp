<%@page import="db_connect.movieVO"%>
<%@page import="db_connect.movieDAO"%>
<%@page import="java.util.Random"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 입력 -- 처리 -- 출력 -->
<%
movieDAO dao = new movieDAO();
ArrayList<movieVO> list = dao.list();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<style type="text/css">
th {
	background-color: lime;
	color: blue;
}
</style>
</head>
<body>
	<h3>
		영화 개수 :
		<%=list.size()%>개
	</h3>
	<table border="1" class="table table-hover">
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>이미지</th>
		</tr>
		<%
		for (int i = 0; i < list.size(); i++) {
		%>
		<tr class="table">
			<td><%=list.get(i).getNo()%></td>
			<td><a
				href="http://localhost:8989/web01/movie_one.jsp?no=<%=list.get(i).getNo()%>">
					<%=list.get(i).getTITLE()%>
			</a></td>
			<td><img alt="<%= list.get(i).getIMG()%>" src="img/<%= list.get(i).getIMG()%>" width="200" height="100">
		</tr>

		<%
		} //for
		%>
	</table>
</body>
</html>









