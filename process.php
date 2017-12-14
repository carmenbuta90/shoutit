<?php
include 'database.php';

// verifica daca formularul a fost trimis

if(isset($_POST['submit'])){
   $username = mysqli_real_escape_string($con, $_POST['user']);
   $message = mysqli_real_escape_string($con,$_POST['message']);
}

//seteaza timezone-ul
date_default_timezone_set('Europe/Bucharest');

//variabila unde se formateaza ora
$time= date('h:i:s a', time());

//validarea datelor introduse
//verific username
if(!isset($username) || $username== '' ){
     $error = 'Please insert a username';
     header("Location: index.php?error=".urlencode($error));
     exit();

}else{
    //daca e introdus username-ul, verific si daca am mesaj
    if(!isset($message) || $message== ''){
       $error = 'Please insert a message'; 
       header("Location: index.php?error=".urlencode($error));
       exit(); 
    }else{
      //daca am si username si mesaj fac insertul
      $query= " INSERT INTO shouts (user, message, time) VALUES('$username', '$message', '$time') ";
        if(!mysqli_query($con,$query)){
            die('Error:'.mysqli_error($con));
                }else{
                    header("Location: index.php");
                    exit();   
    }
  }
}