<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
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
    <link rel="stylesheet" href="<c:url value="/resources/CSS/header.css" />" >
    <link rel="stylesheet" href="<c:url value="/resources/CSS/footer.css" />" >
    <link rel="stylesheet" href="<c:url value="/resources/CSS/style.css" />" >
    <link rel="stylesheet" href="<c:url value="/resources/CSS/navbar.css" />" >
    <link rel="stylesheet" href="<c:url value="/resources/CSS/slider.css" />" >
    <link rel="stylesheet" href="<c:url value="/resources/CSS/main.css" />" >
    <link rel="stylesheet" href="<c:url value="/resources/CSS/search.css" />" >
    <link rel="stylesheet" href="<c:url value="/resources/CSS/category.css" />" >
    <link rel="stylesheet" href="<c:url value="/resources/CSS/goods.css" />" >
    <link rel="stylesheet" href="<c:url value="/resources/CSS/cart.css" />" >
    <link rel="stylesheet" href="<c:url value="/resources/CSS/wish.css" />" >
    <link rel="stylesheet" href="<c:url value="/resources/CSS/order.css" />" >

    <!-- Script -->
    <script src="https://kit.fontawesome.com/43fd0ad460.js"crossorigin="anonymous"></script>
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

      <div class="main_under_div">
        <div class="main_under_div_left">
          <div class="main_under_div_left_text">마이칼로리</div>
          <ul class="main_user_div_left_list">
            <li class="main_user_div_left_column_li">
              <a class="main_user_div_left_column_a" href="${pageContext.request.contextPath}/shopping/orders.do"
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
              <a class="main_user_div_left_column_a" href="${pageContext.request.contextPath}/member/userInfoEdit.do"
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
            <h2 class="main_under_div_right_title_div_h2">주문 내역</h2>
          </div>
          <div class="main_under_div_right_line_div"></div>
          <div class="main_under_goods_list">
          
    		<c:forEach items="${aList}" var="dto">
            <div class="cart_goodslist_order">
              <div class="ordertime_group_div">
              	<span style="display:none;">{$dto.pr_key}</span>
                <span class="ordertime_detail">${dto.or_date}</span>
                <c:url var="path" value="or_detail.do">
					<c:param name="or_key" value="${dto.or_key}" />
				</c:url>
                <a class="ordertime_detail_menu" href="${path}">주문내역 상세보기</a>
              </div>
              <div class="orderlist_group_div">
                <div class="orderlist_picture_text_div">
                  <a class="cart_goodslist_image_a">
                    <span class="cart_goodslist_image_span" style="background-image: url(${dto.productDTO.pr_thumbnail})"></span>
                  </a>
                  <div class="orderlist_group_div_textlist">
                    <dl class="orderlist_group_div_text_dl">
                      <dt class="orderlist_group_div_text_dt">상품명</dt>
                      <dd class="orderlist_group_div_text_dd">${dto.productDTO.pr_name}외 다수</dd>
                    </dl>
                    <dl class="orderlist_group_div_text_dl">
                      <dt class="orderlist_group_div_text_dt">주문번호</dt>
                      <dd class="orderlist_group_div_text_dd">${dto.or_key}</dd>
                    </dl>
                    <dl class="orderlist_group_div_text_dl">
                      <dt class="orderlist_group_div_text_dt">결제금액</dt>
                      <dd class="orderlist_group_div_text_dd">${dto.or_price}원</dd>
                    </dl>
                  </div>
                </div>
                <div class="orderlist_orderstatus_inqury_div">
                  <span class="orderlist_orderstatus_span">배송완료</span>
                  <div class="orderlist_inqury_div">
                    <button
                      class="orderlist_inqury_buttons cart_review_button"
                      type="button"
                      height="36"
                      radius="3"
                    >
                      <span class="orderlist_inqury_span">1:1 문의</span>
                    </button>
                  </div>
                </div>
              </div>
            </div>
		</c:forEach>
     
            
          </div>
        </div>
      </div>
    </main>
    <footer>
      <jsp:include page="../common/footer.jsp" />
    </footer>
  </body>
</html>
