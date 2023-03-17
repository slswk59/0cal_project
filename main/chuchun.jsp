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
    <link rel="stylesheet" href="./CSS/checkbox.css" />

    <!-- Script -->
    <!-- <script src="https://kit.fontawesome.com/43fd0ad460.js" crossorigin="anonymous"></script> -->
    <script src="./JavaScript/advertisement.js" defer></script>
    <script src="./JavaScript/roulette.js" defer></script>
    <script src="./JavaScript/filter_button.js" defer></script>
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
          </div>
          <button class="roulette_button" onclick="rotate()">오늘의 디저트</button>
        </div>
        </div>

      <div class="cbox">
        <label><input type='radio' name='gender' value='F' onclick='checkOnlyOne(this)'/> 여자</label>
        <label><input type='radio' name='gender' value='M' onclick='checkOnlyOne(this)'/> 남자</label>
        <br  >
        <br  >
        <label><input type='radio' name='age' value='date_1' onclick='getCheckboxValue()'/> 10대</label>
        <label><input type='radio' name='age' value='date_2' onclick='getCheckboxValue()'/> 20대</label>
        <label><input type='radio' name='age' value='date_3' onclick='getCheckboxValue()'/> 30대 이상</label>
      </div>
      <br  >
      <br  >
      <section class="recommend-items_cate">
        <h2>간식, 과자, 떡</h2>
        <div class="sorting_div">
          <ul class="sorting_div_ul">
            <li class="sorting_group">
              <a href="#" class="li_sorting li_recommend">추천순</a>
            </li>
            <li class="sorting_group">
              <a href="#" class="li_sorting li_new">신상품순</a>
            </li>
            <li class="sorting_group">
              <a href="#" class="li_sorting li_sales">판매량순</a>
            </li>
            <li class="sorting_group">
              <a href="#" class="li_sorting li_low">낮은가격순</a>
            </li>
            <li class="sorting_group">
              <a href="#" class="li_sorting li_high">높은가격순</a>
            </li>
          </ul>
        </div>
        <div class="recommend-slide">
          <ul class="recommend-slide-items">
            <li class="recommend-slide-item">
              <div class="item-img-container">
                <a href="goods.jsp">
                  <img class="item-img" src="./img/item1.jpg" alt="추천 상품" />
                </a>
                <div class="cart_button_class">
                  <a href="goods.jsp">
                    <button
                      type="button"
                      class="cart_button"
                      alt="장바구니 아이콘"
                    >
                      <i
                        class="fa-solid fa-cart-shopping fa-2x"
                        style="color: grey"
                      ></i>
                    </button>
                  </a>
                </div>
              </div>

              <a href="goods.jsp">
                <h3 class="item-name">[알라] 크림치즈 2종</h3>
              </a>
              <a href="goods.jsp">
                <p class="current-price">
                  <span class="discount-rate">15%</span>
                  2,890원
                </p>
              </a>
              <a href="goods.jsp">
                <p class="regular-price">3,400원</p>
              </a>
            </li>
            <li class="recommend-slide-item">
              <div class="item-img-container">
                <a href="goods.jsp">
                  <img class="item-img" src="./img/item1.jpg" alt="추천 상품" />
                </a>
                <div class="cart_button_class">
                  <a href="goods.jsp">
                    <button
                      type="button"
                      class="cart_button"
                      alt="장바구니 아이콘"
                    >
                      <i
                        class="fa-solid fa-cart-shopping fa-2x"
                        style="color: grey"
                      ></i>
                    </button>
                  </a>
                </div>
              </div>

              <a href="goods.jsp">
                <h3 class="item-name">[알라] 크림치즈 2종</h3>
              </a>
              <a href="goods.jsp">
                <p class="current-price">
                  <span class="discount-rate">15%</span>
                  2,890원
                </p>
              </a>
              <a href="goods.jsp">
                <p class="regular-price">3,400원</p>
              </a>
            </li>
            <li class="recommend-slide-item">
              <div class="item-img-container">
                <a href="goods.jsp">
                  <img class="item-img" src="./img/item1.jpg" alt="추천 상품" />
                </a>
                <div class="cart_button_class">
                  <a href="goods.jsp">
                    <button
                      type="button"
                      class="cart_button"
                      alt="장바구니 아이콘"
                    >
                      <i
                        class="fa-solid fa-cart-shopping fa-2x"
                        style="color: grey"
                      ></i>
                    </button>
                  </a>
                </div>
              </div>

              <a href="goods.jsp">
                <h3 class="item-name">[알라] 크림치즈 2종</h3>
              </a>
              <a href="goods.jsp">
                <p class="current-price">
                  <span class="discount-rate">15%</span>
                  2,890원
                </p>
              </a>
              <a href="goods.jsp">
                <p class="regular-price">3,400원</p>
              </a>
            </li>
            <li class="recommend-slide-item">
              <div class="item-img-container">
                <a href="goods.jsp">
                  <img class="item-img" src="./img/item1.jpg" alt="추천 상품" />
                </a>
                <div class="cart_button_class">
                  <a href="goods.jsp">
                    <button
                      type="button"
                      class="cart_button"
                      alt="장바구니 아이콘"
                    >
                      <i
                        class="fa-solid fa-cart-shopping fa-2x"
                        style="color: grey"
                      ></i>
                    </button>
                  </a>
                </div>
              </div>

              <a href="goods.jsp">
                <h3 class="item-name">[알라] 크림치즈 2종</h3>
              </a>
              <a href="goods.jsp">
                <p class="current-price">
                  <span class="discount-rate">15%</span>
                  2,890원
                </p>
              </a>
              <a href="goods.jsp">
                <p class="regular-price">3,400원</p>
              </a>
            </li>
          </ul>
        </div>
        <div class="recommend-slide">
          <ul class="recommend-slide-items">
            <li class="recommend-slide-item">
              <div class="item-img-container">
                <a href="goods.jsp">
                  <img class="item-img" src="./img/item1.jpg" alt="추천 상품" />
                </a>
                <div class="cart_button_class">
                  <a href="goods.jsp">
                    <button
                      type="button"
                      class="cart_button"
                      alt="장바구니 아이콘"
                    >
                      <i
                        class="fa-solid fa-cart-shopping fa-2x"
                        style="color: grey"
                      ></i>
                    </button>
                  </a>
                </div>
              </div>

              <a href="goods.jsp">
                <h3 class="item-name">[알라] 크림치즈 2종</h3>
              </a>
              <a href="goods.jsp">
                <p class="current-price">
                  <span class="discount-rate">15%</span>
                  2,890원
                </p>
              </a>
              <a href="goods.jsp">
                <p class="regular-price">3,400원</p>
              </a>
            </li>
            <li class="recommend-slide-item">
              <div class="item-img-container">
                <a href="goods.jsp">
                  <img class="item-img" src="./img/item1.jpg" alt="추천 상품" />
                </a>
                <div class="cart_button_class">
                  <a href="goods.jsp">
                    <button
                      type="button"
                      class="cart_button"
                      alt="장바구니 아이콘"
                    >
                      <i
                        class="fa-solid fa-cart-shopping fa-2x"
                        style="color: grey"
                      ></i>
                    </button>
                  </a>
                </div>
              </div>

              <a href="goods.jsp">
                <h3 class="item-name">[알라] 크림치즈 2종</h3>
              </a>
              <a href="goods.jsp">
                <p class="current-price">
                  <span class="discount-rate">15%</span>
                  2,890원
                </p>
              </a>
              <a href="goods.jsp">
                <p class="regular-price">3,400원</p>
              </a>
            </li>
            <li class="recommend-slide-item">
              <div class="item-img-container">
                <a href="goods.jsp">
                  <img class="item-img" src="./img/item1.jpg" alt="추천 상품" />
                </a>
                <div class="cart_button_class">
                  <a href="goods.jsp">
                    <button
                      type="button"
                      class="cart_button"
                      alt="장바구니 아이콘"
                    >
                      <i
                        class="fa-solid fa-cart-shopping fa-2x"
                        style="color: grey"
                      ></i>
                    </button>
                  </a>
                </div>
              </div>

              <a href="goods.jsp">
                <h3 class="item-name">[알라] 크림치즈 2종</h3>
              </a>
              <a href="goods.jsp">
                <p class="current-price">
                  <span class="discount-rate">15%</span>
                  2,890원
                </p>
              </a>
              <a href="goods.jsp">
                <p class="regular-price">3,400원</p>
              </a>
            </li>
            <li class="recommend-slide-item">
              <div class="item-img-container">
                <a href="goods.jsp">
                  <img class="item-img" src="./img/item1.jpg" alt="추천 상품" />
                </a>
                <div class="cart_button_class">
                  <a href="goods.jsp">
                    <button
                      type="button"
                      class="cart_button"
                      alt="장바구니 아이콘"
                    >
                      <i
                        class="fa-solid fa-cart-shopping fa-2x"
                        style="color: grey"
                      ></i>
                    </button>
                  </a>
                </div>
              </div>

              <a href="goods.jsp">
                <h3 class="item-name">[알라] 크림치즈 2종</h3>
              </a>
              <a href="goods.jsp">
                <p class="current-price">
                  <span class="discount-rate">15%</span>
                  2,890원
                </p>
              </a>
              <a href="goods.jsp">
                <p class="regular-price">3,400원</p>
              </a>
            </li>
          </ul>
        </div>
        <div class="recommend-slide">
          <ul class="recommend-slide-items">
          </ul>
        </div>
       
      </section>
    </main>
    <footer>
      <jsp:include page="footer.jsp" />
    </footer>
  </body>
</html>

