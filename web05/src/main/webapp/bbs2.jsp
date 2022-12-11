<%@page import="bean.BbsDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.BbsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <!-- 가방을 만들어서 -->
<jsp:useBean id="dto" class="bean.BbsDTO"></jsp:useBean>

<!-- 넘어온값 가방에 넣고 -->
<jsp:setProperty property="id" name="dto" />
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

<a href="logout.jsp">
			<button class="btn btn-outline-danger">로그아웃</button>
		</a>
		<%} %>
		<hr color="blue">
		<%
			BbsDAO dao = new BbsDAO();
			BbsDTO dto2 = dao.one(dto);
		%>
		

<table border="1" class="table">
 <tr class="table-dark">
<td>제목</td>
<td colspan="3">
<%=dto2.getTitle()%>
</td>
</tr>
<tr class="table-active">
<td>작성자</td>
<td>
<%=dto2.getWriter() %>
</td>
<td>글번호</td>
<td>
<%=dto2.getId() %>
</td>
</tr>
 <tr class="table-dark">
<td>내용</td>
<td>
<a href="bbs.jsp">
<button class="btn btn-primary">글목록</button>
</a>
</td>
<% 
//if(로그인id랑 작성id랑 동일)
if(session.getAttribute("id") != null){
if(session.getAttribute("id").equals(dto2.getWriter())) {
%>
<td>
<a href="update.jsp?id=<%= dto2.getId() %>">
<button class="btn btn-success">수정</button>
</a>
</td>
<td>
<a href="delete.jsp?id=<%= dto2.getId() %>">
<button class="btn btn-danger">삭제</button>
</a>
</td>
<%} else { %>
<td>
<button class="btn btn-secondary">수정불가</button>
</td>
<td>
<button class="btn btn-secondary">삭제불가</button>
</td>
<%}} else {%>
<td>
<button class="btn btn-secondary">수정불가</button>
</td>
<td>
<button class="btn btn-secondary">삭제불가</button>
</td>
<%} %>

</tr>
<tr class="table-light">
<td colspan="4" height="300">
<%=dto2.getContent() %>
</td>
</tr>

</table>
</div>
</div>



</body>
</html>