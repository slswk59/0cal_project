<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans:wght@300;400;700;900&display=swap"
	rel="stylesheet">

<!-- CSS -->
<link rel="stylesheet" href="./resources/CSS/header.css" />
<link rel="stylesheet" href="./resources/CSS/footer.css" />
<link rel="stylesheet" href="./resources/CSS/style.css" />
<link rel="stylesheet" href="./resources/CSS/navbar.css" />
<link rel="stylesheet" href="./resources/CSS/slider.css" />
<link rel="stylesheet" href="./resources/CSS/main.css" />
<link rel="stylesheet" href="./resources/CSS/search.css" />
<link rel="stylesheet" href="./resources/CSS/category.css" />
<link rel="stylesheet" href="./resources/CSS/goods.css" />
<link rel="stylesheet" href="./resources/CSS/cart.css" />
<link rel="stylesheet" href="./resources/CSS/wish.css" />
<link rel="stylesheet" href="./resources/CSS/order.css" />

<!-- Script -->
<script src="https://kit.fontawesome.com/43fd0ad460.js"
	crossorigin="anonymous"></script>
<script src="./resources/JavaScript/menu.js" defer></script>
<script src="./resources/JavaScript/search.js" defer></script>
</head>

<body>
	<header>
		<jsp:include page="./common/header.jsp" />
	</header>
	<main role="main">


		<section class="recommend-items_cate">
			<h2>검색 상품 목록</h2>
			<div class="sorting_div">
				<ul class="sorting_div_ul">
					<li class="sorting_group"><a href="#"
						class="li_sorting li_recommend">추천순</a></li>
					<li class="sorting_group"><a href="#"
						class="li_sorting li_new">신상품순</a></li>
					<li class="sorting_group"><a href="#"
						class="li_sorting li_sales">판매량순</a></li>
					<li class="sorting_group"><a href="#"
						class="li_sorting li_low">낮은가격순</a></li>
					<li class="sorting_group"><a href="#"
						class="li_sorting li_high">높은가격순</a></li>
				</ul>
			</div>

			<c:choose>
				<c:when test="${not empty searchList}">
					<div class="recommend-slide">
						<div class="recommend-slide-items">
							<c:forEach items="${searchList}" var="item">
								<div class="recommend-slide-item">
									<div class="item-img-container">
										<span style="display: none;">{$item.pr_key}</span>
										<c:url var="path" value="/shopping/goods.do">
											<c:param name="pr_key" value="${item.pr_key}" />
										</c:url>
										<a href="${path}"> <img class="item-img"
											src="${item.pr_thumbnail}" alt="추천 상품" />
										</a> <span style="display: none;">{$item.pr_key}</span>
										
									
										<div class="cart_button_class">
											<a href="${path}">
												<button type="button" class="cart_button" alt="장바구니 아이콘">
													<i class="fa-solid fa-cart-shopping fa-2x"
														style="color: grey"></i>
												</button>
											</a>
										</div>
									</div>
									<a href="${path}">
										<h3 class="item-name">${item.pr_name}</h3>
									</a> <a href="${path}">
										<p class="current-price">
											<span class="discount-rate"> <fmt:formatNumber
													type="percent" value="${item.pr_dcper}" />
											</span>
											<fmt:formatNumber type="number" value="${item.pr_dcprice}" />
											원
										</p>
									</a> <a href="${path}">
										<p class="regular-price">
											<fmt:formatNumber type="number" value="${item.pr_price}" />
											원
										</p>
									</a>
								</div>
							</c:forEach>
						</div>
					</div>
				</c:when>
				<c:otherwise>
					<div class="no-result-message">
						<p>검색 결과가 없습니다.</p>
					</div>
				</c:otherwise>
			</c:choose>
			<footer>
				<jsp:include page="./common/footer.jsp" />
			</footer>
</body>
</html>