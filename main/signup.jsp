
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>회원가입-0cal</title>
    

      <!-- Google Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans:wght@300;400;700;900&display=swap" rel="stylesheet">
  
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
    <link rel="stylesheet" href="./CSS/signUp.css">

    <!-- Script -->
    <script src="https://kit.fontawesome.com/43fd0ad460.js" crossorigin="anonymous"></script>
    <script src="./JavaScript/img-slider.js" defer></script>
    <script src="./JavaScript/menu.js" defer></script>
    <script src="./JavaScript/recommend-slider.js" defer></script>
    <script src="./JavaScript/advertisement.js" defer></script>
</head>
<body>
    <header>
        <jsp:include page="header.jsp" />
      </header>
    <div class="wrapper">
        <div class="signup">회원가입</div>
       

        <div class="user">
            <hr class="hrline"/>
            <div class="id">
                <div class="front" id="userid">아이디&nbsp<span class="star">*</span></div>
                <input type="text" class="middle" placeholder="아이디를 입력해주세요."></input>
                <button class="doubleCheck">중복확인</button>
            </div>

            <div class="nick">
                <div class="front" id="nickname">닉네임&nbsp<span class="star">*</span></div>
                <input type="text" class="middle" placeholder="닉네임을 입력해주세요."></input>
                <button class="doubleCheck"><span>중복확인</span></button>
            </div>

            <div class="pw">
                <div class="front" id="userpw">비밀번호&nbsp<span class="star">*</span></div>
                <input type="text" class="middle" placeholder="비밀번호를 입력해주세요."></input>
            </div>

            <div class="pwcheck">
                <div class="front" id="userpwcheck">비밀번호 확인&nbsp<span class="star">*</span></div>
                <input type="text" class="middle" placeholder="비밀번호를 한번 더 입력해주세요."></input>
            </div>

            <div class="name">
                <div class="front" id="username">이름<span class="star">*</span></div>
                <input type="text" class="middle" placeholder="이름을 입력해주세요."></input>
            </div>

            <div class="email">
                <div class="front" id="useremail">이메일&nbsp<span class="star">*</span></div>
                <input type="text" class="middle" placeholder="예: 0cal@delicious.com"></input>
                <button class="doubleCheck">중복확인</button>
            </div>

            <div class="phone">
                <div class="front" id="userphone">휴대폰&nbsp<span class="star">*</span></div>
                <input type="text" class="middle" placeholder="010&nbsp-&nbsp 0000 &nbsp-&nbsp 0000"></input>
            </div>

            <div class="adress">
                <div class="front" id="useradress">주소&nbsp<span class="star">*</span></div>
                <input type="text" class="middle" placeholder="주소 api 연결???"></input>
            </div>
            
            <div class="gender">
                <div class="front" id="usergender">성별&nbsp<span class="star">*</span></div>
                <div style="padding-right: 20px; display: flex; align-items: center; color: black;">
                    <input type="radio" class="middle" value="1" id="check1"></input>
                    <label for="check1" class='check1'>&nbsp여성</label>
                </div>
                <div style="display: flex; align-items: center; color: black;">
                    <input type="radio" class="middle" value="2" id="check2"></input>
                    <label for="check2" class='check2'>&nbsp남성</label>
                </div>
            </div>

            <div class="birth">
                <div class="front" id="ymd">생년월일&nbsp<span class="star">*</span>
                </div>
                <form>
                    <p><input type="date" class="middle"></p>
                </form>
            </div>

            <hr class="bottom">

            <button type="submit" class="signupEnd"><b>가입하기</b></button>
            
        </div>
    </div>
    <footer>
        <jsp:include page="footer.jsp" />
      </footer>

</body>
</html>