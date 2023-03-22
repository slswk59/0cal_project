<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>로그인-0cal</title>

    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Noto+Sans:wght@300;400;700;900&display=swap"
      rel="stylesheet"
    />
    <!-- CSS -->
    <link rel="stylesheet" href="<c:url value="/resources/CSS/header.css"/>" >
    <link rel="stylesheet" href="<c:url value="/resources/CSS/footer.css" />">
    <link rel="stylesheet" href="<c:url value="/resources/CSS/style.css" />" >
    <link rel="stylesheet" href="<c:url value="/resources/CSS/navbar.css" />" >
   <%--  <link rel="stylesheet" href="<c:url value="/resources/CSS/slider.css" />" >
    <link rel="stylesheet" href="<c:url value="/resources/CSS/main.css" />" >
    <link rel="stylesheet" href="<c:url value="/resources/CSS/search.css" />" >
    <link rel="stylesheet" href="<c:url value="/resources/CSS/category.css" />" >
    <link rel="stylesheet" href="<c:url value="/resources/CSS/goods.css" />" >
    <link rel="stylesheet" href="<c:url value="/resources/CSS/cart.css" />" >
    <link rel="stylesheet" href="<c:url value="/resources/CSS/wish.css" />" >
    <link rel="stylesheet" href="<c:url value="/resources/CSS/order.css" />" >
    <link rel="stylesheet" href="<c:url value="/resources/CSS/signup.css" />" > --%>
    <link rel="stylesheet" href="<c:url value="/resources/CSS/login.css" />" >

    <!-- Script -->
    <script
      src="https://kit.fontawesome.com/43fd0ad460.js"
      crossorigin="anonymous"
    ></script>
  <!--   <script src="./JavaScript/img-slider.js" defer></script>
    <script src="./JavaScript/menu.js" defer></script>
    <script src="./JavaScript/recommend-slider.js" defer></script>
    <script src="./JavaScript/advertisement.js" defer></script> -->
    <script src="./JavaScript/login.js" defer></script>
  </head>
  <body>
    <header>
      <jsp:include page="../common/header.jsp" />
    </header>
    <form name="login" method="post"  action="login.do" >
    <div class="wrapper">
 <div class="login"><b>로그인</b></div>

      <div class="middle_login">
        <input type="text" id="inputId" name="id" class="loginid" placeholder="아이디를 입력해주세요."/>
      </div>

      <div class="middle_login">
        <input type="password" id="inputPw" name="user_pass" class="loginpw" placeholder="비밀번호를 입력해주세요."/>
      </div>

	 <div class=loginbtn>
      <button type="submit" class="loginsuc" onclick="submit()">
        <span class="logintext">로그인</span>
      </button>
     </div>
      
      <div class=signupbtn>
       <button type="button" class="signuplink">
       <a href="${pageContext.request.contextPath}/member/signup.do"> <span class="signuptext">회원가입</span></a>
      </button>
      </div>
    </div>
    
    
    </form>
    
    
    <footer>
      <jsp:include page="../common/footer.jsp" />
    </footer>
  </body>
</html>
