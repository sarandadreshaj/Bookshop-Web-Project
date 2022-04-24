<?php
require_once 'MenuControllers.php';
$menu = new MenuController;
if(isset($_POST['submit'])){
    $menu->insertMessage($_POST);
}


?>
<style>
    .contactus{
        height: 38px;
        width: 290px;
    }
</style>

<footer>
        <div>
            <p class="teksti">RECEIVE NEWS, UPDATES AND SPECIAL OFFERS.</p>
            <form method="POST">
                <p class="teksti2"> Enter your email address here: </p>
                <input id="emaili" type="email" placeholder="Type your email" name="email"><br>
                <p class="teksti2"> Enter your message: </p>
                <input id="emaili" type="text" placeholder="Type your message..." name="message"><br><br>

                <button name="submit"  type="submit" class="contactus">SUBSCRIBE</button>
            <form>
            <div class="boxat">
                <input class="checkbox" type="checkbox">
                <p>I confirm I would like to receive emails from wordery.com</p>
            </div>
            <div class="boxat">
                <input class="checkbox" type="checkbox">
                <p>I agree to terms & conditions</p>
            </div>
            

        </div>
        <div>
            <p class="teksti">Contact us</p>
            <div id="ikonat">
                <img src="img/facebook-app-symbol.png" class="threeicons">
                <img src="img/instagram.png" class="threeicons">
                <img src="img/twitter.png" class="threeicons">
            </div>
            <p>+383 400 400</p>
            <p>Rr.Hasan Prishtina, Peje</p>
            <a onclick="topFunction()" id="myBtn"><img id="arrow" src="img/uparrow.png"></a>
        </div>
    </footer>