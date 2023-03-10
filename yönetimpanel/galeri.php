<?php
session_start();
include("ayar.php");

if ($_SESSION["giris"] != sha1(md5("var"))){
    header("Location: cikis.php");
}

$islem= @$_GET["islem"];

if ($islem=="sil"){
    $id =$_GET["id"];
    $sorgu = $baglan->query("delete from galeri where (id='$id')");
    echo "<script> window.location.href='galeri.php': </script>";
}
if($islem =="ekle"){
    $resim= "img/".$_FILES["resim"]["name"];
    move_uploaded_file($_FILES["resim"]["tmp_name"], $resim);
    $sorgu= $baglan->query("insert into galeri (resim) values ('$resim')");
    
}
if($islem  =="guncelle"){
    $id=$_POST["$id"];
    $resim=$_POST["$resim"];
    $sql= "UPDATE galeri SET resim=?, WHERE id=?; ";
    $sorgu=$baglan->prepare($sql); $sorgu->bind_param("i",$gelen_id);
    $sorgu->execute(); $sonuc= $sorgu->get_result();
     while($cek = $sonuc->fetch_assoc()) 
       {
        $id=$cek["id"];  
         $baslik=$cek["resim"];    
       }
    }

?>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>Yonetim Paneli GALERİ</title>
</head>
<body style="text-align:center;">

  <div style="text-align:center;">
  <a href="anasayfa.php">ANA SAYFA</a> - <a href="galeri.php">GALERİ</a> -<a 
  href="tarihimiz.php">TARİHİMİZ</a> - <a href="meshuryemekler.php">MEŞHUR YEMEKLER</a> -
  <a href="gezilecekyerler.php">GEZİLECEK YERLER</a> - <a href="cikis.php" onclick="if (!confirm
  ('Çıkış Yapmak İstediğinize Emin misiniz?')) return false;">ÇIKIŞ</a>
  <br><hr><br><br>
</div>



<table width="100%" border="1">
    <tr align="center">
        <th>S.No </th>
        <th>Sil </th>
        
<?php
$sirano=0;
$sorgu = $baglan->query("select * from galeri");
while ($satir =$sorgu->fetch_object()){
    $sirano++;
    echo "<tr align='center' >
    <td>$sirano</td>
    </td> <img src='".$satir->resim."'></td>
    <td><a href ='galeri.php?islem=sil&id=$satir->id'>Sil</td> 
    </tr>";
}
?>

</table>
<br><br>

<form method="post" action="galeri.php?islem=ekle" enctype="multipart/form-data" >
    <b>Resim:</b><input type="file" name="resim"><br><br>
    <input type="submit" value="Kaydet">
    
</form>


<form action ="galeri.php?=islem=guncelle" method="POST">
    <input type="hidden" name="id" value="<?php echo $id ?>">
    <br>Resim: <input type="file" name="resim" ><br>
    <input type="submit" value ="Güncelle">
</form>

</div>

</body>
</hmtl>
