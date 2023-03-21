const slideSection = document.querySelector('.main-slide');
const SLIDERS = document.querySelectorAll('.main-slide-items');
const leftItemBtn = document.querySelector('.leftBtn.items');
const rightItemBtn = document.querySelector('.rightBtn.items');

// slideSection.addEventListener('mouseenter', () => {
//   leftItemBtn.style.display = 'block';
//   rightItemBtn.style.display = 'block';
// })

// slideSection.addEventListener('mouseleave', () => {
//   leftItemBtn.style.display = 'none';
//   rightItemBtn.style.display = 'none';
// })

let currIndex = 0;

leftItemBtn.addEventListener('click', () => {
  SLIDERS[currIndex].classList.toggle('hidden');
  if (currIndex === 0) { currIndex = SLIDERS.length }
  currIndex = currIndex - 1;
  SLIDERS[currIndex].classList.toggle('hidden');
  console.log('left', currIndex);
})

rightItemBtn.addEventListener('click', () => {
  SLIDERS[currIndex].classList.toggle('hidden');
  currIndex = currIndex + 1;
  if (currIndex === SLIDERS.length) { currIndex = 0 }
  SLIDERS[currIndex].classList.toggle('hidden');
  console.log('right', currIndex);
})

// SLIDERS[0].classList.toggle('hidden'); o x x x o x x x
// SLIDERS[1].classList.toggle('hidden'); x o x x x o x x
// SLIDERS[2].classList.toggle('hidden'); x x o x x x o x 
// SLIDERS[3].classList.toggle('hidden'); x x x o x x x o 

// 01, 12, 23, 30, 01, 


