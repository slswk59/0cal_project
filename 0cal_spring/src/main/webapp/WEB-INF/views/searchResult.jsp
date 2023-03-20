<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans:wght@300;400;700;900&display=swap" rel="stylesheet">
  
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
    <script src="https://kit.fontawesome.com/43fd0ad460.js" crossorigin="anonymous"></script>
    <script src="./resources/JavaScript/menu.js" defer></script>
    <script src="./resources/JavaScript/search.js" defer></script>
  </head>
 
  <body>
    <header>
      <jsp:include page="./common/header.jsp" />
    </header>
    <div class="slide-section">
      <div class="slide-wrapper">
        <div class="slide-item">
          <a href="#" style="background-image: url('./resources/img/배너1.jpg')"></a>
        </div>
        <div class="hidden slide-item">
          <a href="#" style="background-image: url('./resources/img/배너2.jpg')"></a>
        </div>
        <div class="hidden slide-item">
          <a href="#" style="background-image: url('./resources/img/배너3.jpg')"></a>
        </div>
   
        <!-- <div class="slide-item"><a href="#" style="background-image: url('/resources/img/slide14.webp');"></a></div> -->
      </div>
    
	<main>
		<c:forEach var="item" items="${searchList}">
			<ul>
			<li>
			 	${item.pr_thumbnail}
            	${item.pr_name}
            	 <fmt:formatNumber value="${item.pr_dcper}" type="percent" />
            	 <fmt:formatNumber value="${item.pr_dcprice}"  type="number" />
            	 <fmt:formatNumber value="${item.pr_price}" type="number" />
            </li>
			</ul>
		</c:forEach> 
    </main>

    <footer>
      <jsp:include page="./common/footer.jsp" />
    </footer>
  </body>
</html>