function getCheckboxValue() {
  const selectedAge = document.querySelector('input[name="age"]:checked').value;
  console.log(selectedAge);
}

function checkgen(element) {
  const checkboxes = document.getElementsByName("gen");

  checkboxes.forEach((cb) => {
    cb.checked = false;
  });

  element.checked = true;
}

function checkage(element) {
  const checkboxes = document.getElementsByName("age");

  checkboxes.forEach((cb) => {
    cb.checked = false;
  });

  element.checked = true;
}
