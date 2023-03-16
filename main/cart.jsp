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
    <link rel="stylesheet" href="./CSS/order.css" />

    <!-- Script -->
    <script
      src="https://kit.fontawesome.com/43fd0ad460.js"
      crossorigin="anonymous"
    ></script>
    <script src="./JavaScript/img-slider.js" defer></script>
    <script src="./JavaScript/menu.js" defer></script>
    <script src="./JavaScript/recommend-slider.js" defer></script>
    <script src="./JavaScript/advertisement.js" defer></script>
    <script src="./JavaScript/cartcount.js" defer></script>
    <script src="./JavaScript/cartselectdelete.js" defer></script>
    <script src="./JavaScript/cartselectchoose.js" defer></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  </head>
  <body>
    <header>
      <jsp:include page="header.jsp" />
    </header>
    <main role="main">
      <section class="cart_main">
        <h2>장바구니</h2>
        <div class="cart_group">
          <div class="cart_goods">
            <div class="all_check">
              <label class="all_choose">
                <input type="checkbox" class="all_choose_checkbox" checked />
                <div class="check_icon_group">
                  <!--<svg
                    width="24"
                    height="24"
                    viewBox="0 0 24 24"
                    fill="none"
                    xmlns="http://www.w3.org/2000/svg"
                  >
                    <path
                      d="M12 24C18.6274 24 24 18.6274 24 12C24 5.37258 18.6274 0 12 0C5.37258 0 0 5.37258 0 12C0 18.6274 5.37258 24 12 24Z"
                      fill="#ffa500"
                    ></path>
                    <path
                      d="M7 12.6667L10.3846 16L18 8.5"
                      stroke="#fff"
                      stroke-width="1.5"
                      stroke-linecap="round"
                      stroke-linejoin="round"
                    ></path>
                  </svg>-->
                </div>
                <span class="all_choose">전체선택</span>
              </label>
              <span class="l"></span>
              <button class="select_delete">선택삭제</button>
            </div>
            <div class="cart_goodslist">
              <ul class="cart_goodslist">
                <li class="cart_goodslist">
                  <label class="all_choose2">
                    <input type="checkbox" class="choose_checkbox" checked />
                    <div class="check_icon_group">
                      <!--<svg
                        width="24"
                        height="24"
                        viewBox="0 0 24 24"
                        fill="none"
                        xmlns="http://www.w3.org/2000/svg"
                      >
                        <path
                          d="M12 24C18.6274 24 24 18.6274 24 12C24 5.37258 18.6274 0 12 0C5.37258 0 0 5.37258 0 12C0 18.6274 5.37258 24 12 24Z"
                          fill="#ffa500"
                        ></path>
                        <path
                          d="M7 12.6667L10.3846 16L18 8.5"
                          stroke="#fff"
                          stroke-width="1.5"
                          stroke-linecap="round"
                          stroke-linejoin="round"
                        ></path>
                      </svg>-->
                    </div>
                  </label>
                  <a class="cart_goodslist_image_a">
                    <span class="cart_goodslist_image_span"></span>
                  </a>
                  <div class="cart_gooslist_goodsname_group">
                    <a class="cart_gooslist_goodsname_group">
                      <p class="cart_gooslist_goodsname">베리 까눌레</p>
                    </a>
                  </div>
                  <div class="goods_choice_countdiv_countplus">
                    <button
                      class="goods_minusbutton"
                      type="button"
                      aria-label="수량내리기"
                    ></button>
                    <div class="goods_countnumber">1</div>
                    <button
                      class="goods_plusbutton"
                      type="button"
                      aria-label="수량올리기"
                    ></button>
                  </div>
                  <div class="cart_goods_price">
                    <span
                      aria-label="판매 가격"
                      data-testid="product-price"
                      class="cart_goods_dcprice"
                      >13500원</span
                    >
                    <span
                      aria-label="판매 가격"
                      data-testid="selling-price"
                      class="cart_goods_price"
                      >15000원</span
                    >
                  </div>
                  <button
                    class="cart_cancle_button"
                    type="button"
                    data-testid="delete"
                  >
                    <span class="cart_cancle_button_span"></span>
                  </button>
                </li>
                <li class="cart_goodslist">
                  <label class="all_choose2_1">
                    <input type="checkbox" class="choose_checkbox" checked />
                    <div class="check_icon_group">
                      <!--<svg
                        width="24"
                        height="24"
                        viewBox="0 0 24 24"
                        fill="none"
                        xmlns="http://www.w3.org/2000/svg"
                      >
                        <path
                          d="M12 24C18.6274 24 24 18.6274 24 12C24 5.37258 18.6274 0 12 0C5.37258 0 0 5.37258 0 12C0 18.6274 5.37258 24 12 24Z"
                          fill="#ffa500"
                        ></path>
                        <path
                          d="M7 12.6667L10.3846 16L18 8.5"
                          stroke="#fff"
                          stroke-width="1.5"
                          stroke-linecap="round"
                          stroke-linejoin="round"
                        ></path>
                      </svg>-->
                    </div>
                  </label>
                  <a class="cart_goodslist_image_a">
                    <span class="cart_goodslist_image_span"></span>
                  </a>
                  <div class="cart_gooslist_goodsname_group">
                    <a class="cart_gooslist_goodsname_group">
                      <p class="cart_gooslist_goodsname">베리 까눌레</p>
                    </a>
                  </div>
                  <div class="goods_choice_countdiv_countplus">
                    <button
                      class="goods_minusbutton"
                      type="button"
                      aria-label="수량내리기"
                    ></button>
                    <div class="goods_countnumber">1</div>
                    <button
                      class="goods_plusbutton"
                      type="button"
                      aria-label="수량올리기"
                    ></button>
                  </div>
                  <div class="cart_goods_price">
                    <span
                      aria-label="판매 가격"
                      data-testid="product-price"
                      class="cart_goods_dcprice"
                      >13500원</span
                    >
                    <span
                      aria-label="판매 가격"
                      data-testid="selling-price"
                      class="cart_goods_price"
                      >15000원</span
                    >
                  </div>
                  <button
                    class="cart_cancle_button"
                    type="button"
                    data-testid="delete"
                  >
                    <span class="cart_cancle_button_span"></span>
                  </button>
                </li>
                <li class="cart_goodslist">
                  <label class="all_choose2_2">
                    <input type="checkbox" class="choose_checkbox" checked />
                    <div class="check_icon_group">
                      <!--<svg
                        width="24"
                        height="24"
                        viewBox="0 0 24 24"
                        fill="none"
                        xmlns="http://www.w3.org/2000/svg"
                      >
                        <path
                          d="M12 24C18.6274 24 24 18.6274 24 12C24 5.37258 18.6274 0 12 0C5.37258 0 0 5.37258 0 12C0 18.6274 5.37258 24 12 24Z"
                          fill="#ffa500"
                        ></path>
                        <path
                          d="M7 12.6667L10.3846 16L18 8.5"
                          stroke="#fff"
                          stroke-width="1.5"
                          stroke-linecap="round"
                          stroke-linejoin="round"
                        ></path>
                      </svg>-->
                    </div>
                  </label>
                  <a class="cart_goodslist_image_a">
                    <span class="cart_goodslist_image_span"></span>
                  </a>
                  <div class="cart_gooslist_goodsname_group">
                    <a class="cart_gooslist_goodsname_group">
                      <p class="cart_gooslist_goodsname">베리 까눌레</p>
                    </a>
                  </div>
                  <div class="goods_choice_countdiv_countplus">
                    <button
                      class="goods_minusbutton"
                      type="button"
                      aria-label="수량내리기"
                    ></button>
                    <div class="goods_countnumber">1</div>
                    <button
                      class="goods_plusbutton"
                      type="button"
                      aria-label="수량올리기"
                    ></button>
                  </div>
                  <div class="cart_goods_price">
                    <span
                      aria-label="판매 가격"
                      data-testid="product-price"
                      class="cart_goods_dcprice"
                      >13500원</span
                    >
                    <span
                      aria-label="판매 가격"
                      data-testid="selling-price"
                      class="cart_goods_price"
                      >15000원</span
                    >
                  </div>
                  <button
                    class="cart_cancle_button"
                    type="button"
                    data-testid="delete"
                  >
                    <span class="cart_cancle_button_span"></span>
                  </button>
                </li>
              </ul>
            </div>
          </div>
          <div class="cart_delivery_dest_group">
            <div class="cart_delivery_dest">
              <div class="cart_destination">
                <h3 class="cart_destination_name">배송지</h3>
                <div class="cart_destination_address_group">
                  <p class="cart_destination_address">
                    서울 서초구 서초대로77길 54 서초더블유타워 13층
                  </p>
                  <button
                    class="cart_destination_change"
                    type="button"
                    height="36"
                    radius="3"
                  >
                    <a
                      href="http://localhost:8090/csa.jsp"
                      target="_blank"
                      class="btn_transparent"
                      id="delivery_edit_btn"
                    >
                    <span class="cart_destination_change">배송지 변경</span>
                  </button>
                </a>
                </div>
              </div>
              <div class="cart_price_group">
                <div class="cart_price_group_under">
                  <span class="cart_price_title">결제예정금액</span>
                  <span class="cart_price_group_value">
                    <strong class="cart_price_group_value_strong"
                      >52,950</strong
                    >
                    <span class="cart_price_group_value_won">원</span></span
                  >
                </div>
              </div>
              <div class="cart_order_button_div">
                <button
                  class="cart_order_button"
                  type="button"
                  height="56"
                  radius="3"
                >
                  <span class="cart_order_button_text">주문하기</span>
                </button>
              </div>
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
