<%@ page contentType = "text/html;charset=utf-8" %>

<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
        
        <script>
            function DaumPostcode() {
                new daum.Postcode({
                    oncomplete: function(data) {
                        var addr = '';

                        if (data.userSelectedType === 'R') {
                            addr = data.roadAddress;
                        } else {
                            addr = data.jibunAddress;
                        }
                        document.getElementById('zipCode').value = data.zonecode;
                        document.getElementById("address").value = addr;
                    }
                }).open();
            }
        </script>
        
        <title>배송 정보</title>
    </head>
    <body>
        <jsp:include page="../top_menu.jsp" />
        <div class="jumbotron">
            <div class="container">
                <h1 class="display-3">배송 정보</h1>
            </div>
        </div>
        <div class="container">
            <form action="order_info_process.jsp" class="form-horizontal" method="post">
                <input type="hidden" name="cartId" value="<%=request.getParameter("cartId")%>" />
                <div class="form-group row">
                    <label class="col-sm-2">성명</label>
                    <div class="col-sm-3">
                        <input name="name" type="text" class="form-control" />
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2">배송일</label>
                    <div class="col-sm-3">
                        <%
                        java.time.LocalDate minDate = java.time.LocalDate.now().plusDays(1); // 오늘 날짜로부터 +1일
                        %>
                        <input name="shippingDate" type="date"  class="form-control" min="<%= minDate %>"/>(yyyy/mm/dd)
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2">국가명</label>
                    <div class="col-sm-3">
                        <select name="country">
                            <option value="" selected disabled hidden>선택하세요</option>
                            <option value=" 한국">한국</option>
                            <option value=" 중국">중국</option>
                            <option value=" 미국">미국</option>
                            <option value=" 일본">일본</option>
                        </select>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2">우편번호</label>
                    <div class="col-sm-3">
                        <input name="zipCode" type="text" class="form-control" id="zipCode" placeholder="우편번호" readonly>
                        <input type="button" onclick="DaumPostcode()" value="우편번호 찾기"><br>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2">주소</label>
                    <div class="col-sm-5">
                        <input name="addressName" type="text" class="form-control" id="address" placeholder="주소" readonly/>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-sm-offset-2 col-sm-10 ">
                        <a href="../cart/product_cart.jsp?cartId=<%=request.getParameter("cartId")%>" class="btn btn-secondary" role="button"> 이전 </a> 
                        <input type="submit" class="btn btn-primary" value="등록" />
                        <a href="order_cancelled.jsp" class="btn btn-secondary" role="button"> 취소 </a>
                    </div>
                </div>
            </form>
        </div>
    </body>
</html>
