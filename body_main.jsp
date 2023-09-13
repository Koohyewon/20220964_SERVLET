<%@ page contentType = "text/html;charset=utf-8" %>

<%-- CLASS는 스타일 적용시에 사용 되는 이름, 중첩 가능 --%>
<%! String greeting = "LIVE YOUNG에 오신것을 환영합니다.";
    String tagline = "하단 페이지 : 확인";%>
<div class="jumbotron">
    <div class="container">
        <h1 class="display-4">
            <%=greeting%>
        </h1>
    </div>
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
            <%=tagline%>
        </h3>
    </div>
    <hr>
</div>