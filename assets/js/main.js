// Mobile nav toggle
document.addEventListener('DOMContentLoaded', function () {
  var toggle = document.getElementById('nav-toggle');
  var nav    = document.getElementById('site-nav');

  if (toggle && nav) {
    toggle.addEventListener('click', function () {
      nav.classList.toggle('open');
    });

    // Close on link click
    nav.querySelectorAll('a').forEach(function (a) {
      a.addEventListener('click', function () {
        nav.classList.remove('open');
      });
    });
  }

  // Active nav highlight on scroll
  var sections = document.querySelectorAll('.section');
  var navLinks = document.querySelectorAll('.masthead__nav a');

  function onScroll() {
    var scrollY = window.scrollY + 80;
    var current = '';
    sections.forEach(function (s) {
      if (s.offsetTop <= scrollY) current = s.id;
    });
    navLinks.forEach(function (a) {
      a.classList.remove('active');
      if (a.getAttribute('href') === '#' + current) a.classList.add('active');
    });
  }

  window.addEventListener('scroll', onScroll, { passive: true });
  onScroll();
});
