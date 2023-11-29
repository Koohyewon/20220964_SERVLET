<%@ page contentType = "text/html;charset=utf-8" %>
<%	
%><%@ page contentType = "text/html;charset=utf-8" %>


<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script type ="text/javascript" src ="../js/validation.js"></script>
        <title>회원가입</title>
    </head>
    <body>
        <jsp:include page="../top_menu.jsp" />	
        <div class="jumbotron">
            <div class="container">
                <h1 class="display-3">회원가입</h1>
            </div>
        </div>
        <div class="container">
            <form name="newProduct" action="product_add_process.jsp" class="form-horizontal" method="post" enctype ="multipart/form-data">
                <div class="form-group row">
                    <label class="col-sm-2">아이디</label>
                    <div class="col-sm-3">
                        <input type="text" id ="productId" name="productId" class="form-control" >
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2">패스워드</label>
                    <div class="col-sm-3">
                        <input type="text" id ="name" name="name" class="form-control" >
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2">패스워드 재입력</label>
                    <div class="col-sm-3">
                        <input type="text" id ="unitPrice" name="unitPrice" class="form-control" >
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2">이름</label>
                    <div class="col-sm-3">
                        <input type="text" class="form-control" >
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2">성별</label>
                    <div class="col-sm-3">
                        <input type="text" name="manufacturer" class="form-control">
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2">메일주소</label>
                    <div class="col-sm-3">
                        <input type="text" name="category" class="form-control" >
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2">폰번호</label>
                    <div class="col-sm-3">
                        <input type="text" id ="unitsInStock" name="unitsInStock" class="form-control" >
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2">주소</label>
                    <div class="col-sm-3">
                        <input type="text" class="form-control" >
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-sm-offset-2 col-sm-10 ">
                        <input type ="button" class="btn btn-primary" value="가입" onclick ="CheckAddProduct()">
                        <a href="../login/logout.jsp" class="btn btn-sm btn-success pull-right">로그인(이전 페이지로)</a>
                    </div>
                </div>
            </form>
        </div>
    </body>
</html>