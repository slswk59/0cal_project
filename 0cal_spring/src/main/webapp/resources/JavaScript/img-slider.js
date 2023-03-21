// img move function
const SLIDER = document.querySelector('.slide-wrapper');
const IMAGE = document.querySelectorAll('.slide-item'); 
const leftBtn = document.querySelector('.leftBtn');
const rightBtn = document.querySelector('.rightBtn');

let intervalId;
var currentImg = 0;
let stopImg = 0;

function showImage(index) {
  IMAGE[index].classList.remove('hidden');
}

function moveLeft() {
  intervalId = setInterval(() => {
    let from = -(innerWidth * currentImg);
    let to = from - innerWidth;

    SLIDER.animate(
      {
        marginLeft: [from + 'px', to + 'px'],
      },
      {
        duration: 500,
        easing: 'ease',
        iterations: 1,
        fill: 'both',
      }
    );

    currentImg++;
    showImage(currentImg);
    if (currentImg === IMAGE.length - 1) {
      currentImg = 0;
    }
  }, 3000);
}

function stopSlide() {
  clearInterval(intervalId);
}

moveLeft();

// SLIDER.addEventListener("mouseover", stopSlide);

// SLIDER.addEventListener('mouseleave', moveLeft);

// leftBtn.addEventListener("click", moveLeft);
// rightBtn.addEventListener("click", moveLeft);
