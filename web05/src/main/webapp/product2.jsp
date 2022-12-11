<%@page import="bean.ProductDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 가방을 만들어서 -->
<jsp:useBean id="dto" class="bean.ProductDTO"></jsp:useBean>

<!-- 넘어온값 가방에 넣고 -->
<jsp:setProperty property="id" name="dto" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.min.js"></script>
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
		//전달된 id를 받아서 dto를 만들어서 넣기
			ProductDAO dao = new ProductDAO();
			ProductDTO dto2 = dao.one(dto);
		
		%>
					<script type="text/javascript">
				$(function() {
					$('#basket').click(function() {
						$.ajax({
							url: "basket.jsp",
							data : {
								id : '<%= dto2.getId() %>',
								price : '<%= dto2.getPrice() %>',
								title : '<%= dto2.getTitle() %>'
							},
							success: function() {
								alert(<%= dto2.getId() %> + "번 제품이 장바구니에 추가되었습니다.")
							}
						})
					})
				})
</script>
		<!-- 2) 가지고 온 데이터를 테이블로 만들어 보여주기 -->
		<table border="1" class="table table-dark table-hover">
			<tr >
				<td>상품이미지</td>			
				<td>상품코드</td>			
				<td><%=dto2.getId() %></td>			
			</tr>
			<tr>
				<td rowspan="4"><img src='img/<%=dto2.getImg()%>' width='300'
						height='300'></td>			
				<td>회사</td>			
				<td><%=dto2.getCompany() %></td>
			</tr>
			<tr>
				<td>상품이름</td>		
				<td><%=dto2.getTitle() %></td>		
			</tr>
			<tr>
				<td>상품가격</td>		
				<td><%=dto2.getPrice() %></td>		
			</tr>
			<tr>
				<td>상품정보</td>		
				<td><%=dto2.getContent() %></td>		
			</tr>
			
			<!-- dto2의 내용을 테이블모양으로 보여주기 -->
			<tr>
				<td>
				<button class="btn btn-primary" id="basket">장바구니</button>
				</td>
				<td colspan="2">
				<button class="btn btn-success">주문하기</button>
				</td>
			</tr>
		</table>
</div>
</div>




</body>
</html>