-- Adminer 4.7.5 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `kategoriler`;
CREATE TABLE `kategoriler` (
  `kategori_id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori_adi` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `siralama` int(11) DEFAULT '0',
  PRIMARY KEY (`kategori_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

INSERT INTO `kategoriler` (`kategori_id`, `kategori_adi`, `siralama`) VALUES
(5,	'Java',	10),
(6,	'JavaScript',	20),
(7,	'C#',	30),
(8,	'C++',	40),
(9,	'PHP',	50),
(10,	'Flutter',	60);

DROP TABLE IF EXISTS `yazarlar`;
CREATE TABLE `yazarlar` (
  `yazar_id` int(11) NOT NULL AUTO_INCREMENT,
  `yazar_adi` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `yazar_eposta` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `parola` varchar(20) COLLATE utf8_turkish_ci DEFAULT NULL,
  `yetki_seviyesi` int(11) DEFAULT '1',
  `siralama` int(11) DEFAULT '0',
  `yazar_yasakli` int(11) DEFAULT '0',
  PRIMARY KEY (`yazar_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

INSERT INTO `yazarlar` (`yazar_id`, `yazar_adi`, `yazar_eposta`, `parola`, `yetki_seviyesi`, `siralama`, `yazar_yasakli`) VALUES
(1,	'Mustafa Uysal',	'uysal@gmail.com',	'123',	2,	20,	0);

DROP TABLE IF EXISTS `yazilar`;
CREATE TABLE `yazilar` (
  `yazi_id` int(11) NOT NULL AUTO_INCREMENT,
  `baslik` varchar(150) COLLATE utf8_turkish_ci DEFAULT NULL,
  `yazildigi_tarih` date DEFAULT NULL,
  `yayinlanacagi_tarih` date DEFAULT NULL,
  `yazar_id` int(11) DEFAULT NULL,
  `kategori_id` int(11) DEFAULT NULL,
  `yazi_spotu` varchar(250) COLLATE utf8_turkish_ci DEFAULT NULL,
  `yazi` text COLLATE utf8_turkish_ci,
  `durum` int(11) DEFAULT '0',
  `begeni` int(11) DEFAULT '0',
  `sayac` int(11) DEFAULT '0',
  PRIMARY KEY (`yazi_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

INSERT INTO `yazilar` (`yazi_id`, `baslik`, `yazildigi_tarih`, `yayinlanacagi_tarih`, `yazar_id`, `kategori_id`, `yazi_spotu`, `yazi`, `durum`, `begeni`, `sayac`) VALUES
(1,	'Java',	'2019-10-25',	'2019-10-25',	1,	5,	'Polimorfizim',	'Polymorphism ve Inheritance beraber kullanılan iki önemli nesneye dayalı(Object-Oriented) programlama unsurudur. Bunlar program kodlarının yeniden kullanılabilmesi veya var olan kodun geliştirilebilmesi açısından çok önemlidir. Günümüzde yaygın olarak kullanılan diller de nesneye dayalı programlamaya elverişlidir. Bunlara örnek verecek olursak JAVA ve C++ başta gelen nesneye dayalı programlama dilleri olarak gösterilebilir. Inheritance ve Polymorphism i ayrı ayrı aşağıda tartışalım.\r\n\r\nInheritance adında da anlaşılacağı gibi kalıtım anlamına geliyor. Tabi bunun programlama dillerinde anladığımız şekli farklı. Bunu bir örnekle açıklamak istiyorum. Mesela, bir okulda bilgisayar sistemi olsun ve bu sistemin değişik kullanıcıları olsun. Bunlar lisans öğrencileri, akademisyenler,yüksek lisans öğrencileri, asistanlar ve benzeri kişiler olduğunu varsayalım. Şimdi bu insanların hepsi sistemin kullanıcısı. Biz buna karşılık olarak User(Kullanıcı) adında bir sınıf(class) yaratalım. Şimdi bu sınıf bizim ata sınıfımız olacaktır. Bununda türevlerini şu şekilde oluşturabiliriz. Mezun olmamış öğrenciler ve yüksek lisans öğrencilerini bir sınıfa toplayacak olursak bunlara genel olarak öğrenci(Student) diyebiliriz. Çünkü ortak olarak öğrenci paydasında buluşuyorlar. Öğrencileri de yüksek lisans(Master) ve lisans öğrencisi(Undergraduate) olarak ayrı iki sınıfta toplayalım. Akademisyenler(Professor) de sistemin kullanıcısı olduğunu düşünürsek onlarında atası yine User sınıfı olacaktır.',	1,	0,	22),
(2,	'JavaScript',	'2019-10-26',	'2019-10-26',	1,	6,	'JavaScript Nedir?',	'JavaScript, yaygın olarak web tarayıcılarında kullanılmakta olan bir betik dilidir. JavaScript ile yazılan istemci tarafı betikler sayesinde tarayıcının kullanıcıyla etkileşimde bulunması, tarayıcının kontrol edilmesi, asenkron bir şekilde sunucu ile iletişime geçilmesi ve web sayfası içeriğinin değiştirilmesi gibi işlevler sağlanır. JavaScript, Node.js gibi platformlar sayesinde sunucu tarafında da yaygın olarak kullanılmaktadır.\r\n\r\nİlk olarak bir Netscape çalışanı olan Brendan Eich tarafından geliştirilen ve 1997 yılından beri bir ECMA standardı olan JavaScript, günümüzde Mozilla Vakfı öncülüğünde özgür yazılım topluluğu tarafından geliştirilmekte ve bakımı yapılmaktadır.\r\nWeb sayfalarının görünümünün mükemmelleştirilmesi, işlevselliğinin artırılması ve dinamik web sayfaları tasarlanması amacıyla JavaScript, HTML kodu içinde gömülü olarak (embedded) kullanılabilir. JavaScript, bir programlama dili disiplini ve özelliklerine sahiptir.',	1,	0,	5),
(3,	'C#',	'2019-10-27',	'2019-10-27',	1,	7,	'Builder',	'\r\n\r\nBu yazıyı okumadan önce \"Singleton\" ve \"Abstract Factory\" tasarım desenlerini konu alan yazılarımı okumanızı tavsiye ederim.\r\n\r\n\"Builder\" deseni adından da anlaşılacağı üzere bir nesnenin oluşturulması ile ilgilidir. Bu desende kullanılan yapılar hemen hemen \"Abstract Factory\" deseninde kullanılan yapılar ile aynıdır. Bu iki desen arasında çok küçük farklılıklar vardır. Bu farkları ilerleyen kısımlarda açıklayacağım.\r\n\r\n\"Builder\" deseni birden fazla parçadan oluşan kompleks yapıdaki bir nesnenin oluşturulmasını ve bu kompleks nesnenin oluşturulma safhalarını istemci modülünden tamamen gizlemek için kullanılır. Kompleks nesnenin yaratılması istemci modülünden tamamen yalıtıldığı için nesnenin yaratılması ile ilgili işlemler farklı versiyonlarda tamamen değiştirilebilir, bu istemci programın çalışmasını hiç bir şekilde etkilemeyecektir. Burda dikkat edilmesi gereken nokta ise şudur : bu desen kompleks nesneyi oluşturan yapıların gerçek nesneden tamamen bağımsız bir yapıda olduğu durumlarda kullanıldığı zaman esneklik getirecektir. Dolayısıyla her bir farklı parçanın kompleks nesnede kullanılması, kompleks nesnenin işlevini değiştirmeyeceği gibi sadece görünümünü yada tipini değiştirecektir.\r\n\r\nBuilder deseninin Abstract Factory deseninden farkına gelince; \"Abstract Factory\" deseninde soyut fabrika olarak bilinen yapının metotları fabrikaya ait nesnelerin yaratılmasından bizzat sorumludur. Builder deseninde ise aynı mekanizma biraz daha farklı işlemektedir. Builder deseninde istemci modülü, nesnelerin ne şekilde oluşturulacağına soyut fabrika yapısına benzer bir yapı olan Builder yapısının metotları ile',	1,	0,	20),
(4,	'C++',	'2019-10-28',	'2019-10-28',	1,	8,	'K-Ortalama Algoritması ile İmge Bölütleme',	'Bu çalışmaya Kocaeli Üniversitesi Elektronik ve Haberleşme Mühendisliği bölümü İşaret ve Görüntü İşleme Laboratuvarında yaz stajımda gerçekleştirdim. İlk bölümde imge bölütlemenin ne olduğunu ve nasıl yapıldığı anlatacağım. Ardından bir imge bölütleme algoritması olarak da kullanılan k-ortalama algoritmasının yapısı hakkında bilgi vererek, C++ programlama dili ile nasıl gerçekleştirdiğimi anlatacağım.\r\n\r\nİmge bölütleme, imgeyi birbiriyle çakışmayan fakat imgenin tümünü içeren alt imge gruplarına ayırma işlemidir. Bu gruplandırma işlemi imgenin belirli bir veya birden fazla özelliği dikkate alınarak gerçekleştirilebilmektedir.\r\n\r\nBölütleme işleminde kullanılan özelliğin seçimi uygulamaya bağlı olarak değişiklik gösterebilir. Bölütlemede kullanılan en temel özellikler gri imgelerde parlaklık, renkli imgelerde renk bileşenleri olarak sıralanabilir. İmgedeki ayrıtlar ve doku özellikleri de bölütleme açısından oldukça yararlı bilgiler taşıyabilmektedir.\r\n\r\nGenelde bölütlemenin teorik bir tabanı olmadığından bölütlemeye ilişkin standart bir yöntem bulunmamakta, sezgisel (ad-hoc) ya da probleme özgü yöntemlerle bölütleme işlemi gerçekleştirilmektedir.',	1,	0,	2),
(5,	'PHP',	'2019-10-29',	'2019-10-29',	1,	9,	'Geliştirme Ortamı Zend Studio',	'PHP için bir çok açık kodlu veya lisanslı geliştirme aracı bulunmaktadır. PHPEdit, Editplus ve Java geliştirilmek için kullanılan Eclipse bulardan bazıları. Hatta bir \"Add On\" yükleyerek Microsoft Visual Studio 2003 ortamında da PHP uygulamalarını geliştirebilirsiniz. Bir çok PHP geliştiricisi kendilerine sadece renklendirmenin yeteceğini düşünürler bu yüzden Eclipse, Visual Studio ve Zend Studio gibi ağır geliştirme ortamlarını kullanmak istemezler. Bu yaklaşım ufak ölçekli projeler için geçerli olabilir fakat orta ve büyük ölçekli projeler için mutlaka gelişmiş bir IDE (Integrated Development Environment \"Bütünleşik Geliştirme Ortamı\") gerekmektedir. Bu saydığım IDElerden, başlıkdan anlayabileceğiniz gibi Zend Studionun üzerinde duracağım ve nasıl kullanılacağından ziyade yeteneklerini size aktarmaya çalışacağım.\r\n\r\nPeki neden Zend Studio ?\r\n\r\nPHP ile tanıştığım süre içerisinde bir çok geliştirme aracı denedim ve bundan dolayı uzun süre kaybettim; hatta ilk denediklerimden biri Zend Studio idi sonra gerçekten ağır bulup uzun süre PHPEdit kullandım ve PHPEdit ile bir çok uzun soluklu proje geliştirdim. Bunun sebebi tamamiyle yazılım geliştirme sürecini programlamaya başladığım süre içerisinde kavrayamamış olmamdı. Benim için bir yazılımın testi bizim tarafımızdan yapılan \"Developer Pre-Test\" olarak adlandırılan öncelikli hata ayıklama idi. Bu test genellikle fonksiyonel hataların bulunup giderilmesini amaçlar. Fakat ciddi bir projede test sürecinde bu adımdan sonra farklı senaryolar baz alınarak yapılan yük ve stress testleri gelmektedir. Bu testler sonucu hatalar ayıklanır ve raporlamalar sonucu bazı geliştirilmiş bölümlerde performans iyileştirmeleri yapılır. Tüm bunlar sizin için bir saçmalıksa Notepad kullanmaya devam edersiniz fakat ne yazık ki kurumsal pazarda yeriniz olmaz.\r\n\r\nPeki bunları önemsiyorsunuz fakat test araçlarını geliştirmek bazen yazılımı geliştirmekten daha maliyetli olabiliyor ve sizin bu kadar bütçeniz yok. Bu durumda Zend Studio ile tanışmanın vakti geldi. Sadece test fazında size süre kazandırmaz aynı zamanda PHP5 desteği ile tanımladığınız tüm sınıfların ve metodların kolay erişimini intellisense \"kod tamamlama\" özelliği ile geliştirme sürecini de hızlandırır. Aynı zamanda PHP geliştiricilerine çok uzak olan adım adım hata ayıklamayıda desteklemektedir.\r\n\r\nZend Studio yu bir çok IDEnin içerisinde çımbız ile çekip alıyoruz çünki en önemlisi PHP geliştiricileri tarafından geliştiriliyor ve platform bağımsız bir IDE. Peki hiç dejavantajı yok mu ? İlk yazımdan da hatırlayacağınız gibi sanal makinaların performansı nasıl olumsuz etkilediklerini anlatmıştım. Zend Studio JAVA ile geliştirilmiş bir uygulamadır. Özellikle IDE gibi çok kapsamlı bir uygulamayı sanal makinalar ile geliştirmek büyük performans kayıplarına neden oluyor. Fakat Zend Studionun fonksiyonalite bakımından ne yazık ki rakibi yok.',	1,	0,	6),
(6,	'Flutter',	'2019-10-30',	'2019-10-30',	1,	10,	'Flutter Nedir?',	'Flutter’ı kullanarak geliştiriciler, her iki platformu da hedefleyen uygulamalar geliştirip, çapraz platformlu mobil uygulamalar sunmanın maliyet ve zamanından tasarruf edebilirler. Arayüz tasarımcıları ise Flutter’ı kullanarak Android ve iOS dünyasına uyum sağlayan, daha başarılı uygulama tasarımları geliştirebilirler.\r\n\r\nFlutter ile mobil uygulama geliştirmek için mobil uygulama geliştirme alanında tecrübenizin olmasına gerek yoktur. Dart programlama dilini kullanan Flutter’ı öğrenerek çok az kodlama bilgisi veya hiç kodlama bilginiz olmadan da uygulama prototipleri ve mobil uygulamalar geliştirebilirsiniz. Android ve iOS platformunda 2D mobil uygulamalar geliştirme merkezli Flutter ile marka kimliğini yansıtan uygulamalar tasarlanabilir. Yine Native platformlarda olduğu gibi Flutter’ı kullanarak kamera, konum verisi, internet, depolama ve diğer 3. Parti SDK’lara ihtiyaç duyan mobil uygulamaları geliştirmek mümkündür.\r\n\r\n\r\nFlutter’ı WebView veya OEM widget’i ile sunulan mobil uygulama geliştirme araçlarıyla karıştırmamalıyız. Zira, Flutter tek başına kendi yüksek performans sunan render motoruna sahiptir. Ek olarak Flutter hafif katmanlı C/C+ + ile hazırlanmış kod yapısına sahip olup, nesne yönelimli Dart programlama dilini kullanılır. Dart yardımıyla geliştiriciler uygulama hazırlarken kodları kolayca okuyabilir, değiştirebilir, düzenleyebilir veya silebilirler. Ardında JavaScript’in rakibi kabul edilen Dart’ın yer alması, Flutter’ı daha güçlü ve esnek bir yapı haline getiriyor.\r\n\r\nFlutter Özellikleri\r\nFlutter, profesyonel bir SDK’dır ve Windows, Linux ya da Mac ortamında çalıştırılabilir. Mobile-first 2D render motoru, modern react-style framework’ü, Android ve iOS ortamında kullanılan widget desteğiyle, zengin bir paket içeriğine sahiptir. Birimler ve entegrasyon testleri için API’ye sahip olmasının dışında, 3.parti SDK’ların API’leri ile bağlanma konusunda uyumlu bir arabirim sunmaktadır.\r\n\r\nHer platformda kolayca kullanılabilen Flutter, geliştiricilerin mobil uygulamalarını hemen geliştirmeye başlamaları için kapsamlı bir framework içerir. Geliştiriciler uygulamalarını geliştirirken Flutter’ın Framework’ünün istedikleri parçalarını kullanabilecekleri gibi diğer Framework’lerin de parçalarından faydalanabilirler. Bünyesindeki Material Design ve Cupertino (iOS tarzı) widget’ler, temalar yardımıyla her iki platform için de kusursuz mobil uygulamalar geliştirmeye olanak tanır. İsterseniz bu widget ve layout tasarımlarını kendi istediğiniz şekilde özelleştirebilir, varolmayan yeni ve eşsiz tasarımlar ortaya çıkarabilirsiniz.\r\n\r\nFlutter birçok geliştirme ortamının mahrum olduğu Hot reload adında şık bir gerçek zamanlı düzenleme özelliğine sahiptir. Hot Reload ile geliştiriciler uygulamalarını hazırlar veya düzenlerken, gerçek zamanlı olarak yaptıkları değişikliklerin uygulama üzerindeki yansımalarını görebilirler. Böylece uygulama geliştirme aşamasında geliştiricilerin zamanını sünger gibi emen test süreçleri Flutter ile daha sancısız hale getirilir.\r\n\r\nFlutter ile şimdilik Android Jelly Bean v16 üzerinde 4.1.x ve daha yeni işletim sistemleri için mobil uygulamalar geliştirilebilirken, iOS tarafındaysa iOS 8 ve üstü işletim sistemi sürümleri için uygulamalar geliştirilebiliyor. Donanım tarafında Android’in ARM işlemcilerini destekleyen SDK, iOS tarafında ise 64-bit işlemci mimarisini destekleyen iPhone 5s ve sonraki cihazlara uygun mobil uygulamalar geliştirebiliyor.',	1,	0,	3);

-- 2019-12-01 23:18:33
