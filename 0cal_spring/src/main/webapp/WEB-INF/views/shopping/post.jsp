<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Document</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	function sample6_execDaumPostcode() {
		new daum.Postcode({
			oncomplete : function(data) {
				// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

				// 각 주소의 노출 규칙에 따라 주소를 조합한다.
				// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
				var addr = ''; // 주소 변수
				var extraAddr = ''; // 참고항목 변수

				//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
				if (data.userSelectedType === 'R') {
					// 사용자가 도로명 주소를 선택했을 경우
					addr = data.roadAddress;
				} else {
					// 사용자가 지번 주소를 선택했을 경우(J)
					addr = data.jibunAddress;
				}

				// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
				if (data.userSelectedType === 'R') {
					// 법정동명이 있을 경우 추가한다. (법정리는 제외)
					// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
					if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
						extraAddr += data.bname;
					}
					// 건물명이 있고, 공동주택일 경우 추가한다.
					if (data.buildingName !== '' && data.apartment === 'Y') {
						extraAddr += extraAddr !== '' ? ', ' + data.buildingName : data.buildingName;
					}
					// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
					if (extraAddr !== '') {
						extraAddr = ' (' + extraAddr + ')';
					}
					// 조합된 참고항목을 해당 필드에 넣는다.
					document.getElementById('sample6_extraAddress').value = extraAddr;
				} else {
					document.getElementById('sample6_extraAddress').value = '';
				}

				// 우편번호와 주소 정보를 해당 필드에 넣는다.
				document.getElementById('sample6_postcode').value = data.zonecode;
				document.getElementById('sample6_address').value = addr;
				// 커서를 상세주소 필드로 이동한다.
				document.getElementById('sample6_detailAddress').focus();
			},
		}).open();
	}

	function sendit() {
		// 입력된 값 가져오기
		var postcode = $('#sample6_postcode').val();
		var receiverName = $('#receiver_name').val();
		var address = $('#sample6_address').val();
		var extraAddress = $('#sample6_extraAddress').val();
		var detailAddress = $('#sample6_detailAddress').val();
		var phone = $('#del_phone').val();

		// 주소 합치기
		var delAddress = address + ' ' + extraAddress + ' ' + detailAddress;
		// AJAX로 서버에 데이터 전송
		var xhr = new XMLHttpRequest();
		xhr.open('POST', '/shopping/insertPost.do');
		xhr.setRequestHeader('Content-Type', 'application/json');
		xhr.onload = function() {
			if (xhr.status === 200 || xhr.status === 201) {
				var response = JSON.parse(xhr.responseText);
				if (response.result == 'success') {
					alert("주소지 저장완료");
				}
			} else {
				alert("오류 발생: " + xhr.status);
			}
		};

		// 데이터 전송
		var formData = new Object();
		formData.receiver_name = receiverName;
		formData.del_address = address + detailAddress;
		formData.del_phone = phone;
		formData.id = "${userAuth.id}";

		xhr.send(JSON.stringify(formData));
	}
</script>
<script src="./js/script.js"></script>

<!-- Google Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans:wght@300;400;700;900&display=swap"
	rel="stylesheet" />

<link rel="stylesheet" href="<c:url value="/resources/CSS/post.css"/>">
</head>

<body>
	<h2>주소변경</h2>
	<form name="regform">
		<p>
			<label>받는분 성함 : <input type="text" size="5"
				maxlength="5" name="receiver_name" id="receiver_name"
				placeholder="받는분 성함" />
			</label>
		</p>
		<p>
			<label>주소 : <input type="text" name="address1"
				readonly="readonly" id="sample6_address" placeholder="주소" />
				<input type="button" value="주소 검색"
				onclick="sample6_execDaumPostcode()" />
			</label>

		</p>
		<p>
			<label>우편번호 : <input type="text" size="5"
				maxlength="5" name="address1" readonly="readonly"
				id="sample6_postcode" placeholder="주소" />

			</label>
		</p>
		<p>
			<label>상세주소 : <input type="text" name="address2"
				id="sample6_detailAddress" placeholder="상세주소" /></label>
		</p>
		<p>
			<label>배송지명 : <input type="text" name="address3"
				id="sample6_extraAddress" placeholder="받는 분의 성함을 적어주세요." /></label>
		</p>
		<p>
			<label>핸드폰 번호 : <input type="text" name="address3"
				id="del_phone" placeholder="배송받는 분의 핸드폰 번호를 입력해주세요." /></label>
		</p>
		<p>
			<input type="button" value="주소 추가" onclick="sendit()" />
	</form>
</body>
</html>
