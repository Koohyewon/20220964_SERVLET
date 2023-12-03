function Checkjoin() {

	var login_id = document.getElementById("login_id");
	var password = document.getElementById("password");
	var name = document.getElementById("name");
	var gender = document.getElementById("gender");
    var birth = document.getElementById("birth");
	var mail = document.getElementById("mail");
	var phone = document.getElementById("phone");
	var address = document.getElementById("address");

    console.log("Checkjoin 함수 호출 확인");

    if (!check(/^[0-9]{4,11}$/, login_id,
			"숫자를 조합하여 5~12자까지 입력하세요"))
		return false;

	if (password.value.length < 4 || password.value.length > 12) {
		alert("최소 4자에서 최대 12자까지 입력하세요");
		password.select();
		password.focus();
		return false;
	}

	if (name.value.length < 1) {
		alert("1자 이상 입력하세요");
		name.select();
		name.focus();
		return false;
	}
    
    if (gender.value.length < 0) {
		alert("1자 이상 입력하세요");
		gender.select();
		gender.focus();
		return false;
	}
    if (birth.value.length < 1) {
		alert("1자 이상 입력하세요");
		birth.select();
		birth.focus();
		return false;
	}
	if (mail.value.length < 1) {
		alert("1자 이상 입력하세요");
		mail.select();
		mail.focus();
		return false;
	}

	if (phone.value.length < 1) {
		alert("1자 이상 입력하세요");
		phone.select();
		phone.focus();
		return false;
	}
    if (address.value.length < 1) {
		alert("1자 이상 입력하세요");
		address.select();
		address.focus();
		return false;
	}

	function check(regExp, e, msg) {

		if (regExp.test(e.value)) {
			return true;
		}
		alert(msg);
		e.select();
		e.focus();
		return false;
	}

	 document.newMember.submit()
}
