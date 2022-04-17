<?php

require_once 'database.php';

class MenuController{
    public $db; //per me u lidhe me database, per te ju casur

    public function __construct(){
        $this->db = new Database;//sa here qe thirresh si instance, thirre $db 
    }
    //crud

    public function readData(){
        $query = $this->db->pdo->query('SELECT * FROM menu');
         
         return $query->fetchAll();
    }

    public function insert($request){
        $request['image'] = './img/'.$request['image'];
        $query = $this->db->pdo->prepare('INSERT INTO menu (menu_image, menu_title, menu_category, menu_price)
        VALUES (:menu_image, :menu_title, :menu_category, :menu_price)');

        $query->bindParam(':menu_image', $request['image']);//e kerkon cili input quhet image
        $query->bindParam(':menu_title', $request['title']);//e kerkon cili input e ka name title
        $query->bindParam(':menu_category', $request['category']);//e kerkon cili input e ka name category
        $query->bindParam(':menu_price', $request['price']);//e kerkon cili input e ka name price


        $query->execute();
        return header('Location: menuDashboard.php');

    }
    public function edit($id){
        $query = $this->db->pdo->prepare('SELECT * FROM menu WHERE id = :id');
        $query->bindParam(':id', $id);
        $query->execute(); 

        return $query->fetch();

    }
    public function update($request, $id){
        $query = $this->db->pdo->prepare('UPDATE menu SET menu_image = :menu_image,
        menu_title = :menu_title, menu_category = :menu_category, menu_price= :menu_price WHERE id = :id');
        $query->bindParam(':menu_image', $request['image']);
        $query->bindParam(':menu_title', $request['title']);
        $query->bindParam(':menu_category', $request['category']);
        $query->bindParam(':menu_price', $request['price']);
      
        $query->bindParam(':id', $id);
        $query->execute();

        return header('Location: menuDashboard.php');
    }

    public function delete($id){
        $query = $this->db->pdo->prepare('DELETE FROM menu WHERE id=:id');
        $query->bindParam(':id', $id);
        $query->execute();

        return header('Location: menuDashboard.php');
    }
}

?>