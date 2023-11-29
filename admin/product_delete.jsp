<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.sql.*"%>
<html>
    <head>
        <!-- 필요한 라이브러리 및 스타일 시트, 스크립트 링크 -->
        <title>상품 삭제</title>
    </head>
    <body>
        <jsp:include page="top_menu_ad.jsp" />
        <div class="jumbotron">
            <div class="container">
                <h1 class="display-3">상품 삭제</h1>
            </div>
        </div>
        <div class="container">
            <%@ include file="../db/db_conn.jsp"%>

            <%
            // id를 받아옴
            String productId = request.getParameter("id");

            // 상품 조회 쿼리
            String selectQuery = "select * from product where p_id = ?";
            pstmt = conn.prepareStatement(selectQuery);
            pstmt.setString(1, productId);
            rs = pstmt.executeQuery();

            // 상품이 존재하는 경우
            if (rs.next()) {
                // 상품 삭제 쿼리
                String deleteQuery = "delete from product where p_id = ?";
                pstmt = conn.prepareStatement(deleteQuery);
                pstmt.setString(1, productId);
                pstmt.executeUpdate();
            }
            // 연결 및 객체 해제
            if (rs != null) rs.close();
            if (pstmt != null) pstmt.close();
            if (conn != null) conn.close();
            %>

            <!-- 삭제 후 상품 목록으로 돌아가기 -->
            <script type="text/javascript">
                alert("상품이 삭제되었습니다.");
                location.href = "product_edit.jsp?edit=delete";
            </script>
        </div>
        <jsp:include page="footer_ad.jsp" />
    </body>
</html>
