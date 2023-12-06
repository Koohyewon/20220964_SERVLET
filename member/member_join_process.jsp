<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.Enumeration" %>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.sql.*"%>
<%@ include file="../db/db_conn.jsp" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>


<%
	request.setCharacterEncoding("UTF-8");
	
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	
	String year = request.getParameter("birthyy");
	String month = request.getParameter("birthmm");
	String day = request.getParameter("birthdd");
	String birth = year +"/"+ month +"/"+ day;			/* 생년월일을 3개로 나눠서 받고 다시 문자열로 합침 */
	
	String mail1 = request.getParameter("mail1");
	String mail2 = request.getParameter("mail2");
	String mail = mail1 +"@"+ mail2;					/* 메일도 2개로 나눠서 받고 다시 문자열로 합침 */
	
	String phone = request.getParameter("phone");
	String address = request.getParameter("address");
	
	SimpleDateFormat sDFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	String registDay = sDFormat.format(new Date()); 	/* 가입버튼 누를때 그 시점으로 저장함 */



String sql = "insert into member values(?,?,?,?,?,?,?,?,?)";
    pstmt = conn.prepareStatement(sql); // 쿼리문 몸체만 넣기
	pstmt.setString(1, id); // 각 필드 설정 - ? 순서대로
	pstmt.setString(2, password);
	pstmt.setString(3, name);
	pstmt.setString(4, gender);
	pstmt.setString(5, birth);
    pstmt.setString(6, mail);
	pstmt.setString(7, phone);
	pstmt.setString(8, address);
	pstmt.setString(9, registDay);
	pstmt.executeUpdate(); // 최종 SQL 쿼리 실행	
	if (pstmt != null)
 		pstmt.close();
 	if (conn != null)
		conn.close();


	response.sendRedirect("../index.jsp");
%>
