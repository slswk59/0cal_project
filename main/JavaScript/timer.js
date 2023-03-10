const TIMER = document.querySelector('#timer');

setInterval(() => {
  function addZero(n) {
    return (n < 10 ? '0' : '') + n;
  }
  
  let hours = addZero(new Date().getHours());
  let minutes = addZero(new Date().getMinutes());
  let seconds = addZero(new Date().getSeconds());

  TIMER.innerHTML = `${(hours)}:${minutes}:${seconds}`
}, 1000);