// Activate animations on page load
document.addEventListener("DOMContentLoaded", () => {
  document.querySelectorAll('.fade-in, .slide-up').forEach((el, i) => {
    el.style.animationDelay = `${i * 0.3}s`;
  });
});
