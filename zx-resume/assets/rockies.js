/* The document remains fully readable and navigable without JavaScript. */
document.querySelectorAll("[data-print]").forEach((button) => {
  button.addEventListener("click", () => window.print());
});

const sectionLinks = Array.from(document.querySelectorAll(".section-nav a"));
const sections = sectionLinks.map((link) => document.querySelector(link.hash)).filter(Boolean);
if ("IntersectionObserver" in window && sections.length) {
  const visible = new Set();
  const observer = new IntersectionObserver((entries) => {
    entries.forEach((entry) => {
      if (entry.isIntersecting) visible.add(entry.target);
      else visible.delete(entry.target);
    });
    const current = sections.find((section) => visible.has(section));
    if (!current) return;
    sectionLinks.forEach((link) => {
      const active = link.hash === `#${current.id}`;
      link.classList.toggle("is-active", active);
      if (active) link.setAttribute("aria-current", "location");
      else link.removeAttribute("aria-current");
    });
  }, { rootMargin: "-8% 0px -50% 0px", threshold: 0 });
  sections.forEach((section) => observer.observe(section));
}
