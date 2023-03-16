//삭제하는 코드
const deleteButton = document.querySelectorAll('.cart_cancle_button'); // 삭제 버튼 요소들을 가져옵니다.

deleteButton.forEach((button) => {
  // 삭제 버튼 요소들에 대해 이벤트 리스너를 등록합니다.
  button.addEventListener('click', () => {
    const listItem = button.closest('.cart_goodslist'); // 삭제 버튼의 부모 요소인 li.cart_goodslist 요소를 가져옵니다.
    const checkbox = listItem.querySelector('.goods_checkbox'); // 해당 li.cart_goodslist 요소 안의 체크박스 요소를 가져옵니다.

    if (checkbox.checked) {
      // 해당 체크박스가 체크된 경우
      listItem.remove(); // 해당 li.cart_goodslist 요소를 삭제합니다.
    }
  });
});

$(document).ready(function () {
  // 전체선택 체크박스를 클릭했을 때
  $('.all_choose input[type="checkbox"]').click(function () {
    // 전체선택 체크박스의 체크 상태에 따라 개별 체크박스의 상태 변경
    $('.goods_checkbox').prop('checked', $(this).prop('checked'));

    // 전체선택 체크박스 상태 변경에 따라 all_choose 체크박스의 상태 변경
    if ($(this).prop('checked')) {
      $('.all_choose_checkbox').prop('checked', true);
    } else {
      $('.all_choose_checkbox').prop('checked', false);
    }

    // 전체 개별 체크박스의 개수를 가져옵니다.
    var total_checkboxes = $('.goods_checkbox').length;

    // 개별 체크박스가 클릭될 때마다 체크된 개별 체크박스의 개수를 새로 구합니다.
    $('.goods_checkbox').click(function () {
      var checked_checkboxes = $('.goods_checkbox:checked').length;

      // 체크된 개별 체크박스의 개수가 전체 개별 체크박스의 개수와 같으면
      // all_choose 체크박스도 체크 상태로 만듭니다.
      if (checked_checkboxes === total_checkboxes) {
        $('.all_choose input[type="checkbox"]').prop('checked', true);
      } else {
        $('.all_choose input[type="checkbox"]').prop('checked', false);
      }
    });
    // 개별 체크박스가 클릭될 때마다 체크된 개별 체크박스의 개수를 새로 구합니다.
    var checked_checkboxes = $('.goods_checkbox:checked').length;

    // 체크된 개별 체크박스의 개수가 전체 개별 체크박스의 개수와 같으면
    // all_choose 체크박스도 체크 상태로 만듭니다.
    if (checked_checkboxes === total_checkboxes) {
      $('.all_choose input[type="checkbox"]').prop('checked', true);
    } else {
      $('.all_choose input[type="checkbox"]').prop('checked', false);
    }
  });
});
