<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	String id = request.getParameter("id");
    	String pwd = request.getParameter("pwd");
    	String name = request.getParameter("name");
    	String year = request.getParameter("year");
    	String month = request.getParameter("month");
    	String day = request.getParameter("day");
    	String gender = request.getParameter("gender");
    	String checkemail = request.getParameter("checkemail");
    	String nation = request.getParameter("nation");
    	String phone = request.getParameter("phone");
    	String intro = request.getParameter("intro");
    	String[] hobby = request.getParameterValues("hobby");
    	String result = "";
    	for(String s: hobby){
    		result = result + s + " ";
    		// result += s + " ";
    	}
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>			<!-- out.print("id") -->
서버에서 받은 id >> <%= id %> <br>
서버에서 받은 pwd >> <%= pwd %> <br>
서버에서 받은 name >> <%= name %> <br>
서버에서 받은 year >> <%= year %> <br>
서버에서 받은 month >> <%= month %> <br>
서버에서 받은 day >> <%= day %> <br>
서버에서 받은 gender >> <%= gender %> <br>
서버에서 받은 checkemail >> <%= checkemail %> <br>
서버에서 받은 nation >> <%= nation %> <br>
서버에서 받은 phone >> <%= phone %> <br>
서버에서 받은 hobby >> <%= result %> <br>
서버에서 받은 intro >> <%= intro %> <br>
</body>
</html>