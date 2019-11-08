import Typed from 'typed.js';

const initTypedJS = () => {
  const span = document.querySelector('#banner-typed-text');

  if (span) {
    new Typed('#banner-typed-text', {
      strings: ['Our amazing Cocktails^1000', "for you guys !"],
      typeSpeed: 50,
      loop: true
    });
  }
}

export { initTypedJS };

