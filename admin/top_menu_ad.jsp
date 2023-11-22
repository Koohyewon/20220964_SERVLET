<%@ page contentType = "text/html;charset=utf-8" %>

<!--<nav class="navbar navbar-expand  navbar-dark bg-dark">-->
<nav class="navbar navbar-expand  navbar-dark" style="background-color: #3CB371;">
    <div class="dropdown">
        <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            카테고리
        </button>
        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
            <a class="dropdown-item" href="#">기초화장품</a> 
            <a class="dropdown-item" href="#">메이크업, 네일</a>
            <a class="dropdown-item" href="#">바디케어</a>
            <a class="dropdown-item" href="#">헤어케어</a>
            <a class="dropdown-item" href="#">향수/디퓨저</a>
            <a class="dropdown-item" href="#">미용소품</a> 
            <a class="dropdown-item" href="#">건강식품</a> 
        </div>
    </div>
    
    <div>
        <img src="image\Liveyoung_banner.gif" class="img-fluid" alt="main_image">
    </div>
    
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="../index.jsp">메뉴바 : 홈페이지</a>
            <a class="navbar-brand" href="./index.jsp">회원 보기/추가/수정/삭제</a>
            <a class="navbar-brand" href="index_ad.jsp">상품 보기</a>
            <a class="navbar-brand" href="product_add.jsp">등록</a>
            <a class="navbar-brand" href="product_edit.jsp?edit=update">수정</a>
            <a class="navbar-brand" href="product_edit.jsp?edit=delete">삭제</a>            
            <a class="navbar-brand" href="../index.jsp">일반모드</a>
        </div>
    </div>
</nav>