<?php
//ma conectez la serverul de mysql

$con= mysqli_connect("localhost","root","","shoutit");

//testez conexiunea

if(mysqli_connect_errno()){
    echo 'Failed to connect to MySQL: '.mysqli_connect_error();
}
