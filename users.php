<?php

class User{
    private $id;
    private $role;
    private $name;
    private $surname;
    private $email;
    private $username;
    private $password;
    
    


    function __construct($id,$role, $name,$surname,$email,$username,$password){
            $this->id=$id;
            $this->role = $role;
            $this->name = $name;
            $this->surname = $surname;
            $this->email = $email;
            $this->username = $username;
            $this->password = $password;
            
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