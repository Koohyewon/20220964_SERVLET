<%@ page contentType = "text/html;charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<%
	request.setCharacterEncoding("UTF-8");
	String sessionId = (String)session.getAttribute("sessionId");	//로그인 여부 판단
%>

<!--<nav class="navbar navbar-expand  navbar-dark bg-dark">-->
<nav class="navbar navbar-expand  navbar-dark" style="background-color: #3CB371;">
    
    <div>
        <img src="image\Liveyoung_banner.gif" class="img-fluid" alt="main_image">
    </div>
    
    <div class="container">
        <div class="navbar-header" >
            <c:choose>						
                <c:when test="${empty sessionId }"> 
                    <a class="navbar-brand" href="/index.jsp">상품목록(기본 홈)</a>
                    <a class="navbar-brand" href="/member/login_user.jsp">로그인</a>
                    <a class="navbar-brand" href="/BoardListAction.do?pageNum=1">게시판(고객센터)</a>
                    <a class="navbar-brand" href="./admin/index_ad.jsp">관리자모드</a>
                </c:when>
                <c:otherwise> 
                    <a style="padding-top:7px; color:black; font-size:20px; font-weight:900;"><%=sessionId %> 님 &nbsp;&nbsp; </a>
                    <a class="navbar-brand" href="/member/logoutMember.jsp">로그아웃</a>
                    <a class="navbar-brand" href="/index.jsp">상품목록(기본 홈)</a>
                    <a class="navbar-brand" href="/BoardListAction.do?pageNum=1">게시판(고객센터)</a>
                    <a class="navbar-brand" href="./admin/index_ad.jsp">관리자모드</a>
                </c:otherwise>
            </c:choose>           
        </div>
    </div>
</nav>