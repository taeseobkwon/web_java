<%@page import="bean.BbsDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.BbsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/project.css">
<!-- Latest compiled and minified CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">


</head>
<body>
<div id = "total">
<div id = "top">
	<jsp:include page="top.jsp"></jsp:include>
</div>
<div id = "top2">
	<jsp:include page="top2.jsp"></jsp:include>
</div>
<div id = "center"><% if(session.getAttribute("id") != null){%>
<%= session.getAttribute("id") %>님 게시판 정보입니다.
<a href="insert.jsp"> <button class="btn btn-outline-info">글쓰기</button> </a>
<a href="logout.jsp">
			<button class="btn btn-outline-danger">로그아웃</button>
		</a>
		<%} %>
		<hr color="blue">
		<%
			BbsDAO dao = new BbsDAO();
			ArrayList<BbsDTO> list = dao.list();
		%>
<table border="1" class="table table-dark table-hover">
<tr>
<td>글번호</td>
<td>제목</td>
<td>작성자</td>
</tr>
<% for(BbsDTO dto:list){ %>
<tr>
<td><%= dto.getId() %></td>
<td>
<a href=bbs2.jsp?id=<%= dto.getId() %>><%= dto.getTitle() %></a>

</td>
<td><%= dto.getWriter() %></td>
</tr>
<%} %>
</table>
</div>
</div>



</body>
</html>