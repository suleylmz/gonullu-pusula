
CREATE TABLE Etkinlik_Kategorileri (
    Kategori_ID SERIAL PRIMARY KEY,
    Kategori_Adi TEXT UNIQUE NOT NULL
);

CREATE TABLE Kullanicilar (
    Kullanici_ID SERIAL PRIMARY KEY,
    Ad TEXT NOT NULL,
    Soyad TEXT NOT NULL,
    Tc_No CHAR(11) UNIQUE NOT NULL,
    Sifre TEXT NOT NULL,
    Mail TEXT UNIQUE NOT NULL,
    Telefon TEXT,
    Sehir TEXT,
    Bolum TEXT
);

CREATE TABLE Etkinlikler (
    Etkinlik_ID SERIAL PRIMARY KEY,
    E_Adi TEXT NOT NULL,
    E_Aciklama TEXT,
    Sehir TEXT NOT NULL,
    Adres TEXT,
    Tarih TEXT NOT NULL
);

CREATE TABLE Kullanici_Kategorileri (
    Kullanici_ID INT REFERENCES Kullanicilar(Kullanici_ID) ON DELETE CASCADE,
    Kategori_ID INT REFERENCES Etkinlik_Kategorileri(Kategori_ID) ON DELETE CASCADE,
    PRIMARY KEY (Kullanici_ID, Kategori_ID)
);

CREATE TABLE Katilimlar (
    Katilim_ID SERIAL PRIMARY KEY,
    Kullanici_ID INT REFERENCES Kullanicilar(Kullanici_ID) ON DELETE CASCADE,
    Etkinlik_ID INT REFERENCES Etkinlikler(Etkinlik_ID) ON DELETE CASCADE,
    Tarih DATE NOT NULL
);



INSERT INTO Kullanicilar (Ad, Soyad, Tc_No, Sifre, Mail, Telefon, Sehir, Bolum) 
VALUES

('Ali', 'Yıldırım', '11111111111', 'AliYil_987!', 'ali.yildirim@mail.com', '5551112233', 'İstanbul', 'Bilgisayar Mühendisliği'),
('Mehmet', 'Kaya', '22222222222', 'MehmetKaya_456#', 'mehmet.kaya@mail.com', '5552223344', 'Ankara', 'Elektrik Mühendisliği'),
('Ayşe', 'Demir', '33333333333', 'AyseD_765@', 'ayse.demir@mail.com', '5553334455', 'İzmir', 'Makine Mühendisliği'),
('Fatma', 'Şahin', '44444444444', 'FatmaSahin!342', 'fatma.sahin@mail.com', '5554445566', 'Bursa', 'İnşaat Mühendisliği'),
('Hasan', 'Çelik', '55555555555', 'HasanCelik#891', 'hasan.celik@mail.com', '5555556677', 'Antalya', 'Endüstri Mühendisliği'),
('Elif', 'Güneş', '66666666666', 'ElifGunes@123', 'elif.gunes@mail.com', '5556667788', 'Konya', 'Yazılım Mühendisliği'),
('Cem', 'Karaca', '77777777777', 'CemKaraca%654', 'cem.karaca@mail.com', '5557778899', 'Eskişehir', 'Matematik'),
('Burcu', 'Yıldız', '88888888888', 'BurcuYildiz&902', 'burcu.yildiz@mail.com', '5558889900', 'Gaziantep', 'İşletme'),
('Kemal', 'Aslan', '99999999999', 'KemalAslan!753', 'kemal.aslan@mail.com', '5559990011', 'Samsun', 'Fizik'),
('Zeynep', 'Korkmaz', '10101010101', 'ZeynepKorkmaz#852', 'zeynep.korkmaz@mail.com', '5551011122', 'Kayseri', 'Kimya'),
('Ahmet', 'Toprak', '12121212121', 'AhmetT_951$', 'ahmet.toprak@mail.com', '5551213144', 'Trabzon', 'Elektronik Mühendisliği'),
('Merve', 'Bulut', '13131313131', 'MerveBulut@159', 'merve.bulut@mail.com', '5551314155', 'Mersin', 'Biyomedikal Mühendisliği'),
('Emre', 'Öztürk', '14141414141', 'EmreOzturk*753', 'emre.ozturk@mail.com', '5551415166', 'Adana', 'İstatistik'),
('Gizem', 'Deniz', '15151515151', 'GizemDeniz!258', 'gizem.deniz@mail.com', '5551516177', 'Balıkesir', 'Gıda Mühendisliği'),
('Yusuf', 'Eren', '16161616161', 'YusufEren%369', 'yusuf.eren@mail.com', '5551617188', 'Malatya', 'Mekatronik Mühendisliği'),
('Selin', 'Arslan', '23232323232', 'SelinArslan$147', 'selin.arslan@mail.com', '5551718199', 'Diyarbakır', 'Kimya Mühendisliği'),
('Burak', 'Kılıç', '18181818181', 'BurakKilic#258', 'burak.kilic@mail.com', '5551819100', 'Denizli', 'Tıp'),
('Ebru', 'Koç', '19191919191', 'EbruKoc@369', 'ebru.koc@mail.com', '5551920111', 'Erzurum', 'Diş Hekimliği'),
('Murat', 'Aydın', '20202020202', 'MuratAydin!741', 'murat.aydin@mail.com', '5552021122', 'Van', 'Eczacılık'),
('Sibel', 'Yavuz', '21212121212', 'SibelYavuz%852', 'sibel.yavuz@mail.com', '5552122133', 'Manisa', 'Psikoloji'),
('Okan', 'Doğan', '23023023023', 'OkanDogan$963', 'okan.dogan@mail.com', '5552324144', 'Hatay', 'Sosyoloji'),
('Derya', 'Özdemir', '24242424242', 'DeryaOzdemir#147', 'derya.ozdemir@mail.com', '5552425155', 'Muğla', 'Tarih'),
('Canan', 'Yılmaz', '25252525252', 'CananYilmaz@258', 'canan.yilmaz@mail.com', '5552526166', 'Şanlıurfa', 'Felsefe'),
('Volkan', 'Şen', '26262626262', 'VolkanSen!369', 'volkan.sen@mail.com', '5552627177', 'Tekirdağ', 'Hukuk'),
('Özge', 'Aksoy', '27272727272', 'OzgeAksoy%741', 'ozge.aksoy@mail.com', '5552728188', 'Aydın', 'İlahiyat'),
('Serkan', 'Tekin', '28282828282', 'SerkanTekin&852', 'serkan.tekin@mail.com', '5552829199', 'Ordu', 'Mimarlık'),
('Pınar', 'Kurt', '29292929292', 'PinarKurt$963', 'pinar.kurt@mail.com', '5552930100', 'Zonguldak', 'Peyzaj Mimarlığı'),
('Onur', 'Çetin', '30303030303', 'OnurCetin#147', 'onur.cetin@mail.com', '5553031111', 'Kütahya', 'Arkeoloji'),
('Esra', 'Uçar', '31313131313', 'EsraUcar@258', 'esra.ucar@mail.com', '5553132122', 'Elazığ', 'Müzik'),
('Tolga', 'Keskin', '32323232323', 'TolgaKeskin!369', 'tolga.keskin@mail.com', '5553233133', 'Kırklareli', 'Resim'),
('Buse', 'Ateş', '34343434343', 'BuseAtes%741', 'buse.ates@mail.com', '5553435144', 'Isparta', 'Tiyatro'),
('Ahmet', 'Çakır', '35353535353', 'AhmetCakir$852', 'ahmet.cakir@mail.com', '5553536155', 'Afyonkarahisar', 'Sinema'),
('Aslı', 'Sarı', '36363636363', 'AsliSari#963', 'asli.sari@mail.com', '5553637166', 'Çorum', 'Coğrafya'),
('Enes', 'Taş', '37373737373', 'EnesTas*147', 'enes.tas@mail.com', '5553738177', 'Yozgat', 'Antropoloji'),
('Cansu', 'Tuncer', '38383838383', 'CansuTuncer@258', 'cansu.tuncer@mail.com', '5553839188', 'Tokat', 'Biyoloji'),
('Kaan', 'Güler', '39393939393', 'KaanGuler!369', 'kaan.guler@mail.com', '5553940199', 'Giresun', 'Jeoloji'),
('Duygu', 'Yıldız', '40404040404', 'DuyguYildiz%471', 'duygu.yildiz@mail.com', '5554041200', 'Kastamonu', 'Çevre Mühendisliği'),
('Alper', 'Polat', '41414141414', 'AlperPolat$582', 'alper.polat@mail.com', '5554142211', 'Kars', 'Ziraat Mühendisliği'),
('Melis', 'Erdem', '42424242424', 'MelisErdem#693', 'melis.erdem@mail.com', '5554243222', 'Rize', 'Tekstil Mühendisliği'),
('Baran', 'Dal', '43434343434', 'BaranDal@174', 'baran.dal@mail.com', '5554344233', 'Artvin', 'Jeofizik Mühendisliği'),
('Eylül', 'Demir', '45454545454', 'EylulDemir!285', 'eylul.demir@mail.com', '5554546244', 'Siirt', 'Havacılık Mühendisliği'),
('Selim', 'Avcı', '46464646464', 'SelimAvci%396', 'selim.avci@mail.com', '5554647255', 'Bitlis', 'Genetik'),
('Melisa', 'Tunç', '47474747474', 'MelisaTunc$417', 'melisa.tunc@mail.com', '5554748266', 'Aksaray', 'Bilişim Sistemleri'),
('Furkan', 'Soylu', '48484848484', 'FurkanSoylu#528', 'furkan.soylu@mail.com', '5554849277', 'Nevşehir', 'Turizm İşletmeciliği'),
('Hazal', 'Işık', '49494949494', 'HazalIsik@639', 'hazal.isik@mail.com', '5554950288', 'Çanakkale', 'Uluslararası İlişkiler'),
('Arda', 'Öz', '50505050505', 'ArdaOz!741', 'arda.oz@mail.com', '5555051299', 'Edirne', 'Siyaset Bilimi'),
('Beyza', 'Su', '51515151515', 'BeyzaSu%852', 'beyza.su@mail.com', '5555152300', 'Amasya', 'Dil ve Edebiyat'),
('Emir', 'Can', '52525252525', 'EmirCan$963', 'emir.can@mail.com', '5555253311', 'Karaman', 'Malzeme Mühendisliği'),
('İrem', 'Duman', '53535353535', 'IremDuman#174', 'irem.duman@mail.com', '5555354322', 'Ağrı', 'Matematik Mühendisliği'),
('Yasin', 'Özkan', '54545454545', 'YasinOzkan@285', 'yasin.ozkan@mail.com', '5555455333', 'Kırşehir', 'Makine Mühendisliği'),
('Ezgi', 'Kurtuluş', '56565656565', 'EzgiKurtulus!396', 'ezgi.kurtulus@mail.com', '5555657344', 'Osmaniye', 'Metalurji Mühendisliği'),
('Yiğit', 'Kaynak', '57575757575', 'YigitKaynak%417', 'yigit.kaynak@mail.com', '5555758355', 'Karabük', 'Nanoteknoloji Mühendisliği'),
('Nazlı', 'Tan', '58585858585', 'NazliTan$528', 'nazli.tan@mail.com', '5555859366', 'Düzce', 'Petrol Mühendisliği'),
('Vedat', 'Özen', '59595959595', 'VedatOzen#639', 'vedat.ozen@mail.com', '5555960377', 'Kilis', 'Bilgisayar Bilimleri'),
('Simge', 'Altay', '60606060606', 'SimgeAltay@741', 'simge.altay@mail.com', '5556061388', 'Iğdır', 'Yazılım Mühendisliği'),
('Oğuz', 'Şimşek', '61616161616', 'OguzSimsek!852', 'oguz.simsek@mail.com', '5556162399', 'Yalova', 'Bilgisayar Mühendisliği'),
('Naz', 'Ünal', '62626262626', 'NazUnal%963', 'naz.unal@mail.com', '5556263400', 'Bartın', 'Elektrik-Elektronik Mühendisliği'),
('Deniz', 'Alp', '63636363636', 'DenizAlp$174', 'deniz.alp@mail.com', '5556364411', 'Ardahan', 'Yazılım Mühendisliği'),
('Gamze', 'Gümüş', '64646464646', 'GamzeGumus#285', 'gamze.gumus@mail.com', '5556465422', 'Bayburt', 'Bilgisayar Mühendisliği'),
('Berkay', 'Aktaş', '65656565656', 'BerkayAktas@396', 'berkay.aktas@mail.com', '5556566433', 'Gümüşhane', 'Makine Mühendisliği'),
('Betül', 'Kartal', '67676767676', 'BetulKartal!417', 'betul.kartal@mail.com', '5556768444', 'Tunceli', 'Endüstri Mühendisliği'),
('Mert', 'Yücel', '68686868686', 'MertYucel%528', 'mert.yucel@mail.com', '5556869455', 'Erzincan', 'İnşaat Mühendisliği'),
('Damla', 'Kılıç', '69696969696', 'DamlaKilic$639', 'damla.kilic@mail.com', '5556970466', 'Bilecik', 'Elektrik Mühendisliği'),
('Ege', 'Duran', '70707070707', 'EgeDuran#741', 'ege.duran@mail.com', '5557071477', 'Sinop', 'Yazılım Mühendisliği'),
('Zehra', 'Mutlu', '71717171717', 'ZehraMutlu@852', 'zehra.mutlu@mail.com', '5557172488', 'Burdur', 'Elektrik-Elektronik Mühendisliği'),
('Ufuk', 'Yurt', '72727272727', 'UfukYurt!963', 'ufuk.yurt@mail.com', '5557273499', 'Bingöl', 'Bilgisayar Mühendisliği'),
('Nisa', 'Kaplan', '73737373737', 'NisaKaplan%174', 'nisa.kaplan@mail.com', '5557374500', 'Muş', 'Endüstri Mühendisliği'),
('Orkun', 'Güzel', '74747474747', 'OrkunGuzel$285', 'orkun.guzel@mail.com', '5557475511', 'Niğde', 'Makine Mühendisliği'),
('Oya', 'Can', '75757575757', 'OyaCan#396', 'oya.can@mail.com', '5557576522', 'Uşak', 'İnşaat Mühendisliği'),
('Umut', 'Özer', '76767676767', 'UmutOzer@417', 'umut.ozer@mail.com', '5557677533', 'Hakkari', 'Bilgisayar Mühendisliği'),
('Sude', 'Kara', '78787878787', 'SudeKara!528', 'sude.kara@mail.com', '5557879544', 'Şırnak', 'Yazılım Mühendisliği'),
('Barış', 'Turan', '79797979797', 'BarisTuran%639', 'baris.turan@mail.com', '5557980555', 'Batman', 'Elektrik Mühendisliği'),
('Yağmur', 'Çınar', '80808080808', 'YagmurCinar$741', 'yagmur.cinar@mail.com', '5558081566', 'Mardin', 'Endüstri Mühendisliği'),
('Erkan', 'Güven', '81818181818', 'ErkanGuven#852', 'erkan.guven@mail.com', '5558182577', 'Adıyaman', 'Bilgisayar Mühendisliği'),
('Serap', 'Yaman', '82828282828', 'SerapYaman@963', 'serap.yaman@mail.com', '5558283588', 'Kahramanmaraş', 'Makine Mühendisliği'),
('Sinan', 'Büyük', '83838383838', 'SinanBuyuk!174', 'sinan.buyuk@mail.com', '5558384599', 'Sakarya', 'İnşaat Mühendisliği'),
('Tuğçe', 'Berk', '84848484848', 'TugceBerk%285', 'tugce.berk@mail.com', '5558485600', 'Kocaeli', 'Yazılım Mühendisliği'),
('Hakan', 'Aktürk', '85858585858', 'HakanAkturk$396', 'hakan.akturk@mail.com', '5558586611', 'Bolu', 'Bilgisayar Mühendisliği'),
('Sena', 'Önal', '86868686868', 'SenaOnal#417', 'sena.onal@mail.com', '5558687622', 'Kırıkkale', 'Elektrik-Elektronik Mühendisliği'),
('Orhan', 'Sert', '87878787877', 'OrhanSert@528', 'orhan.sert@mail.com', '5558788633', 'Çankırı', 'Makine Mühendisliği'),
('İlayda', 'Aksu', '89898989898', 'IlaydaAksu!639', 'ilayda.aksu@mail.com', '5558990644', 'Sivas', 'Endüstri Mühendisliği'),
('Görkem', 'Yalçın', '90909090909', 'GorkemYalcin%741', 'gorkem.yalcin@mail.com', '5559091655', 'Kırıkkale', 'Bilgisayar Mühendisliği'),
('Ceren', 'Özkan', '91919191919', 'CerenOzkan$852', 'ceren.ozkan@mail.com', '5559192666', 'Niğde', 'Yazılım Mühendisliği'),
('Yunus', 'Emre', '92929292929', 'YunusEmre#963', 'yunus.emre@mail.com', '5559293677', 'Burdur', 'İnşaat Mühendisliği'),
('Hilal', 'Kahveci', '93939393939', 'HilalKahveci@174', 'hilal.kahveci@mail.com', '5559394688', 'Sinop', 'Elektrik Mühendisliği'),
('Batuhan', 'Kılınç', '94949494949', 'BatuhanKilinc!285', 'batuhan.kilinc@mail.com', '5559495699', 'Uşak', 'Endüstri Mühendisliği'),
('Dilan', 'Öztürk', '95959595959', 'DilanOzturk%396', 'dilan.ozturk@mail.com', '5559596700', 'Amasya', 'Bilgisayar Mühendisliği'),
('Cenk', 'Toprak', '96969696969', 'CenkToprak$417', 'cenk.toprak@mail.com', '5559697711', 'Karaman', 'Makine Mühendisliği'),
('Nehir', 'Su', '97979797979', 'NehirSu#528', 'nehir.su@mail.com', '5559798722', 'Ağrı', 'Yazılım Mühendisliği'),
('Berk', 'Yavuz', '17171717171', 'BerkYavuz!741', 'berk.yavuz@mail.com', '5551718199', 'Erzurum', 'Jeoloji Mühendisliği'),
('Selin', 'Aydın', '18018018018', 'SelinAydin@852', 'selin.aydin@mail.com', '5551819200', 'Van', 'Çevre Mühendisliği'),
('Kaan', 'Tuna', '19019019019', 'KaanTuna#963', 'kaan.tuna@mail.com', '5551920211', 'Denizli', 'Metalurji ve Malzeme Mühendisliği'),
('Dilara', 'Koç', '20920920920', 'DilaraKoc%357', 'dilara.koc@mail.com', '5552021222', 'Sakarya', 'Fen Bilgisi Öğretmenliği');


INSERT INTO Etkinlik_Kategorileri (Kategori_Adi) 
VALUES
('Afet ve Acil Durum'),
('Çevre'),
('Eğitim'),
('Kültür ve Turizm'),
('Sağlık ve Sosyal Hizmetler'),
('Spor');



INSERT INTO Kullanici_Kategorileri (Kullanici_ID, Kategori_ID)
VALUES
(1,3),
(1,4),
(2,3),
(3,2),
(4,1),
(5,6),
(12,4),
(24,6),
(35,5),
(48,6),
(50,5),
(63,3),
(79,2),
(81,1),
(97,1),
(100,2);




INSERT INTO Katilimlar (Kullanici_ID, Etkinlik_ID, Tarih) 
VALUES
(1,7,'10.3.2025'),
(1,28,'28.2.2025'),
(2,10,'7.3.2025'),
(3,21,'5.3.2025'),
(4,45,'19.2.2025'),
(5,54,'12.3.2025'),
(12,34,'23.1.2025'),
(24,35,'27.12.2024'),
(35,43,'10.3.2025'),
(48,53,'18.10.2024'),
(50,44,'5.3.2025'),
(63,9,'8.3.2025'),
(79,22,'16.2.2025'),
(81,63,'10.1.2025'),
(97,57,'16.2.2025'),
(100,24,'1.3.2025');



INSERT INTO Etkinlikler (E_Adi, E_Aciklama, Sehir, Adres, Tarih) 
VALUES 
('Hayaller Gerçek Olsun', 'Bir kardeş köy okulu belirleyerek öğrencilerimizin empati, dayanışma ve gönüllülük bilincini geliştirmeyi amaçlıyoruz. Oyunlar, atölyeler, doğa gezileri ve kitap okuma gibi etkinliklerle kardeş okul öğrencileriyle keyifli vakit geçirecek, onların hayallerini dinleyerek gerçekleştirebileceklerimizi hayata geçireceğiz. Bu anlamlı projede bize destek olmak isteyen gönüllü gençleri arıyoruz!',
'Karaman', 'Karaman Yurt Müdürlüğü', '21.4.2025 - 30.6.2025'),
('Köyümde Şenlik Var', 'Merkezim Her Yerde Projesi kapsamında köy okulu ziyaretleri gerçekleştirilecektir. Bu projede eğlenceli eğitsel oyunlar oynatacak, yüz boyaması yapacak ve fotoğraf-video çekimi yapacak gönüllüler arıyoruz!',
'Afyonkarahisar','Karahisar Gençlik Merkezi', '14.4.2025 - 1.6.2025'),
('Microsoft Office Programlarını Öğrenme Atölyesi','Menteşe Öğrenci Yurdu Müdürlüğü olarak gençlerimizi iş hayatına hazırlamak amacıyla Microsoft Office Atölyesi açıyoruz ve bu kapsamda gönüllü eğitmenler arıyoruz. Günümüzde Microsoft Office, iş dünyasında en yaygın kullanılan yazılımlardan biri olup, özgeçmişte büyük bir avantaj sağlar. İşverenler, ofis görevlerini ustalıkla tamamlayabilen adayları tercih ederken, bu alandaki uzmanlık yetkinliği ve özgüveni artırarak iş hayatında fark yaratmaktadır.',
'Muğla','Menteşe Yurt Müdürlüğü','14.4.2025 - 15.6.2025'),
('Yurtlar Arası Bilgi Yarışması', 'Yurtlarımızda barınan gençlerimizin ders dışı zamanlarını olumlu değerlendirmek amacıyla temel yaşam becerilerin geliştirecek, ruhsal iyi olma hâllerini koruyacak ve güçlendirecek; akademik hayatlarına katkı sunacak eğitim, sosyal, kültürel ve sportif faaliyetler yürütme kapsamında İl Müdürlüğümüzce yurtlar arası bilgi yarışması düzenlenecektir. Etkinliğimizde teknik sistemlerle ilgilenebilecek, alanın organizasyonunu ayarlayabilecek, etkinlik boyunca fotoğraf ve video çekimiyle ilgilenebilecek ve soru cevapların sunulmasına yardımcı olabilecek gönüllü gençlere ihtiyaç vardır.',
'Bolu', 'Bolu Gençlik Ve Spor İl Müdürlüğü', '16.4.2025 - 16.4.2025'),
('Voleybol Öğreniyorum', 'Kız Öğrenci Yurdunda kız öğrencilerimize voleybol sevgisini aşılayacak ve onları bu sporun keyfini çıkarırken aynı zamanda kişisel gelişimlerine katkı sağlayacak deneyimli bir gönüllü voleybol antrenörü arıyoruz.',
'Afyonkarahisar', 'Bolvadin Kız Öğrenci Yurt Müdürlüğü', '1.4.2025 - 30.6.2025'),
('Hat, Örgü, Takı Tasarım', 'Bediüzzaman Said Nursi Yurt Müdürlüğümüzde 2. Dönem açılması planlanan El Sanatları Kursları (Hat, Takı Tasarım, Örgü) hakkında yurdumuzda barınan öğrencilerimizi bilgilendirecek, kursların başlangıç ve bitişi hakkında bilgilendirmesi ve alanın organizasyonuyla ilgilenebilecek gönüllü öğrencilerimize ihtiyacımız vardır.',
'Isparta', 'Bediüzzaman Said Nursi Yurt Müdürlüğü', '1.4.2025 - 30.5.2025'),
('Pusula Projesi', 'Pusula projesinde amacımız yurdumuza yeni kayıt yaptırmış yani yeni gelen 1. sınıf öğrencilerimize okudukları bölümün son sınıfı olan öğrencilerimiz ile bir araya gelerek tecrübelerini aktarmaları, okudukları bölüm hakkında bilgi sahibi olmalarıdır. Bu proje için iletişim becerisi yüksek olan arkadaşlarına tecrübelerini aktarabilecek, merak ettikleri konulara cevaplar verecek sosyal becerisi gelişmiş gönüllü kişiler arıyoruz.',
'Bilecik','Bilecik Kız Yurdu', '10.3.2025 - 16.3.2025'),
('Dikiş-nakış', 'Yurt Müdürlüğümüzde açılacak olan dikiş nakış kursumuz için deneyimli ve gönüllü bir eğitmen arıyoruz. Dikiş nakış konusunda deneyimli,iletişim becerileri yüksek genç eğitmenlerimizi projemize bekliyoruz.',
'Muğla','Ortaca Yurt Müdürlüğü', '10.3.2025 - 16.6.2025'),
('Gölge Oyunu İçin Gönüllü Olarak Bize Katıl', 'Türk kültürünün önemli bir parçası olan Karagöz-Hacivat oyununu yurdumuzda Ramazan ayı boyunca yaşatmayı amaçladığımız bu projede metin ve karakterlerin sunumu, sahne organizasyonu ve sunumu destekleme gibi görevlerde yer almak isteyen, Tiyatro ve Görsel Sanatlar Bölümü öğrencisi veya gölge oyunlarına ilgili olan gönüllü bir arkadaş arıyoruz!',
'Bilecik', 'Bilecik Halime Hatun Yurt Müdürlüğü','6.3.2025 - 31.3.2025'),
('Geri Dönüşüm Atolyesi Eğitmeni', 'Bu proje kapsamında gençlik merkezimize gelen gençler ve çocuklar için kurduğumuz Geri Dönüşüm Atölyesinde katılımcılara geri dönüşüm çalışmalarını öğretebilecek, ileriki süreçlerde yapılan ürünleri sergileyebilecek, sosyal medyaya içerik üretebilecek, tercihen üniversitelerin güzel sanatlar fakültelerinde okuyor ya da mezun olan gönüllü öğrenciler arıyoruz!',
'Kahramanmaraş', 'Kahramanmaraş Elbistan Gençlik Merkezi', '3.3.2025 - 30.6.2025'),
('Hayvan Barınağı Ziyareti Ve Can Dostlarımıza Mama Bağışı', '1453 Yurt Müdürlüğü olarak, öğrencilerimizle Esenyurt Belediyesi Veteriner İşleri Müdürlüğü Modern Hayvan Bakımevi ve Rehabilitasyon Merkezine düzenli ziyaretler gerçekleştireceğiz. Bu ziyaretler için kedi ve köpek maması bağışı bekliyor, ayrıca barınak ziyaretlerimize katılacak ve mama toplanmasına yardımcı olacak hayvan sever gönüllüler arıyoruz.',
'İstanbul', '1453 Kız Öğrenci Yurt Müdürlüğü', '10.4.2025 - 10.6.2025'),
('Temiz Çevre Mutlu Çocuklar', 'Yurdumuz ve çevresinde gerçekleştirilecek bu proje, kapsamında bireylerde çevre bilinci oluşturmayı ve geri dönüşüm alışkanlığı kazandırmayı amaçlamaktadır. Çevre temizliği, geri dönüşüm eğitimleri ve atık toplama etkinlikleriyle daha temiz ve sürdürülebilir bir çevre oluşturmaya gönüllü gençler arıyoruz!.',
'Bandırma', 'Balıkesir Bandırma Kız Öğrenci Yurdu', '8.4.2025 - 15.6.2025'),
('Sıfır Atık: Pil Hareketi', 'Bu proje kapsamında atık pillerin çöpler vasıtasıyla toprağa denizlere karışması ve yakılmaları durumunda oluşan kimyasalın çevreyi kirletmesine razı gelmeyen,  projemiz içerisinde çalışmak isteyen, özverili ve doğa gönüllüsü arkadaşlarımızı bekliyoruz.',
'Kars', 'Kars Gençlik Merkezi', '1.4.2025 - 30.6.2025'),
('Yeşil Gelecek Fidan Dikimi Projesi', '2021 yılında Fethiye Ovacık bölgesinde yaşanılan orman yangının ardından yanan alanların tekrar yeşillendirilmesine katkıda bulunmak, ekosistemi canlandırmak ve geleceğe yeşil bir miras bırakmak isteyen gönüllülerimizi beraber fidan dikmeye davet ediyoruz!.',
'Muğla', 'Fethiye Sıtkı Mefharet Koçman Yurt Müdürlüğü', '29.3.2025 - 30.3.2025'),
('Camilerimiz Sizinle Temiz', 'Bu proje kapsamında müslümanların ibadetlerini yerine getirdiği, huzur ve sükunet buldukları kutsal mekan olan camilerimizi gençlerimizle birlikte manevi değerlerimize sahip çıkmak ve sorumluluk bilinci arttırmak için temizlik yapmaya gönüllü gençler arıyoruz.',
'Antalya', 'Serik Yurt Müdürlüğü', '25.3.2025 - 30.6.2025'),
('Geri Dönüşüm', 'Bu proje yurdumuz ve çevresinde yaşayan bireylerde çevre bilinci oluşturmayı ve geri dönüşüm alışkanlığı kazandırmayı amaçlayan, hem çevremizin temizlenmesine hem de atıkların doğru bir şekilde ayrıştırılması sağlanarak sürdürülebilir bir yaşam birakmaya gönüllü gençlerimizi bekliyoruz!',
'Isparta', 'Isparta Erkek Yurdu', '19.3.2025 - 18.5.2025'),
('Gönül Sarayı Projesi', 'Eğirdir Yurt Müdürlüğümüz önderliğinde hayvan dostlarımızı soğuktan korunmaları için kedi ve kuş evleri yaparak yurdun bahçesine yerleştirebileceğimiz hayvanlara karşı duyarlılığı olan tüm gençlerimizi bekliyoruz.',
'Isparta','Eğirdir Yurt Müdürlüğü','17.3.2025 - 30.6.2025'),
('Görevimiz İyilik', 'İslam kültür ve medeniyetinin insanlara daha etkin tanıtılması maksadıyla 13-20 Mart 2025 tarihlerinde kabul edilen İyilik Haftasında bireyler üzerinde farkındalık oluşturmak amacıyla yaşlı ziyareti, sokak hayvanlarını besleme, çevre temizliği gibi etkinliklerimize katılmaya gönüllü duyarlı gençlerimizi iyilik yapmaya davet ediyoruz!',
'Konya', 'Taşkent Yurt Müdürlüğü', '13.3.2025 - 20.3.2025'),
('Bir Tutam İyilik Ramazan Ayı Projesi', 'Ramazan ayı boyunca başında ortasında ve bayram hediyesi olarak üç defa olmak üzere ihtiyaç sahiplerine gıda kolileri dağitmak için gönüllü sosyal sorumluluk bilinci ve dayanışma ruhu kazanmak isteyen öğrencileri bu projemize davet ediyoruz!',
'Antalya', 'Akdeniz Yurt Müdürlüğü', '3.3.2025 - 29.3.2025'),
('Ekmeğimiz Çöpe Gitmesin', 'Toplumda israfı önleme ve gıda güvenliğinin artırılması amacıyla gerçekleştireceğimiz bu projede bayat ekmeklerin doğaya zarar vermeden hayvanların beslenmesi için değerlendirileceği etkinliğimize gönüllü ve duyarlı tüm bireylerimizi bekliyoruz!',
'Bilecik', 'Bilecik Şeyh Edebali Kyk Erkek Yurdu', '1.3.2025 - 30.6.2025'),
('Mavi Kapak Projesi İçin Gönüllüler Arıyoruz', 'Çevremizi korumak, çevre bilincini artırmak ve engelli bireylerimize umut olmak amacıyla gerçekleştireceğimiz bu projede okullar, iş yerleri, mahalleler ve sosyal alanlarda kullanılmayan plastik kapakları toplayarak ihtiyaç sahibi engelli kardeşlerimize destek olmak isteyen duyarlı bireylerimizi projemize davet ediyoruz! ',
'Erzurum', 'Pasinler Gençlik Merkezi', '1.3.2025 - 30.9.2025'),
('Çocuk Sokağı Gönüllü Daveti', 'Sokak Oyunları Eğitim Merkezinde gerçekleştireceğimiz bu projede çocuklarımızı geçmişten gelen körebe, saklambaç, ip atlama, sek sek gibi unutulmuş sokak oyunlarıyla tanıştırmak, öğretmenlerimiz yönetiminde farklı etkinlikler düzenlemek, çocuklarımızla unutulmaz deneyimler yaşamak isteyen bu süreçte oyun alanları düzenleme ve çocuklarla iletişim konusunda destek olabilecek sevgi dolu gönüllü bireyler arıyoruz.',
'Muğla', 'Fethiye Sıtkı Mefharet Koçman Yurt Müdürlüğü', '17.2.2025 - 27.5.2025'),
('Renklensin Okulumuz', 'Şehit Piyade Er Edem Yüce İlkokulu için okula yepyeni bir atmosfer katmak, renklerin büyülü dünyasına adım atmak, yeni insanlarla tanışıp güzel bir işe imza atmak isteyen resim bölümü öğrencilerimizi duvar boyama etkinliğimize davet ediyoruz!',
'Iğdır', 'Konaklı Gençlik Merkezi', '15.2.2025 - 20.2.2025'),
('İsrafı Önleyip, Patili Dostlarımızı Besliyoruz', 'Malazgirt Yurt Müdürlüğü olarak kış ayının gelmesi ve doğada yaşayan dostlarımızın yiyecek bulmakta sıkıntı yaşaması nedeniyle planladığımız bu faaliyette ilçemizde yaşayan can dostlarımızın yiyecek bulmasını sağlamak amacıyla yurdumudaki bayat ekmekleri ve artan fazla yemekleri toplayarak hayvanlarımıza ulaştırmak istiyoruz. Sokak hayvanlarına destek bilinciyle çıktığımız bu yolda duyarlı gençlerimizi de aramızda görmekten mutluluk duyuyoruz!.',
'Muş', 'Malazgirt Yurt Müdürlüğü', '1.3.2025 - 30.4.2025'),
('Smintheion 2025 Kazı Sezonu', 'T.C. Kültür ve Turizm Bakanlığı ve Ondokuz Mayıs Üniversitesi iş birliği ile yürütülen, Çanakkale ili Ayvacık ilçesi Gülpınar Köyünde yer alan Smintheion Kutsal Alanı 2025 yılı kazı çalışmaları için gönüllü Arkeoloji, Restorasyon ve Konvervasyon, Mimarlık ve Antropoloji eğitimi almış gönüllü bireyler aranmaktadır.',
'Çanakkale', 'Apollon Smintheion Kutsal Alanı', '1.4.2025 - 4.11.2025'),
('Sinema Etkinliği', 'Okmeydanı Gençlik Merkezi olarak her ay çarşamba günleri saat 15:00’de düzenleyeceğimiz sinema gösterimleri ile gençleri buluşturmayı planladığımız bu projede organizasyon işlerinde becerikli, sinema sistemini kurmaya ikramlarda yardımcı olmaya ve etkinlik boyunca fotoğraf ve video çekimleriyle içerik üretebilecek gönüllü bireylerimizi bekliyoruz.',
'İstanbul', 'İstanbul Okmeydanı Gençlik Merkezi','19.3.2025 - 18.6.2025'),
('Zeugma Mozaik Müzesinde Gönüllü Olmak İster Misiniz?', 'Gaziantep Zeugma Mozaik Müzemizde; özellikle arkeoloji, sanat tarihi, müze eğitimi, eğitim fakültesi, sinema tv ve fotoğrafçılık öğrencisi ya da mezunları ile eser envanter çalışmaları, çocuklar için müze eğitimi, büro ve kütüphane işleri, fotoğraf ve video çekimi ve çeşitli teknik işlerde beraber çalışmaktan mutluluk duyarız!',
'Gaziantep', 'Gaziantep Müze Müdürlüğü', '7.3.2025 - 31.12.2025'),
('Anılarımızı Taze Tutalım', 'Yurt Müdürlüğümüzde gerçekleşen etkinliklerde, turnuvalarda, gezilerde ve diğer faaliyetlerde yaşanan anların çekimini yapabilecek yaratıcılık ve yenilikçilik gücü yüksek, fotoğrafçılığa ilgi duyan ve fotoğraf düzenleme programlarına hakim sorumluluk sahibi öğrenci arkadaşlar aramaktayız!',
'Bilecik', 'Bilecik Kız Yurdu', '1.3.2025 - 14.6.2025'),
('Ninemin Tarifleri Atölyesi', 'Yurdumuz öğrencileri ile birlikte yemekhanesinde belirlenen ilimizin geleneksel bir yemek tarifi belirlenecek ve yaplacaktır.Etkinlik öncesinde gerekli hazırlık planlamalarını yapabilecek ve bütçe hesaplaması ile birlikte malzemelerin alınması, ölçülerin kararlaştırılması ve erzakların teminini üstlenecek gönüllüler aramaktayız',
'Muğla', 'Fethiye Yurt Müdürlüğü','28.2.2025 - 28.5.2025'),
('Şehitlik Ziyareti', 'Ülkemizin kahraman şehitlerinin anısını yaşatmak ve onlara olan minnettarlığımızı ifade etmek amacıyla yurdumuzda barınan öğrencilerimizle birlikte belirli aralıklarla düzenleyeceğimiz Şehitlik Ziyaretlerinde öğrencilere bu yolda rehberlik etmek, ulaşım durumlarını organize etmek, manevi kültürel etkinliklerin düzenlenmesine yardımcı olmak isteyen tarihi ve dini hassasiyeti yüksek gönüllüler aramaktayız!',
'Erzurum', 'Erzurum Nenehatun Yurt Müdürlüğü', '3.3.2025 - 3.4.2025'),
('Örgü Bağları: Sevgi Ve Emek', 'Bu projede yurdumuzda barınan gönüllü öğrencilerin bir arya gelerek örgü yapımı üzerine bir atölye ve etkinlikler düzenleyerek öğrencilerin emekle hazırlanan eşyalar üzerinden sosyal sorumluluk hislerini güçlendirmek ve verilen emeklerin sonucunda elde edilen örgü ürünleri toplumsal projelere yardım amaçlı kullanılacaktır.Bu süreçte örgü örmeye meraklı tüm katılımcılarımızı projemize bekliyoruz!',
'Erzurum', 'Kazım Karabekir Yurt Müdürlüğü', '16.2.2025 - 31.5.2025'),
('Biz El Ele Gönül Gönüle Beraberiz!','Yurdumuzda barınan yabancı uyruklu öğrencilerimizi ve ülkelerinin kültürünü kendi milletlerinin şarkılarıyla müzük kültürüyle ve danslarıyla tanımayı amaçladığımız bu yolda müzük parçalarını seçecek,notalarını çıkaracak,enstrümanı ve sesiyle eşlik edebilecek,tantım slaytları hazırlayabilecek,etkinlik süresince fotoğraf ve video çekebilecek gönüllüler arıyoruz',
'Elazığ', 'Fethi Sekin Yurt Müdürlüğü', '6.2.2025 - 6.2.2025'),
('Osmanlıca Eğitimi', 'Öğrencilerimizin kültürel gelişimine katkı sağlamak amacıyla düzenleyeceğimiz Osmanlıca Kursunda eğitmenlik yapabilecek Osmanlıca konusunda uzman ve öğrenmeye hevesli gençlere bilgi ve deneyimlerini aktarmak isteyen gönüllü eğitmen aramaktayız!',
'Elazığ','Kovancılar Gençlik Merkezi','3.2.2025 - 31.12.2025'),
('Gönüllü Ol, Kütüphaneye Fark Kat!', 'Van İl Halk Kütüphanemizde bizimle çalışabilecek, kitapların tasnifi ciltlenmesi ve düzenlenmesi işlerinde yardımcı olabilecek bilgisayar kullanmaya yatkın insanlarla iletişimi güçlü Eğitim Fakültesi öğrencileri, lisans mezunu gönüllüler ve kütüphane gönüllülüğü tecrübesi olan gönüllü kitap dostları arıyoruz.',
'Van', 'Van İl Halk Kütüphanesi', '17.12.2024 - 15.5.2025'),
('Mehmet Akif Ersoy Anma Programı', 'Şems-i Ana Yurt Müdürlüğümüz konferans salonunda gerçekleştireceğimiz Mehmet Akif Ersoyu anma programında konuşma yapabilecek, şiir okuyabilecek odanın hazırlanması ve fotoğraf çekiminde yardımcı olabilecek hitabeti ve diksiyonu güzel gönüllüler aramaktayız',
'Muğla', 'Şemsi Ana Kız Yurdu', '27.12.2024 - 27.12.2024'),
('Kan Bağışı Projesi', 'Prof. Dr. Cevat Akşit Yurdu bahçesinde- yemekhanede kurulacak olan Kızılay Kan Bağışı Toplama Noktasında halka kan bağışının önemini anlatacak, onları bağış için teşvik edecek aynı zamanda kan bağışı yapabilecek, Kızılaya yardımcı olabilecek ve stand görevi üstlenebilecek gönüllülere ihtiyaç duyulmaktadır.',
'Denizli', 'Denizli Prof.Dr. Cevat Akşit Yurdu', '12.5.2025 - 16.5.2025'),
('Gülbahar Hatun Yurdu- Isıtan Eller Projesi', 'Yurt Müdürlüğümüz bünyemizde gerçekleştirilecek bu faaliyette örgü kursuna katılan öğrencilerden köy okullarındaki çocuklara hediye götürmek için atkı,bere,saç bandanası yaptırılacaktır.Kursta bitirdikleri ürünler paketlenecek ve kolilenecektir. Yurt Müdürlüğümüzün belirlediği bir okula belirlenen bir tarihte ziyarete gidilecektir. Araç İl Müdürlüğümüze yazılan resmi yazı ile ayarlanacaktır. Yapılan ürünleri okula götürüp oradaki çocuklara dağıtacak gönüllü öğrenciler aramaktayız',
'Trabzon', 'Trabzon Gülbahar Hatun Yurt Müdürlüğü', '5.5.2025 - 31.5.2025'),
('Oyun Arkadaşım Projesi', 'Gençlerimizin toplumsal hayata etkin katılımını, çocuklarla iletişim kurmalarını sağlamak amacıyla gerçekleştirdiğimiz bu projede çocuk oyunları yüz boyama ve hediye verme faaliyetleri içeren aktiviteler düzenlenecek ve bu etkinliklerde görev alacak, palyaço kıyafeti giyecek, yüz boyama yapacak ve değerli saatler yaşatabilecek gönüllü öğrenciler aramaktayız',
'Giresun', 'Alucra Yurt Müdürlüğü', '15.4.2025 - 16.4.2025'),
('Şifa Oyuncakları', 'Hastanede tedavi gören çocuklara moral olamk için başlattığımız bu projede gençler olarak ahşap boyama kursunda boyayacağımız veya bağış yoluyla toplanacak oyuncaklarla çocuklara neşe ve umut olmayı hedeflemekteyiz.Bu süreçte boyama, bağış toplama ve dağıtım olmak üzere 3 ayrı kolda çalışmak isteyen gönüllü öğrencilerimizi projemize davet ediyoruz.',
'Kocaeli', 'Zekiye Gündoğdu Yurt Müdürlüğü', '2.4.2025 - 2.6.2025'),
('(+)1 Arkadaşım', 'Üniversiteli öğrencilerimizin sosyal sorumluluk bilincine katkı sunmak amacıyla onları down sendromlu çocuklarımızla bir araya getirmeyi amaçladığımız bu projede çocuklarımızla geleneksel oyunları oynamasını ve kaynaşmasını istediğimiz iletişim becerileri yüksek, güler yüzlü, çocukları seven gönüllülerimizi arıyoruz!',
'Isparta', 'Yalvaç Yurt Müdürlüğü', '17.3.2025 - 20.6.2025'),
('Yalnız Değilsiniz Projesi', 'Aile ve Sosyal Hizmetler İl Müdürlüğü veya muhtarlıklarla iletişime geçilerek yalnız yaşayan yaşlılarımızı tespit edilecektir. Tespit edilen yaşlılar gönüllülerimiz tarafından düzenli olarak ziyaret edilecektir. Yaşlılarımızın desteğe ihtiyaç duyduğu alanlarda (market alışverişi, ev temizlikleri, ev yemeklerinin yapılması vb.) destek olunacaktır.Bu süreçte yardımcı olmak isteyen gönüllülerimizi arıyoruz.',
'Elazığ', 'Elazığ Ahmet Kabaklı Yurt Müdürlüğü', '18.3.2025 - 30.6.2025'),
('Birlikte İftar Programı', 'Ramazan Ayı boyunca gençlik merkezimiz tarafından düzenlenen iftarlara katılan çocuklarımıza Ramazan Ayının manevi kültürünü öğretmek, çocuklarla birebir ilgilenmek, oyunlar ve eğitici etkinlikler düzenlemek gibi görevler üstlenebilecek iletişim gücü yüksek, manevi değerlere duyarlı gönüllüler arıyoruz.',
'Antalya', 'Muratpaşa Gençlik Merkezi', '10.3.2025 - 30.3.2025'),
('Gönüllü Pati', 'Gönüllü pati projesi kapsamında gençlik merkezimizde sahiplendiğimiz 2 köpeğimizin veterinerlik ihtiyaçlarını karşılamak için aşı takvimlerini takip edebilecek, kişisel bakımıyla ilgilenecek, rutin sağlık kontrollerinin yapımı için veteriner kliniğine götürüp getirebilecek, gönüllü gençlere ihtiyaç duyulmaktadır.',
'Kütahya', 'Kütahya Gençlik Merkezi', '10.3.2025 - 30.6.2025'),
('Dolabın Dolabım Olsun Mu ?', 'Pertev Paşa Öğrenci Yurdunda gerçekleştirilecek bu projede ekonomik eşitsizliği giderebilmek adına gençlerin kendi aralarında topladığı kıyafetleri ihtiyaç sahiplerine dağıtımında yardımcı olabilecek gönüllüler aranmaktadır.',
'Kocaeli', 'Gsb Pertev Paşa Yurt Müdürlüğü', '5.3.2025 - 30.6.2025'),
('Sinopta Özelim', 'Engelli bireyleri topluma kazandırmak, onlara bu toplumun üyesi olduklarını hissettirmek, spora teşvik etmek, sporu tanıtmak , el sanatlarına yönlendirmek ve farkındalık oluşturabilmek amacıyla Sinop Gençlik Merkezinde yapılacak olan etkinliklerde özel çocuklarımızla ilgilenebilecek ve aktivitelerde yardımcı olabilecek gönüllü arkadaşlar aramaktayız.',
'Sinop', 'Sinop Gençlik Merkezi', '19.2.2025 - 19.2.2025'),
('Minik Raketler Projesi', 'Edirne İl Merkezinde bulunan ilkokullarda eğitim öğretim gören öğrencilerin temel eğitim çağında spora yönlendirerek sporu sevdirmek,kötü alışkanlıklardan korumak, ruhen ve bedenen sağlıklı bireyler yetiştirerek, sosyal ve kültürel gelişimlerine katkıda bulunmak amacıyla gerçekleştirilen bu projede tenis branşı ile ilgili bilgisi olan, eskiden bu sporu yapmış olan, spor bilimleri fakültesi öğrencisi veya mezunu, tenis branşı antrenörlük belgesi olan, spora gönül vermiş  gönüllü gençler aramaktayız.',
'Edirne', 'Edirne Gençlik Ve Spor İl Müdürlüğü', '1.4.2025 - 20.6.2025'),
('Haydi Fitnessa', 'Menteşe Öğrenci Yurdu Fitness salonumuzda  salon düzenlemesi, yeni üyelere oryantasyon gibi görevlerde bulunacak dinamik ve sosyal bir ortamda spor tutkunlarıyla bir araya gelmek isteyen gönüllüler arıyoruz.',
'Muğla', 'Menteşe Öğrenci Yurdu', '1.4.2025 - 30.6.2025'),
('Hepimiz Aynıyız', '21 Mart Dünya Down Sendromlular Farkındalık Gününde ilçemizde gerçekleştirmeyi planladığımız ve ilçemizde eğitim gören down sendromlu kardeşlerimize yönelik gerçekleştirilecek sportif etkinlikler, sokak oyunları,yüz boyama resim vb. etkinliklerde destek verebilecek ekip çalışmasına uyumlu,tercihen  Özel Eğitim Öğretmenliği yada Spor Bilimleri Fakültelerinden mezun özel eğitim alanında çalışmış gönüllü arkadaşlar arıyoruz.',
'Kocaeli', 'Çayırova Gençlik Ve Spor İlçe Müdürlüğü', '21.3.2025 - 21.3.2025'),
('Tam İsabet Projesi', 'Bocce ve Dart branşlarını tanıtmak ve popülaritesinin artmasına katkı sağlamak, sporcu sayısını arttırmak amacıyla Tam İsabet projesi hazırlanmıştır.Proje kapsamında Dart ve Bocce branşları ile ilgili bilgisi olan, eskiden bu sporları yapmış veya halen yapmakta olan, spor bilimleri fakültesi öğrencisi veya mezunu, spora gönül vermiş öğrencilere atış çalışmalarının nasıl yapıldığını gösterebilecek gönüllü gençler aramaktayız',
'Iğdır', 'Konaklı Gençlik Merkezi', '20.3.2025 - 1.6.2025'),
('Avrupa Para Gençlik Oyunları - İstanbul 2025', '20- 28 Temmuz 2025 tarihlerinde Türkiye Milli Paralimpik Komitesi (TMPK) tarafından düzenlenecek olan bu büyük organizasyonda bu eşsiz spor deneyimi yaşamak isteyen spor gönüllüsü bireylerimizi davet ediyoruz.',
'İstanbul', 'Türkiye Milli Paralimpik Komitesi', '20.7.2025 - 28.7.2025'),
('Güneşe Merhaba', 'İş hayatına ayrılan sürenin ve dijital bağımlılığın artmasıyla beraber sağlıksız bir yaşamın ve obezite oranında yaşanılan artışın önüne geçmek için Fethiye Gençlik Merkezi olarak ilçemizde yaşayan ve ben de spor yapmak istiyorum diyen 18-29 yaş aralığındaki bireylerimizi Semt sahasında gerçekleştireceğimiz bu faaliyetimize davet ediyoruz. Bunun sonucunda Beden Eğitimi ve Spor Yüksekokulu öğrencilerinin/mezunların ve spor geçmişi olan, bu alanda daha önce çalışmış ya da eğitim almış gönüllülerimizin başvurularını beklemekteyiz.',
'Muğla', 'Fethiye Gençlik Merkezi', '8.4.2025 - 8.9.2025'),
('Basketbol Eğitmeni Arıyoruz', 'Gençlik Merkezimizin Kapalı Spor Salonunda Basketbol kursu vermesi için Basketbol sporu ile ilgilenen lisanslı sporcu veya basketbol antrenörlüğü belgesine sahip gönüllü eğitmen arıyoruz',
'Iğdır', 'Konaklı Gençlik Merkezi', '28.3.2025 - 1.6.2025'),
('Yurt Spor Turnuvaları', 'Sporun birleştirici gücünden faydalanarak, gençlerin bir araya gelmesini, eğlenmesini ve sağlıklı bir şekilde vakit geçirmesini sağlamayı hedeflediğimiz bu yolda yurdumuzda düzenlenecek olan Futbol, Basketbol, Masa Tenisi, Satranç ve Dart turnuvaları için organizasyonun her aşamasında alan düzenleme,hakemlik ve rehberlik, sosyal medyaya içerik üretimi, yarışma takibi gibi görevler alacabilecek gönüllü arkadaşlar arıyoruz.',
'Bilecik', 'Bilecik Halime Hatun Yurt Müdürlüğü', '17.9.2024 - 31.1.2025'),
('Gençlerin Doğasında Hareket Var', 'Bu proje kapsamında toplumsal fayda gözetilerek obeziteye karşı hareket etmenin önemine dikkat çekilerek sağlıklı bireylerin yetişmesine dikkat çekilerek çeşitli sportif faaliyetler gerçekleştirilecektir. Bisiklet sürme, doğa yürüyüşü, matrak, halat çekme, çuval yarışı gibi faklı etkinlikler icra edilecek ve bu yönde katılımcılara rehberlik yapacak, yarışma skorlarını tutacak, bisiklet sürmede önderlik yapabilecek öğretmeyi seven lider ruhlu gönüllülerimizi arıyoruz.',
'Iğdır', 'Tuzluca Gençlik Ve Spor İlçe Müdürlüğü', '10.3.2025 - 29.6.2025'),
('İlk Yardım Eğitimi', '6 Şubat 2023 tarihinde ülkemizde meydana gelen büyük çaplı depremden anlaşılacağı üzere afetlere daima hazırlıklı olmamız gerektiğini göstermektedir. Deprem konusunda gençlerimizin her daim bilinçli kalması adına bu ilk yardım faaliyetini yapmayı ve bilinçli ilkyardımı yaymayı amaçlamaktayız. Bu eğitimi vermek adına Temel İlk Yardım sertifikası bulunan ve Üniversitelerin Acil Yardım ve Afet Yönetimi bölümünde okuyan gönüllü bireylerimizi arıyoruz.',
'Kırşehir', 'Kırşehir Kaman Gençlik Merkezi', '7.4.2025 - 4.5.2025'),
('Afet Farkındalık Eğitimi', 'AFAD desteği ile düzenlenecek eğitim programı ile afet ve acil durumlara yönelik farkındalık yaratmak, eğitimler ve tatbikatlarla toplumun bu tür durumlara hazırlıklı olmasını sağlamayı amaçladığımız bu projede eğitim alanlarının organizasyonunda tatbikatlarda yardımcı olacak alanda eğitimli gönüllüler arıyoruz.',
'Bolu', 'Gsb Bolu Gölköy Kız Yurdu', '1.4.2025 - 5.4.2025'),
('Sen De Bir Can Kurtar', 'Osmaneli ilçesindeki Gençlik Merkezi olarak, Kızılay kan alma aracındaki personele yardımcı olacak, kan bağışının önemini anlatacak, insanları teşvik edecek ve aynı zamanda kan bağışı yapabilecek gönüllü gençler arıyoruz!',
'Bilecik', 'Bilecik Osmaneli Gençlik Merkezi', '16.2.2025 - 16.7.2025'),
('İlk Yardım Hayat Kurtarır', ' Deprem konusunda gençlerimizin her daim bilinçli kalması adına bu ilk yardım faaliyetini yapmayı ve bilinçli ilkyardımı yaymayı amaçlamaktayız. Bu eğitimi vermek adına Temel İlk Yardım sertifikası bulunan ve Üniversitelerin Acil Yardım ve Afet Yönetimi bölümünde okuyan gönüllülerimizi aramaktayız.',
'Bilecik', 'Bilecik Halime Hatun Yurt Müdürlüğü','1.4.2025 - 1.5.2025'),
('Temel Afet Bilinci Eğitimi', 'İl Müdürlüğümüz personellerine yapılacak Temel Afet Bilinci Eğitimi için eğitim boyunca salonun düzenini sağlayacak, eğitimde aktif olarak katılım sağlayacak alanında bilgili gönüllülerimize ihtiyaç vardır,',
'Tunceli', 'Tunceli Gençlik Ve Spor İl Müdürlüğü', '17.2.2025 - 17.2.2025'),
('Afete Hazır Bireyler', 'Yurtta kalan öğrencilerin ve personellerin afet anında nasıl davranması gerektiği konusunda farkındalık yaratmayı ve tahliyeyi öğretmeye amaçlayan yurtta yaşan herkesin katılımı ile gerçekleşecek olan bu eğitimde öğrencilerimize tahliye ve pratik uygulanma sırasında rehberlik edecek alanda eğitimli gönüllüler aranmaktadır.',
'Konya', 'Mesnevi Yurt Müdürlüğü', '5.2.2025 - 5.2.2025'),
('İlk Yardım Eğitimi', 'Deprem konusunda gençlerimizin her daim bilinçli kalması adına bu ilk yardım faaliyetini yapmayı ve bilinçli ilkyardımı yaymayı amaçlamaktayız. Bu eğitimi vermek adına Temel İlk Yardım sertifikası bulunan ve Üniversitelerin Acil Yardım ve Afet Yönetimi bölümünde okuyan gönüllülerimiz tercih edilecektir.',
'Bilecik', 'Bilecik Kız Yurdu', '1.4.2025 - 30.4.2025'),
('Afet Farkındalık Eğitimi', 'Ahmet Hamdi Akseki Yurt Müdürlüğü olarak Yurdumuzda öğrencilerimize afet bilinci kazandırmak ve olası bir durumda doğru davranışlar sergilemelerini sağlamak amacıyla afet farkındalık eğitimleri düzenleyeceğiz. Bu önemli görevde bize destek olacak, deneyimli ve gönüllü eğitmenler arıyoruz.',
'Antalya', 'Ahmet Hamdi Akseki Yurt Müdürlüğü', '15.1.2025 - 20.1.2025'),
('Yangın Tatbikatı', 'Bu proje, yurtta kalan öğrencilerin ve personelin yangın anında nasıl hareket etmeleri gerektiği konusunda farkındalık yaratmayı ve güvenli tahliyeyi öğretmeyi amaçlayan bir yangın tatbikatıdır. İtfaiye ekipleri veya AFAD ekiplerinin katılımı ile tatbikat, yurtta yaşayan herkesin katılımıyla gerçekleşecek olup, hem bilgi paylaşımı hem de pratik bir uygulama içerecektir.Eğitim ve bilgiler doğrultusunda diğer öğrencilere bilgilendirme ve tahliye esnasında rehberlik edecek gönüllüler aranmaktadır.',
'Muğla', 'Ortaca Yurt Müdürlüğü', '10.1.2025 - 16.6.2025'),
('Kan Ver, Can Ver', 'Gençlik Merkezimize Kızılay kan alma aracı gelecek olup;insanlara kan bağışının önemini anlatabilecek, onları bağış için teşvik edebilecek, aynı zamanda kan bağışı yapabilecek ayrıca Kızılay personeline yardımcı olacak,stant açma ve toplamada görev alacak,kan bağışına teşvik edecek gönüllü öğrencilere ihtiyaç duyulmaktadır.',
'Muğla', 'Yatağan Gençlik Merkezi', '2.1.2025 - 2.7.2025');

















