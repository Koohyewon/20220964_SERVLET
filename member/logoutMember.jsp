<%@ page contentType = "text/html;charset=utf-8" %>

<%
	session.invalidate(); //세션 삭제하면 로그아웃 됨.
	response.sendRedirect("../index.jsp");
%>