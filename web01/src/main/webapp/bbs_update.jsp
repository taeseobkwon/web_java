<%@page import="db_connect.MemberVO"%>
<%@page import="db_connect.BbsVO"%>
<%@page import="db_connect.BbsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 
    1. 데이터받아오기
    2. db처리
    3. 결과출력(html)
     -->
     <%
     	String no = request.getParameter("no");
     	String content = request.getParameter("content");
     
     	BbsVO bag = new BbsVO();
     	bag.setNo(Integer.parseInt(no));
     	bag.setContent(content);
     	
     	BbsDAO dao = new BbsDAO();
     	dao.update(bag);
     	
     
     %>
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>작성 결과입니다.</h3>
<hr>



<table class="table table-dark table-hover">
	<tr>
		<td>항목명</td>
		<td>데이터</td>
	</tr>
	<tr>
		<td>번호</td>
		<td><%= bag.getNo() %><br></td>
	</tr>
	<tr>
		<td>내용</td>
		<td><%= bag.getContent() %><br></td>
	</tr>
</table>
<a href="bbs_update.html">
<button>뒤로 가기</button>
</body>
</html>