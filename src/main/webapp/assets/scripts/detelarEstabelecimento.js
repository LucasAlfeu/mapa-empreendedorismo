document.addEventListener("click", function(event) {
    if (event.target.classList.contains("btn-deletar")) {
        event.preventDefault();
        
        let row = event.target.closest("tr");
        let estabelecimento = row.querySelector("td:nth-child(2)").textContent;

        if (confirm(`Deseja realmente deletar "${estabelecimento}"?`)) {
            console.log(`Deletando: ${estabelecimento}`);
            // Aqui você pode enviar a requisição AJAX para deletar o item do banco
        }
    }
});
