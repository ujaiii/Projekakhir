<?php
require 'conect.php';
session_start();
if (!isset($_SESSION['login'])) {
    echo "
    <p style='color: red;'>
        Username atau password salah!
    </p>
    ";
    header("location: login.php");
}

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style3.css">
    <title>User</title>
</head>

<body class="b"> 
<div id="mySidenav" class="sidenav">
<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
<a href="user.php">Cart</a>
<a href="Listharga.php">List Harga</a>
<a href="logout.php" class="float:bottom">Logout</a>
<center>
</center>
</div>

<div class="topnav">
<span style="font-size:30px;cursor:pointer;color:white;padding:10px;" onclick="openNav()">&#9776; menu</span>

<div id="main">
<form action="" method="post">
<div class="containerK1">
    <div class="container">
            <img src="hargaml.jpg" alt="" width="200px">
            <img src="hargaml.jpg" alt="" width="200px">
        </form>
    </div>
</div>
    <footer><a>Copyright</a></footer>
    <script>
function openNav() {
document.getElementById("mySidenav").style.width = "250px";
document.getElementById("main").style.marginLeft = "250px";
document.body.style.backgroundColor = "rgba(0,0,0,0.4)";
}

function closeNav() {
document.getElementById("mySidenav").style.width = "0";
document.getElementById("main").style.marginLeft= "0";
document.body.style.backgroundColor = "white";
}
</script>
</body>

</html>
