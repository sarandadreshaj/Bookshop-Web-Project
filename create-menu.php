<?php
require_once 'MenuControllers.php';

$menu = new MenuController;
if(isset($_POST['submit'])){
    $menu->insert($_POST);
}


?>
<div>
    <form method="POST">
        Image:
        <input type="file" name="image">
        <br>
        Title:
        <input type="text" name="title">
        <br>
        Category:
        <input type="text" name="category">
        <br>
        Price:
        <input type="text" name="price">
        <br>
        <input type="submit" name="submit" value="Save">
    </form>
</div>