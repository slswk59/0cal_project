<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!-- /myapp 프로젝트 경로 리턴 -->

<!-- CSS -->
<link rel="stylesheet"
	href="<c:url value="/resources/CSS/roulette.css"/>">
<link rel="stylesheet" href="/resources/CSS/style.css" />

<!-- Script -->
<script type="text/javascript"
	src="https://kit.fontawesome.com/43fd0ad460.js" crossorigin="anonymous"></script>
<script type="text/javascript"
	src="../resources/JavaScript/recommend-slider.js" defer></script>
<script type="text/javascript"
	src="../resources/JavaScript/advertisement.js" defer></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript" src="../resources/JavaScript/roulette.js"
	defer></script>

<main role="main">
	<div class="roulette_background">
		<div class="roll_image">
			<div class="roulette_div">
				<canvas width="350" height="350"></canvas>
			</div>
			<button class="roulette_button" onclick="rotate()">오늘의 디저트</button>
		</div>
	</div>

	<section class="recommend-items_cate">
		<h2>빵빵이 추천</h2>
		<div class="recommend-slide">
			<div class="recommend-slide-items">

				<c:forEach items="${chuchunList}" var="dto">
					<div class="recommend-slide">
						<ul class="recommend-slide-items">
							<li class="recommend-slide-item">
								<div class="item-img-container">
									<span style="display: none;">{$dto.pr_key}</span>
									<c:url var="path" value="goods.do">
										<c:param name="pr_key" value="${dto.pr_key}" />
									</c:url>
									<a href="${path}"> <img class="item-img"
										src="${dto.pr_thumbnail}" alt="추천 상품" />
									</a>

									<!-- 장바구니 이모티콘 -->
									<div class="cart_button_class">
										<a href="${path}">
											<button type="button" class="cart_button" alt="장바구니 아이콘">
												<i class="fa-solid fa-cart-shopping fa-2x"
													style="color: grey"></i>
											</button>
										</a>
									</div>
								</div> <!-- 서브배너 -->
								<div class="recommend-slide">
									<ul class="recommend-slide-items">
									</ul>
								</div> <a href="${path}">
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


