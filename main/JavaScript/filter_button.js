function checkOnlyOne(element) {
  const checkboxes = document.getElementsByName("gen");

  checkboxes.forEach((cb) => {
    cb.checked = false;
  });

  element.checked = true;
}
