<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>0칼로리 :: 디저트는 빵칼로리</title>

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
    <link rel="stylesheet" href="./CSS/roulette.css" />

    <!-- Script -->
    <!-- <script src="https://kit.fontawesome.com/43fd0ad460.js" crossorigin="anonymous"></script> -->
    <script src="./JavaScript/advertisement.js" defer></script>
    <script src="./JavaScript/roulette.js" defer></script>
  </head>
  <body>
    <header>
      <jsp:include page="header.jsp" />
    </header>
    
        <!-- <div class="slide-item"><a href="#" style="background-image: url('./img/slide14.webp');"></a></div> -->
      </div>
    <main role="main">
      <div class="roulette_background">
        <div class="roll_image"> 
        <div class="roulette_div">
          <canvas width="350" height="350"></canvas>      
          <button class="roulette_button" onclick="rotate()">오늘의 디저트</button>
        </div>
      </div>
      </div>

      <input type='checkbox'
       name='genl' 
       value='F'
       onclick='checkOnlyOne(this)'/> 여
<br />
<input type='checkbox' 
       name='genl' 
       value='M' 
       onclick='checkOnlyOne(this)'/> 남

      <section id="advertise">
        <div class="ad-img"></div>
      </section>

      <section class="today-items">
        <h2>홍길동님 맞춤 추천 상품</h2>
        <div class="today-items2"> 
        <div class="today-item">
          <div class="today-wrapper">
            <div class="today-img-container">
              <img class="today-img" src="./img/today1.jpg" alt="오늘 특가" />
            </div>
            <p class="today-desc">신선하게 즐기는 보랏빛 달콤함</p>
            <h3 class="today-name">국산 블루베리 100g (특대)</h3>
            <p class="today-price">
              <span class="discount-rate">46%</span>
              4,765원
              <span class="today-regular-price"> 8,990원 </span>
            </p>
          </div>
        </div>
        <div class="today-item">
          <div class="today-wrapper">
            <div class="today-img-container">
              <img class="today-img" src="./img/today1.jpg" alt="오늘 특가" />
            </div>
            <p class="today-desc">신선하게 즐기는 보랏빛 달콤함</p>
            <h3 class="today-name">국산 블루베리 100g (특대)</h3>
            <p class="today-price">
              <span class="discount-rate">46%</span>
              4,765원
              <span class="today-regular-price"> 8,990원 </span>
            </p>
          </div>
        </div>  
      </div>
      <div class="today-items2">
        <div class="today-item">
          <div class="today-wrapper">
            <div class="today-img-container">
              <img class="today-img" src="./img/today1.jpg" alt="오늘 특가" />
            </div>
            <p class="today-desc">신선하게 즐기는 보랏빛 달콤함</p>
            <h3 class="today-name">국산 블루베리 100g (특대)</h3>
            <p class="today-price">
              <span class="discount-rate">46%</span>
              4,765원
              <span class="today-regular-price"> 8,990원 </span>
            </p>
          </div>
        </div>
        <div class="today-item">
          <div class="today-wrapper">
            <div class="today-img-container">
              <img class="today-img" src="./img/today1.jpg" alt="오늘 특가" />
            </div>
            <p class="today-desc">신선하게 즐기는 보랏빛 달콤함</p>
            <h3 class="today-name">국산 블루베리 100g (특대)</h3>
            <p class="today-price">
              <span class="discount-rate">46%</span>
              4,765원
              <span class="today-regular-price"> 8,990원 </span>
            </p>
          </div>
        </div>  
      </div>
      </section>
    </main>
    <footer>
      <jsp:include page="footer.jsp" />
    </footer>
  </body>
</html>

