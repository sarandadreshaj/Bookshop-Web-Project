<?php


include_once 'userRepository.php'; 
include_once 'users.php'; 


if(isset($_POST['submit'])){
    if(empty($_POST['name']) || empty($_POST['surname']) || empty($_POST['email']) ||
    empty($_POST['username']) || empty($_POST['password'])){
 
        
    }
    

    else{   
        $name = $_POST['name'];
        $id = rand(0,100);
        $surname = $_POST['surname'];
        $email = $_POST['email'];
        $username = $_POST['username'];
        $password = $_POST['password'];
        $role = 'user';
    
        
   


        $user = new User($id, $name,$surname,$email,$username,$password,$role);
            $userRepository = new UserRepository();


            if($userRepository->testEmail($user)){
                echo "<script>alert('User already exists(email not available)!')</script>";
            }

            else if($userRepository->testUsername($user)){
                echo "<script>alert('User already exists(username not available)!')</script>";
            }
            else {

            $userRepository->insertUser($user);
            }
            
        

    }


}


?>