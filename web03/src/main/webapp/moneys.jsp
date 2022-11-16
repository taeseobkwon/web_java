<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String money = request.getParameter("money");
	String choice = request.getParameter("choice");
	String choi = choice.substring(0,1);
	int money2 = Integer.parseInt(money);
	int cho = Integer.parseInt(choi);
	if(cho == 1){
		money2 = money2 - 1000;
	}else if(cho == 2){
		money2 = money2 + 2000;
	}
	
%>
<%-- 받은 데이터는 <%= id %>     --%>
<%= money2 + "원입니다."%>
