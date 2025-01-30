document.addEventListener("DOMContentLoaded", function () {
    var itemSelecionado = document.getElementById("tipo-usuario");
    var nomeLabelIdentificacao = document.getElementById("label-id");

    if (!itemSelecionado || !nomeLabelIdentificacao) {
        console.error("Erro: Elementos não encontrados no DOM.");
        return;
    }

    itemSelecionado.addEventListener("change", function () {
        console.log("Valor selecionado:", itemSelecionado.value);

        if (itemSelecionado.value === "Docente") {        
            nomeLabelIdentificacao.innerHTML = "Identificação do Professor: ";
            console.log("Identificação professor");
        }
        else if (itemSelecionado.value === "Discente") {
            nomeLabelIdentificacao.innerHTML = "Matrícula: ";
            console.log("Matrícula");
        } 
        else if (itemSelecionado.value === "Cidadão") {
            nomeLabelIdentificacao.innerHTML = "CPF: ";
            console.log("CPF");
        }
    });
});

/**function mudarTipoIdentificacao() {
	console.log(itemSelecionado.value)
	
	if(itemSelecionado.value == "Docente"){        
	    nomeLabelIdentificacao.innerHTML = "Identificação do Professor: ";
	    console.log("Identificação professor");
	}
	else if (itemSelecionado.value == "Discente"){
	    nomeLabelIdentificacao.innerHTML = "Matrícula: ";
	    console.log("Matrícula");
	} 
	else if (itemSelecionado.value == "Cidadão"){
	    nomeLabelIdentificacao.innerHTML = "CPF: ";
	    console.log("CPF");
	}
}**/