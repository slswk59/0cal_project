<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<div id="wrap">
  <div id="container">
    <div id="top-header">
      <div id="header">
        <ul id="userMenu" class="right">
          <li class="menu-item">
            <a href="#" class="link_menu">회원가입</a>
          </li>
          <li class="menu-item">
            <a href="#" class="link_menu">로그인</a>
          </li>
          <li id="csCenter" class="menu-item">
            <a href="#" class="link_menu">고객센터</a>
          </li>
        </ul>
      </div>
      <div id="logo-box" class="clear">
        <h1 id="logo">
          <a href="#"><img src="./img/logo.webp" alt="Logo" /></a>
        </h1>
      </div>
      <div id="menu">
        <nav class="menu">
          <ul class="main-menu">
            <li class="main-menu-item" hidden>
              <a href="#">
                <span id="bars"></span>
                전체 카테고리
              </a>
              <ul class="sub-menu hidden">
                <li class="sub-menu-item">
                  <a href="#"
                    ><i class="fa-solid fa-cookie-bite fa-fw fa-lg"></i
                    >&nbsp;&nbsp;&nbsp;과자,스낵,쿠키</a
                  >
                </li>
                <li class="sub-menu-item">
                  <a href="#"
                    ><i class="fa-solid fa-candy-cane fa-fw fa-lg"></i
                    >&nbsp;&nbsp;&nbsp;초콜릿,젤리,캔디</a
                  >
                </li>
                <li class="sub-menu-item">
                  <a href="#"
                    ><i class="fa-solid fa-hockey-puck fa-fw fa-lg"></i
                    >&nbsp;&nbsp;&nbsp;떡,한과</a
                  >
                </li>
                <li class="sub-menu-item">
                  <a href="#"
                    ><i class="fa-solid fa-ice-cream fa-fw fa-lg"></i
                    >&nbsp;&nbsp;&nbsp;아이스크림</a
                  >
                </li>
                <li class="sub-menu-item">
                  <a href="#"
                    ><i class="fa-solid fa-bread-slice fa-fw fa-lg"></i
                    >&nbsp;&nbsp;&nbsp;식빵,빵류</a
                  >
                </li>
                <li class="sub-menu-item">
                  <a href="#"
                    ><i class="fa-solid fa-cake-candles fa-fw fa-lg"></i
                    >&nbsp;&nbsp;&nbsp;케이크,파이,디저트</a
                  >
                </li>
              </ul>
            </li>
            <li class="main-menu-item">
              <a href="#">신상품</a>
            </li>
            <li class="main-menu-item">
              <a href="#">베스트</a>
            </li>
            <li class="main-menu-item">
              <a href="#">알뜰쇼핑</a>
            </li>
            <li class="main-menu-item">
              <a href="#">특가/혜택</a>
            </li>
          </ul>
        </nav>
        <div class="search-bar">
          <input
            id="search-input"
            type="text"
            placeholder="검색어를 입력해주세요."
          />
          <button type="button" id="search-button">
            <img src="./img/search.webp" alt="" width="30px" height="30px" />
          </button>
        </div>
        <ul class="icons">
          <li>
            <a href="#">
              <img src="./img/heart.svg" alt="관심있는 상품" />
            </a>
          </li>
          <li>
            <a href="#">
              <img src="./img/cart.svg" alt="장바구니" />
            </a>
          </li>
        </ul>
      </div>
    </div>
  </div>
</div>
