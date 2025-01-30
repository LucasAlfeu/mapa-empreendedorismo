var mapa = document.getElementById("map")    

var map = L.map(mapa, {
        zoomControl: false
    }).setView([-22.760636, -43.6887633], 15);

L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
    maxZoom: 19,
    attribution: '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>'
}).addTo(map);