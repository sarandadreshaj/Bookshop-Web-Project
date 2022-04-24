<?php

include_once 'userdatabase.php';

class UserRepository
{

    private $connection;



    function __construct()
    {
        $conn = new DatabaseConnection;
        $this->connection = $conn->startConnection();
    }


    function insertUser($user)
    {

        $conn = $this->connection;

        $id = $user->getId();
        $role = $user->getRole();
        $name = $user->getName();
        $surname = $user->getSurname();
        $email = $user->getEmail();
        $username = $user->getUsername();
        $password = $user->getPassword();



        $sql = "INSERT INTO user (id,role, name,surname,email,username,password) VALUES (?,?,?,?,?,?,?)";

        $statement = $conn->prepare($sql);

        $statement->execute([$id,$role, $name, $surname, $email, $username, $password]);


        echo "<script>alert('User inserted succesfully')</script>";
    }



    function getAllUsers()
    {

        $conn = $this->connection;

        $sql = "SELECT * from user";


        $statement = $conn->query($sql);
        $users = $statement->fetchAll();

        return $users;
    }

    function getUserById($id)
    {

        $conn = $this->connection;

        $sql = "SELECT * from user WHERE id = '$id'";


        $statement = $conn->query($sql);
        $user = $statement->fetch();

        return $user;
    }


    function testEmail($user){
        $conn = $this->connection;

        $email = $user->getEmail();

        $sql = "SELECT * from user WHERE email = '$email'";

        $statement = $conn->query($sql);
        $testEmail = $statement->fetchAll();

        if(count($testEmail) == 0){
            return false;
        }
        else{
        return true;
        }


    }
    function testUsername($user){
        $conn = $this->connection;

        $username = $user->getusername();

        $sql = "SELECT * from user WHERE username = '$username'";

        $statement = $conn->query($sql);
        $testUsername = $statement->fetchAll();

        if(count($testUsername) == 0){
            return false;
        }
        else{
        return true;
        }


    }

    function updateUser($id, $role, $name, $surname, $email, $username, $password)
    {

        $conn = $this->connection;


        $sql = 'UPDATE user SET role=?, password=?, name=?, surname=?, email=?, username=?  WHERE id=?';

        $statement = $conn->prepare($sql);

        $statement->execute([$id, $role, $name, $surname, $email, $username, $password]);

        echo "<script>alert('Update was successful')</script>";
    }

    function deleteUser($id)
    {
        $conn = $this->connection;

        $sql = "DELETE FROM user WHERE id=?";

        $statement = $conn->prepare($sql);

        $statement->execute([$id]);
        return header('Location: userDashboard.php');
    }
}
