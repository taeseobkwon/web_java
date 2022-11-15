<%@page import="db_coonect.BbsDAO"%>
<%@page import="db_coonect.BbsVO"%>
<%@page import="db_coonect.MemberVO"%>
<%@page import="db_coonect.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 1. 데이터를 받아서, 2. sql문을 만들어서, 3. 결과를 html로 만들어야 하는 페이지 -->
<!-- java코드 처리부분 + html로 만들어진 부분(jsp) -->
<!-- 1.데이터를 받자 -->
<%
	// 자바코드를 일부 넣는 부분, 작은 프로그램의 일부분(let,릿)
	// 자바코드를 그냥 스크립트 쓰듯이 쓰면 됨
	// 스크립트릿(scriptlet)
	// HttpRequestWervlet request = new XMLRequestServlet(); 내장된 객체
	// 미리 request라는 이름의 객체를 만들어서 제공함
	String nol = request.getParameter("no"); //<input name="id">, 외부에서 입력한 데이터 타입(String)
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	String writer = request.getParameter("writer");
	
	
	// 2.sql문을 만들어서, db서버에 전송(jdbc프로그래밍)
	BbsVO bag = new BbsVO();
	
	int no = Integer.parseInt(nol);
	bag.setNo(no);
	bag.setTitle(title);
	bag.setContent(content);
	bag.setWriter(writer);
	
	// 3. 결과를 클라이언트에 html로 알려줌
	BbsDAO dao = new BbsDAO();
	dao.insert(bag);
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
	background: orange;
}
</style>
</head>
<body>
<%=writer%>님이 작성한 게시판 내용입니다. <hr>
회원가입정보 <hr>
아이디>> <%= nol %>번 <br> <!-- 램에 있는 값(변수) 브라우저에 표현하기. 표현식 -->
제목>> <%= title %> <br>
내용>> <%= content %> <br>
작성자>> <%= writer %> <br>
<hr>
<a href="bbs.html">앞페이지로 가기</a>
</body>
</html>