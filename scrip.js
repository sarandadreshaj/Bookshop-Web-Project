const hamburger = document.querySelector(".hamburger");
const lista = document.querySelector(".lista");

hamburger.addEventListener("click", () =>{
    hamburger.classList.toggle("active");
    lista.classList.toggle("active");   
})

document.querySelectorAll(".linku").forEach(n =>n.addEventListener("click", () =>{
    hamburger.classList.remove("active");
    lista.classList.remove("active");
}))