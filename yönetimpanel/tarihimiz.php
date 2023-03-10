<?php
session_start();
include("ayar.php");

if ($_SESSION["giris"] != sha1(md5("var")) ){
   header("Location: cikis.php");
}

if ($_POST){
    $aciklama = $_POST["aciklama"];
    $sorgu = $baglan->query("delete from tarihimiz ");
    $sorgu = $baglan->query("insert into tarihimiz (aciklama) values ('$aciklama')");
    if ($sorgu){
        echo "<script> window.location.href='tarihimiz.php'; </script>";
    }

}
$sorgu = $baglan->query("select * from tarihimiz");
$satir = $sorgu->fetch_object();



?>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>Yonetim Paneli Tarihimiz</title>
</head>
<body style="text-align:center;">

  <div style="text-align:center;">
  <a href="anasayfa.php">ANA SAYFA</a> - <a href="galeri.php">GALERİ</a> -<a 
  href="tarihimiz.php">TARİHİMİZ</a> - <a href="meshuryemekler.php">MEŞHUR YEMEKLER</a> -
  <a href="gezilecekyerler.php">GEZİLECEK YERLER</a> - <a href="cikis.php" onclick="if (!confirm
  ('Çıkış Yapmak İstediğinize Emin misiniz?')) return false;">ÇIKIŞ</a>
  <br><hr><br><br>
</div>

  
<form action="" method="post">
    <b>İçerik:</b><br><br>
    <textarea rows="30" cols="50" style="overflow: auto;" name="aciklama"><?php echo $satir->aciklama; ?>
    </textarea><br><br>
    <input type="submit" value="Kaydet">
</form>

</body>
</html>