<!DOCTYPE html>
<?php
include("ayar.php");

if ($_POST){
    $aciklama = $_POST["aciklama"];
    $sorgu = $baglan->query("delete from meshuryemekler ");
    $sorgu = $baglan->query("insert into meshuryemekler (aciklama) values ('$aciklama')");
    if ($sorgu){
        echo "<script> window.location.href='meshuryemekler.php'; </script>";
    }

}
$sorgu = $baglan->query("select * from meshuryemekler");
$satir = $sorgu->fetch_object();

?>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bursa'yı Tanı</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="konteynır" style="background: url(yemek.jpg);
    height: 100vh;
    background-size: 100% 100%;">
        <div class="navbar">
            <div class="logo">
                <a href="#">BURSA</a>
            </div>
            <ul>
            <li><a href="indexgörünüm.php" class="active">ANA SAYFA</a></li>
                <li><a href="tarihimizgörünüm.php">TARİHİMİZ</a></li>
                <li><a href="meshuryemeklergörünüm.php">MEŞHUR YEMEKLER</a></li>
                <li><a href="gezilecekyerlergörünüm.php">GEZİLECEK YERLER</a></li>
                <li><a href="galerigörünüm.php">GALERİ</a></li>
            </ul>
            <form action="" method="post">
    <b>İçerik:</b><br><br>
    <textarea rows="30" cols="50" style="overflow: auto;" name="aciklama"><?php echo $satir->aciklama; ?>
    </textarea><br><br>
</form>
            </div>
        </div>
    </div>
    
    
</body>
</html>