document.addEventListener("DOMContentLoaded", () => {

    const btn = document.getElementById("ler-mais");
    const texto = document.getElementById("texto-desc");

    var aberto = false;

    btn.addEventListener("click", () => {
        if (!aberto) {
            texto.textContent += " Aqui está a descrição completa...";
            btn.textContent = "Mostrar menos";
        } else {
            texto.textContent = "Um jogo cheio de ação...";
            btn.textContent = "Ler mais";
        }

        aberto = !aberto;
    });

});