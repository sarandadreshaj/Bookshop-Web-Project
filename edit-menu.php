<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link href="../style.css" type="text/css" rel="stylesheet"> 
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    
</head>
<body>
<?php
require_once 'MenuControllers.php';
if(isset($_GET['id'])){
    $menuId = $_GET['id'];
}
$menu = new MenuController;
$currenMenu = $menu->edit($menuId);

if(isset($_POST['submit'])){
    $menu->update($_POST, $menuId);
}
?>

<style>

.edit-table{
    text-align: center;
    display: flex;
    justify-content: center;
    align-items: center;
}

</style>

<div align="center" class="edit-table">
<form class="editform" method="post" >
    Image:
    <input type="file" name="image" value="<?php echo $currenMenu['menu_image']; ?>">
    <br>
    Title:
    <input type="text" name="title" value="<?php echo $currenMenu['menu_title']; ?> ">
    <br>
    Category:
    <input type="text" name="category" value="<?php echo $currenMenu['menu_category']; ?>">
    <br>
    Price:
    <input type="text" name="price" value="<?php echo $currenMenu['menu_price']; ?> ">
    <br>
    <input type="submit" name="submit" value="Update">

</form>
</div>
</body>
</html>
