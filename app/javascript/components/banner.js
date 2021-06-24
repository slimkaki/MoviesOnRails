import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Descubra novos filmes.", "Veja novas opiniões.", "Descubra um mundo novo."],
    typeSpeed: 65,
    loop: true
  });
}

export { loadDynamicBannerText };