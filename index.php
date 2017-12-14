<?php include 'database.php'; ?>
<?php 
//creaza query-ul de select
$query= "SELECT * FROM shouts ORDER BY id DESC";
//paseaza rezultatele intr-o variabila si prin $con se conecteaza la respectiva baza de date
$shouts= mysqli_query($con,$query);
?>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta charset="UTF-8">
        <title>Shoutit!Box</title>
        <link rel="stylesheet" href="css/style.css"/>
    </head>
    <body>
        <div id="container">
            <header>
                <h1>Shout it! ShoutBox</h1>
            </header>
            <div id="shouts">
                
                <!-- creat un loop ca sa itereze prin randuri atata timp cat exista randuri-->
                <?php while($row= mysqli_fetch_assoc($shouts)):?>
                <ul>
                    <li class="shout"><span><?php echo $row['time']; ?> - </span> <strong><?php echo $row['user']; ?> :</strong> <?php echo $row['message']; ?></li>
                 </ul>
                <?php endwhile ;?>
               
            </div>
            <div id="input">
                <?php if(isset($_GET['error'])):?>
                <div class="error"><?php echo $_GET['error']; ?></div>
                <?php endif; ?>
                
                <form method="post" action="process.php">
                    <input type="text" name="user" placeholder="Enter your name"/>
                    <input type="text" name="message" placeholder="Enter your message"/>
                    <br/>
                    <input class="shout-btn" type="submit" name="submit" value="Shout it out!"/>
                </form>
            
            </div>
        </div>
    </body>
</html>
