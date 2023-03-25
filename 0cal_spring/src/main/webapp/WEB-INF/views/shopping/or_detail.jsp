<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<!-- Script -->

<script type="text/javascript" src="../resources/JavaScript/menu.js"
	defer></script>
<script type="text/javascript"
	src="../resources/JavaScript/advertisement.js" defer></script>
<script type="text/javascript"
	src="../resources/JavaScript/deletecommend.js" defer></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<script>
	function openPopup(url) {
		var popupWindow = window.open(url, "popupWindow", "width=900,height=500,scrollbars=yes");
		popupWindow.focus();
	}
</script>
</head>
<body>
	<main role="main">
		<section id="advertise_cate">
			<div class="ad-img"></div>
		</section>

		<div class="main_under_div">
			<div class="main_under_div_left">
				<div class="main_under_div_left_text">마이칼로리</div>
				<ul class="main_user_div_left_list">
					<li class="main_user_div_left_column_li"><a
						class="main_user_div_left_column_a"
						href="${pageContext.request.contextPath}/shopping/orders.do">주문
							내역<span class="css-e41glx e1x0rfoo0"></span>
					</a></li>
					<li class="main_user_div_left_column_li"><a
						class="main_user_div_left_column_a"
						href="${pageContext.request.contextPath}/shopping/wish.do">찜한
							상품<span class="css-e41glx e1x0rfoo0"></span>
					</a></li>
					<li class="main_user_div_left_column_li"><a
						class="main_user_div_left_column_a" href="#"
						onclick="openPopup('${pageContext.request.contextPath}/shopping/delivery.do')">배송지
							관리<span class="css-e41glx e1x0rfoo0"></span>
					</a></li>
					<li class="main_user_div_left_column_li"><a
						class="main_user_div_left_column_a"
						href="${pageContext.request.contextPath}/member/userInfoEdit.do">개인
							정보 수정<span class="css-e41glx e1x0rfoo0"></span>
					</a></li>
				</ul>
			</div>

			<div class="main_under_div_right">
				<div class="main_under_div_right_title_div">
					<h2 class="main_under_div_right_title_div_h2">주문내역 상세보기</h2>
				</div>

				<div class="main_under_div_right_line_div"></div>
				<c:forEach items="${aList}" var="dto">
					<div class="main_under_goods_list">

						<div class="orderlist_group_div">

							<div class="orderlist_picture_text_div">
								<a class="cart_goodslist_image_a"> <span
									style="display: none;">{$dto.or_detailDTO.or_detail_key}</span>
									<span class="cart_goodslist_image_span"
									style="background-image: url(${dto.productDTO.pr_thumbnail})"></span>
								</a>
								<div class="orderlist_group_div_textlist">
									<dl class="orderlist_group_div_text_dl">
										<dt class="orderlist_group_div_text_dt">상품명</dt>
										<dd class="orderlist_group_div_text_dd">${dto.productDTO.pr_name}</dd>
									</dl>
									<dl class="orderlist_group_div_text_dl">
										<dt class="orderlist_group_div_text_dt">수량</dt>
										<dd class="orderlist_group_div_text_dd">${dto.or_detailDTO.or_pr_count}</dd>
									</dl>
									<dl class="orderlist_group_div_text_dl">
										<dt class="orderlist_group_div_text_dt">결제금액</dt>
										<dd class="orderlist_group_div_text_dd">${dto.or_detailDTO.or_pr_price}원</dd>
									</dl>
								</div>
							</div>

							<div class="orderlist_cart_inqury_div">
								<div class="orderlist_inqury_div">
									<button class="orderlist_inqury_buttons cart_input_button"
										type="button" height="36" radius="3" style="cursor: pointer">
										<span class="orderlist_inqury_span">장바구니 담기</span>
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
</body>
</html>
