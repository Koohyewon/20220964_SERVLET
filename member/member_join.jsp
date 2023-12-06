<%@ page contentType = "text/html;charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script type ="text/javascript" src ="../js/member_join.js"></script>
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
            <form action="member_join_process.jsp" name="newMember" class="form-horizontal" method="post" onsubmit="return checkForm()">
                <div class="form-group row">
                    <label class="col-sm-2">아이디</label>
                    <div class="col-sm-3">
                        <input type="text" id ="id" name="id" class="form-control" >
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2">패스워드</label>
                    <div class="col-sm-3">
                        <input type="password" id ="password" name="password" class="form-control" >
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2">이름</label>
                    <div class="col-sm-3">
                        <input type="text" id ="name" name="name" class="form-control" >
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2">성별</label>
                    <div class="col-sm-10">
					    <input name="gender" type="radio" value="남"/>남
					    <input name="gender" type="radio" value="여"/>여
				    </div>
                </div>
                <div class="form-group row">
				<label class="col-sm-2">생일</label>
				<div class="col-sm-4">
					<input name="birthyy" type="text" maxlength="4" placeholder="년도(4자리)" size="6">
					<select name="birthmm">
						<option value="">월</option>
						<option value="01">1</option>
						<option value="02">2</option>
						<option value="03">3</option>
						<option value="04">4</option>
						<option value="05">5</option>
						<option value="06">6</option>
						<option value="07">7</option>
						<option value="08">8</option>
						<option value="09">9</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
					</select>
					<input type="text" name="birthdd" maxlength="2" placeholder="일" size="4">				
				</div>
			</div>
                <div class="form-group row">
				<label class="col-sm-2">이메일</label>
				<div class="col-sm-10">
					<input name="mail1" type="text" maxlength="50">@
					<select name="mail2">
						<option>ggmail.com</option>
						<option>nnate.com</option>
						<option>kkakao.com</option>
						<option>nnaver.com</option>
					</select>
				</div>
			</div>
                <div class="form-group row">
                    <label class="col-sm-2">폰번호</label>
                    <div class="col-sm-3">
                        <input type="text" id ="phone" name="phone" class="form-control" >
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2">주소</label>
                    <div class="col-sm-3">
                        <input type="text" id ="address" name="address" class="form-control" >
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-sm-offset-2 col-sm-10 ">
                        <input type ="submit" class="btn btn-primary" value="가입">
                        <a href="login_user.jsp" class="btn btn-sm btn-success pull-right">로그인(이전 페이지로)</a>
                    </div>
                </div>
            </form>
        </div>
        <script type="text/javascript">
		function checkForm() {
			if(!document.newMember.id.value) {
				alert("아이디를 입력하세요!");
				return false;
			}
			if(!document.newMember.password.value) {
				alert("비밀번호를 입력하세요!");
				return false;
			}
			if(!document.newMember.name.value) {
				alert("이름을 입력하세요!");
				return false;
			}
		}
	</script>
    </body>
</html>