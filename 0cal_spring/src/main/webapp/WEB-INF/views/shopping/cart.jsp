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
      <script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
  <script type="text/javascript" src="https://kit.fontawesome.com/43fd0ad460.js" crossorigin="anonymous"></script>
  
   <!--   <script type="text/javascript" src="../resources/JavaScript/cartselectchoose.js" defer></script>-->
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js" defer></script>
   <!--  <script type="text/javascript" src="../resources/JavaScript/cartcount.js" defer></script>  -->
    
 <script >
 
  		$(document).ready(function() {
  			
	  	   	let totalPrice = 0;
	  	    
  			document.querySelectorAll(".cart_goods_dcprice").forEach(function (item) {
 	            var price =  parseInt(item.getAttribute('value'));
 				console.log("price:" + price);
 				totalPrice += price;
 				console.log("totalPrice:" + totalPrice);
 				
 	        }, this); 
  				let sum_price = $(".cart_price_group_value_strong").text();
  				console.log("sum_price" + sum_price);
  				$(".cart_price_group_value_strong").text(totalPrice);
  			
  			 // 장바구니 삭제버튼구현
  			$(".cart_cancle_button").on("click", function(e) {
			e.preventDefault();
				
  		    const cart_key = $(this).data("cart_key");
 	  			
  	  		$(".cart_key").val(cart_key);
  	  		console.log("cart_key = " + cart_key);
	  		$(".cart_delete_form").submit();
  			
	  	  	const listItem = $(this).closest('.cart_goodslist'); // 삭제 버튼의 부모 요소인 li.cart_goodslist 요소를 가져옵니다.
		    listItem.remove(); // 해당 li.cart_goodslist 요소를 삭제합니다.
		    $(".cart_price_group_value_strong").text(recal());
		    
		  	});
  			 
  		 
  			 // 플러스수량버튼 
  			$(".goods_plusbutton").on("click", function(){
  				let quantity = parseInt($(this).parent("div").find(".goods_countnumber").text()); //장바구니 수량
  				let goods_price = parseInt($(this).parent("div").find(".goods_dcprice_hidden").val()); //상품단가
  				let cart_price = parseInt($(this).parent("div").find(".cart_goods_dcprice").text()); //장바구니 금액
  
  				$(this).parent("div").find(".goods_countnumber").text(++quantity);
  				$(this).parent("div").find(".cart_goods_dcprice").text(goods_price*quantity).toLocaleString();
  				console.log("cart_price : ", cart_price);
  				$(".cart_price_group_value_strong").text(recal());
  			});
  			 
  			 //마이너스 버튼
  			$(".goods_minusbutton").on("click", function(){
  				let quantity = parseInt($(this).parent("div").find(".goods_countnumber").text());
  				let goods_price = parseInt($(this).parent("div").find(".goods_dcprice_hidden").val()); //상품단가
  				console.log("goods_price : ", goods_price);
  				if(quantity >= 1){
  					$(this).parent("div").find(".goods_countnumber").text(--quantity);
  	  				$(this).parent("div").find(".cart_goods_dcprice").text(goods_price*quantity).toLocaleString();
  	  			console.log("goods_price*quantity:" , goods_price*quantity);
  	  			
  	  		$(".cart_price_group_value_strong").text(recal());
  	  
  	
  				
  				} 
  			});
  			
  			// 재계산하기
  			function recal(){
  				let total = 0;
  				console.log($(".cart_goods_dcprice").length);
  				$(".cart_goods_dcprice").each(function(index, item){
  					total += parseInt($(item).text());
  				})
 				return total;
  			};
  			

 		});
  </script>
    
  </head>
  <body>
    <header>
      <jsp:include page="../common/header.jsp" />
    </header>
    <main role="main">
      <section class="cart_main">
        <h2>장바구니</h2>
        <div class="cart_group">
          <div class="cart_goods">
          
            <div class="cart_goodslist">
              <ul class="cart_goodslist">
              
         <form action="${pageContext.request.contextPath}/shopping/delete.do" method="post" class="cart_delete_form">
           	<c:forEach items="${aList}" var="dto" >
                <li class="cart_goodslist">
           
                  <a class="cart_goodslist_image_a">
                    <span class="cart_goodslist_image_span" style="background-image: url(${dto.productDTO.pr_thumbnail})"></span>
                  </a>
                  <div class="cart_gooslist_goodsname_group">
                    <a class="cart_gooslist_goodsname_group">
                    	<span style="display:none;">${dto.productDTO.pr_key}</span>
                    	<input style="display:none;" class="cart_key" type="number" name="cart_key" value="${dto.cart_key}" />
                      <p class="cart_gooslist_goodsname">${dto.productDTO.pr_name}</p>
                    </a>
                  </div>
                  <div class="goods_choice_countdiv_countplus_cart" >
                  <input type="hidden" class="goods_dcprice_hidden" value="${dto.productDTO.pr_dcprice}">
                    <button
                      class="goods_minusbutton cart_buttons"
                      type="button"
                      aria-label="수량내리기"
                      style="cursor: pointer"
                    ></button>
                    <div class="goods_countnumber cart_buttons" value="${dto.cart_count}">${dto.cart_count}</div>
                    <button
                      class="goods_plusbutton cart_buttons"
                      type="button"
                      aria-label="수량올리기"
                      style="cursor: pointer"
                      data-cart_price="${dto.cart_price}"
                    ></button>
                     <div class="cart_goods_price">
                    <span
                      aria-label="판매 가격"
                      data-testid="product-price"
                      class="cart_goods_dcprice"
                      value="${dto.cart_price}"
                      >${dto.cart_price}</span
                   ><div class="cart_buttons_won">원</div>
                  </div>
                     
                  </div>
               <!--   <div class="cart_goods_price">
                    <span
                      aria-label="판매 가격"
                      data-testid="product-price"
                      class="cart_goods_dcprice"
                      ><fmt:formatNumber value="${dto.cart_price}" pattern="#,### 원" /></span
                    >
                    

                  </div> --> 
                  <button
                    class="cart_cancle_button"
                    type="button"
                    data-testid="delete"
                    data-cart_key="${dto.cart_key}"
                  >
                    <span class="cart_cancle_button_span"></span>
                  </button>
                </li>
                
               </c:forEach>
               </form>
              </ul>
            </div>
          </div>
          <div class="cart_delivery_dest_group">
            <div class="cart_delivery_dest">
              <div class="cart_destination">
                <h3 class="cart_destination_name">배송지</h3>
                <div class="cart_destination_address_group">
                  <p class="cart_destination_address">
                    서울 서초구 서초대로77길 54 서초더블유타워 13층
                  </p>
                  <button
                    class="cart_destination_change"
                    type="button"
                    height="36"
                    radius="3"
                    style="cursor: pointer"
                    onclick="window.open('http://localhost:8090/delivery.jsp', 'btn-add-delivery', 'width=600, height=400')"
                  >
                    새 배송지 추가
                  </button>
                </div>
              </div>
              <div class="cart_price_group">
                <div class="cart_price_group_under">
                  <span class="cart_price_title">결제예정금액</span>
                  <span class="cart_price_group_value">
                    <strong class="cart_price_group_value_strong" id="sum_p_price"
                      >0000</strong
                    >
                    <span class="cart_price_group_value_won">원</span></span
                  >
                </div>
              </div>
              <div class="cart_order_button_div">
                <button
                  class="cart_order_button"
                  type="button"
                  height="56"
                  radius="3"
                >
                  <span class="cart_order_button_text">주문하기</span>
                </button>
              </div>
            </div>
          </div>
        </div>
      </section>
    </main>
    <footer>
      <jsp:include page="../common/footer.jsp" />
    </footer>
  </body>
</html>
