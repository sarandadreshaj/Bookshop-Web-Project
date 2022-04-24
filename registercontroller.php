<?php


include_once 'userRepository.php'; 
include_once 'users.php'; 


if(isset($_POST['submit'])){
    if(empty($_POST['name']) || empty($_POST['surname']) || empty($_POST['email']) ||
    empty($_POST['username']) || empty($_POST['password'])){
 
        
    }
    

    else{   
        $id = rand(0,100);
        $role = 'user';
        $name = $_POST['name'];
        $surname = $_POST['surname'];
        $email = $_POST['email'];
        $username = $_POST['username'];
        $password = $_POST['password'];
        
    
        
   


        $user = new User($id,$role, $name,$surname,$email,$username,$password);
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