<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page import="example.*" %>

<footer class="container">
    <p> <br> &copy; 쇼핑몰 대표 : 구혜원, 고유번호 : 20220964, 연락처 : khw6746@naver.com <br> 
        <%
        ShopTime time = new ShopTime();
        %>    
        오늘 날짜와 시간 : <%=time.timenow() %>
    </p>
</footer>
