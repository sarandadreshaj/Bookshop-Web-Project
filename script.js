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

//SIGN IN VALIDATION
var button = document.getElementById("submit");
var usernameMsg =document.getElementById("usernameMsg");
var passwordMsg = document.getElementById("passwordMsg");
var usernameRegex =  /[a-z]+[.]+[a-z]+/;
var passwordRegex = /^[A-Z]\w+[a-z]\d{3}/;

button.addEventListener("click", function(event){
  var username = document.getElementById("f1").value;
  var password = document.getElementById("f2").value;

  if (password == "" || password == null) {
    passwordMsg.innerText = "* Please fill the password field";
    event.preventDefault();
  }else {
      if(passwordRegex.test(password)) {
          passwordMsg.innerText = "";
      }else{
          passwordMsg.innerText = "*Password should start with a capital and end with 3 numbers";
          event.preventDefault();
      }
  }

  if(username == "" || username == null){
    usernameMsg.innerText="Please fill the username field!";
    event.preventDefault();
  }else{
    if(usernameRegex.test(username)){
        usernameMsg.innerText="";
    }else{
        usernameMsg.innerText="* Username must be example.example";
        event.preventDefault();
    }
  
  }
});



