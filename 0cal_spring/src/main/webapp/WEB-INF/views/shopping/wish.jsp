<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page import="javax.servlet.http.HttpSession"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<link rel="stylesheet" href="/resources/CSS/wish.css" />

<script src="https://kit.fontawesome.com/43fd0ad460.js"
	crossorigin="anonymous"></script>
<script type="text/javascript"
	src="../resources/JavaScript/img-slider.js" defer></script>
<script type="text/javascript"
	src="../resources/JavaScript/advertisement.js" defer></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<script type="text/javascript"
	src="../resources/JavaScript/goodscount.js" defer></script>

<script>

	//찜 삭제
	$(document).ready(function() {
		$(".main_under_goods_list_buttons_cancle").on("click", function(e) {
			e.preventDefault();
			const wish_key = parseInt($(this).data("wish_key"));
			$(".wish_key").val(wish_key);
			$(this).parent("div").find(".wish_key").val(wish_key);
			console.log(wish_key);
			$(".delete_form").submit();
		});

		$(".main_under_goods_list_buttons_add").on("click", function(e) {
			e.preventDefault();
			const cart_count = 1;
			const cart_price = $(this).parent("form").find(".cart_price").val();
			const prKey = $(this).parent("form").find(".pr_key").val();

			console.log("pr_key = " + prKey);
			console.log("cart_price = " + cart_price);
			console.log("cart_count = " + cart_count);

			const url = "${pageContext.request.contextPath}/shopping/insertCartByWish.do";
			console.log("url = " + url);

			const data = {
				"pr_key" : prKey,
				"cart_count" : cart_count,
				"cart_price" : cart_price

			};

			$.ajax({
				url : url,
				type : 'post',
				headers : {
					'Content-Type' : 'application/json'
				},
				data : JSON.stringify(data),
				success : function(response) {
					console.log("success!");
				},
				error : function(err) {
					console.error(err);
				}
			});
		});
	});

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
					<h2 class="main_under_div_right_title_div_h2">찜한 상품</h2>
				</div>
				<div class="main_under_goods_list">

					<c:forEach items="${aList}" var="dto">
						<input type="hidden" value="${dto.wish_key}" />
						<li class="cart_goodslist"><a class="cart_goodslist_image_a">
								<span class="cart_goodslist_image_span"
								style="background-image: url(${dto.productDTO.pr_thumbnail})"></span>
						</a>
							<div class="main_under_goods_list_title_button">
								<div class="main_under_goods_list_title_button_underdiv">
									<div class="main_under_goods_list_title_only">
										<a
											href="https://drive.google.com/uc?id=1cDazD7rq82SKpTwP3hUBQtjAskzgHGF7"
											class="main_under_goods_list_title_only_a">${dto.productDTO.pr_name}</a>
									</div>
									<div class="main_under_goods_list_price_div">
										<span class="main_under_goods_list_price_dcper"><fmt:formatNumber
												type="percent" value="${dto.pr_dcper}" /></span><span
											class="main_under_goods_list_dcprice">${dto.productDTO.pr_dcprice}원</span><span
											class="main_under_goods_list_price">${dto.productDTO.pr_price}원</span>
									</div>
								</div>

								<div class="main_under_goods_list_buttons">

									<!-- 찜목록 삭제 -->
									<form method="post"
										action="${pageContext.request.contextPath}/shopping/wish.do"
										class="delete_form">
										<input type="hidden" name="wish_key" class="wish_key"
											value="${dto.wish_key}" />
										<button class="main_under_goods_list_buttons_cancle"
											type="button" data-wish_key="${dto.wish_key}"
											data-testid="delete" value="${dto.wish_key}"
											style="cursor: pointer" onclick="alert('목록이 삭제되었습니다.')">삭제</button>
									</form>

									<!-- 찜목록 -> 장바구니 -->
									<form method="post"
										action="${pageContext.request.contextPath}/shopping/insertCartByWish.do"
										class="cartbywish_form">
										<input type="hidden" name="wishby_key" class="wishby_key"
											value="${dto.wish_key}" /> <input type="hidden"
											name="pr_key" class="pr_key" value="${dto.pr_key}" /> <input
											type="hidden" name="cart_price" class="cart_price"
											value="${dto.productDTO.pr_dcprice}" />
										<button class="main_under_goods_list_buttons_add"
											type="button" data-pr_key="${dto.pr_key}"
											data-testid="insert" value="${dto.pr_key}"
											style="cursor: pointer" onclick="alert('장바구니에 상품이 담겼습니다.')">담기</button>
									</form>
								</div>
							</div></li>
					</c:forEach>

				</div>
			</div>
		</div>
	</main>

</body>
</html>
