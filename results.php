<?php 
    $username  = $_POST['user_name'];
    $password = $_POST['user_password'];

    if(empty($username)){
        $name_error = "Please insert your username";
    }
    if(empty($password)){
        $password_error = "Please insert your password";
    }

    include('login.php');

?>

