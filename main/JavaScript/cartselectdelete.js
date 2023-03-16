function deleteSelectedItems() {
  var selectedItems = document.querySelectorAll(
    'input[name="cart_id"]:checked'
  );
  if (selectedItems.length == 0) {
    alert('삭제할 항목을 선택하세요.');
    return;
  }
  if (confirm('선택한 항목을 삭제하시겠습니까?')) {
    var cartIds = [];
    for (var i = 0; i < selectedItems.length; i++) {
      cartIds.push(selectedItems[i].value);
    }
    location.href = 'deleteCartItem.do?cartIds=' + cartIds.join();
  }
}

document
  .querySelector('.all_reset')
  .addEventListener('click', deleteSelectedItems);
