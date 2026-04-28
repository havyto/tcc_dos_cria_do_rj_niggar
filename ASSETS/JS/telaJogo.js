const btn = document.getElementById("read-more");
const text = document.getElementById("desc-text");

let expanded = false;

btn.addEventListener("click", () => {
    if (!expanded) {
        text.innerText += " Texto completo da descrição do jogo...";
        btn.innerText = "Mostrar menos";
    } else {
        text.innerText = "Um jogo incrível cheio de ação...";
        btn.innerText = "Leia mais";
    }

    expanded = !expanded;
});