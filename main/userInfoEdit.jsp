<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
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
    <link rel="stylesheet" href="./CSS/header.css" />
    <link rel="stylesheet" href="./CSS/footer.css" />
    <link rel="stylesheet" href="./CSS/style.css" />
    <link rel="stylesheet" href="./CSS/navbar.css" />
    <link rel="stylesheet" href="./CSS/slider.css" />
    <link rel="stylesheet" href="./CSS/main.css" />
    <link rel="stylesheet" href="./CSS/search.css" />
    <link rel="stylesheet" href="./CSS/category.css" />
    <link rel="stylesheet" href="./CSS/goods.css" />
    <link rel="stylesheet" href="./CSS/cart.css" />
    <link rel="stylesheet" href="./CSS/wish.css" />
    <link rel="stylesheet" href="./CSS/order.css" />
    <link rel="stylesheet" href="./CSS/signUp.css" />
    <link rel="stylesheet" href="./CSS/login.css" />
    <link rel="stylesheet" href="./CSS/userInfoEdit.css" />

    <!-- Script -->
    <script
      src="https://kit.fontawesome.com/43fd0ad460.js"
      crossorigin="anonymous"
    ></script>
    <script src="./JavaScript/img-slider.js" defer></script>
    <script src="./JavaScript/menu.js" defer></script>
    <script src="./JavaScript/recommend-slider.js" defer></script>
    <script src="./JavaScript/advertisement.js" defer></script>
    </head>
  <body>
    <header>
        <jsp:include page="header.jsp" />
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
                <a class="main_user_div_left_column_a">주문 내역<span class="css-e41glx e1x0rfoo0"></span></a>
              </li>
              <li class="main_user_div_left_column_li">
                <a class="main_user_div_left_column_a">찜한 상품<span class="css-e41glx e1x0rfoo0"></span></a>
              </li>
              <li class="main_user_div_left_column_li">
                <a class="main_user_div_left_column_a">배송지 관리<span class="css-e41glx e1x0rfoo0"></span></a>
              </li>
              <li class="main_user_div_left_column_li">
                <a class="main_user_div_left_column_a">개인 정보 수정<span class="css-e41glx e1x0rfoo0"></span></a>
              </li>
            </ul>
            <a href="#" class="inquery_atag"><div class="inquery_atag_div">
                <span class="inquery_atag_div_span_upper">도움이 필요하신가요 ?</span><span class="inquery_atag_div_span_lower">1:1 문의하기</span>
              </div>
  
              <span class="inquery_span_icon"><i class="fa-solid fa-angle-right fa-lg"></i></span></a>
          </div>
    <div class="wrapper">
            <div class="signup_edit_div">개인정보수정</div>
                <div class="user">
                    <hr class="hrline"/>
                    <div class="id">
                        <div class="front" id="userid">아이디&nbsp<span class="star">*</span></div>
                        <input type="text" class="middle" placeholder="로그인 되어있는 아이디가 보여짐."></input>                
                    </div>
        
                    <div class="nick">
                        <div class="front" id="nickname">현재&nbsp비밀번호&nbsp<span class="star">*</span></div>
                        <input type="text" class="middle" placeholder="비밀번호를 입력해주세요."></input>
                    </div>
        
                    <div class="pw">
                        <div class="front" id="userpw">비밀번호&nbsp<span class="star">*</span></div>
                        <input type="text" class="middle" placeholder="새 비밀번호를 입력해주세요."></input>
                    </div>
        
                    <div class="pwcheck">
                        <div class="front" id="userpwcheck">비밀번호 확인&nbsp<span class="star">*</span></div>
                        <input type="text" class="middle" placeholder="새 비밀번호를 한번 더 입력해주세요."></input>
                    </div>
        
                    <div class="name">
                        <div class="front" id="username">이름<span class="star">*</span></div>
                        <input type="text" class="middle" placeholder="로그인 되어있는 이름이 보여짐."></input>
                    </div>
        
                    <div class="email">
                        <div class="front" id="useremail">이메일&nbsp<span class="star">*</span></div>
                        <input type="text" class="middle" placeholder="로그인 되어있는 이메일이 보여짐."></input>
                        <button class="doubleCheck">중복확인</button>
                    </div>
        
                    <div class="phone">
                        <div class="front" id="userphone">휴대폰<span class="star">*</span></div>
                        <input type="text" class="middle" placeholder="010&nbsp-&nbsp 0000 &nbsp-&nbsp 0000"></input>
                    </div>
        
                    <div class="adress">
                        <div class="front" id="useradress">주소<span class="star">*</span></div>
                        <input type="text" class="middle" placeholder="주소 api 연결???"></input>
                    </div>
                    
                    <div class="gender">
                        <div class="front" id="usergender">성별</div>
                        <div style="padding-right: 20px; display: flex; align-items: center;">
                            <input type="radio" class="middle" value="1" id="check1"></input>
                            <label for="check1">여성</label>
                        </div>
                        <div style="display: flex; align-items: center;">
                            <input type="radio" class="middle" value="2" id="check2"></input>
                            <label for="check2">남성</label>
                        </div>
                    </div>
        
                    <div class="birth">
                        <div class="front" id="ymd">생년월일</div>
                        <form>
                            <p><input type="date" class="middle"></p>
                        </form>
                    </div>
        
                    <hr class="bottom">

                    <div class="btns">
                        <button type="submit" class="signupEdit"><span class="editText">회원정보수정</span></button>
                        <button type="submit" class="editSuc"><span class="editText">탈퇴하기</span></button>
                    </div>
                </div>
         
          
          
        </div>
    </div>
    </main>
        <footer>
            <jsp:include page="footer.jsp" />
        </footer>
  </body>
</html>
