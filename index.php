
<?php
  require_once 'menuControllers.php';
  include_once 'log.php';
?>
<!DOCTYPE html>
<html>
    <head>
        <title>HOME</title>
        <link href="style.css" type="text/css" rel="stylesheet"> 
        <script src="https://kit.fontawesome.com/4480201544.js" crossorigin="anonymous"></script>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Baloo+2&display=swap" rel="stylesheet">
    </head>
    <body>
    <?php 

      include 'inc/header.php';

    ?>

    <?php
      include 'inc/slider.php';
    ?>
    <div style="margin-bottom: 20px;"></div>

    <p1 class="minititujt">New and Networthy</p1>

    <div class="container1">
          
            <?php
            
               $products = new MenuController;
               $all = $products->readData();
               for($i = 0; $i< count($all);$i++){
                echo ' <div class="cardd">
              <img class="fotoLibra" src="'.$all[$i]['menu_image'].'" alt="Avatar">
            <div class="karta">
              <h3><b>'.$all[$i]['menu_title'].'</b></h3>
              <div class="cmimi">
                <p>'.$all[$i]['menu_category'].'</p>
                <p style="color: #327e8c;">'.$all[$i]['menu_price'].'</p>
              </div>
              <button class="btn">Buy!</button>
            </div>
            </div>';
               }
            ?>
      </div> 
    <div id="delivery">
        <img src="img/free.png" class="delivery2">
        <img src="img/reviews.png" class="delivery2">
        <img src="img/over10.png" class="delivery2">
    </div>


     

    <?php
        include 'inc/footer.php';
    ?>
    <script src="script.js"></script>
    <script src="slider.js"></script>
   
    </body>
   
</html>