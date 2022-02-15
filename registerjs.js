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
/*
//SIGN IN VALIDATION
var button = document.getElementById("submit");
var usernameMsg =document.getElementById("usernameMsg");
var passwordMsg = document.getElementById("passwordMsg");
var usernameRegex = /^[A-Z]\w+[._-]?\w+/;
var passwordRegex = /^[A-Z][a-z]{5}\d{3}[!*._-]{1}/;

button.addEventListener("click", function(event){
  var username = document.getElementById("f1").value;
  var password = document.getElementById("f2").value;

  if(username == "" || username == null){
    usernameMsg.innerText="Please fill the username field!";
    event.preventDefault();
  }else{
    if(usernameRegex.test(username)){
        usernameMsg.innerText="";
    }else{
        usernameMsg.innerText="* Please fill the username field correctly (ex. john123)";
        event.preventDefault();
    }

}

  if (password == "" || password == null) {
    passwordMsg.innerText = "* Please fill the password field";
    event.preventDefault();
  } else {
    if (passwordRegex.test(password)) {
      passwordMsg.innerText = "";
    } else {
      passwordMsg.innerText =
        "* Your password must contain  1 uppercase, 5 lowercase letters, 3 digits and 1 symbol [!*-_.]";
      event.preventDefault();
    }
  }
});
*/


//REGISTER VALIDATION

var buttonn = document.getElementById("submitt");

var fnameMsg =document.getElementById("fnameMsg");
var surnameMsg = document.getElementById("surnameMsg");
var userMsg = document.getElementById("userMsg");
var emailMsg = document.getElementById("emailMsg");
//var emailMsg = document.getElementById("ageMsg");
var pswMsg = document.getElementById("pswMsg");
//var confirmpswMsg = document.getElementById("confirmpswMsg");


var userRegex = /^[A-Z]\w+[._-]?\w+/;
var fnameRegex = /^[A-Z][a-z]{1,}/;
var surnameRegex = /^[A-Z][a-z]{1,}/;
var emailRegex = /[a-z]\w+@[a-z]+[-]?[a-z]\.[a-z]{2,3}/;
var pswRegex = /^[A-Z]\w+[a-z]\d{3}/;

buttonn.addEventListener("click", function(event){
  var user = document.getElementById("f7").value;
  var surname = document.getElementById("f6").value;
  var fname = document.getElementById("f3").value;
  var email = document.getElementById("f4").value;
  var psw = document.getElementById("f8").value;


  

  if(user == "" || user == null){
    userMsg.innerText="Please fill the username field!";
    event.preventDefault();
  }else{
    if(userRegex.test(user)){
        userMsg.innerText="";
    }else{
        userMsg.innerText="* Please fill the username field correctly (name123)";
        event.preventDefault();
    }

}

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