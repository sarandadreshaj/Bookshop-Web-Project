<!DOCTYPE html>
<html>
<head>
    <title>LOG IN</title>
    <link href="style.css" type="text/css" rel="stylesheet"> 
    
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Baloo+2&display=swap" rel="stylesheet">
</head>
<body>
<?php 

include 'inc/header.php';

?>
<div class="container">
    <div class="bordderr">
        <div class="getintouch">
            <h1 id="getin"> Get In Touch</h1>
            <p>Rr.Ismail Qemali, Peje 30000</p>
            <p>+383-456-789</p>
        </div>
        <div class="forma">
            <input id="f3" class="validd" type="text" placeholder="First Name">
            <label style="color: red;" id="fnameMsg"></label> <br>

            <input id="f6" class="validd" type="text" placeholder="Last Name">
            <label style="color: red;" id="surnameMsg"></label> <br>

            <input id="f7" class="validd" type="text" placeholder="Username">
            <label style="color: red;" id="userMsg"></label> <br>

            <input id="f4" class="validd" type="text" placeholder="Email">
            <label style="color: red;" id="emailMsg"></label> <br>

        <!--    <input id="f5" class="validd" type="text" placeholder="Age">
            <label style="color: red;" id="ageMsg"></label> <br>
        -->

            <input id="f8" class="validd" type="password" placeholder="Password">
            <label style="color: red;" id="pswMsg"></label> <br>

           <!-- <input id="f9" class="validd" type="password" placeholder="Confirm password">
            <label style="color: red;" id=" confirmpswMsg"></label> <br>-->

            <button id="submitt">Register</button>
            <p>Already have an account?</p>
            <p><a class="loginlink" href="login.html">Log in!</a></p>
        </div>
    </div>
</div>
   


<?php
        include 'inc/footer.php';
?>
<script src="registerjs.js"></script>
</body>

</html>