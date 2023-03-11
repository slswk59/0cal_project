const AD = document.querySelector('.ad-img');

let randomNumber = Math.ceil(Math.random() * 3);

AD.classList.add(`img${randomNumber}`);
