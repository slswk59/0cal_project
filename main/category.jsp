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

    <!-- Script -->
    <script
      src="https://kit.fontawesome.com/43fd0ad460.js"
      crossorigin="anonymous"
    ></script>
    <script src="./JavaScript/img-slider.js" defer></script>
    <script src="./JavaScript/menu.js" defer></script>
    <script src="./JavaScript/recommend-slider.js" defer></script>
    <script src="./JavaScript/advertisement.js" defer></script>
    <script src="./JavaScript/timer.js" defer></script>
    <script src="./JavaScript/scrollTop.js" defer></script>
  </head>
  <body>
    <header>
      <jsp:include page="header.jsp" />
    </header>
    <main role="main">
      <section id="advertise_cate">
        <div class="ad-img"></div>
      </section>

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
                <img class="item-img" src="./img/item1.jpg" alt="추천 상품" />
                <div class="cart_button_class">
                  <button
                    type="button"
                    class="cart_button"
                    alt="장바구니 아이콘"
                  >
                    <i
                      class="fa-solid fa-cart-shopping fa-3x"
                      style="color: orange"
                    ></i>
                  </button>
                </div>
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
                <div class="cart_button_class">
                  <button
                    type="button"
                    class="cart_button"
                    alt="장바구니 아이콘"
                  >
                    <i
                      class="fa-solid fa-cart-shopping fa-3x"
                      style="color: orange"
                    ></i>
                  </button>
                </div>
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
                <div class="cart_button_class">
                  <button
                    type="button"
                    class="cart_button"
                    alt="장바구니 아이콘"
                  >
                    <i
                      class="fa-solid fa-cart-shopping fa-3x"
                      style="color: orange"
                    ></i>
                  </button>
                </div>
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
                <div class="cart_button_class">
                  <button
                    type="button"
                    class="cart_button"
                    alt="장바구니 아이콘"
                  >
                    <i
                      class="fa-solid fa-cart-shopping fa-3x"
                      style="color: orange"
                    ></i>
                  </button>
                </div>
              </div>
              <h3 class="item-name">[존쿡 델리미트] 컨츄리베이컨 120g</h3>
              <p class="current-price">
                <span class="discount-rate">2%</span>
                4,570원
              </p>
              <p class="regular-price">4,680원</p>
            </li>
          </ul>
        </div>
        <div class="recommend-slide">
          <ul class="recommend-slide-items">
            <li class="recommend-slide-item">
              <div class="item-img-container">
                <img class="item-img" src="./img/item1.jpg" alt="추천 상품" />
                <div class="cart_button_class">
                  <button
                    type="button"
                    class="cart_button"
                    alt="장바구니 아이콘"
                  >
                    <i
                      class="fa-solid fa-cart-shopping fa-3x"
                      style="color: orange"
                    ></i>
                  </button>
                </div>
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
                <div class="cart_button_class">
                  <button
                    type="button"
                    class="cart_button"
                    alt="장바구니 아이콘"
                  >
                    <i
                      class="fa-solid fa-cart-shopping fa-3x"
                      style="color: orange"
                    ></i>
                  </button>
                </div>
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
                <div class="cart_button_class">
                  <button
                    type="button"
                    class="cart_button"
                    alt="장바구니 아이콘"
                  >
                    <i
                      class="fa-solid fa-cart-shopping fa-3x"
                      style="color: orange"
                    ></i>
                  </button>
                </div>
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
                <div class="cart_button_class">
                  <button
                    type="button"
                    class="cart_button"
                    alt="장바구니 아이콘"
                  >
                    <i
                      class="fa-solid fa-cart-shopping fa-3x"
                      style="color: orange"
                    ></i>
                  </button>
                </div>
              </div>
              <h3 class="item-name">[존쿡 델리미트] 컨츄리베이컨 120g</h3>
              <p class="current-price">
                <span class="discount-rate">2%</span>
                4,570원
              </p>
              <p class="regular-price">4,680원</p>
            </li>
          </ul>
        </div>
        <div class="recommend-slide">
          <ul class="recommend-slide-items">
            <li class="recommend-slide-item">
              <div class="item-img-container">
                <img class="item-img" src="./img/item1.jpg" alt="추천 상품" />
                <div class="cart_button_class">
                  <button
                    type="button"
                    class="cart_button"
                    alt="장바구니 아이콘"
                  >
                    <i
                      class="fa-solid fa-cart-shopping fa-3x"
                      style="color: orange"
                    ></i>
                  </button>
                </div>
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
                <div class="cart_button_class">
                  <button
                    type="button"
                    class="cart_button"
                    alt="장바구니 아이콘"
                  >
                    <i
                      class="fa-solid fa-cart-shopping fa-3x"
                      style="color: orange"
                    ></i>
                  </button>
                </div>
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
                <div class="cart_button_class">
                  <button
                    type="button"
                    class="cart_button"
                    alt="장바구니 아이콘"
                  >
                    <i
                      class="fa-solid fa-cart-shopping fa-3x"
                      style="color: orange"
                    ></i>
                  </button>
                </div>
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
                <div class="cart_button_class">
                  <button
                    type="button"
                    class="cart_button"
                    alt="장바구니 아이콘"
                  >
                    <i
                      class="fa-solid fa-cart-shopping fa-3x"
                      style="color: orange"
                    ></i>
                  </button>
                </div>
              </div>
              <h3 class="item-name">[존쿡 델리미트] 컨츄리베이컨 120g</h3>
              <p class="current-price">
                <span class="discount-rate">2%</span>
                4,570원
              </p>
              <p class="regular-price">4,680원</p>
            </li>
          </ul>
        </div>
        <div class="recommend-slide">
          <ul class="recommend-slide-items">
            <li class="recommend-slide-item">
              <div class="item-img-container">
                <img class="item-img" src="./img/item1.jpg" alt="추천 상품" />
                <div class="cart_button_class">
                  <button
                    type="button"
                    class="cart_button"
                    alt="장바구니 아이콘"
                  >
                    <i
                      class="fa-solid fa-cart-shopping fa-3x"
                      style="color: orange"
                    ></i>
                  </button>
                </div>
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
                <div class="cart_button_class">
                  <button
                    type="button"
                    class="cart_button"
                    alt="장바구니 아이콘"
                  >
                    <i
                      class="fa-solid fa-cart-shopping fa-3x"
                      style="color: orange"
                    ></i>
                  </button>
                </div>
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
                <div class="cart_button_class">
                  <button
                    type="button"
                    class="cart_button"
                    alt="장바구니 아이콘"
                  >
                    <i
                      class="fa-solid fa-cart-shopping fa-3x"
                      style="color: orange"
                    ></i>
                  </button>
                </div>
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
                <div class="cart_button_class">
                  <button
                    type="button"
                    class="cart_button"
                    alt="장바구니 아이콘"
                  >
                    <i
                      class="fa-solid fa-cart-shopping fa-3x"
                      style="color: orange"
                    ></i>
                  </button>
                </div>
              </div>
              <h3 class="item-name">[존쿡 델리미트] 컨츄리베이컨 120g</h3>
              <p class="current-price">
                <span class="discount-rate">2%</span>
                4,570원
              </p>
              <p class="regular-price">4,680원</p>
            </li>
          </ul>
        </div>
        <div class="recommend-slide">
          <ul class="recommend-slide-items">
            <li class="recommend-slide-item">
              <div class="item-img-container">
                <img class="item-img" src="./img/item1.jpg" alt="추천 상품" />
                <div class="cart_button_class">
                  <button
                    type="button"
                    class="cart_button"
                    alt="장바구니 아이콘"
                  >
                    <i
                      class="fa-solid fa-cart-shopping fa-3x"
                      style="color: orange"
                    ></i>
                  </button>
                </div>
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
                <div class="cart_button_class">
                  <button
                    type="button"
                    class="cart_button"
                    alt="장바구니 아이콘"
                  >
                    <i
                      class="fa-solid fa-cart-shopping fa-3x"
                      style="color: orange"
                    ></i>
                  </button>
                </div>
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
                <div class="cart_button_class">
                  <button
                    type="button"
                    class="cart_button"
                    alt="장바구니 아이콘"
                  >
                    <i
                      class="fa-solid fa-cart-shopping fa-3x"
                      style="color: orange"
                    ></i>
                  </button>
                </div>
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
                <div class="cart_button_class">
                  <button
                    type="button"
                    class="cart_button"
                    alt="장바구니 아이콘"
                  >
                    <i
                      class="fa-solid fa-cart-shopping fa-3x"
                      style="color: orange"
                    ></i>
                  </button>
                </div>
              </div>
              <h3 class="item-name">[존쿡 델리미트] 컨츄리베이컨 120g</h3>
              <p class="current-price">
                <span class="discount-rate">2%</span>
                4,570원
              </p>
              <p class="regular-price">4,680원</p>
            </li>
          </ul>
        </div>
        <div class="recommend-slide">
          <ul class="recommend-slide-items">
            <li class="recommend-slide-item">
              <div class="item-img-container">
                <img class="item-img" src="./img/item1.jpg" alt="추천 상품" />
                <div class="cart_button_class">
                  <button
                    type="button"
                    class="cart_button"
                    alt="장바구니 아이콘"
                  >
                    <i
                      class="fa-solid fa-cart-shopping fa-3x"
                      style="color: orange"
                    ></i>
                  </button>
                </div>
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
                <div class="cart_button_class">
                  <button
                    type="button"
                    class="cart_button"
                    alt="장바구니 아이콘"
                  >
                    <i
                      class="fa-solid fa-cart-shopping fa-3x"
                      style="color: orange"
                    ></i>
                  </button>
                </div>
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
                <div class="cart_button_class">
                  <button
                    type="button"
                    class="cart_button"
                    alt="장바구니 아이콘"
                  >
                    <i
                      class="fa-solid fa-cart-shopping fa-3x"
                      style="color: orange"
                    ></i>
                  </button>
                </div>
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
                <div class="cart_button_class">
                  <button
                    type="button"
                    class="cart_button"
                    alt="장바구니 아이콘"
                  >
                    <i
                      class="fa-solid fa-cart-shopping fa-3x"
                      style="color: orange"
                    ></i>
                  </button>
                </div>
              </div>
              <h3 class="item-name">[존쿡 델리미트] 컨츄리베이컨 120g</h3>
              <p class="current-price">
                <span class="discount-rate">2%</span>
                4,570원
              </p>
              <p class="regular-price">4,680원</p>
            </li>
          </ul>
        </div>
        <div class="paging_group">
          <a class="paging_atag">
            <img
              src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAkAAAAHCAQAAABwkq/rAAAAHUlEQVR42mNgAIPi/8X/kWkwA8SE0UQIMJAsCKMBBzk27fqtkcYAAAAASUVORK5CYII="
              alt="처음 페이지로 이동하기 아이콘"
            />
          </a>
          <a class="paging_atag">
            <img
              src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAUAAAAHCAQAAABqrk9lAAAAGElEQVR42mNgAIPi/8X/4QwwE5PBQJADAAKSG3cyVhtXAAAAAElFTkSuQmCC"
              alt="이전 페이지로 이동하기 아이콘"
            />
          </a>
          <a class="paging_atag">1</a>
          <a class="paging_atag">2</a>
          <a class="paging_atag">3</a>
          <a class="paging_atag">4</a>
          <a class="paging_atag">5</a>
          <a class="paging_atag">
            <img
              src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAUAAAAHCAQAAABqrk9lAAAAGUlEQVR42mMo/l/8nwECQEwCHEwGhAlRBgA2mht3SwgzrwAAAABJRU5ErkJggg=="
              alt="다음 페이지로 이동하기 아이콘"
            />
          </a>
          <a class="paging_atag">
            <img
              src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAkAAAAHCAQAAABwkq/rAAAAIElEQVR42mMo/l/8n4GBgQFGQ5kgDowmQZCwAMImhDkAb0k27Zcisn8AAAAASUVORK5CYII="
              alt="마지막 페이지로 이동하기 아이콘"
            />
          </a>
        </div>
      </section>
    </main>
    <footer>
      <jsp:include page="footer.jsp" />
    </footer>
  </body>
</html>
