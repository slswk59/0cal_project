
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
    <link rel="stylesheet" href="<c:url value="/resources/CSS/slider.css" />" >
    <link rel="stylesheet" href="<c:url value="/resources/CSS/main.css" />" >
    <link rel="stylesheet" href="<c:url value="/resources/CSS/search.css" />" >
    <link rel="stylesheet" href="<c:url value="/resources/CSS/category.css" />" >
    <link rel="stylesheet" href="<c:url value="/resources/CSS/goods.css" />" >
    <link rel="stylesheet" href="<c:url value="/resources/CSS/cart.css" />" >
    <link rel="stylesheet" href="<c:url value="/resources/CSS/wish.css" />" >
    <link rel="stylesheet" href="<c:url value="/resources/CSS/order.css" />" >
    <link rel="stylesheet" href="<c:url value="/resources/CSS/signUp.css" />" >


    <!-- Script -->
      <script >   
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
       
	 <form class="validation-form" method="post" action="signup.do" novalidate>
        <div class="user">
            <hr class="hrline"/>
            <div class="id">
                <div class="front" id="id">아이디&nbsp<span class="star">*</span></div>
                <input type="text" name="id" class="middle" placeholder="아이디를 입력해주세요."></input>
                <button class="doubleCheck">중복확인</button>
            </div>

            <div class="nick">
                <div class="front" id="nick_name">닉네임&nbsp<span class="star">*</span></div>
                <input type="text" name="nick_name" class="middle" placeholder="닉네임을 입력해주세요."></input>
                <button class="doubleCheck"><span>중복확인</span></button>
            </div>

            <div class="pw">
                <div class="front" id="user_pass">비밀번호&nbsp<span class="star">*</span></div>
                <input type="text" name="user_pass" class="middle" placeholder="비밀번호를 입력해주세요."></input>
            </div>

            <div class="pwcheck">
                <div class="front" id="userpwcheck">비밀번호 확인&nbsp<span class="star">*</span></div>
                <input type="text" class="middle" placeholder="비밀번호를 한번 더 입력해주세요."></input>
            </div>

            <div class="name">
                <div class="front" id="user_name">이름<span class="star">*</span></div>
                <input type="text" name="user_name" class="middle" placeholder="이름을 입력해주세요."></input>
            </div>

            <div class="email">
                <div class="front" id="email">이메일&nbsp<span class="star">*</span></div>
                <input type="text" name="email" class="middle" placeholder="예: 0cal@delicious.com"></input>
                <button class="doubleCheck">중복확인</button>
            </div>

            <div class="phone">
                <div class="front" id="phone">휴대폰&nbsp<span class="star">*</span></div>
                <input type="text" name="phone" class="middle" placeholder="010&nbsp-&nbsp 0000 &nbsp-&nbsp 0000"></input>
            </div>

            <div class="adress">
                <div class="front" id="address">주소&nbsp<span class="star">*</span></div>
                <input type="text" name="address" class="middle" placeholder="주소 api 연결???"></input>
            </div>
            
            <div class="gender">
                <div class="front" id="gender">성별&nbsp<span class="star">*</span></div>
                <div style="padding-right: 20px; display: flex; align-items: center; color: black;">
                    <input type="radio" name="gender" class="middle" value="F" id="check1"></input>
                    <label for="check1" class='check1'>&nbsp여성</label>
                </div>
                <div style="display: flex; align-items: center; color: black;">
                    <input type="radio"  name="gender" class="middle" value="M" id="check2"></input>
                    <label for="check2" class='check2'>&nbsp남성</label>
                </div>
            </div>

            <div class="birth">
                <div class="front" id="date_birth">생년월일&nbsp<span class="star">*</span>
                </div>
      
                    <p><input type="date"  name="date_birthday" class="middle"></p>
                
            </div>

            <hr class="bottom">

            <button type="submit" class="signupEnd"><b>가입하기</b></button>
            
        </div>
        </form>
    </div>
    <footer>
        <jsp:include page="../common/footer.jsp" />
      </footer>

</body>
</html>