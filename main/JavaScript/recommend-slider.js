const slideSection = document.querySelector(".recommend-slide");
const SLIDERS = document.querySelectorAll(".recommend-slide-items");
const leftItemBtn = document.querySelector(".leftBtn.items");
const rightItemBtn = document.querySelector(".rightBtn.items");

let currIndex = 0;

leftItemBtn.addEventListener("click", () => {
  SLIDERS[currIndex].classList.toggle("hidden");
  if (currIndex === 0) {
    currIndex = SLIDERS.length;
  }
  currIndex = currIndex - 1;
  SLIDERS[currIndex].classList.toggle("hidden");
  console.log("left", currIndex);
});

rightItemBtn.addEventListener("click", () => {
  SLIDERS[currIndex].classList.toggle("hidden");
  currIndex = currIndex + 1;
  if (currIndex === SLIDERS.length) {
    currIndex = 0;
  }
  SLIDERS[currIndex].classList.toggle("hidden");
  console.log("right", currIndex);
});
