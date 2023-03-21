<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>개인정보수정-0cal</title>

    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Noto+Sans:wght@300;400;700;900&display=swap"
      rel="stylesheet"
    />

    <!-- CSS -->
    <link rel="stylesheet" href="<c:url value="/resources/CSS/header.css" />" >
    <link rel="stylesheet" href="<c:url value="/resources/CSS/footer.css" />" >
    <link rel="stylesheet" href="<c:url value="/resources/CSS/style.css" />" >
    <link rel="stylesheet" href="<c:url value="/resources/CSS/navbar.css" />" >
    <%-- <link rel="stylesheet" href="<c:url value="/resources/CSS/slider.css" />" >
    <link rel="stylesheet" href="<c:url value="/resources/CSS/main.css" />" >
    <link rel="stylesheet" href="<c:url value="/resources/CSS/search.css" />" >
    <link rel="stylesheet" href="<c:url value="/resources/CSS/category.css" />" >
    <link rel="stylesheet" href="<c:url value="/resources/CSS/goods.css" />" >
    <link rel="stylesheet" href="<c:url value="/resources/CSS/cart.css" />" > --%>
    <link rel="stylesheet" href="<c:url value="/resources/CSS/wish.css" />" >
    <%-- <link rel="stylesheet" href="<c:url value="/resources/CSS/order.css" />" >
    <link rel="stylesheet" href="<c:url value="/resources/CSS/signUp.css" />" > --%>
    <%-- <link rel="stylesheet" href="<c:url value="/resources/CSS/login.css" />" > --%>
    <link rel="stylesheet" href="<c:url value="/resources/CSS/userInfoEdit.css" />" >

    <!-- Script -->
    <script
      src="https://kit.fontawesome.com/43fd0ad460.js" crossorigin="anonymous"></script>
    <script type="module" defer src="/myapp/resources/JavaScript/jquery-1.12.4.js"></script>
    <script type="module" defer src="/myapp/resources/JavaScript/jquery-1.12.4.min.js"></script>
    <script src="./JavaScript/img-slider.js" defer></script>
    <script src="./JavaScript/menu.js" defer></script>
    <script src="./JavaScript/recommend-slider.js" defer></script>
    <script src="./JavaScript/advertisement.js" defer></script>
    <script  src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    
     <script >   
      const forms = document.getElementsByClassName('validation-form');

      Array.prototype.filter.call(forms, (form) => {
        form.addEventListener('submit', function (event) {
          if (form.checkValidity() === false) {
            event.preventDefault();
            event.stopPropagation();
          }

        }, false);
      });
      
      function submit2(frm){
    	  frm.action="delete.do";
    	  frm.submit();
    	  return true;
      }
   
  </script>
    </head>
  <body>
    <header>
        <jsp:include page="../common/header.jsp" />
      </header>

      <main role="main">
        <section id="advertise_cate">
          <div class="ad-img"></div>
        </section>
    <div class="main_under_div">
        <div class="main_under_div_left">
            <div class="main_under_div_left_text">마이칼로리</div>
            <ul class="main_user_div_left_list">
              <li class="main_user_div_left_column_li">
                <a class="main_user_div_left_column_a" href="${pageContext.request.contextPath}/shopping/orders.do" >주문 내역<span class="css-e41glx e1x0rfoo0"></span></a>
              </li>
              <li class="main_user_div_left_column_li">
                <a class="main_user_div_left_column_a">찜한 상품<span class="css-e41glx e1x0rfoo0"></span></a>
              </li>
              <li class="main_user_div_left_column_li">
                <a class="main_user_div_left_column_a">배송지 관리<span class="css-e41glx e1x0rfoo0"></span></a>
              </li>
              <li class="main_user_div_left_column_li">
                <a class="main_user_div_left_column_a" href="${pageContext.request.contextPath}/member/userInfoEdit.do" >개인 정보 수정<span class="css-e41glx e1x0rfoo0"></span></a>
              </li>
            </ul>
            <a href="#" class="inquery_atag"><div class="inquery_atag_div">
                <span class="inquery_atag_div_span_upper">도움이 필요하신가요 ?</span><span class="inquery_atag_div_span_lower">1:1 문의하기</span>
              </div>
  
              <span class="inquery_span_icon"><i class="fa-solid fa-angle-right fa-lg"></i></span></a>
          </div>
    <div class="wrapper">
            <div class="signup_edit_div">개인정보수정</div>
            
        <form class="validation-form" method="post" action="userInfoEdit.do" novalidate>
                <div class="user">
                    <hr class="hrline"/>
                    <div class="id">
                      <div class="front" id="userid">아이디&nbsp<span class="star">*</span></div>
                      <input type="text" name="id" id="inputId" class="middle" value="${memberDTO.id}" required readonly="readonly"></input>
                  </div>
                  <div class="nick">
                      <div class="front" id="nickname">닉네임&nbsp<span class="star">*</span></div>
                      <input type="text" name="nick_name" id="inputNick" class="middle" maxlength="10" value="${memberDTO.nick_name}" placeholder="닉네임을 입력해주세요."></input>
                      <button class="doubleCheck" id="doubleCheck2" onclick="dupCheck('2',inputNick.value);"><span>중복확인</span></button>
                  </div>
                  <div class="chk">
                      <div class="front"></div><span id="chkId"></span>
                  </div>
                  
                  <div class="pw">
                      <div class="front" id="userpw">현재 비밀번호&nbsp<span class="star">*</span></div>
                      <input type="password" name="user_pass" id="pw" class="middle" value="${memberDTO.user_pass}" onkeyup="chkPw();" placeholder="현재 비밀번호를 입력해주세요."></input>
                  </div>
                  <div class="chk">
                      <div class="front"></div><span id="chkPw" style="font-size:x-small; padding-top:1px"></span>
                  </div>

                  <div class="newPw">
                      <div class="front" id="userpw">새&nbsp비밀번호&nbsp<span class="star">*</span></div>
                      <input type="password" name="newPassword" id="pw" class="middle" value="${memberDTO.user_pass}" onkeyup="chknewPw();" placeholder="새 비밀번호를 입력해주세요."></input>
                  </div>
                  <div class="chk">
                      <div class="front"></div><span id="chkPw" style="font-size:x-small; padding-top:1px"></span>
                  </div>
                  
                  <div class="pwcheck">
                      <div class="front" id="userpwcheck">비밀번호 확인&nbsp<span class="star">*</span></div>
                      <input type="password" id="pwChk" class="middle" value="${memberDTO.user_pass}" onkeyup="isSame();" placeholder="새 비밀번호를 한번 더 입력해주세요."></input>
                  </div>
                  <div class="chk">
                      <div class="front"></div><span id="same"></span>
                  </div>
                  
                  <div class="name">
                      <div class="front" id="username">이름<span class="star">*</span></div>
                      <input type="text" name="user_name" id="inputName" class="middle" value="${memberDTO.user_name}" onkeyup="chkName()" placeholder="이름을 입력해주세요." maxlength="10"></input>
                  </div>
                  <div class="chk">
                      <div class="front"></div><span id="chkName"></span>
                  </div>
                  
                  <div class="email">
                      <div class="front" id="useremail">이메일&nbsp<span class="star">*</span></div>
                      <input type="text" name="email" id="inputMail" class="middle" value="${memberDTO.email}" placeholder="예: 0cal@delicious.com" onkeyup="chkMail();"></input>
                      <button class="doubleCheck" id="doubleCheck3" onclick="dupCheck('3',inputMail.value);"><span>중복확인</span></button>
                  </div>
                  <div class="chk">
                      <div class="front"></div><span id="chkMail"></span>
                  </div>
                  
                  <div class="phone">
                      <div class="front" id="userphone">휴대폰&nbsp<span class="star">*</span></div>
                      <input type="text" id="inputPhone" name="phone" class="middle" value="${memberDTO.phone}" maxlength="11" placeholder="010&nbsp-&nbsp 0000 &nbsp-&nbsp 0000" onkeyup="chkPhone();"></input>
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
                          <p><input type="date" name="date_of_birthday" class="middle" value="${memberDTO.date_birthday}"></p>
                  </div>
      
      
                  <hr class="bottom">

                  <div class="btns">
                      <button type="submit" class="signupEdit"><span class="editText">회원정보수정</span></button>
                      <button type="button" value="전송2" class="editSuc" onclick="return submit2(this.form);"><span class="editText">탈퇴하기</span></button>
                  </div>
              </div>
            </form>

          
        </div>
    </div>
    </main>
        <footer>
            <jsp:include page="../common/footer.jsp" />
        </footer>
  </body>
</html>
