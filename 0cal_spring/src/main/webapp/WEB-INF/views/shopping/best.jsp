<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!-- /myapp 프로젝트 경로 리턴 -->

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
	rel="stylesheet" />

<!-- CSS -->
<link rel="stylesheet" href="<c:url value="/resources/CSS/header.css"/>">
<link rel="stylesheet" href="<c:url value="/resources/CSS/footer.css"/>">
<link rel="stylesheet" href="<c:url value="/resources/CSS/style.css"/>">
<link rel="stylesheet" href="<c:url value="/resources/CSS/navbar.css"/>">
<link rel="stylesheet" href="<c:url value="/resources/CSS/slider.css"/>">
<link rel="stylesheet" href="<c:url value="/resources/CSS/main.css"/>">
<link rel="stylesheet" href="<c:url value="/resources/CSS/search.css"/>">
<link rel="stylesheet"
	href="<c:url value="/resources/CSS/category.css"/>">
<link rel="stylesheet" href="<c:url value="/resources/CSS/goods.css"/>">
<link rel="stylesheet" href="<c:url value="/resources/CSS/cart.css"/>">
<link rel="stylesheet" href="<c:url value="/resources/CSS/wish.css"/>">
<link rel="stylesheet" href="<c:url value="/resources/CSS/order.css"/>">
<!-- Script -->
<script type="text/javascript"
	src="https://kit.fontawesome.com/43fd0ad460.js" crossorigin="anonymous"></script>
<script type="text/javascript"
	src="../resources/JavaScript/img-slider.js" defer></script>
<script type="text/javascript" src="../resources/JavaScript/menu.js"
	defer></script>
<script type="text/javascript"
	src="../resources/JavaScript/recommend-slider.js" defer></script>
<script type="text/javascript"
	src="../resources/JavaScript/advertisement.js" defer></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- 파비콘 -->
<link rel="shortcut icon" href="../resources/img/favicon.ico"
	type="image/x-icon">
<link rel="icon" href="../resources/img/favicon.ico" type="image/x-icon">
</head>
<body>
	<header>
		<jsp:include page="../common/header.jsp" />
	</header>
	<main role="main">
	<br>
	<br>
	<br>

	
		<!-- 추천 배너 -->
		<div class="banner-container">

			<a href="${pageContext.request.contextPath}/shopping/genderage.do">
				<img
				src="${pageContext.request.contextPath}/resources/img/베스트-배너.jpg"
				alt="banner" />
			</a>

			<section class="recommend-items_cate">
				<h2>모두의 인기 디저트</h2>

				<div class="recommend-slide">
					<div class="recommend-slide-items">

						<c:forEach items="${bestList}" var="dto">

							<div class="recommend-slide-item">
								<div class="item-img-container">
									<span style="display: none;">${dto.pr_key}</span>
									<c:url var="path" value="goods.do">
										<c:param name="pr_key" value="${dto.pr_key}" />
									</c:url>
									<a href="${path}"> <img class="item-img"
										src="${dto.pr_thumbnail}" alt="추천 상품" />
									</a>
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
									<h3 class="item-name">${dto.pr_name}</h3>
								</a> <a href="${path}">
									<p class="current-price">
										<span class="discount-rate"><fmt:formatNumber
												type="percent" value="${dto.pr_dcper}" /></span>
										<fmt:formatNumber type="number" value="${dto.pr_dcprice}" />
										원
									</p>
								</a> <a href="${path}">
									<p class="regular-price">
										<fmt:formatNumber type="number" value="${dto.pr_price}" />
										원
									</p>
								</a>
							</div>
						</c:forEach>
					</div>
				</div>

			</section>
	</main>
	<footer>
		<jsp:include page="/WEB-INF/views/common/footer.jsp" />
	</footer>
</body>
</html>
