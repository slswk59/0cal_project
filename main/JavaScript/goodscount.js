
// 수량을 조절하는 버튼 요소를 식별합니다.
const minusButton = document.querySelector('.goods_minusbutton');
const plusButton = document.querySelector('.goods_plusbutton');


// 수량과 가격을 표시하는 요소를 식별합니다.
const countElement = document.querySelector('.goods_countnumber');
const priceElement = document.querySelector('.goods_choice_countdiv_price_span');
const totPriceElement = document.querySelector('.goods_cartprice_div_price');

// 초기 수량과 가격을 저장합니다.
let count = parseInt(countElement.innerText);
let price = parseInt(priceElement.innerText);

// 마이너스 버튼을 클릭했을 때의 이벤트 핸들러를 작성합니다.
minusButton.addEventListener('click', () => {
  
 if (count > 1) {  // 수량은 최소 1개 이상이어야 합니다.
    count--;  // 수량을 감소시킵니다.
    if(count <= 1 ) minusButton.style.backgroundImage =  'url(data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMzAiIGhlaWdodD0iMzAiIHZpZXdCb3g9IjAgMCAzMCAzMCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxwYXRoIGQ9Ik0yMCAxNHYySDEwdi0yeiIgZmlsbD0iI0RERCIgZmlsbC1ydWxlPSJub256ZXJvIi8+Cjwvc3ZnPgo=)';
    countElement.innerText = count;  // 수량을 표시하는 요소를 업데이트합니다.
    priceElement.innerText = (price * count).toLocaleString() + '원';  // 가격을 표시하는 요소를 업데이트합니다.
    totPriceElement.innerText = (price * count).toLocaleString() ;
  }
});

// 플러스 버튼을 클릭했을 때의 이벤트 핸들러를 작성합니다.
plusButton.addEventListener('click', () => {  
  count++;  // 수량을 증가시킵니다.
  if(count > 1 ) minusButton.style.backgroundImage = 'url(data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMzAiIGhlaWdodD0iMzAiIHZpZXdCb3g9IjAgMCAzMCAzMCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxwYXRoIGQ9Ik0yMCAxNHYySDEwdi0yeiIgZmlsbD0iIzMzMyIgZmlsbC1ydWxlPSJub256ZXJvIi8+Cjwvc3ZnPgo=)';
  countElement.innerText = count;  // 수량을 표시하는 요소를 업데이트합니다.
  priceElement.innerText = (price * count).toLocaleString() + '원';  // 가격을 표시하는 요소를 업데이트합니다.
  totPriceElement.innerText = (price * count).toLocaleString() ;
});


//찜 하트 변경 및 삭제 알림 
var isWished = false;

function toggleWishList() {
  var heartIcon = document.querySelector('.fa-heart-o');
  var wishButton = document.querySelector('.wish_button');
  if (isWished) {
    heartIcon.style.color = '';
    wishButton.removeAttribute('title');
    alert('찜 목록이 삭제되었습니다.');
  } else {
    heartIcon.style.color = 'red';
    wishButton.setAttribute('title', '찜 목록에 추가되었습니다.');
  }
  isWished = !isWished;
}






function openDeliveryEditPopup() {
  var url = 'http://localhost:8090/delivery.jsp';
  var name = 'delivery_edit_popup';
  var width = 600;
  var height = 400;
  var left = (window.innerWidth - width) / 2;
  var top = (window.innerHeight - height) / 2;
  var specs = 'width=' + width + ', height=' + height + ', left=' + left + ', top=' + top;

  var popup = window.open(url, name, specs);
  popup.focus();
}









