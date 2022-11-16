<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String money = request.getParameter("money");
	String choice = request.getParameter("choice");
	int money2 = Integer.parseInt(money);
	int cho = Integer.parseInt(choice);
	if(cho == 1){
		money2 = money2 - 1000;
	}else if(cho == 2){
		money2 = money2 + 2000;
	}
	
%>
<%-- 받은 데이터는 <%= id %>     --%>
<%= money2 %>
