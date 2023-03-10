-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost
-- Üretim Zamanı: 13 Haz 2022, 19:19:11
-- Sunucu sürümü: 8.0.17
-- PHP Sürümü: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `bursayıtanı`
--
CREATE DATABASE IF NOT EXISTS `bursayıtanı` DEFAULT CHARACTER SET utf8 COLLATE utf8_turkish_ci;
USE `bursayıtanı`;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `galeri`
--

CREATE TABLE `galeri` (
  `id` tinyint(4) NOT NULL,
  `resim` varchar(250) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `gezilecekyerler`
--

CREATE TABLE `gezilecekyerler` (
  `aciklama` text COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `gezilecekyerler`
--

INSERT INTO `gezilecekyerler` (`aciklama`) VALUES
('    Bursa’da Gezilecek Yerler\r\nBursa’daki Camiler, Külliyeler ve Türbeler\r\n1) Emir Sultan Camii ve Külliyesi\r\n2) Yeşil Camii ve Yeşil Türbe\r\n3) Ulu Camii\r\n4) Üftade Cami\r\n5) Osman Gazi Türbesi\r\n6) Orhan Gazi Türbesi\r\n7) Muradiye Külliyesi\r\n8) Hüdavendigar Camii ve Külliyesi\r\nBursa Hanlar Bölgesi\r\n9) Pirinç Hanı\r\n10) Kapalı Çarşı\r\n11) Eski İpek Hanı\r\n12) Kapan Hanı\r\n13) Emir Hanı\r\n14) Geyve Hanı\r\n15) Koza Hanı\r\n16) Fidan Hanı\r\n17) Tuzhan\r\n18) Balibey Han\r\nBursa’daki Diğer Tarihi Yerler\r\n19) Irgandı Köprüsü\r\n20) Bursa Kalesi\r\n21) Bursa Şehir Surları\r\n22) Tophane Saat Kulesi\r\nBursa’daki Müzeler ve Kültür Merkezleri\r\n23) Türk İslam Eserleri Müzesi (Yeşil Medrese)\r\n24) Bursa Kent Müzesi\r\n25) Tofaş Anadolu Arabaları Müzesi\r\n26) Bursa Arkeoloji Müzesi\r\n27) Hünkâr Köşkü Müzesi\r\n28) Osmanlı Evi Müzesi\r\n29) Karagöz Müzesi\r\n30) Uluumay Osmanlı Halk Kıyafetleri ve Takıları Müzesi\r\n31) Hüsnü Züber Evi\r\n32) Atatürk Evi Müzesi\r\n33) Yüzen Taşlar Heykeli\r\nBursa Çevresinde Gezilecek Yerler\r\n35) Uludağ\r\n36) Cumalıkızık\r\n37) Tirilye\r\n38) Mudanya\r\n39) İznik\r\n40) Gölyazı\r\n41) İnegöl');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanici`
--

CREATE TABLE `kullanici` (
  `id` tinyint(4) NOT NULL,
  `kullanici` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `sifre` varchar(50) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kullanici`
--

INSERT INTO `kullanici` (`id`, `kullanici`, `sifre`) VALUES
(1, 'esma', '12345'),
(2, 'esma', '12345');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `meshuryemekler`
--

CREATE TABLE `meshuryemekler` (
  `aciklama` text CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `meshuryemekler`
--

INSERT INTO `meshuryemekler` (`aciklama`) VALUES
('İskender Kebap\r\nİnegöl Köfte\r\nMuradiye Çorbası\r\nPideli Köfte\r\nBursa Kebabı\r\nCantık\r\nEtli Kereviz\r\nKemalpaşa Tatlısı\r\nKestane Şekeri\r\nDüğün Helvası\r\nSüt helvası    ');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tarihimiz`
--

CREATE TABLE `tarihimiz` (
  `aciklama` text COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `tarihimiz`
--

INSERT INTO `tarihimiz` (`aciklama`) VALUES
('Tarih ve imparatorluklar şehridir; Bitinya, Roma, Selçuklu, Bizans ve Osmanlı’nın sayısız izlerini taşır, Külliyeler şehridir; Osmanlı’nın Osman Gazi’den sonraki 5 padişahının yaptırdığı külliyeleri ile Osmanlı mimarisinin ilk örneklerini yaşatır, Alış-veriş şehridir; Sultan Orhan Gazi’den itibaren şekillenen ve Unesco Kültür Mirası listesine aday olan Tarihî Çarşı ve Hanlar Bölgesi’yle, Ruhaniyetli şehirdir; barındırdığı yüzlerce tarihî camileri, mescitleri ve türbeleriyle, Tekstil şehridir; tarihî İpek Yolu üzerindedir ve Osmanlı ile cumhuriyet döneminin ilk dokuma sanayiine sahiptir, Kültür şehridir; her yıl halk dansları, tiyatro, kukla ve gölge oyunları, sinema, müzik, edebiyat ve fotoğraf sanatı etkinlikleri yapılır, Endüstri ve ticaret şehridir; Türkiye’nin 4. büyük endüstrisine sahiptir, Doğa şehridir; dağları, yaylaları, mağaraları, gölleri, şifalı su kaynakları, kanyonları, ormanları, akarsuları ve şelâleleriyle. Bitki örtüsü çok zengindir ve “Yeşil Bursa” olarak anılır, Termal su şehridir; 5 yıldızlı otelleri ve kaplıcalarıyla, Dağ ve deniz şehridir; Uludağ’ın eteklerinde, Marmara Denizi’nin kıyısındaki konumuyla, Spor şehridir; doğada ve şehir merkezinde her türlü spor yapma imkânlarıyla, Eğitim şehridir; köklü eğitim kurumları, Uludağ Üniversitesi, Bursa Teknik Üniversitesi ve vakıf üniversiteleri ile, Tarım şehridir; doğal olarak üretilen özellikle şeftali ve siyah inciri, zeytini ve sebzeleriyle, Benzersiz yemek kültürü olan şehirdir; Osmanlı mutfağı, döner kebabı, pideli köftesi, ev yemekleri ve kestane şekeriyle, Müzeler şehridir; mevcut müzelerinin yanı sıra tarihî yapılarıyla “açık hava müzesi” gibidir, Turizm şehridir; herkesin Bursa’ya gelmek için bir sebebi vardır. Binlerce yıllık tarihiyle, farklı medeniyetlerin izlerini taşıyan, 623 yıllık sürede 60’a yakın ülkeye hükmeden Osmanlı’nın doğup büyüdüğü şehir olan ve kuruluş devrinin izlerinin canlılığıyla imparatorluğun yayıldığı tüm coğrafyalara bir kutup yıldızı gibi ilham veren Bursa, zengin bir kültüre ev sahipliği yapmaktadır. Bursa, ekonomik ve sosyal ahengin yanında, doğal güzellikleri, şifalı suları, yaz ve kış turizmi imkânları gibi zenginliklerle harmanlanmış bir şehirdir. Bizans, Osmanlı ve Cumhuriyet dönemlerinin mekânsal ve mimari özellikleriyle az bulunur bir kültür ve tarih mirasına sahip olan Bursa, Türkiye’nin görülmeye değer nadide şehirlerinden biridir');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `kullanici`
--
ALTER TABLE `kullanici`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `kullanici`
--
ALTER TABLE `kullanici`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
