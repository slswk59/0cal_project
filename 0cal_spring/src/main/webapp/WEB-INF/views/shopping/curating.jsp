<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!-- /myapp 프로젝트 경로 리턴 -->

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>0칼로리 :: 디저트는 빵칼로리</title>

<!-- Script -->
<script type="text/javascript"
	src="https://kit.fontawesome.com/43fd0ad460.js" crossorigin="anonymous"></script>
<script type="text/javascript"
	src="./resources/JavaScript/img-slider.js" defer></script>
<script type="text/javascript" src="./resources/JavaScript/menu.js"
	defer></script>
<script type="text/javascript"
	src="./resources/JavaScript/recommend-slider.js" defer></script>
<script type="text/javascript"
	src="./resources/JavaScript/advertisement.js" defer></script>
<script type="module" defer
	src="./resources/JavaScript/jquery-1.12.4.js"></script>
<!-- 로그인 상태 체크 ajax 호출하기 위해 header.jsp import 하는 파일에서 선언 필요 -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

</head>
<body>
	<main role="main">
		<!-- 서브배너 -->
		<section id="advertise_cate">
			<div class="ad-img"></div>
		</section>

		<section class="recommend-items_cate">
			<h2>10대 여성에게 인기있어요</h2>
			<div class="recommend-slide">
				<div class="recommend-slide-items">
					<c:forEach items="${dramaList}" var="dto">
						<div class="recommend-slide-item">
							<div class="item-img-container">
								<span style="display: none;">${dto.pr_key}</span>
								<c:url var="path" value="/shopping/goods.do">
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

		<section class="recommend-items_cate">
			<h2>나의 맞춤 상품</h2>
			<div class="recommend-slide">
				<div class="recommend-slide-items">

					<c:forEach items="${organicList}" var="dto">

						<div class="recommend-slide-item">
							<div class="item-img-container">
								<span style="display: none;">{$dto.pr_key}</span>
								<c:url var="path" value="/shopping/goods.do">
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
</body>
</html>