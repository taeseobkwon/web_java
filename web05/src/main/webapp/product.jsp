<%@page import="bean.ProductDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.ProductDAO"%>
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
<%= session.getAttribute("id") %>님 제품 정보입니다.

 <a href="logout.jsp">
			<button class="btn btn-outline-danger">로그아웃</button>
		</a>
		<%} %>
		<hr color="blue">
		<!-- 1) dao이용해서 상품목록을 다 가지고 오기 -->
		<%
			ProductDAO dao = new ProductDAO();
			ArrayList<ProductDTO> list = dao.list();
		%>
		<!-- 2) 가지고 온 데이터를 테이블로 만들어 보여주기 -->
		<table border="1" class="table table-dark table-hover">
			<tr>
				<td>상품명</td>			
				<td>상품가격</td>			
				<td>상품이미지</td>			
			</tr>
			<% for(ProductDTO dto:list){ %>
			<!-- ArrayList에 dto가 10개 들어있으면, tr이 10개 만들어짐 -->
			<!-- tr은 테이블의 table row(행, 가로줄) -->
			<tr>
				<td>
				<a href=product2.jsp?id=<%= dto.getId() %>><%= dto.getTitle() %></a>
				</td>			
				<td><%= dto.getPrice() %></td>			
				<td>
					<img alt="이미지오류" src="img/<%= dto.getImg() %>" width="150" height="150">
				</td>			
			</tr>
			<% } %>
		</table>
</div>
</div>




</body>
</html>