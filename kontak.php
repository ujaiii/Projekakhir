<?php
require 'conect.php';
$select_sql = "SELECT *FROM kontak";
$result = mysqli_query($conn, $select_sql);

if (!$result) {
    echo mysqli_error($conn);
}

$kontak = [];

while ($row = mysqli_fetch_assoc($result)) {
    $kontak[] = $row;
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style1.css">
    <title>KONTAK</title>
</head>

<body class="b">
<div class="medsos">
<div class="containers">
			<marquee  style="font-family: impact; font-size:19px; color: #FFFFFF;"> "Selamat Datang di #1 platform top up game, Termurah dan terpercaya!"</marquee>
		</div>
</div>

<div class="topnav">
    <div class="active">
    <a href="register.php" style="border: 3px solid; border-radius: 20px;float:right;padding: 10px 10px;">Register</a>
    <a href="login.php" style="float:right;padding: 10px 10px;">Login</a>
    <img src="img/acc.png" style="float:right;width:50px;height:50px; padding:-1px 10px;">

    <a href="index.php"  style="float:left;">Home</a>
    <p style="float:left;padding: 10px 10px;">/</p>
    <a href="kontak.php"  style="float:left;">Kontak</a>
    <p style="float:left;padding: 10px 10px;">/</p>
    <a href="tentang.php"  style="float:left;">About</a>
    </div>
</div>

<div class="containerf">
    <section class="content">
        <h1 class="title" style="font-size: 35px;"> kontak</h1>
        <p></p>Bila ada masalah atau Pertanyaan, Hubungilah kami dan kami siap membantu.
        <table>
            <tr>
                <th>no</th>
                <th>nama</th>
                <th>kontak</th>
            </tr>

            <?php $i = 1 ?>
            <?php foreach ($kontak as $kel) : ?>
                <tr>
                    <td><?= $i ?></td>
                    <td><?= $kel["nama"] ?></td>
                    <td><?= $kel["kontak"] ?></td>
                </tr>
                <?php $i++; ?>
            <?php endforeach; ?>
        </table>
    </section>
</div>

<footer><a>Copyright</a></footer>

</body>
</html>