<?php
session_start();
include("ayar.php");



if ($_POST){
   $kullanici = $_POST["kullanici"];
   $sifre = $_POST["sifre"];
   
   $sorgu = $baglan->query("select * from kullanici where (kullanici='$kullanici' && 
   sifre='$sifre')");
   $kayitsay = $sorgu->num_rows;
   
   if($kayitsay> 0){

   
    $_SESSION["giris"] =sha1(md5("var"));

    echo "<script> window.location.href='anasayfa.php'; </script>";
    

   }else{
       echo "<script>
       alert('HATALI KULLANICI BİLGİSİ!'); window.location.href='index.php';
       </script>";

   }

}

?>

<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>Yonetim Paneli Giris</title>
</head>
<body style="text-align:center;padding-top:50px;">

   <form action="" method="post">
       <b>Kullanici Adi:</b><br>
       <input type="text" name= "kullanici" reguired><br>
       <b>Parola:</b><br>
       <input type="password"  name="sifre" required><br><br>
       <input type="submit"  value="Girisyap">
</form>

    
</body>
</html>