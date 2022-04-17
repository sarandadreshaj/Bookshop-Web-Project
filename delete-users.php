<?php 
    require_once 'userRepository.php';

    if(isset($_GET['id'])){
        $userId = $_GET['id'];
    }
    $users = new userRepository;
    $users->deleteUser($userId);
?>