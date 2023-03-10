<?php
session_start();
include("ayar.php");


if ($_SESSION["giris"] != sha1(md5("var")) ){
   header("Location: cikis.php");
}
?>

<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>Yonetim Paneli Ana Sayfa</title>
</head>
<body>

  <div>
  <a href="anasayfa.php">ANA SAYFA</a> - <a href="galeri.php">GALERİ</a> -<a 
  href="tarihimiz.php">TARİHİMİZ</a> - <a href="meshuryemekler.php">MEŞHUR YEMEKLER</a> -
  <a href="gezilecekyerler.php">GEZİLECEK YERLER</a> -<a href="cikis.php" onclick="if (!confirm
  ('Çıkış Yapmak İstediğinize Emin misiniz?')) return false;">ÇIKIŞ</a>
  <br><hr><br><br>
</div>

  
<h2 style="text-align:center;">Menüden Seçim Yapınız </h2>

</body>
</html>