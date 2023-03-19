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
    <link rel="stylesheet" href="<c:url value="/resources/CSS/slider.css" />" >
    <link rel="stylesheet" href="<c:url value="/resources/CSS/main.css" />" >
    <link rel="stylesheet" href="<c:url value="/resources/CSS/search.css" />" >
    <link rel="stylesheet" href="<c:url value="/resources/CSS/category.css" />" >
    <link rel="stylesheet" href="<c:url value="/resources/CSS/goods.css" />" >
    <link rel="stylesheet" href="<c:url value="/resources/CSS/cart.css" />" >
    <link rel="stylesheet" href="<c:url value="/resources/CSS/wish.css" />" >
    <link rel="stylesheet" href="<c:url value="/resources/CSS/order.css" />" >
    <link rel="stylesheet" href="<c:url value="/resources/CSS/signUp.css" />" >
    <link rel="stylesheet" href="<c:url value="/resources/CSS/login.css" />" >
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
                        <input type="text" name="id" class="middle" value="${memberDTO.id}" placeholder="로그인 되어있는 아이디가 보여짐." required readonly="readonly"></input>                
                    </div>
        
                    <div class="nick">
                        <div class="front" id="nickname">현재&nbsp비밀번호&nbsp<span class="star">*</span></div>
                        <input type="text" name="user_pass" class="middle"  value="${memberDTO.user_pass}" placeholder="비밀번호를 입력해주세요."></input>
                    </div>
        
                    <div class="pw">
                        <div class="front" id="userpw">비밀번호&nbsp<span class="star">*</span></div>
                        <input type="text" name="newPassword" class="middle" value="${memberDTO.user_pass}" placeholder="새 비밀번호를 입력해주세요."></input>
                    </div>
        
                    <div class="pwcheck">
                        <div class="front" id="userpwcheck">비밀번호 확인&nbsp<span class="star">*</span></div>
                        <input type="text" class="middle" value="${memberDTO.user_pass}" placeholder="새 비밀번호를 한번 더 입력해주세요."></input>
                    </div>
        
                    <div class="name">
                        <div class="front" id="username">이름<span class="star">*</span></div>
                        <input type="text" name="user_name" class="middle" value="${memberDTO.user_name}" placeholder="로그인 되어있는 이름이 보여짐."></input>
                    </div>
        
                    <div class="email">
                        <div class="front" id="useremail">이메일&nbsp<span class="star">*</span></div>
                        <input type="text" name="email" class="middle" value="${memberDTO.email}" placeholder="로그인 되어있는 이메일이 보여짐."></input>
                        <button class="doubleCheck">중복확인</button>
                    </div>
        
                    <div class="phone">
                        <div class="front" id="userphone">휴대폰<span class="star">*</span></div>
                        <input type="text" name="phone" class="middle" value="${memberDTO.phone}" placeholder="010&nbsp-&nbsp 0000 &nbsp-&nbsp 0000"></input>
                    </div>
        
                    <div class="adress">
                        <div class="front" id="useraddress">주소<span class="star">*</span></div>
                        <input type="text" name="address" class="middle" value="${memberDTO.address}" placeholder="주소 api 연결???"></input>
                    </div>
                    
                    <div class="gender">
                        <div class="front" id="usergender">성별</div>
                        <div style="padding-right: 20px; display: flex; align-items: center;">
                            <input type="radio" name="gender" class="middle" value="F" id="check1"></input>
                            <label for="check1">여성</label>
                        </div>
                        <div style="display: flex; align-items: center;">
                            <input type="radio" name="gender" class="middle" value="M" id="check2"></input>
                            <label for="check2">남성</label>
                        </div>
                    </div>
        
                    <div class="birth">
                        <div class="front" id="ymd">생년월일</div>
                        <form>
                            <p><input type="date" name="date_birthday" value="${memberDTO.date_birthday}" class="middle"></p>
                        </form>
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
