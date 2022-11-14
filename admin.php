<?php
require 'Conect.php';
session_start();
if (!isset($_SESSION['login'])) {
    echo "
    <p style='color: red;'>
        Username atau password salah!
    </p>
    ";
    header("location: login.php");
}

$select_sql = "SELECT *FROM pembelian";
$result = mysqli_query($conn, $select_sql);

if (!$result) {
    echo mysqli_error($conn);
}
if (isset($_GET['cari'])) {
    $cari = $_GET['cari'];
    $result = mysqli_query($conn, "SELECT * FROM pembelian WHERE nama LIKE '%$cari%'");
} elseif (isset($_GET['urut'])) {
    if ($_GET['urut'] == "asc") {
        $result = mysqli_query($conn, "SELECT * FROM pembelian ORDER BY nama ASC");
    } else {
        $result = mysqli_query($conn, "SELECT * FROM pembelian ORDER BY nama DESC");
    }
} else {
    $result = mysqli_query($conn, "SELECT * FROM pembelian");
}
$pembelian = [];

while ($row = mysqli_fetch_assoc($result)) {
    $pembelian[] = $row;
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style3.css">
    <title>ADMIN</title>
</head>

<body class="a">
<div id="mySidenav" class="sidenav">
<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
<a href="admin.php">Data Pembelian</a>
<a href="logout.php" class="float:bottom">Logout</a>
<center>
<img src="img/sup.png" style="width: 90%; float: bottom;">
</center>
</div>

<div class="topnav">
<span style="font-size:30px;cursor:pointer;color:white;padding:10px;" onclick="openNav()">&#9776; menu</span>
<div style="float: right;">
<form action="" method="GET">
        <input type="text" name="cari" placeholder="Search" style="padding-right: 70px;  margin-top: 12px; padding-top: 5px; padding-bottom: 5px; size: 50px;"></form>
</div>
</div>

<div id="main">
<div class="containeraa">
    <section class="content">
        <table>
            <tr>
                
                <th>no        </th>
                <th>id        </th>
                <th>nama      </th>
                <th>tangggal  </th>
                <th>Foto game </th>
                <th> action   </th>
            </tr>

            <?php $i = 1 ?>
            <?php foreach ($pembelian as $kel) : ?>
                <tr>
                    <td><?= $i ?></td>
                    <td><?= $kel["id"] ?></td>
                    <td><?= $kel["nama"] ?></td>
                    <td><?= $kel["tanggal"] ?></td>

                </tr>
                <?php $i++; ?>
            <?php endforeach; ?>
        </table>
        <form action="" method="GET">
        <button class="button"><a href="?urut=asc" >Urut Ascending</a></button>
        <button class="button"><a href="?urut=desc" >Urut Descending</a></button>
        </form>
        <a href="admin.php"><button class="buttona">Refresh</button></a>
        </section>
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
document.body.a.style.backgroundColor = "white";
}
</script>
</body>

</html>