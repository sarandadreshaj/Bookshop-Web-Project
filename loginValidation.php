<?php
   if(isset($_POST['submit'])){
       if(empty($_POST['username']) || empty($_POST['password'])){
           echo "Fill all fields!";
       }else{
           $username = $_POST['username'];
           $password = $_POST['password'];

           include_once 'userRepository.php';
           include_once 'users.php';
        
        $userRepository = new UserRepository();

        $users = $userRepository->getAllUsers();


           $i=0;
           foreach($users as $user){
               $i++;
               if($username == $user['username'] && $password == $user['password']){

                   session_start();
                   $_SESSION['username'] = $username;
                   $_SESSION['password'] = $password;
                   $_SESSION['name'] = $user['name'];
                   $_SESSION['email'] = $user['email'];
                   $_SESSION['surname'] = $user['surname'];
                   $_SESSION['role'] = $user['role'];
                   header("location:index.php");
                   exit();

               }else{
                   
                   if($i == sizeof($users)){
                    echo "<h5 style='margin-left:0%;color:red;'>! Incorrect Username or Password/User Does Not Exist</h5>";
                   
                   }
                   
               }
           }
       }
   }
 
?>