const carrosel = document.querySelectorAll('.carrosel');
const btnvlt = document.getElementById('vlt-btn');
const btnvai = document.getElementById('vai-btn');
const btnnav = document.querySelectorAll('.carousel-nav input[type ="radio"]')


let currentSlide = 0;

function hideslide() {
    carrosel.forEach(item => item.classList.remove('on'));
}

function showSlide() {
    carrosel[currentSlide].classList.add('on');
}

function nextslider() {
    hideslide();
    currentSlide = (currentSlide + 1) % carrosel.length; // Muda para o próximo slide
    showSlide();
    updateNav();
}

function prevslider() {
    hideslide();
    currentSlide = (currentSlide - 1 + carrosel.length) % carrosel.length; // Muda para o slide anterior
    showSlide();
    updateNav();
}

function updateNav() {
    btnnav.forEach((input, index) => {
      input.checked = false;
    });
    btnnav[currentSlide].checked = true;
  }
  
  btnnav.forEach((input, index) => {
    input.addEventListener('change', () => {
      currentSlide = index;
      hideslide();
      showSlide();
    });
  });

const autoSlideInterval = 10000; // 10000 milissegundos = 10 segundos
setInterval(nextslider, autoSlideInterval);

btnvai.addEventListener('click', nextslider);
btnvlt.addEventListener('click', prevslider);

showSlide(currentSlide); // Mostra o slide inicial
updateNav()




