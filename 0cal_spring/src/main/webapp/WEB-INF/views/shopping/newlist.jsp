<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}" /> <!-- /myapp 프로젝트 경로 리턴 -->

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
    <script type="text/javascript" src="../resources/JavaScript/img-slider.js" defer></script>
    <script type="text/javascript" src="../resources/JavaScript/menu.js" defer></script>
    <script type="text/javascript" src="../resources/JavaScript/recommend-slider.js" defer></script>
    <script type="text/javascript" src="../resources/JavaScript/advertisement.js" defer></script>
  </head>
  <body>
    <header>
      <jsp:include page="../common/header.jsp" />
    </header>
    <main role="main">
      <section id="advertise_cate">
        <div class="ad-img"></div>
      </section>

      <section class="recommend-items_cate">
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
                  <img class="item-img" src="../resources/img/item1.jpg" alt="추천 상품" />
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
      <jsp:include page="../common/footer.jsp" />
    </footer>
  </body>
</html>
