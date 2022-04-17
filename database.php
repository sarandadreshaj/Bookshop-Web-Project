<?php 
/*class Database{
    public $pdo ;

    public function __construct(){
        try{
            session_start();
            $link = new PDO('mysql:host=localhost;dbname=projektineweb','root','');
            $this->pdo = $link;
        }catch(PDOException $exception){
            die($exception->getMessage());
        }
    }
}*/  
class Database{
    public $pdo;

    public function __construct()
    {
        try{
            $link= new PDO('mysql:host=localhost;dbname=projektineweb','root','');
            $this->pdo = $link;
        }catch(PDOException $exception){
            die($exception->getMessage());
        }
    }

}

?>
