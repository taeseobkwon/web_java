<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String money = request.getParameter("money");
	String choice = request.getParameter("choice");
	if(choice.equals(1)) {
		String ch = "계좌이체";
	} else if(choice.equals(2)) {
		String ch = "신용카드";
	} else if(choice.equals(3)) {
		String ch = "휴대폰결제";
	} else {
		String ch = "???";
	}
	String result = "결제금액은 " + money + "원, 결제방법은 " + choice;

%>
<%-- 받은 데이터는 <%= id %>     --%>
<%= result %>
