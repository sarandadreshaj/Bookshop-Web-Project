<?php 
    require_once '../controllers/MenuControllers.php';

    if(isset($_GET['id'])){
        $menuId = $_GET['id'];
    }
    $menu = new MenuController;
    $menu->delete($menuId);
?>