<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
    <link rel="stylesheet" href="./CSS/header.css" />
    <link rel="stylesheet" href="./CSS/footer.css" />
    <link rel="stylesheet" href="./CSS/style.css" />
    <link rel="stylesheet" href="./CSS/navbar.css" />
    <link rel="stylesheet" href="./CSS/slider.css" />
    <link rel="stylesheet" href="./CSS/main.css" />
    <link rel="stylesheet" href="./CSS/search.css" />
    <link rel="stylesheet" href="./CSS/category.css" />
    <link rel="stylesheet" href="./CSS/goods.css" />
    <link rel="stylesheet" href="./CSS/cart.css" />
    <link rel="stylesheet" href="./CSS/wish.css" />
    <link rel="stylesheet" href="./CSS/order.css" />
    <link rel="stylesheet" href="./CSS/delivery.css" />

    <!-- Script -->
    <script
      src="https://kit.fontawesome.com/43fd0ad460.js"
      crossorigin="anonymous"
    ></script>
    <script src="./JavaScript/img-slider.js" defer></script>
    <script src="./JavaScript/menu.js" defer></script>
    <script src="./JavaScript/recommend-slider.js" defer></script>
    <script src="./JavaScript/advertisement.js" defer></script>
    <script src="./JavaScript/cartcount.js" defer></script>
    <script src="./JavaScript/cartselectdelete.js" defer></script>
    <script src="./JavaScript/cartselectchoose.js" defer></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <script>
      function deleteDelivery(deliveryId) {
        var row = document.querySelector(
          'input[name="delivery"][value="' + deliveryId + '"]'
        ).parentNode.parentNode;
        row.parentNode.removeChild(row);
      }
    </script>
  </head>

  <body style="background-color: #f2e6d9">
    <hr class="container" />
    <div class="delivery-heading">
      <h2 style="color: #444444">배송지</h2>
      <span style="color: #777777"
        >배송지에 따라 상품정보 및 배송유형이 달라질 수 있습니다.</span
      >
    </div>
    <table class="delivery-table" style="background-color: #f9f6f0">
      <thead>
        <tr>
          <th class="del_check">선택</th>
          <th class="recevier_name">배송지명</th>
          <th class="del_phone">연락처</th>
          <th class="del_address">주소</th>
          <th class="del_delete">삭제</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td class="del_check_td" style="text-align: center">
            <input type="radio" name="delivery" value="1" />
          </td>
          <td class="recevier_name_td">홍길동</td>
          <td class="del_phone_td">010-8282-8282</td>
          <td class="del_address_td">태백산 산기슭</td>
          <td class="del_delete_td">
            <button onclick="deleteDelivery(1)" style="cursor: pointer">
              삭제
            </button>
          </td>
        </tr>

        <tr>
          <td class="del_check_td" style="text-align: center">
            <input type="radio" name="delivery" value="2" />
          </td>
          <td class="recevier_name_td">홍길동</td>
          <td class="del_phone_td">010-8282-8282</td>
          <td class="del_address_td">태백산 산기슭</td>
          <td class="del_delete_td">
            <button onclick="deleteDelivery(2)" style="cursor: pointer">
              삭제
            </button>
          </td>
        </tr>
      </tbody>
    </table>
    <div class="no-delivery-info" style="color: #777777">
      <p>상품 구매를 위한 배송지를 설정해주세요.</p>
      <button
        class="btn-add-delivery"
        style="cursor: pointer"
        onclick="window.open('http://localhost:8090/post.jsp', 'btn-add-delivery', 'width=600, height=400')"
        style="background-color: #cccccc; color: #444444"
      >
        + 새 배송지 추가
      </button>
    </div>
  </body>
</html>
