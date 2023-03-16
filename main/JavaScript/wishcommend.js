const deleteButtons = document.querySelectorAll(".main_under_goods_list_buttons_cancle");

deleteButtons.forEach(function(deleteButton) {
  deleteButton.addEventListener("click", function() {
    const cartItem = this.closest(".cart_goodslist");
    cartItem.remove();
  });
});
