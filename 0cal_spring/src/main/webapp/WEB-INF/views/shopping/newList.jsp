<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

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
    <script type="text/javascript" src="https://kit.fontawesome.com/43fd0ad460.js" crossorigin="anonymous"></script>
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
          <div class="recommend-slide-items">
          
          <c:forEach items="${aList}" var="dto">
          
            <div class="recommend-slide-item">
              <div class="item-img-container">
              	<span style="display:none;">{$dto.pr_key}</span>
                <c:url var="path" value="goods.do">
					<c:param name="pr_key" value="${dto.pr_key}" />
				</c:url>
				<a href="${path}">
                  <img class="item-img" src="${dto.pr_thumbnail}" alt="추천 상품" />
                </a>
                <div class="cart_button_class">
                  <a href="${path}">
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

              <a href="${path}">
                <h3 class="item-name">${dto.pr_name}</h3>
              </a>
              <a href="${path}">
                <p class="current-price">
                  <span class="discount-rate"><fmt:formatNumber type="percent" value="${dto.pr_dcper}" /></span>
                  ${dto.pr_dcprice}원
                </p>
              </a>
              <a href="${path}">
                <p class="regular-price">${dto.pr_price}원</p>
              </a>
            </div>
            </c:forEach>
          </div>
        </div>
        
        <div class="paging_group">
     
          <a class="paging_atag" href="newList.do?currentPage=1">
            <img
              src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAkAAAAHCAQAAABwkq/rAAAAHUlEQVR42mNgAIPi/8X/kWkwA8SE0UQIMJAsCKMBBzk27fqtkcYAAAAASUVORK5CYII="
              alt="처음 페이지로 이동하기 아이콘"
            />
          </a>
          	<c:if test="${pv.currentPage>1}">
          	<a class="paging_atag" href="newList.do?currentPage=${pv.startPage-pv.blockPage}">
            	<img
	              src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAUAAAAHCAQAAABqrk9lAAAAGElEQVR42mNgAIPi/8X/4QwwE5PBQJADAAKSG3cyVhtXAAAAAElFTkSuQmCC"
	              alt="이전 페이지로 이동하기 아이콘"
	            />
          	</a>
       		</c:if>
          	<c:forEach var="i" begin="${pv.startPage}" end="${pv.endPage}">
          		<c:choose>
          			<c:when test="${i==pv.currentPage}">
          				<a class="paging_atag" style="color: orange;" href="newList.do?currentPage=${i}">${i}</a>
          			</c:when>
         			 <c:otherwise>
         				 <a class="paging_atag" href="newList.do?currentPage=${i}">${i}</a>
         			 </c:otherwise>
       			</c:choose>
          </c:forEach>
			<c:if test="${pv.endPage < pv.totalPage}">
	          <a class="paging_atag" href="newList.do?currentPage=${pv.startPage + pv.blockPage}">
	            <img
	              src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAUAAAAHCAQAAABqrk9lAAAAGUlEQVR42mMo/l/8nwECQEwCHEwGhAlRBgA2mht3SwgzrwAAAABJRU5ErkJggg=="
	              alt="다음 페이지로 이동하기 아이콘"
	            />
	          </a>
          </c:if>
          <a class="paging_atag" href="newList.do?currentPage=${pv.totalPage}">
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
