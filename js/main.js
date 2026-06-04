document.querySelectorAll('.nav-toggle').forEach((btn) => {
  btn.addEventListener('click', () => {
    const links = document.querySelector('.nav-links');
    if (links) links.classList.toggle('open');
  });
});

const path = window.location.pathname;
document.querySelectorAll('.nav-links a').forEach((a) => {
  const href = a.getAttribute('href');
  if (!href || href.startsWith('#')) return;
  if (path.endsWith(href) || (href.includes('agent') && path.includes('agent'))) {
    a.classList.add('active');
  }
});
