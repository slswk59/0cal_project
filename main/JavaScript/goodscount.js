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
    countElement.innerText = count;  // 수량을 표시하는 요소를 업데이트합니다.
    priceElement.innerText = (price * count) + '원';  // 가격을 표시하는 요소를 업데이트합니다.
    totPriceElement.innerText = (price * count) + '원';
  }
});

// 플러스 버튼을 클릭했을 때의 이벤트 핸들러를 작성합니다.
plusButton.addEventListener('click', () => {
  count++;  // 수량을 증가시킵니다.
  countElement.innerText = count;  // 수량을 표시하는 요소를 업데이트합니다.
  priceElement.innerText = (price * count) + '원';  // 가격을 표시하는 요소를 업데이트합니다.
  totPriceElement.innerText = (price * count) + '원';
});
