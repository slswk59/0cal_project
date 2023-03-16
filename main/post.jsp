<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script>
      function sample6_execDaumPostcode() {
        new daum.Postcode({
          oncomplete: function (data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ""; // 주소 변수
            var extraAddr = ""; // 참고항목 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === "R") {
              // 사용자가 도로명 주소를 선택했을 경우
              addr = data.roadAddress;
            } else {
              // 사용자가 지번 주소를 선택했을 경우(J)
              addr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
            if (data.userSelectedType === "R") {
              // 법정동명이 있을 경우 추가한다. (법정리는 제외)
              // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
              if (data.bname !== "" && /[동|로|가]$/g.test(data.bname)) {
                extraAddr += data.bname;
              }
              // 건물명이 있고, 공동주택일 경우 추가한다.
              if (data.buildingName !== "" && data.apartment === "Y") {
                extraAddr +=
                  extraAddr !== ""
                    ? ", " + data.buildingName
                    : data.buildingName;
              }
              // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
              if (extraAddr !== "") {
                extraAddr = " (" + extraAddr + ")";
              }
              // 조합된 참고항목을 해당 필드에 넣는다.
              document.getElementById("sample6_extraAddress").value = extraAddr;
            } else {
              document.getElementById("sample6_extraAddress").value = "";
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById("sample6_postcode").value = data.zonecode;
            document.getElementById("sample6_address").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("sample6_detailAddress").focus();
          },
        }).open();
      }
    </script>
    <script src="./js/script.js"></script>
    <style>
      body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
      }
      h2 {
        text-align: center;
        margin-top: 50px;
        margin-bottom: 30px;
        color: #007bff;
      }
      form {
        width: 400px;
        margin: 0 auto;
        background-color: #fff;
        border-radius: 5px;
        box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.3);
        padding: 30px;
      }
      label {
        display: block;
        margin-bottom: 10px;
        color: #666;
        font-size: 16px;
      }
      input[type="text"] {
        width: 100%;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
        font-size: 16px;
        margin-bottom: 20px;
      }
      input[type="button"] {
        padding: 10px;
        background-color: #007bff;
        color: #fff;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px;
        width: 100%;
        margin-top: 20px;
      }
      input[type="button"]:hover {
        background-color: #0056b3;
      }
    </style>
  </head>

  <body>
    <h2>주소변경</h2>
    <form name="regform">
      <p>
        <label
          >우편번호 :
          <input
            type="text"
            size="5"
            maxlength="5"
            name="address1"
            id="sample6_postcode"
            placeholder="우편번호"
          />
          <input
            type="button"
            value="우편번호 검색"
            onclick="sample6_execDaumPostcode()"
          />
        </label>
      </p>
      <p>
        <label
          >주소 :
          <input
            type="text"
            name="address1"
            id="sample6_address"
            placeholder="주소"
        /></label>
      </p>
      <p>
        <label
          >상세주소 :
          <input
            type="text"
            name="address2"
            id="sample6_detailAddress"
            placeholder="상세주소"
        /></label>
      </p>
      <p>
        <label
          >전달사항 :
          <input
            type="text"
            name="address3"
            id="sample6_extraAddress"
            placeholder="배송 시 전달사항"
        /></label>
      </p>
      <p><input type="button" value="주소변경" onclick="sendit()" /></p>
    </form>
  </body>
</html>
