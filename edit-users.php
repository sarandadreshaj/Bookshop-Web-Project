
<?php

session_start();
$userId = $_GET['id'];
include_once 'userRepository.php';

$userRepository = new UserRepository();

$user =  $userRepository->getUserById($userId);


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
    
<form action="" method="POST" >
    ID:
    <input type="text" name="id" value="<?=$user['id']?>" readonly>
    <br>
    Role:
    <input type="text" name="role" value="<?=$user['role']?>">
    <br>
    First name:
    <input type="text" name="name" value="<?=$user['name']?>">
    <br>
    Last name:
    <input type="text" name="surname" value="<?=$user['surname']?>">
    <br>
    Email:
    <input type="text" name="email" value="<?=$user['email']?>">
    <br>
    Username:
    <input type="text" name="username" value="<?=$user['username']?>">
    <br>
    Password:
    <input type="text" name="password" value="<?=$user['password']?>">
    <br>

    <input type="submit" name="editButton" value="update">

</form>

<?php 

if(isset($_POST['editButton'])){    
    $id = $user['id'];
    $name = $_POST['name'];
    $surname = $_POST['surname'];
    $email = $_POST['email'];
    $username = $_POST['username'];
    $password = $_POST['password'];
    $role = $_POST['role'];
    

    $userRepository->updateUser($id,$role,$name,$surname,$username,$email,$password);
    header("location:userDashboard.php");

    include_once 'menuActivites.php';

    $userChanging = $_SESSION['username'];

    $changedUser = $_POST['name']." ".$_POST['surname'];

    $activity = "Edited user";

    $auditLogRepository = new MenuActivities();

    $auditLogRepository->activities($userChanging,$activity,$changedUser);

}
?>
