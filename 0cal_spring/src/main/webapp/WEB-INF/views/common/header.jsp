<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

<div id="wrap">
	<div id="container">
		<div id="top-header">
			<div id="header">
				<ul id="userMenu" class="right">
					<li class="menu-item"><a id="userMenu1Path"
						href="${pageContext.request.contextPath}/member/signup.do"
						class="link_menu"><span id="userMenu1Text">회원가입</span></a></li>
					<li class="menu-item"><a id="userMenu2Path"
						href="${pageContext.request.contextPath}/member/login.do"
						class="link_menu"><span id="userMenu2Text">로그인</span></a></li>
					<li id="csCenter" class="menu-item"><a href="#"
						class="link_menu">고객센터</a></li>
				</ul>
			</div>
			<div id="logo-box" class="clear">
				<h1 id="logo">
					<a href="${pageContext.request.contextPath}/index.do"> <img
						src="${pageContext.request.contextPath}/resources/img/로고-2.jpg"
						alt="Logo" />
					</a>
				</h1>
			</div>
			<div id="menu">
				<nav class="menu">
					<ul class="main-menu">
						<li class="main-menu-item" hidden><a href="#"> <span
								id="bars"></span> 전체 카테고리
						</a>
							<ul class="sub-menu hidden">
								<li class="sub-menu-item"><a
									href="${pageContext.request.contextPath}/shopping/ctgProductList.do?category=1"><i
										class="fa-solid fa-cookie-bite fa-fw fa-lg"></i>&nbsp;&nbsp;&nbsp;과자,스낵,쿠키</a>
								</li>
								<li class="sub-menu-item"><a
									href="${pageContext.request.contextPath}/shopping/ctgProductList.do?category=2"><i
										class="fa-solid fa-candy-cane fa-fw fa-lg"></i>&nbsp;&nbsp;&nbsp;초콜릿,젤리,캔디</a>
								</li>
								<li class="sub-menu-item"><a
									href="${pageContext.request.contextPath}/shopping/ctgProductList.do?category=3"><i
										class="fa-solid fa-hockey-puck fa-fw fa-lg"></i>&nbsp;&nbsp;&nbsp;떡,한과</a>
								</li>
								<li class="sub-menu-item"><a
									href="${pageContext.request.contextPath}/shopping/ctgProductList.do?category=4"><i
										class="fa-solid fa-ice-cream fa-fw fa-lg"></i>&nbsp;&nbsp;&nbsp;아이스크림</a>
								</li>
								<li class="sub-menu-item"><a
									href="${pageContext.request.contextPath}/shopping/ctgProductList.do?category=5"><i
										class="fa-solid fa-bread-slice fa-fw fa-lg"></i>&nbsp;&nbsp;&nbsp;식빵,빵류</a>
								</li>
								<li class="sub-menu-item"><a
									href="${pageContext.request.contextPath}/shopping/ctgProductList.do?category=6"><i
										class="fa-solid fa-cake-candles fa-fw fa-lg"></i>&nbsp;&nbsp;&nbsp;케이크,파이,디저트</a>
								</li>
							</ul></li>
						<li class="main-menu-item"><a
							href="${pageContext.request.contextPath}/shopping/newList.do">신상품</a>
						</li>
						<li class="main-menu-item"><a href="#">베스트</a></li>
						<li class="main-menu-item"><a href="#">추천</a></li>
						<li class="main-menu-item"><a
							href="${pageContext.request.contextPath}/shopping/salesList.do">특가</a>
						</li>
					</ul>
				</nav>
				<form method="get" name="form" id="searchForm" action="${pageContext.request.contextPath}/search.do">
					<div class="search-bar">
						<input id="search-input" type="text" placeholder="검색어를 입력해주세요."
							name="searchWord" value="${pv.searchWord}" />
						<button type="button" id="search-button"  style="cursor:pointer;">
							<img
								src="${pageContext.request.contextPath}/resources/img/search.webp"
								alt="" width="30px" height="30px" />
						</button>
					</div>
				</form>
				<div>
					<ul class="icons">
						<li><a href="#"> <img
								src="${pageContext.request.contextPath}/resources/img/heart.svg"
								alt="관심있는 상품" />
						</a></li>
						<li><a href="#"> <img
								src="${pageContext.request.contextPath}/resources/img/cart.svg"
								alt="장바구니" />
						</a></li>
					</ul>
				</div>
			  
			</div>
		</div>
	</div>
</div>

<script>

  $(document).ready(function(){
	  $.ajax({
             type : "get",
             url : "${pageContext.request.contextPath}/member/loginCheck.do",
			 dataType: "text",
             async: false, 
             success : function(data){
             	if (data) {
             		$("#userMenu1Path").attr("href", "${pageContext.request.contextPath}/shopping/orders.do");
             		$("#userMenu1Text").text(data);
             		$("#userMenu2Path").attr("href", "${pageContext.request.contextPath}/member/logout.do");
             		$("#userMenu2Text").text("로그아웃");
             	} else {
             		$("#userMenu1Path").attr("href", "${pageContext.request.contextPath}/member/signup.do");
             		$("#userMenu1Text").text("회원가입");
             		$("#userMenu2Path").attr("href", "${pageContext.request.contextPath}/member/login.do");
             		$("#userMenu2Text").text("로그인");
             	}
             },
             error : function(request) {
                console.log("error : " + request.responseText);
             }
         })
  });
</script>