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
  <script type="text/javascript" src="https://kit.fontawesome.com/43fd0ad460.js" crossorigin="anonymous"></script>
    <script type="text/javascript" src="../resources/JavaScript/img-slider.js" defer></script>
    <script type="text/javascript" src="../resources/JavaScript/menu.js" defer></script>
    <script type="text/javascript" src="../resources/JavaScript/recommend-slider.js" defer></script>
    <script type="text/javascript" src="../resources/JavaScript/advertisement.js" defer></script>
    <script type="text/javascript" src="../resources/JavaScript/goodscount.js" defer></script>
  </head>
  <body>
    <header>
       <jsp:include page="../common/header.jsp" />
    </header>

    <main role="main" class="goods_main">
      <div class="goods_thumbnail" style="background: url(${dto.pr_thumbnail}), no-repeat 50% 50%;"></div>
      <section class="goods_desc_section">
        <div class="goods_title">
        	<span style="display:none;">{$dto.pr_key}</span>
          <h1 class="goods_title_h1">${dto.pr_name}</h1>
        </div>
        <h2 class="goods_pricegroup">
          <span class="goods_dcper"><fmt:formatNumber type="percent" value="${dto.pr_dcper}" /></span>
          <span class="goods_dcprice">${dto.pr_dcprice}</span>
          <span class="goods_pricewon">원</span>
        </h2>
        <span class="goods_price">${dto.pr_price}원</span>
        <div class="goods_descriptions_div">
          <dl class="goods_decription">
            <dt class="goods_key_dt">판매자</dt>
            <dd class="goods_value_dd">
              <p class="goods_value_p">빵칼로리</p>
            </dd>
          </dl>
          <dl class="goods_decription">
            <dt class="goods_key_dt">판매단위</dt>
            <dd class="goods_value_dd">
              <p class="goods_value_p">1개</p>
            </dd>
          </dl>
          <dl class="goods_decription">
            <dt class="goods_key_dt">중량/용량</dt>
            <dd class="goods_value_dd">
              <p class="goods_value_p">상품상세정보참조</p>
            </dd>
          </dl>
          <dl class="goods_decription goods_decription_lastone">
            <dt class="goods_key_dt">원산지</dt>
            <dd class="goods_value_dd">
              <p class="goods_value_p">상품상세정보참조</p>
            </dd>
          </dl>
        </div>

        <div class="goods_choice">
          <dl class="goods_choice_dl">
            <dt class="goods_choice_dt">상품선택</dt>
            <dd class="goods_choice_dd">
              <div class="goods_choice_divs">
                <div class="goods_choice_namediv">
                  <span class="goods_choice_namediv_span">${dto.pr_name}</span>
                </div>
                <div class="goods_choice_countdiv">
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
                  <div class="goods_choice_countdiv_price">
                    <span class="goods_choice_countdiv_price_span"
                      >13500원</span
                    >
                  </div>
                </div>
              </div>
            </dd>
          </dl>
        </div>

        <div class="goods_cartprice_upperdiv">
          <div class="goods_cartprice_div">
            <span class="goods_cartprice_div_title">총 상품금액 :</span>
            <span class="goods_cartprice_div_price">13,500</span>
            <span class="goods_cartprice_div_text">원</span>
          </div>
        </div>
        <div class="goods_buttons">
          <button
            class="wish_button"
            type="button"
            width="56"
            height="56"
            radius="3"
            style="cursor: pointer"
            onclick="toggleWishList()"
          >
            <span class="wish_button_span">
              <i class="fa fa-heart-o" style="font-size: 36px"></i>
            </span>
          </button>

          <div class="cart_button_div">
            <button
              class="goods_cart_button"
              type="button"
              radius="3"
              style="cursor: pointer"
              onclick="alert('장바구니 목록에 추가되었습니다.')"
            >
              <span class="cart_button_span">장바구니 담기</span>
            </button>
          </div>
        </div>
      </section>
    </main>
    <div id="description" class="description">
      <div class="pic">
        <img
          src="${dto.pr_detailimage}"
        />
      </div>
    </div>
    <footer>
     <jsp:include page="../common/footer.jsp" />
    </footer>
  </body>
</html>