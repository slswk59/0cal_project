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
    <link rel="stylesheet" href="./CSS/cart.css" />
    <link rel="stylesheet" href="./CSS/wish.css" />
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
              <a class="main_user_div_left_column_a"
                >주문 내역<span class="css-e41glx e1x0rfoo0"></span
              ></a>
            </li>
            <li class="main_user_div_left_column_li">
              <a class="main_user_div_left_column_a"
                >찜한 상품<span class="css-e41glx e1x0rfoo0"></span
              ></a>
            </li>
            <li class="main_user_div_left_column_li">
              <a class="main_user_div_left_column_a"
                >배송지 관리<span class="css-e41glx e1x0rfoo0"></span
              ></a>
            </li>
            <li class="main_user_div_left_column_li">
              <a class="main_user_div_left_column_a"
                >개인 정보 수정<span class="css-e41glx e1x0rfoo0"></span
              ></a>
            </li>
          </ul>
          <a href="#" class="inquery_atag"
            ><div class="inquery_atag_div">
              <span class="inquery_atag_div_span_upper"
                >도움이 필요하신가요 ?</span
              ><span class="inquery_atag_div_span_lower">1:1 문의하기</span>
            </div>

            <span class="inquery_span_icon"
              ><i class="fa-solid fa-angle-right fa-lg"></i></span
          ></a>
        </div>

        <div class="main_under_div_right">
          <div class="main_under_div_right_title_div">
            <h2 class="main_under_div_right_title_div_h2">찜한 상품</h2>
          </div>
          <div class="main_under_goods_list">
            <li class="cart_goodslist">
              <a class="cart_goodslist_image_a">
                <span class="cart_goodslist_image_span"></span>
              </a>
              <div class="main_under_goods_list_title_button">
                <div class="main_under_goods_list_title_button_underdiv">
                  <div class="main_under_goods_list_title_only">
                    <a
                      href="https://drive.google.com/uc?id=1cDazD7rq82SKpTwP3hUBQtjAskzgHGF7"
                      class="main_under_goods_list_title_only_a"
                      >베리 까눌레</a
                    >
                  </div>
                  <div class="main_under_goods_list_price_div">
                    <span class="main_under_goods_list_price_dcper">10%</span
                    ><span class="main_under_goods_list_dcprice">13500원</span
                    ><span class="main_under_goods_list_price">15000원</span>
                  </div>
                </div>
                <div class="main_under_goods_list_buttons">
                  <button
                    class="main_under_goods_list_buttons_cancle"
                    type="button"
                    width="104"
                    height="36"
                    radius="4"
                  >
                    <span class="main_under_goods_list_buttons_cancle"
                      >삭제</span
                    ></button
                  ><button
                    class="main_under_goods_list_buttons_add"
                    type="button"
                    width="104"
                    height="36"
                    radius="4"
                  >
                    <span class="main_under_goods_list_buttons_add"
                      ><img
                        src="./img/cart.svg"
                        alt=""
                        class="main_under_goods_list_buttons_add_img"
                      />담기</span
                    >
                  </button>
                </div>
              </div>
            </li>
            <li class="cart_goodslist">
              <a class="cart_goodslist_image_a">
                <span class="cart_goodslist_image_span"></span>
              </a>
              <div class="main_under_goods_list_title_button">
                <div class="main_under_goods_list_title_button_underdiv">
                  <div class="main_under_goods_list_title_only">
                    <a
                      href="https://drive.google.com/uc?id=1cDazD7rq82SKpTwP3hUBQtjAskzgHGF7"
                      class="main_under_goods_list_title_only_a"
                      >베리 까눌레</a
                    >
                  </div>
                  <div class="main_under_goods_list_price_div">
                    <span class="main_under_goods_list_price_dcper">10%</span
                    ><span class="main_under_goods_list_dcprice">13500원</span
                    ><span class="main_under_goods_list_price">15000원</span>
                  </div>
                </div>
                <div class="main_under_goods_list_buttons">
                  <button
                    class="main_under_goods_list_buttons_cancle"
                    type="button"
                    width="104"
                    height="36"
                    radius="4"
                  >
                    <span class="main_under_goods_list_buttons_cancle"
                      >삭제</span
                    ></button
                  ><button
                    class="main_under_goods_list_buttons_add"
                    type="button"
                    width="104"
                    height="36"
                    radius="4"
                  >
                    <span class="main_under_goods_list_buttons_add"
                      ><img
                        src="./img/cart.svg"
                        alt=""
                        class="main_under_goods_list_buttons_add_img"
                      />담기</span
                    >
                  </button>
                </div>
              </div>
            </li>
            <li class="cart_goodslist">
              <a class="cart_goodslist_image_a">
                <span class="cart_goodslist_image_span"></span>
              </a>
              <div class="main_under_goods_list_title_button">
                <div class="main_under_goods_list_title_button_underdiv">
                  <div class="main_under_goods_list_title_only">
                    <a
                      href="https://drive.google.com/uc?id=1cDazD7rq82SKpTwP3hUBQtjAskzgHGF7"
                      class="main_under_goods_list_title_only_a"
                      >베리 까눌레</a
                    >
                  </div>
                  <div class="main_under_goods_list_price_div">
                    <span class="main_under_goods_list_price_dcper">10%</span
                    ><span class="main_under_goods_list_dcprice">13500원</span
                    ><span class="main_under_goods_list_price">15000원</span>
                  </div>
                </div>
                <div class="main_under_goods_list_buttons">
                  <button
                    class="main_under_goods_list_buttons_cancle"
                    type="button"
                    width="104"
                    height="36"
                    radius="4"
                  >
                    <span class="main_under_goods_list_buttons_cancle"
                      >삭제</span
                    ></button
                  ><button
                    class="main_under_goods_list_buttons_add"
                    type="button"
                    width="104"
                    height="36"
                    radius="4"
                  >
                    <span class="main_under_goods_list_buttons_add"
                      ><img
                        src="./img/cart.svg"
                        alt=""
                        class="main_under_goods_list_buttons_add_img"
                      />담기</span
                    >
                  </button>
                </div>
              </div>
            </li>
          </div>
        </div>
      </div>
    </main>
    <footer>
      <jsp:include page="footer.jsp" />
    </footer>
  </body>
</html>
