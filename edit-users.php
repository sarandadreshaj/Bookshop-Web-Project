<?php
session_start();
require_once 'UserRepository.php';
if(isset($_GET['id'])){
    $userId = $_GET['id'];
}
$user = new userRepository;
$currentUser = $user->getUserById($userId);

if(isset($_POST['submit'])){
    $user->updateUser($id, $name, $surname, $email, $username, $password, $role);
}
?>

<style>

.edit-table{
    text-align: center;
    display: flex;
    justify-content: center;
    align-items: center;
}

</style>

<div align="center" class="edit-table">
    
<form method="post" >
    First name:
    <input type="text" name="first_name" value="<?php echo $currentUser['first_name']; ?>">
    <br>
    Last name:
    <input type="text" name="last_name" value="<?php echo $currentUser['last_name']; ?> ">
    <br>
    Email:
    <input type="text" name="email" value="<?php echo $currentUser['email']; ?>">
    <br>
    Username:
    <input type="text" name="username" value="<?php echo $currentUser['username']; ?> ">
    <br>
    Password:
    <input type="password" name="password" value="<?php echo $currentUser['password']; ?> ">
    <br>
    <input type="submit" name="submit" value="Update">

</form>