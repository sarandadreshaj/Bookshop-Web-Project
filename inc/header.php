<?php 
    session_start();
    $hide = "";
    if(isset($_SESSION['username'])){
        if ($_SESSION['role'] == "admin") {
            $hide = "";
        }else {
        $hide = "hide";
        }
   }

?>


 <header>
            <?php
                if(!isset($_SESSION['username'])){
                    echo '<img src="img/book-64.png" id="ikone">';
                }else{
                    echo '<p id="emrii">'.$_SESSION['name'].'</p>';
                }
            ?>
    <nav class="navbar">
        <ul class="lista">
            <li class="listaLi">
                <a class="linku" href="index.php">HOME</a>
            </li>
            
            <li class="listaLi">
           <?php
            if(!isset($_SESSION['username'])){
                echo '<a class="linku" href="login.php">LOG IN</a>';
            }else{
                echo '<a class="linku" href="logout.php">LOG OUT</a>';
            }
            ?>
            </li>
            <li class="listaLi">
                <?php
            if(!isset($_SESSION['username'])){
                echo '<a class="linku" href="register.php">REGISTER</a>';
            }else{?>
                <a class=" <?php echo $hide ?> linku " href="userDashboard.php">USER DASHBOARD</a>
                <a class=" <?php echo $hide ?> linku " href="menuDashboard.php">MENU DASHBOARD</a>
                <a class=" <?php echo $hide ?> linku " href="activityDashboard.php">ACTIVITY DASHBOARD</a>
                
            <?php
            }
            ?>
             </li>
            <li class="listaLi">
                <a class="linku" href="blog.php">BLOG</a>
            </li>
            <li class="listaLi">
                <a class="linku" href="contactus.php">CONTACT US</a>
            </li>
            
   <li class="listaLi">
                <a class="linku" href="aboutus.php">ABOUT US</a>
            </li>
         
            <ul>
                <div class="hamburger">
                    <span class="bar"></span>
                    <span class="bar"></span>
                    <span class="bar"></span>

                </div>
            </ul>
        
        </ul>
    </nav>
</header>

    <script src="../scrip.js"></script>