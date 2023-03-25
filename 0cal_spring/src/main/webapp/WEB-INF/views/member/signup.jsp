<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>

<link rel="stylesheet"
	href="<c:url value="/resources/CSS/signup.css" />">

<!-- Script -->
<script src="https://kit.fontawesome.com/43fd0ad460.js"
	crossorigin="anonymous"></script>
<script type="text/javascript"
	src="../resources/JavaScript/img-slider.js" defer></script>
<script type="text/javascript" src="../resources/JavaScript/menu.js"
	defer></script>
<script type="text/javascript"
	src="../resources/JavaScript/recommend-slider.js" defer></script>
<script type="text/javascript"
	src="../resources/JavaScript/advertisement.js" defer></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script>
	var idvalcheck = /^[a-z0-9]+$/;
	var ID_OK = false;

	// 아이디 유효성 검사
	function chkId() {

		var idval = $('#inputId').val();
		document.getElementById("dupCheckId").style.color = "#d78314";
		ID_DUP_YN = false;

		if (!idvalcheck.test(idval) || idval.length < 6) {
			document.getElementById("chkId").innerHTML = '아이디는 영소문자,숫자로 구성된 6글자 이상으로 조합해주세요.';
			document.getElementById("chkId").style.color = 'red';
			ID_OK = false;
		} else {
			document.getElementById("chkId").innerHTML = '';
			ID_OK = true;
		}

	}

	// 닉네임 이벤트
	function chkNick() {

		document.getElementById("dupCheckNick").style.color = "#d78314";
		NICK_DUP_YN = false;

	}

	//비밀번호 정규식
	var pwCheck = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,25}$/;
	var PW_OK = false;

	function chkPw() {

		if (pw.value != "" && !pwCheck.test(pw.value)) {
			document.getElementById("chkPw").innerHTML = "비밀번호는 영문자+숫자+특수문자 조합으로<br> 8~25자리로 사용해야합니다."
			document.getElementById("chkPw").style.color = 'red';
			PW_OK = false;
		} else {
			document.getElementById("chkPw").innerHTML = '';
			PW_OK = true;
		}

	}

	var PW_SAME = false;

	//비밀번호 입력값 일치여부 확인
	function isSame() {

		var pw = document.getElementById("pw").value;
		var confirmPw = document.getElementById("pwChk").value;

		if (pw != "" && confirmPw != "") {

			if (pw == confirmPw) {
				document.getElementById("same").innerHTML = '패스워드 일치';
				document.getElementById("same").style.color = 'blue';
				PW_SAME = true;
			} else {
				document.getElementById("same").innerHTML = '패스워드 불일치';
				document.getElementById("same").style.color = 'red';
				PW_SAME = false;
			}

		} else {
			document.getElementById("same").innerHTML = '';
		}

	}

	var NAME_OK = false;

	//이름 입력칸 공백시
	function chkName() {

		if ("" == document.getElementById("inputName").value) {
			document.getElementById("chkName").innerHTML = "이름을 입력해주세요.";
			document.getElementById("chkName").style.color = 'red';
			NAME_OK = false;
		} else {
			document.getElementById("chkName").innerHTML = '';
			NAME_OK = true;
		}

	}

	//이메일 정규식
	var mailCheck = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
	var MAIL_OK = false;

	function chkMail() {

		document.getElementById("dupCheckMail").style.color = "#d78314";
		MAIL_DUP_YN = false;

		if (inputMail.value != "" && !mailCheck.test(inputMail.value)) {
			document.getElementById("chkMail").innerHTML = '이메일 형식으로 입력해주세요.';
			document.getElementById("chkMail").style.color = 'red';
			MAIL_OK = false;
		} else {
			document.getElementById("chkMail").innerHTML = '';
			MAIL_OK = true;
		}

	}

	//휴대폰 정규식
	var phoneCheck = /^01([0])-?-([0-9]{4})-?-([0-9]{4})$/;
	var PHONE_OK = false;

	function chkPhone() {

		if (inputPhone.value != "" && !phoneCheck.test(inputPhone.value)) {
			document.getElementById("chkPhone").innerHTML = "올바른 번호가 아닙니다.";
			document.getElementById("chkPhone").style.color = 'red';
			PHONE_OK = false;
		} else {
			document.getElementById("chkPhone").innerHTML = '';
			PHONE_OK = true;
		}

	}

	/* 중복확인 시작 */

	var ID_DUP_YN = false; // 중복확인 완료여부 ID
	var NICK_DUP_YN = false; // 중복확인 완료여부 Nick
	var MAIL_DUP_YN = false; // 중복확인 완료여부 Email

	// 중복체크 버튼
	function dupCheck(key, value) {

		var id = "dupCheck" + key;
		var msg = ("Id" == key) ? "아이디" : ("Nick" == key) ? "닉네임" : "이메일";

		if ("" == value) {
			alert(msg + "를 입력해주세요.");
			return;
		}

		if ("Id" == key) {
			if (ID_DUP_YN)
				return;
		} else if ("Nick" == key) {
			if (NICK_DUP_YN)
				return;
		} else if ("Mail" == key) {
			if (MAIL_DUP_YN)
				return;
		}

		$.ajax({
			type : "post",
			url : "${pageContext.request.contextPath}/member/dupCheck.do",
			//                 contentType: "application/json",
			async : false,
			data : "key=" + key + "&value=" + value,
			//                 data : JSON.stringify({
			//                 	key : value
			//                 }),
			success : function(data) {
				if (0 == data) {
					alert("사용가능한 " + msg + "입니다.");
					document.getElementById(id).style.color = "darkgray";

					if ("Id" == key) {
						ID_DUP_YN = true;
					} else if ("Nick" == key) {
						NICK_DUP_YN = true;
					} else if ("Mail" == key) {
						MAIL_DUP_YN = true;
					}

				} else {
					alert("사용 불가능한 " + msg + "입니다.");
				}
			},
			error : function(request) {
				alert("error : " + request.responseText);
			}
		})

	}

	/* 중복확인 끝 */

	// 가입하기
	function submit() {

		/* 	var param = ""; */

		if (!ID_OK) {
			alert("아이디를 확인해주세요.");
			$('#inputId').focus();
			return;
		}

		if (!ID_DUP_YN) {
			alert("아이디 중복확인을 해주세요.");
			$('#inputId').focus();
			return;
		}

		if (!NICK_DUP_YN) {
			alert("닉네임 중복확인을 해주세요.");
			$('#inputNick').focus();
			return;
		}

		if (!(PW_OK && PW_SAME)) {
			alert("패스워드를 확인해주세요.");
			$('#pw').focus();
			return;
		}

		if ("" == $('#inputName')) {
			alert("이름을 입력해주세요.");
			$('#inputName').focus();
			return;
		}

		if (!MAIL_OK) {
			alert("이메일을 확인해주세요.");
			$('#inputMail').focus();
			return;
		}

		if (!MAIL_DUP_YN) {
			alert("이메일 중복확인을 해주세요.");
			$('#inputMail').focus();
			return;
		}

		if (!PHONE_OK) {
			alert("휴대폰을 확인해주세요.");
			$('#inputPhone').focus();
			return;
		}

		if ($('input:radio[name=gender]:checked').val() == undefined) {
			alert("성별을 확인해주세요.");
			return;
		}

		if (!confirm("회원가입 하시겠습니까?"))
			return;

		param = "id=" + $("#inputId").val() + "&nick_name=" + $("#inputNick").val() + "&user_pass=" + $("#pw").val() + "&user_name=" + $("#inputName").val() + "&email=" + $("#inputMail").val() + "&address=" + $("#postcode").val() + " " + $("#roadAddress").val() + " " + $("#jibunAddress").val() + " " + $("#detailAddress").val() + " " + $("#extraAddress").val() //통합주소
				+ "&postcode=" + $("#postcode").val() + "&roadAddress=" + $("#roadAddress").val() + "&jibunAddress=" + $("#jibunAddress").val() + "&detailAddress=" + $("#detailAddress").val() + "&extraAddress=" + $("#extraAddress").val() + "&phone=" + $("#inputPhone").val() + "&date_birthday=" + $("#inputYmd").val() + "&gender=" + $('input:radio[name=gender]:checked').val();

		$.ajax({
			type : "get",
			url : "${pageContext.request.contextPath}/member/insertMember.do",
			//                 contentType: "application/json",
			async : false,
			data : param,
			//                 data : JSON.stringify({
			//                 	key : value
			//                 }),
			success : function(data) {
				alert("회원가입이 완료되었습니다.");
				window.location.href = "${pageContext.request.contextPath}/index.do";
			},
			error : function(request) {
				alert("error : " + request.responseText);
			}
		})

	}

	//다음 주소 api
	function execDaumPostcode() {
		new daum.Postcode({
			oncomplete : function(data) {
				// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

				// 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
				// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
				var roadAddr = data.roadAddress; // 도로명 주소 변수
				var extraRoadAddr = ''; // 참고 항목 변수

				// 법정동명이 있을 경우 추가한다. (법정리는 제외)
				// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
				if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
					extraRoadAddr += data.bname;
				}
				// 건물명이 있고, 공동주택일 경우 추가한다.
				if (data.buildingName !== '' && data.apartment === 'Y') {
					extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
				}
				// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
				if (extraRoadAddr !== '') {
					extraRoadAddr = ' (' + extraRoadAddr + ')';
				}

				// 우편번호와 주소 정보를 해당 필드에 넣는다.
				document.getElementById('postcode').value = data.zonecode;
				document.getElementById("roadAddress").value = roadAddr;
				document.getElementById("jibunAddress").value = data.jibunAddress;

				// 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
				if (roadAddr !== '') {
					document.getElementById("extraAddress").value = extraRoadAddr;
				} else {
					document.getElementById("extraAddress").value = '';
				}

				var guideTextBox = document.getElementById("guide");
				// 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
				if (data.autoRoadAddress) {
					var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
					guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
					guideTextBox.style.display = 'block';

				} else if (data.autoJibunAddress) {
					var expJibunAddr = data.autoJibunAddress;
					guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
					guideTextBox.style.display = 'block';
				} else {
					guideTextBox.innerHTML = '';
					guideTextBox.style.display = 'none';
				}
			}
		}).open();
	}

	//       const forms = document.getElementsByClassName('validation-form');

	//       Array.prototype.filter.call(forms, (form) => {
	//         form.addEventListener('submit', function (event) {
	//           if (form.checkValidity() === false) {
	//             event.preventDefault();
	//             event.stopPropagation();
	//           }

	//           form.classList.add('was-validated');
	//         }, false);
	//       });
</script>
</head>
<body>

	<div class="wrapper">
		<div class="signup">회원가입</div>
		<div class="user">
			<hr class="hrline" />
			<div class="id">
				<div class="front" id="userid">
					아이디&nbsp<span class="star">*</span>
				</div>
				<input type="text" name="id" id="inputId" class="middle"
					placeholder="아이디를 입력해주세요." maxlength="25" onkeyup="chkId();"></input>
				<button class="doubleCheck" id="dupCheckId"
					onclick="dupCheck('Id',inputId.value);">중복확인</button>
			</div>
			<div class="chk">
				<div class="front"></div>
				<span id="chkId"></span>
			</div>

			<div class="nick">
				<div class="front" id="nickname">
					닉네임&nbsp<span class="star">*</span>
				</div>
				<input type="text" name="nick_name" id="inputNick" class="middle"
					maxlength="10" placeholder="닉네임을 입력해주세요." onkeyup="chkNick();"></input>
				<button class="doubleCheck" id="dupCheckNick"
					onclick="dupCheck('Nick',inputNick.value);">중복확인</button>
			</div>
			<div class="chk">
				<div class="front"></div>
				<span id="chkId"></span>
			</div>

			<div class="pw">
				<div class="front" id="userpw">
					비밀번호&nbsp<span class="star">*</span>
				</div>
				<input type="password" name="user_pass" id="pw" class="middle"
					onkeyup="chkPw();" placeholder="비밀번호를 입력해주세요."></input>
			</div>
			<div class="chk">
				<div class="front"></div>
				<span id="chkPw" style="font-size: x-small; padding-top: 1px"></span>
			</div>

			<div class="pwcheck">
				<div class="front" id="userpwcheck">
					비밀번호 확인&nbsp<span class="star">*</span>
				</div>
				<input type="password" id="pwChk" class="middle" onkeyup="isSame();"
					placeholder="비밀번호를 한번 더 입력해주세요."></input>
			</div>
			<div class="chk">
				<div class="front"></div>
				<span id="same"></span>
			</div>

			<div class="name">
				<div class="front" id="username">
					이름<span class="star">*</span>
				</div>
				<input type="text" name="user_name" id="inputName" class="middle"
					onkeyup="chkName()" placeholder="이름을 입력해주세요." maxlength="10"></input>
			</div>
			<div class="chk">
				<div class="front"></div>
				<span id="chkName"></span>
			</div>

			<div class="email">
				<div class="front" id="useremail">
					이메일&nbsp<span class="star">*</span>
				</div>
				<input type="text" name="email" id="inputMail" class="middle"
					placeholder="예: 0cal@delicious.com" onkeyup="chkMail();"></input>
				<button class="doubleCheck" id="dupCheckMail"
					onclick="dupCheck('Mail',inputMail.value);">중복확인</button>
			</div>
			<div class="chk">
				<div class="front"></div>
				<span id="chkMail"></span>
			</div>

			<div class="phone">
				<div class="front" id="userphone">
					휴대폰&nbsp<span class="star">*</span>
				</div>
				<input type="text" id="inputPhone" name="phone" class="middle"
					maxlength="13" placeholder="010&nbsp-&nbsp 0000 &nbsp-&nbsp 0000"
					onkeyup="chkPhone();"></input>
			</div>
			<div class="chk">
				<div class="front"></div>
				<span id="chkPhone"></span>
			</div>

			<div class="adress">
				<div class="front" id="useradress">
					주소&nbsp<span class="star">*</span>
				</div>
				<input type="text" id="postcode" name="postcode" placeholder="우편번호">
				<input type="button" onclick="execDaumPostcode()" value="우편번호 찾기"><br>
			</div>
			<div class="adress2">
				<div class="front"></div>
				<input type="text" class="left" id="roadAddress" name="roadAddress"
					placeholder="도로명주소"> <input type="text" class="right"
					id="jibunAddress" name="jibunAddress" placeholder="지번주소">
			</div>
			<div class="adress2">
				<div class="front"></div>
				<span id="guide" style="color: #999; display: none"></span> <input
					type="text" class="left" id="detailAddress" name="detailAddress"
					placeholder="상세주소"> <input type="text" class="right"
					id="extraAddress" name="extraAddress" placeholder="참고항목">
			</div>
			<div class="gender">
				<div class="front" id="usergender">
					성별&nbsp<span class="star">*</span>
				</div>
				<div
					style="padding-right: 20px; display: flex; align-items: center; color: black;">
					<input type="radio" name="gender" class="middle" value="F"
						id="check1"></input> <label for="check1" class='check1'>&nbsp여성</label>
				</div>
				<div style="display: flex; align-items: center; color: black;">
					<input type="radio" name="gender" class="middle" value="M"
						id="check2"></input> <label for="check2" class='check2'>&nbsp남성</label>
				</div>
			</div>

			<div class="birth">
				<div class="front" id="ymd">
					생년월일&nbsp<span class="star">*</span>
				</div>
				<p>
					<input type="date" id="inputYmd" name="date_of_birthday"
						class="middle">
				</p>
			</div>

			<hr class="bottom">
			<button type="submit" class="signupEnd" onclick="submit()">
				<b>가입하기</b>
			</button>

		</div>
	</div>
</body>
</html>