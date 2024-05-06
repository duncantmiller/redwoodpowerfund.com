document.addEventListener('DOMContentLoaded', function() {
  const toggleMenu = function() {
    mobileMenu.classList.toggle('hidden');
  };

  const menuButton = document.querySelector('.menu-button'); // Open button
  const closeButton = document.querySelector('.close-menu-button'); // Close button
  const mobileMenu = document.querySelector('.mobile-menu'); // Mobile menu

  menuButton.addEventListener('click', toggleMenu);
  closeButton.addEventListener('click', toggleMenu);
});
