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
    <div class="bordder">
        <div class="getintouch">
            <h1 id="getin"> Get In Touch</h1>
            <p>Rr.Ismail Qemali, Peje 30000</p>
            <p>+383-456-789</p>
        </div>
        <div class="forma">
            <input id="f1" class="validd" type="text" placeholder="Username">
            <label style="color: red;" id="usernameMsg"></label>
            <br>
            <input id="f2" class="validd" type="password" placeholder="Password">
            <label style="color: red;" id="passwordMsg"></label>
            <br>
            <button id="submit">Log in</button>
            <p>Don't have an account?</p>
            <p><a class="loginlink" href="register.php">Register Now!</a></p>
        </div>
    </div>
</div>
   


<?php
        include 'inc/footer.php';
?>
<script src="script.js"></script>
</body>

</html>