<%@ page contentType = "text/html;charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	<!-- jstl를 사용하기위해서 taglib지시자 사용 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ include file="../db/db_conn.jsp" %>

<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String password = request.getParameter("password");

    try {
        String sql = "select * from member where id = ? and password = ?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, id);
        pstmt.setString(2, password);
        rs = pstmt.executeQuery();

        if (rs.next()) {
            // 로그인 성공
            session.setAttribute("sessionId", id);
            rs.close();
            pstmt.close();
            conn.close();
            response.sendRedirect("../index.jsp");
        } else {
            // 로그인 실패
            rs.close();
            pstmt.close();
            conn.close();
            response.sendRedirect("../login/login_failed.jsp"); // 로그인 실패 페이지로 리다이렉션 또는 다른 처리
        }
    } catch (Exception e) {
        e.printStackTrace();
        // 예외 발생 시 처리
        response.sendRedirect("../exception/main_server_downtime.jsp");
    }
%>
