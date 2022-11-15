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
			<th>이미지를 클릭하면 사이트로 연결됩니다.</th>
		</tr>
		<%
		for (int i = 0; i < list.size(); i++) {
		%>
		<tr class="table">
			<td><%=list.get(i).getNo()%></td>
			<td><a
				href="https://search.naver.com/search.naver?where=nexearch&sm=top_hty&fbm=1&ie=utf8&query=<%=list.get(i).getTITLE()%>">
					<%=list.get(i).getTITLE()%>
			</a></td>
			<td><a 
				href="<%=list.get(i).getURL() %>">
			<img alt="<%= list.get(i).getIMG()%>" src="img/<%= list.get(i).getIMG()%>" width="200" height="100">
			</a></td>
		</tr>

		<%
		} //for
		%>
	</table>
</body>
</html>









