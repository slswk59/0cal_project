const deleteButtons = document.querySelectorAll(".main_under_goods_list_buttons_cancle");

deleteButtons.forEach(function(deleteButton) {
  deleteButton.addEventListener("click", function() {
    const cartItem = this.closest(".cart_goodslist");
    cartItem.remove();
  });
});





function deleteItems() {
  const buttons = document.querySelectorAll('.orderlist_inqury_button');
  buttons.forEach(button => {
    button.addEventListener('click', function() {
      const parentDiv = button.closest('.orderlist_group_div');
      parentDiv.remove();
    });
  });
}

deleteItems(); // 함수 호출