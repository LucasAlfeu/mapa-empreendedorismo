/** ------------------- MENU LATERAL -------------------------- */


var menu = document.querySelector(".menu");
var filtro = document.querySelector(".aba-filtro");

function menuOpen() {
    if (!menu.classList.contains("open")) {
        menu.classList.add("open");
    }
}

function menuClose() {
    if (menu.classList.contains("open")) {
        menu.classList.remove("open");
    }
}

/** ------------------- FILTRO -------------------------- */

function filtroOpen() {
    if (!filtro.classList.contains("open")) {
        filtro.classList.add("open");
        menuClose(); // Fecha o menu antes de abrir o filtro
    }
}

function filtroClose() {
    if (filtro.classList.contains("open")) {
        filtro.classList.remove("open");
    }
}
