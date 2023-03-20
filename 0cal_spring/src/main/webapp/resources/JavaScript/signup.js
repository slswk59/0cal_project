
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
            var data = "";
            var id   = "doubleCheck" + gb;

            if('1'==gb){
                url  = "/sm/User.AJAX.checkUserId.do";
                data = "userId=" + value;
            } else if ('2' == gb){
                url  = "/sm/User.AJAX.checkUserNick.do";
                data = "userNick=" + value;
            } else {
                url  = "/sm/User.AJAX.checkUserMail.do";
                data = "userMail=" + value;
            }

            /*
            jQuery.ajax({
                type : "POST",
                url : url,
                data : data,
                async : false,
                dataType : "json",
                success : function(data){
                    alert("사용가능한 아이디입니다.");
                    document.getElementById(id).style.color = "black";
                },
                error : function(response) {
                    alert(response.responseText);
                }
            })
            */

            alert("url : " + url + "|||| data : " + data);
            document.getElementById(id).style.color = "black";
        }

        function submit(){
            
            if("" == document.getElementById("inputId").value){
                document.getElementById("chkId").innerHTML = "아이디를 입력해주세요.";
                document.getElementById("chkId").style.color = 'red';
            }

            if (!pwCheck.test(pw.value)) {
                alert("비밀번호는 영문자+숫자+특수문자 조합으로 8~25자리로 사용해야합니다.")
                pw.focus();
                return false;
            };


        }

