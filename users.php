<?php

class User{
    private $name;
    private $surname;
    private $email;
    private $username;
    private $password;
    private $role;
    private $id;


    function __construct($id, $name,$surname,$email,$username,$password,$role){
            $this->name = $name;
            $this->surname = $surname;
            $this->email = $email;
            $this->username = $username;
            $this->password = $password;
            $this->role = $role;
            $this->id=$id;
    }



    function getName(){
        return $this->name;
    }
    function getId(){
        return $this->id;
    }
    function getSurname(){
        return $this->surname;
    }
    function getEmail(){
        return $this->email;
    }
    function getUsername(){
        return $this->username;
    }
    function getPassword(){
        return $this->password;
    }
    function getRole(){
        return $this->role;
    }
}