<%@page import="bean.BbsDTO"%>
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
<link rel="stylesheet" type="text/css" href="css/project.css">
</head>

<%
BbsDAO dao = new BbsDAO();
BbsDTO dto = new BbsDTO();

dto.setId(request.getParameter("id"));

BbsDTO bag = dao.one(dto);
%>


<body>
	<div id="total">
		<div id="top">
			<jsp:include page="top.jsp"></jsp:include>
		</div>
		<div id="top2">
			<jsp:include page="top2.jsp"></jsp:include>
		</div>
		<div id="center">
			게시판 수정 화면
			<hr color="red">
			<%
				if (session.getAttribute("id") != null) {
			%>
			<%=session.getAttribute("id")%>님 환영합니다.
			<%
				}
			%>
			<hr color="blue">
			<form action="update2.jsp">
			<input type="hidden" name="id" value="<%= bag.getId() %>">
				<table border="1" bordercolor='red' class="table">
					 <tr class="table-primary">
						<td width="200">제목</td>
						<td width="300">
							<input name="title" value="<%= bag.getTitle() %>">
						</td>
					</tr>
					<tr class="table-light">
						<td width="200">내용</td>
						<td width="300">
							<input name="content" value="<%= bag.getContent() %>" style="height: 300px">
						</td>
					</tr>
					<tr class="table-primary">
						<td width="200">작성자</td>
						<td width="300">
							<input name="writer" value="<%= session.getAttribute("id") %>" disabled>
							<!-- type="hidden"이면 안보임 -->
						</td>
					</tr>
					<tr class="table-light">
						<td colspan="2">
							<button type="submit" class="btn btn-success">글수정 완료</button>
						</td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</body>
</html>