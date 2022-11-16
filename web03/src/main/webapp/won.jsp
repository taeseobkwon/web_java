<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String krw = request.getParameter("krw");
	double krw2 = Double.parseDouble(krw);
	krw2 = krw2 * 0.00075494488;
	
%>
<%-- 받은 데이터는 <%= id %>     --%>
<%= krw2 %>
