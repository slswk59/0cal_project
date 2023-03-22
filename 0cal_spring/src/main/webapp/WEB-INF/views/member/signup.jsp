
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>회원가입-0cal</title>
    

      <!-- Google Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans:wght@300;400;700;900&display=swap" rel="stylesheet">
  
    <!-- CSS -->
    <link rel="stylesheet" href="<c:url value="/resources/CSS/header.css"/>" >
    <link rel="stylesheet" href="<c:url value="/resources/CSS/footer.css" />">
    <link rel="stylesheet" href="<c:url value="/resources/CSS/style.css" />" >
    <link rel="stylesheet" href="<c:url value="/resources/CSS/navbar.css" />" >
   <%-- <link rel="stylesheet" href="<c:url value="/resources/CSS/slider.css" />" >
    <link rel="stylesheet" href="<c:url value="/resources/CSS/main.css" />" >
   <link rel="stylesheet" href="<c:url value="/resources/CSS/search.css" />" >
    <link rel="stylesheet" href="<c:url value="/resources/CSS/category.css" />" >
    <link rel="stylesheet" href="<c:url value="/resources/CSS/goods.css" />" >
    <link rel="stylesheet" href="<c:url value="/resources/CSS/cart.css" />" >
    <link rel="stylesheet" href="<c:url value="/resources/CSS/wish.css" />" >
    <link rel="stylesheet" href="<c:url value="/resources/CSS/order.css" />" > --%>
    <link rel="stylesheet" href="<c:url value="/resources/CSS/signup.css" />" >


    <!-- Script -->
   <script type="module" defer src="/myapp/resources/JavaScript/signup.js"></script>
   <script type="module" defer src="/myapp/resources/JavaScript/jquery-1.12.4.js"></script>
   <script type="module" defer src="/myapp/resources/JavaScript/jquery-1.12.4.min.js"></script>
   <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>


      <script>
	  function init(){
	  	alert("here");
	  }

      function chkId(){

        if(document.getElementById("inputId").value.length < 6){
            document.getElementById("chkId").innerHTML = 'id는 여섯글자 이상 입력해주세요.';
            document.getElementById("chkId").style.color = 'red';
        } else {
            document.getElementById("chkId").innerHTML = '';
        }
        
      }

	    //비밀번호 정규식
	    var pwCheck = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,25}$/;
	
	    function chkPw(){
	        
	        if (pw.value != "" && !pwCheck.test(pw.value)) {
	            document.getElementById("chkPw").innerHTML = "비밀번호는 영문자+숫자+특수문자 조합으로<br> 8~25자리로 사용해야합니다."
	            document.getElementById("chkPw").style.color = 'red';
	        } else {
	            document.getElementById("chkPw").innerHTML = '';
	        }
	
	    }

        //비밀번호 입력값 일치여부 확인
        function isSame(){
            
            var pw = document.getElementById("pw").value;
            var confirmPw = document.getElementById("pwChk").value;

            if(pw != "" && confirmPw != ""){
                
                if(pw == confirmPw){
                    document.getElementById("same").innerHTML = '패스워드 일치';
                    document.getElementById("same").style.color = 'blue';
                } else {
                    document.getElementById("same").innerHTML = '패스워드 불일치';
                    document.getElementById("same").style.color = 'red';
                }

            } else {
                document.getElementById("same").innerHTML = '';
            }

        }

        //이름 입력칸 공백시
        function chkName(){
            
        if("" == document.getElementById("inputName").value){
            document.getElementById("chkName").innerHTML = "이름을 입력해주세요.";
            document.getElementById("chkName").style.color = 'red';
        } else {
            document.getElementById("chkName").innerHTML = '';
        }
    }

        //이메일 정규식
        var mailCheck = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
        
        function chkMail(){
            
            if (inputMail.value != "" && !mailCheck.test(inputMail.value)) {
                document.getElementById("chkMail").innerHTML = '이메일 형식으로 입력해주세요.';
                document.getElementById("chkMail").style.color = 'red';
            } else {
                document.getElementById("chkMail").innerHTML = '';
            }

        }


        //휴대폰 정규식
        var phoneCheck = /^01([0])-?([0-9]{4})-?([0-9]{4})$/;

        function chkPhone(){
            
            if (inputPhone.value != "" && !phoneCheck.test(inputPhone.value)) {
                document.getElementById("chkPhone").innerHTML = "올바른 번호가 아닙니다.";
                document.getElementById("chkPhone").style.color = 'red';
            } else {
                document.getElementById("chkPhone").innerHTML = '';
            }

            return false;

        }
        
        

        //다음 주소 api
        function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;
                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("sample4_extraAddress").value = '';
                }

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
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


        function dupCheck(gb, value){

            var url  = "";
            var id   = "doubleCheck" + gb;
            if('1'==gb){
                url  = "/member/dupCheck.do";
            } else if ('2' == gb){
                url  = "/sm/User.AJAX.checkUserNick.do";
            } else {
                url  = "/sm/User.AJAX.checkUserMail.do";
            }
            
           alert(value);
           
            $.ajax({
                type : "post",
                url : "${pageContext.request.contextPath}/member/dupCheck.do",
                contentType: "application/json", 
                async: false, 
                data : JSON.stringify({
                	"userId" : "value"
                }),
                success : function(data){
                	if(0 == data){
                        alert("사용가능한 아이디입니다.");	
                        document.getElementById(id).style.color = "black";
                	} else {
                        alert("사용 불가능한 아이디입니다.");	
                	} 
                },
                error : function(request) {
                    alert("error : " + request.responseText);
                }
            })
            
        }


        function submit(){
            
            if("" == document.getElementById("inputId").value){
                document.getElementById("chkId").innerHTML = "아이디를 입력하여주세요.";
                document.getElementById("chkId").style.color = 'red';
                $('#inputId').focus();
                return;
            }

            if("" == document.getElementById("inputNick").value){
                alert("닉네임을 입력해주세요.");
                $('#inputNick').focus();
                return;
            }

            let idval = $('#inputId').val()
            let idvalcheck = /^[a-z0-9]+$/
            if (!idvalcheck.test(idval) || idval.length<6){
                alert('아이디는 영소문자,숫자로 구성된 6글자 이상으로 조합하시오.');
                $('#inputId').focus();
                return;
            }

            if (!pwCheck.test(pw.value)) {
                alert("비밀번호는 영문자+숫자+특수문자 조합으로 8~25자리로 사용해야합니다.");
                $('#pw').focus();
                return;
            };


            
            if("" == document.getElementById("").value){
                alert("아이디를 입력해주세요.");
                return; 
            }
            
            if("" == document.getElementById("inputId").value){
                alert("아이디를 입력해주세요.");
                return;
            }
            

            }


       const forms = document.getElementsByClassName('validation-form');

       Array.prototype.filter.call(forms, (form) => {
         form.addEventListener('submit', function (event) {
           if (form.checkValidity() === false) {
             event.preventDefault();
             event.stopPropagation();
           }

           form.classList.add('was-validated');
         }, false);
       });
   
  </script>
</head>
<body>
    <header>
        <jsp:include page="../common/header.jsp" />
      </header>
    <div class="wrapper">
        <div class="signup">회원가입</div>
       
	<form class="validation-form" method="post" novalidate>
        <div class="user">
            <hr class="hrline"/>
            <div class="id">
                <div class="front" id="userid">아이디&nbsp<span class="star">*</span></div>
                <input type="text" name="id" id="inputId" class="middle" placeholder="아이디를 입력해주세요." maxlength="25" onkeyup="chkId();"></input>
                <button class="doubleCheck" id="doubleCheck1" onclick="dupCheck('1',inputId.value);"><span>중복확인</span></button>
            </div>
            <div class="chk">
                <div class="front"></div><span id="chkId"></span>
            </div>
            
            <div class="nick">
                <div class="front" id="nickname">닉네임&nbsp<span class="star">*</span></div>
                <input type="text" name="nick_name" id="inputNick" class="middle" maxlength="10" placeholder="닉네임을 입력해주세요."></input>
                <button class="doubleCheck" id="doubleCheck2" onclick="dupCheck('2',inputNick.value);"><span>중복확인</span></button>
            </div>
            <div class="chk">
                <div class="front"></div><span id="chkId"></span>
            </div>
            
            <div class="pw">
                <div class="front" id="userpw">비밀번호&nbsp<span class="star">*</span></div>
                <input type="password" name="user_pass" id="pw" class="middle" onkeyup="chkPw();" placeholder="비밀번호를 입력해주세요."></input>
            </div>
            <div class="chk">
                <div class="front"></div><span id="chkPw" style="font-size:x-small; padding-top:1px"></span>
            </div>
            
            <div class="pwcheck">
                <div class="front" id="userpwcheck">비밀번호 확인&nbsp<span class="star">*</span></div>
                <input type="password" id="pwChk" class="middle" onkeyup="isSame();" placeholder="비밀번호를 한번 더 입력해주세요."></input>
            </div>
            <div class="chk">
                <div class="front"></div><span id="same"></span>
            </div>
            
            <div class="name">
                <div class="front" id="username">이름<span class="star">*</span></div>
                <input type="text" name="user_name" id="inputName" class="middle" onkeyup="chkName()" placeholder="이름을 입력해주세요." maxlength="10"></input>
            </div>
            <div class="chk">
                <div class="front"></div><span id="chkName"></span>
            </div>
            
            <div class="email">
                <div class="front" id="useremail">이메일&nbsp<span class="star">*</span></div>
                <input type="text" name="email" id="inputMail" class="middle" placeholder="예: 0cal@delicious.com" onkeyup="chkMail();"></input>
                <button class="doubleCheck" id="doubleCheck3" onclick="dupCheck('3',inputMail.value);"><span>중복확인</span></button>
            </div>
            <div class="chk">
                <div class="front"></div><span id="chkMail"></span>
            </div>
            
            <div class="phone">
                <div class="front" id="userphone">휴대폰&nbsp<span class="star">*</span></div>
                <input type="text" id="inputPhone" name="phone" class="middle" maxlength="11" placeholder="010&nbsp-&nbsp 0000 &nbsp-&nbsp 0000" onkeyup="chkPhone();"></input>
            </div>
            <div class="chk">
                <div class="front"></div><span id="chkPhone"></span>
            </div>

            <div class="adress">
                <div class="front" id="useradress">주소&nbsp<span class="star">*</span></div>
                <input type="text" id="sample4_postcode" name="post" placeholder="우편번호">
                <input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
            </div>
            <div class="adress2">
                <div class="front"></div>
                <input type="text" class="left" id="sample4_roadAddress" placeholder="도로명주소">
                <input type="text" class="right" id="sample4_jibunAddress" placeholder="지번주소">
            </div>
            <div class="adress2">
                <div class="front"></div><span id="guide" style="color:#999;display:none"></span>
                <input type="text" class="left" id="sample4_detailAddress" placeholder="상세주소">
                <input type="text" class="right" id="sample4_extraAddress" placeholder="참고항목">
            </div>
            <div class="gender">
                <div class="front" id="usergender">성별&nbsp<span class="star">*</span></div>
                <div style="padding-right: 20px; display: flex; align-items: center; color: black;">
                    <input type="radio" name="gender" class="middle" value="F" id="check1"></input>
                    <label for="check1" class='check1'>&nbsp여성</label>
                </div>
                <div style="display: flex; align-items: center; color: black;">
                    <input type="radio" name="gender" class="middle" value="M" id="check2"></input>
                    <label for="check2" class='check2'>&nbsp남성</label>
                </div>
            </div>

            <div class="birth">
                <div class="front" id="ymd">생년월일&nbsp<span class="star">*</span></div>               
                    <p><input type="date" name="date_of_birthday" class="middle"></p>
            </div>

            <hr class="bottom">
            <button type="submit" class="signupEnd" onclick="submit()"><b>가입하기</b></button>
            
        </div>
       </form>
     </div>
    <footer>
        <jsp:include page="../common/footer.jsp" />
      </footer>

</body>
</html>