
<?php 
session_start();
    require_once 'MenuControllers.php';

    if(isset($_GET['id'])){
        $menuId = $_GET['id'];
    }
    $menu = new MenuController;
    $currenMenu = $menu->delete($menuId);

    
    include_once 'menuActivites.php';
    $title = $currenMenu['menu_title'];
    $username = $_SESSION['username'];
    $activity = "Deleted product";
    
    $activities = new MenuActivities();
    
    $activities->activities($username,$activity,$title);

    
?>