<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String usd = request.getParameter("usd");
	double usd2 = Double.parseDouble(usd);
	usd2 = usd2 * 1324.8;
	
%>
<%-- 받은 데이터는 <%= id %>     --%>
<%= usd2 %>
