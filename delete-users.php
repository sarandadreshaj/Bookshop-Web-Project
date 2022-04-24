<?php 
session_start();
$userId = $_GET['id'];
    require_once 'userRepository.php';
    
$userRepository = new UserRepository();

$user = $userRepository->getUserById($userId);

$userRepository->deleteUser($userId);

header("location:userdashboard.php");

include_once 'menuActivites.php';

$userChanging = $_SESSION['username'];

$deletedUser = $user['username'];

$activity = "Deleted user";

$auditLogRepository = new MenuActivities();

$auditLogRepository->activities($userChanging,$activity,$deletedUser);
?>