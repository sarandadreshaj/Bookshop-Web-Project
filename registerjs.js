var mybutton = document.getElementById("myBtn");

// When the user scrolls down 700px from the top of the document, show the button
window.onscroll = function() {scrollFunction()};

function scrollFunction() {
  if (document.body.scrollTop > 700 || document.documentElement.scrollTop > 700) {
    mybutton.style.display = "block";
  } else {
    mybutton.style.display = "none";
  }
}

// When the user clicks on the button, scroll to the top of the document
function topFunction() {
  document.body.scrollTop = 0;
  document.documentElement.scrollTop = 0;
}

//REGISTER VALIDATION

var buttonn = document.getElementById("submitt");

var fnameMsg =document.getElementById("fnameMsg");
var surnameMsg = document.getElementById("surnameMsg");
var userMsg = document.getElementById("userMsg");
var emailMsg = document.getElementById("emailMsg");
var pswMsg = document.getElementById("pswMsg");


var userRegex = /[a-z]+[.]+[a-z]+/;;
var fnameRegex = /^[A-Z][a-z]{1,}/;
var surnameRegex = /^[A-Z][a-z]{1,}/;
var emailRegex = /[a-z]\w+@[a-z]+[-]?[a-z]\.[a-z]{2,3}/;
var pswRegex = /^[A-Z]\w+[a-z]\d{3}/;

buttonn.addEventListener("click", function(event){
  var fname = document.getElementById("f3").value;
  var surname = document.getElementById("f6").value;
  var email = document.getElementById("f4").value;
  var username = document.getElementById("f7").value;
  var psw = document.getElementById("f8").value;



 

  if(fname == "" || fname == null){
    fnameMsg.innerText="Please fill the first name field!";
    event.preventDefault();
  }else{
    if(fnameRegex.test(fname)){
        fnameMsg.innerText="";
    }else{
        fnameMsg.innerText="* Name should start with a capital letter";
        event.preventDefault();
    }

}

if(surname == "" || surname == null){
  surnameMsg.innerText="Please fill the surname field!";
  event.preventDefault();
}else{
  if(surnameRegex.test(surname)){
      surnameMsg.innerText="";
  }else{
      surnameMsg.innerText="* Surname should start with a capital letter";
      event.preventDefault();
  }

}

if(email == "" || email == null){
  emailMsg.innerText="Please fill the email field!";
  event.preventDefault();
}else{
  if(emailRegex.test(email)){
      emailMsg.innerText="";
  }else{
      emailMsg.innerText="* Email must be standard";
      event.preventDefault();
  }

}

if(username == "" || username == null){
  userMsg.innerText="Please fill the username field!";
  event.preventDefault();
}else{
  if(userRegex.test(username)){
      userMsg.innerText="";
  }else{
      userMsg.innerText="* Username must be example.example";
      event.preventDefault();
  }

}


if(psw == "" || psw == null){
  pswMsg.innerText="Please fill the password field!";
  event.preventDefault();
}else{
  if(pswRegex.test(psw)){
      pswMsg.innerText="";
  }else{
      pswMsg.innerText="* Password should start with a capital and end with 3 numbers";
      event.preventDefault();
  }

}




});