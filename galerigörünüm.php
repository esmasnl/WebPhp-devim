<!DOCTYPE html>

<div class="icerik">
<?php
include("ayar.php");
$sirano=0;
$sorgu = $baglan->query("select * from galeri ");
while ($satir =$sorgu->fetch_object()){
    $sirano++;
    echo "<tr align='center' >
    <td>$sirano</td>
    </td> <img src='".$satir->resim."'></td>
    </tr>";
    
}
?>
</div>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bursa'yı Tanı</title>
    <link rel="stylesheet" href="style.css">

</head>
<body>
    <div class="konteynır" style="background: url(bursa_bursa-sultan-kent-9463ce.jpg);
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

            </div>
            

        </div>
    </div>
    
</body>
</html>