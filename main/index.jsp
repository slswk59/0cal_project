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
    <div class="slide-section">
      <div class="slide-wrapper">
        <div class="slide-item">
          <a href="#" style="background-image: url('./img/배너1.jpg')"></a>
        </div>
        <div class="hidden slide-item">
          <a href="#" style="background-image: url('./img/배너2.jpg')"></a>
        </div>
        <div class="hidden slide-item">
          <a href="#" style="background-image: url('./img/배너3.jpg')"></a>
        </div>
    
        <!-- <div class="slide-item"><a href="#" style="background-image: url('./img/slide14.webp');"></a></div> -->
      </div>
    <main role="main">
      <section class="recommend-items">
        <h2>따근따끈한 신상품</h2>
        <div class="leftBtn items"></div>
        <div class="rightBtn items"></div>
        <div class="recommend-slide">
          <ul class="recommend-slide-items">
            <li class="recommend-slide-item">
              <div class="item-img-container">
                <img class="item-img" src="./img/item1.jpg" alt="추천 상품" />
              </div>
              <h3 class="item-name">[알라] 크림치즈 2종</h3>
              <p class="current-price">
                <span class="discount-rate">15%</span>
                2,890원
              </p>
              <p class="regular-price">3,400원</p>
            </li>
            <li class="recommend-slide-item">
              <div class="item-img-container">
                <img class="item-img" src="./img/item2.jpg" alt="추천 상품" />
              </div>
              <h3 class="item-name">[한일관 X 백년가게] 등심 불고기</h3>
              <p class="current-price">
                <span class="discount-rate">25%</span>
                21,750원
              </p>
              <p class="regular-price">29,000원</p>
            </li>
            <li class="recommend-slide-item">
              <div class="item-img-container">
                <img class="item-img" src="./img/item3.jpg" alt="추천 상품" />
              </div>
              <h3 class="item-name">무농약 냉동 곶감 400g (8입)</h3>
              <p class="current-price">
                <span class="discount-rate"></span>
                12,900원
              </p>
              <p class="regular-price"></p>
            </li>
            <li class="recommend-slide-item">
              <div class="item-img-container">
                <img class="item-img" src="./img/item4.jpg" alt="추천 상품" />
              </div>
              <h3 class="item-name">[존쿡 델리미트] 컨츄리베이컨 120g</h3>
              <p class="current-price">
                <span class="discount-rate">2%</span>
                4,570원
              </p>
              <p class="regular-price">4,680원</p>
            </li>
          </ul>

          <ul class="recommend-slide-items hidden">
            <li class="recommend-slide-item">
              <div class="item-img-container">
                <img class="item-img" src="./img/item5.jpg" alt="추천 상품" />
              </div>
              <h3 class="item-name">생 앙드레</h3>
              <p class="current-price">
                <span class="discount-rate">14%</span>
                14,490원
              </p>
              <p class="regular-price">16,900원</p>
            </li>
            <li class="recommend-slide-item">
              <div class="item-img-container">
                <img class="item-img" src="./img/item6.jpg" alt="추천 상품" />
              </div>
              <h3 class="item-name">[선물세트] 송강당 대명 공진보</h3>
              <p class="current-price">
                <span class="discount-rate">20%</span>
                132,000원
              </p>
              <p class="regular-price">165,000원</p>
            </li>
            <li class="recommend-slide-item">
              <div class="item-img-container">
                <img class="item-img" src="./img/item7.jpg" alt="추천 상품" />
              </div>
              <h3 class="item-name">[종가집] 깍두기 750g</h3>
              <p class="current-price">
                <span class="discount-rate">1%</span>
                9,690원
              </p>
              <p class="regular-price">9,800원</p>
            </li>
            <li class="recommend-slide-item">
              <div class="item-img-container">
                <img class="item-img" src="./img/item8.jpg" alt="추천 상품" />
              </div>
              <h3 class="item-name">[유기방아] 떡볶이떡 & 떡국떡 (냉동)</h3>
              <p class="current-price">
                <span class="discount-rate">8%</span>
                3,940원
              </p>
              <p class="regular-price">4,300원</p>
            </li>
          </ul>

          <ul class="recommend-slide-items hidden">
            <li class="recommend-slide-item">
              <div class="item-img-container">
                <img class="item-img" src="./img/item9.jpg" alt="추천 상품" />
              </div>
              <h3 class="item-name">[돈마루] 한돈 앞다리살 300g 2종</h3>
              <p class="current-price">
                <span class="discount-rate"></span>
                5,300원
              </p>
              <p class="regular-price"></p>
            </li>
            <li class="recommend-slide-item">
              <div class="item-img-container">
                <img class="item-img" src="./img/item10.jpg" alt="추천 상품" />
              </div>
              <h3 class="item-name">
                [썬키스트] 고당도 오렌지 750g (3입/대과)
              </h3>
              <p class="current-price">
                <span class="discount-rate">15%</span>
                7,650원
              </p>
              <p class="regular-price">9,000원</p>
            </li>
            <li class="recommend-slide-item">
              <div class="item-img-container">
                <img class="item-img" src="./img/item11.jpg" alt="추천 상품" />
              </div>
              <h3 class="item-name">[존쿡 델리미트] 바베큐 백립 450g (냉장)</h3>
              <p class="current-price">
                <span class="discount-rate">10%</span>
                14,850원
              </p>
              <p class="regular-price">16,500원</p>
            </li>
            <li class="recommend-slide-item">
              <div class="item-img-container">
                <img class="item-img" src="./img/item12.jpg" alt="추천 상품" />
              </div>
              <h3 class="item-name">[자하람] 매실발효액 새우장 530g (냉장)</h3>
              <p class="current-price">
                <span class="discount-rate">6%</span>
                17,340원
              </p>
              <p class="regular-price">18,490원</p>
            </li>
          </ul>
        </div>
      </section>

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
