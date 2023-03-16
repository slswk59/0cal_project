// 삭제하는 코드
$(document).ready(function () {
  $('.cart_cancle_button').click(function () {
    const listItem = $(this).closest('.cart_goodslist'); // 삭제 버튼의 부모 요소인 li.cart_goodslist 요소를 가져옵니다.
    listItem.remove(); // 해당 li.cart_goodslist 요소를 삭제합니다.
  });
});

// 체크박스 구현
$(document).ready(function () {
  // 전체선택 체크박스를 클릭했을 때
  $('.all_choose input[type="checkbox"]').click(function () {
    // 전체선택 체크박스의 체크 상태에 따라 개별 체크박스의 상태 변경
    $('.choose_checkbox').prop('checked', $(this).prop('checked'));

    // 전체선택 체크박스 상태 변경에 따라 all_choose 체크박스의 상태 변경
    if ($(this).prop('checked')) {
      $('.all_choose_checkbox').prop('checked', true);
    } else {
      $('.all_choose_checkbox').prop('checked', false);
    }
  });

  // 개별 체크박스를 클릭했을 때
  $('.choose_checkbox').click(function () {
    // 모든 개별 체크박스가 체크되었는지 확인
    var all_checked = true;
    $('.choose_checkbox').each(function () {
      if (!$(this).prop('checked')) {
        all_checked = false;
      }
    });

    // 모든 개별 체크박스가 체크되어 있으면 전체 체크박스 체크 상태 변경
    if (all_checked) {
      $('.all_choose_checkbox').prop('checked', true);
    } else {
      $('.all_choose_checkbox').prop('checked', false);
    }
  });
});

$(document).ready(function () {
  // 선택 삭제 버튼 클릭 시
  $('.select_delete').click(function () {
    // 선택된 체크박스를 찾아서 삭제
    $('.choose_checkbox:checked').each(function () {
      $(this).closest('tr').remove();
    });
  });
});
