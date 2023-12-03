<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.Enumeration" %>
<%@ page import="java.sql.*"%>
<%@ include file="../db/db_conn.jsp" %>


<%
	request.setCharacterEncoding("UTF-8");
    String encType = "utf-8"; //인코딩 타입

    String login_id = request.getParameter("login_id");
	String password= request.getParameter("password");
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	String birth = request.getParameter("birth");
	String mail = request.getParameter("mail");
	String phone = request.getParameter("phone");
	String address = request.getParameter("address");


	String user = "insert into member values(?,?,?,?,?,?,?,?)";
	pstmt = conn.prepareStatement(user); // 쿼리문 몸체만 넣기
	pstmt.setString(1, login_id); // 각 필드 설정 - ? 순서대로
	pstmt.setString(2, password);
	pstmt.setString(3, name);
	pstmt.setString(4, gender); 
	pstmt.setString(5, birth);
    pstmt.setString(6, mail);
	pstmt.setString(7, phone);
	pstmt.setString(8, address);

	pstmt.executeUpdate(); // 최종 SQL 쿼리 실행	

	if (pstmt != null)
 		pstmt.close();
 	if (conn != null)
		conn.close();


	response.sendRedirect("index.jsp");
%>
