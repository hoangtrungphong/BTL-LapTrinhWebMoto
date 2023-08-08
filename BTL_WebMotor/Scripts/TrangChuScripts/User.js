// Mở MobileMenu
var nav = document.querySelector('.nav-first');

document.querySelector('.nav-icon').addEventListener("click", e => {
    e.preventDefault();
    nav.classList.add("open");
});


// Tự động đóng khi chọn menu
var menuItems = document.querySelectorAll('#nav li a[href*=]');
console.log(menuItems);