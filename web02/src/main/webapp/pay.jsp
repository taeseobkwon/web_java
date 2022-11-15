<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    //location.href = "pay.jsp?money=" + rsp.paid_amount
	String money = request.getParameter("money");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
결제금액은 : <%= money  %>원 <br>
</body>
</html>