<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
   	<link rel="stylesheet" href="<c:url value="/resources/CSS/header.css"/>" >
    <link rel="stylesheet" href="<c:url value="/resources/CSS/footer.css"/>" >
    <link rel="stylesheet" href="<c:url value="/resources/CSS/style.css"/>" >
    <link rel="stylesheet" href="<c:url value="/resources/CSS/navbar.css"/>" >
    <link rel="stylesheet" href="<c:url value="/resources/CSS/slider.css"/>" >
    <link rel="stylesheet" href="<c:url value="/resources/CSS/main.css"/>" >
    <link rel="stylesheet" href="<c:url value="/resources/CSS/search.css"/>" >
    <link rel="stylesheet" href="<c:url value="/resources/CSS/category.css"/>" >
    <link rel="stylesheet" href="<c:url value="/resources/CSS/goods.css"/>" >
    <link rel="stylesheet" href="<c:url value="/resources/CSS/cart.css"/>" >
    <link rel="stylesheet" href="<c:url value="/resources/CSS/wish.css"/>" >
    <link rel="stylesheet" href="<c:url value="/resources/CSS/order.css"/>" >

    <!-- Script -->
    <script
      src="https://kit.fontawesome.com/43fd0ad460.js"
      crossorigin="anonymous"
    ></script>
    <script type="text/javascript" src="../resources/JavaScript/menu.js" defer></script>
    <script type="text/javascript" src="../resources/JavaScript/goodscount.js" defer></script>
    <!--  <script type="text/javascript" src="../resources/JavaScript/cartselectdelete.js" defer></script> -->
    <script type="text/javascript" src="../resources/JavaScript/cartselectchoose.js" defer></script>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  </head>
  <body>
    <header>
      <jsp:include page="../common/header.jsp" />
    </header>
    <main role="main">
      <section class="cart_main">
        <h2>장바구니</h2>
        <div class="cart_group">
          <div class="cart_goods">
  
            <div class="cart_goodslist">
              <ul class="cart_goodslist">
                <li class="cart_goodslist">
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
                      style="cursor: pointer"
                    ></button>
                    <div class="goods_countnumber">1</div>
                    <button
                      class="goods_plusbutton"
                      type="button"
                      aria-label="수량올리기"
                      style="cursor: pointer"
                    ></button>
                  </div>
                  <div class="cart_goods_price">
                    <span
                      aria-label="판매 가격"
                      data-testid="product-price"
                      class="goods_choice_countdiv_price_span"
                      >13500원</span
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
                    style="cursor: pointer"
                    onclick="window.open('http://localhost:8090/delivery.jsp', 'btn-add-delivery', 'width=600, height=400')"
                  >
                    새 배송지 추가
                  </button>
                </div>
              </div>
              <div class="cart_price_group">
                <div class="cart_price_group_under">
                  <span class="cart_price_title">결제예정금액</span>
                  <span class="cart_price_group_value">
                    <strong class="goods_cartprice_div_price"
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
      <jsp:include page="../common/footer.jsp" />
    </footer>
  </body>
</html>
