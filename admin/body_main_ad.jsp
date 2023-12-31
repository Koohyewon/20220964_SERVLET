<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>
<%@ page import="java.sql.*"%>
<%@ include file="../db/db_conn.jsp"%>

<%-- CLASS는 스타일 적용시에 사용 되는 이름, 중첩 가능 --%>
<%! String greeting = "LIVE YOUNG에 오신것을 환영합니다.";
String tagline = "하단 페이지 : 확인";%>
<div class="container">
    <div class="jumbotron">
        <div class="container">
            <h3 class="display-4">
                <%=greeting%>
            </h3>
        </div>
    </div>
    
    <%
    ProductRepository dao = ProductRepository.getInstance();
    ArrayList<Product> listOfProducts = dao.getAllProducts();
    %>
    <div class="container">
        <div class="row" align="center">
            <%
            String sql = "select * from product"; // 조회
            pstmt = conn.prepareStatement(sql); // 연결 생성
            rs = pstmt.executeQuery(); // 쿼리 실행
            while (rs.next()) { // 결과 ResultSet 객체 반복
                %>
            <div class="col-md-4">
                <div class="card bg-dark text-white">
                    <img src="../image/product/<%=rs.getString("p_fileName")%>" class="card-img" alt="...">
                    <div class="card-img-overlay">
                        <h5 class="card-title">LIVE YOUNG</h5>
                        <p class="card-text"></p>
                    </div>
                </div>
                <h3><%=rs.getString("p_name")%></h3>
                <p><%=rs.getString("p_description")%>
                <p><%=rs.getString("p_unitPrice")%>원
                <p><a href="product_detail_ad.jsp?id=<%=rs.getString("p_id")%>" class="btn btn-secondary" role="button"> 상세 정보 &raquo;></a>
            </div>
            <%
            } // 반복문 끝난 이후 db 연결 종료	
            if (rs != null)
                rs.close();
            if (pstmt != null)
                pstmt.close();
            if (conn != null)
                conn.close();
            %>
        </div>
        <hr>
    </div>
    
    <div class="card bg-dark text-white">
        <img src="image/Brandweek.png" class="card-img" alt="...">
        <div class="card-img-overlay">
            <h5 class="card-title">LIVE YOUNG 브랜드위크</h5>
            <p class="card-text">출처 : 올리브영</p>
        </div>
    </div>
    
    <div class="list-group">
        <a href="#" class="list-group-item list-group-item-action active" aria-current="true">
            세일 품목 보러가기
        </a>
        <a href="#" class="list-group-item list-group-item-action">기초화장품 시리즈</a>
        <a href="#" class="list-group-item list-group-item-action">베이스 메이크업 시리즈</a>
        <a href="#" class="list-group-item list-group-item-action">색조 메이크업 시리즈</a>
        <a href="#" class="list-group-item list-group-item-action">삶의 질 향상 Item</a>
    </div>
    <div class="container">
        <div class="text-center">
            <h3>

            </h3>
        </div>
        <hr>
    </div>
</div>