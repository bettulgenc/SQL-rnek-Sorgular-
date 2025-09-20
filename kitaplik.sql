CREATE TABLE YAZARLAR (
    yazar_id     NUMBER(5)      PRIMARY KEY,
    ad           VARCHAR2(50)   NOT NULL,
    soyad        VARCHAR2(50)   NOT NULL,
    dogum_tarihi DATE
);

INSERT INTO YAZARLAR (yazar_id, ad, soyad, dogum_tarihi) VALUES (1, 'Stephen', 'King', TO_DATE('1947-09-21', 'YYYY-MM-DD'));
INSERT INTO YAZARLAR (yazar_id, ad, soyad, dogum_tarihi) VALUES (2, 'J.K.', 'Rowling', TO_DATE('1965-07-31', 'YYYY-MM-DD'));
INSERT INTO YAZARLAR (yazar_id, ad, soyad, dogum_tarihi) VALUES (3, 'George', 'Orwell', TO_DATE('1903-06-25', 'YYYY-MM-DD'));
INSERT INTO YAZARLAR (yazar_id, ad, soyad, dogum_tarihi) VALUES (4, 'Agatha', 'Christie', TO_DATE('1890-09-15', 'YYYY-MM-DD'));
INSERT INTO YAZARLAR (yazar_id, ad, soyad, dogum_tarihi) VALUES (5, 'Fyodor', 'Dostoyevsky', TO_DATE('1821-11-11', 'YYYY-MM-DD'));
INSERT INTO YAZARLAR (yazar_id, ad, soyad, dogum_tEZİhi) VALUES (6, 'William', 'Shakespeare', TO_DATE('1564-04-23', 'YYYY-MM-DD'));
INSERT INTO YAZARLAR (yazar_id, ad, soyad, dogum_tarihi) VALUES (7, 'Jane', 'Austen', TO_DATE('1775-12-16', 'YYYY-MM-DD'));
INSERT INTO YAZARLAR (yazar_id, ad, soyad, dogum_tarihi) VALUES (8, 'Mark', 'Twain', TO_DATE('1835-11-30', 'YYYY-MM-DD'));
INSERT INTO YAZARLAR (yazar_id, ad, soyad, dogum_tarihi) VALUES (9, 'Leo', 'Tolstoy', TO_DATE('1828-09-09', 'YYYY-MM-DD'));
INSERT INTO YAZARLAR (yazar_id, ad, soyad, dogum_tarihi) VALUES (10, 'Virginia', 'Woolf', TO_DATE('1882-01-25', 'YYYY-MM-DD'));
INSERT INTO YAZARLAR (yazar_id, ad, soyad, dogum_tarihi) VALUES (11, 'Charles', 'Dickens', TO_DATE('1812-02-07', 'YYYY-MM-DD'));
INSERT INTO YAZARLAR (yazar_id, ad, soyad, dogum_tarihi) VALUES (12, 'Gabriel Garcia', 'Marquez', TO_DATE('1927-03-06', 'YYYY-MM-DD'));
INSERT INTO YAZARLAR (yazar_id, ad, soyad, dogum_tarihi) VALUES (13, 'Albert', 'Camus', TO_DATE('1913-11-07', 'YYYY-MM-DD'));
INSERT INTO YAZARLAR (yazar_id, ad, soyad, dogum_tarihi) VALUES (14, 'Franz', 'Kafka', TO_DATE('1883-07-03', 'YYYY-MM-DD'));
INSERT INTO YAZARLAR (yazar_id, ad, soyad, dogum_tarihi) VALUES (15, 'Victor', 'Hugo', TO_DATE('1802-02-26', 'YYYY-MM-DD'));
COMMIT;

CREATE TABLE KITAPLAR (
    kitap_id      NUMBER(5)       PRIMARY KEY,
    baslik        VARCHAR2(150)   NOT NULL,
    yazar_id      NUMBER(5)       NOT NULL,
    yayim_yili    NUMBER(4),
    ISBN          VARCHAR2(13)    UNIQUE,
    FOREIGN KEY (yazar_id) REFERENCES YAZARLAR(yazar_id)
);

INSERT INTO KITAPLAR (kitap_id, baslik, yazar_id, yayim_yili, ISBN) VALUES (101, 'It', 1, 1986, '9780451169518');
INSERT INTO KITAPLAR (kitap_id, baslik, yazar_id, yayim_yili, ISBN) VALUES (102, 'Harry Potter ve Felsefe Tasi', 2, 1997, '9780747532699');
INSERT INTO KITAPLAR (kitap_id, baslik, yazar_id, yayim_yili, ISBN) VALUES (103, '1984', 3, 1949, '9780451524935');
INSERT INTO KITAPLAR (kitap_id, baslik, yazar_id, yayim_yili, ISBN) VALUES (104, 'On Kucuk Zenci', 4, 1939, '9780062073488');
INSERT INTO KITAPLAR (kitap_id, baslik, yazar_id, yayim_yili, ISBN) VALUES (105, 'Suc ve Ceza', 5, 1866, '9780486415871');
INSERT INTO KITAPLAR (kitap_id, baslik, yazar_id, yayim_yili, ISBN) VALUES (106, 'Hamlet', 6, 1603, '9780743477132');
INSERT INTO KITAPLAR (kitap_id, baslik, yazar_id, yayim_yili, ISBN) VALUES (107, 'Gurur ve Onyargi', 7, 1813, '9780141439518');
INSERT INTO KITAPLAR (kitap_id, baslik, yazar_id, yayim_yili, ISBN) VALUES (108, 'Tom Sawyerin Maceralari', 8, 1876, '9780486400778');
INSERT INTO KITAPLAR (kitap_id, baslik, yazar_id, yayim_yili, ISBN) VALUES (109, 'Savas ve Baris', 9, 1869, '9780140447939');
INSERT INTO KITAPLAR (kitap_id, baslik, yazar_id, yayim_yili, ISBN) VALUES (110, 'Deniz Feneri', 10, 1927, '9780156907399');
INSERT INTO KITAPLAR (kitap_id, baslik, yazar_id, yayim_yili, ISBN) VALUES (111, 'Iki Sehrin Hikayesi', 11, 1859, '9780141439730');
INSERT INTO KITAPLAR (kitap_id, baslik, yazar_id, yayim_yili, ISBN) VALUES (112, 'Yuz Yillik Yalnizlik', 12, 1967, '9780060883287');
INSERT INTO KITAPLAR (kitap_id, baslik, yazar_id, yayim_yili, ISBN) VALUES (113, 'Yabanci', 13, 1942, '9780679720201');
INSERT INTO KITAPLAR (kitap_id, baslik, yazar_id, yayim_yili, ISBN) VALUES (114, 'Donusum', 14, 1915, '9780486272825');
INSERT INTO KITAPLAR (kitap_id, baslik, yazar_id, yayim_yili, ISBN) VALUES (115, 'Sefiller', 15, 1862, '9780451419439');
COMMIT;

CREATE TABLE UYELER (
    uye_id        NUMBER(5)       PRIMARY KEY,
    ad            VARCHAR2(50)    NOT NULL,
    soyad         VARCHAR2(50)    NOT NULL,
    e_posta       VARCHAR2(100)   UNIQUE NOT NULL,
    kayit_tarihi  DATE            DEFAULT SYSDATE
);

INSERT INTO UYELER (uye_id, ad, soyad, e_posta, kayit_tarihi) VALUES (201, 'Ayse', 'Yilmaz', 'ayse.yilmaz@email.com', TO_DATE('2023-01-15', 'YYYY-MM-DD'));
INSERT INTO UYELER (uye_id, ad, soyad, e_posta, kayit_tarihi) VALUES (202, 'Mehmet', 'Demir', 'mehmet.demir@email.com', TO_DATE('2023-02-20', 'YYYY-MM-DD'));
INSERT INTO UYELER (uye_id, ad, soyad, e_posta, kayit_tarihi) VALUES (203, 'Zeynep', 'Kaya', 'zeynep.kaya@email.com', TO_DATE('2023-03-10', 'YYYY-MM-DD'));
INSERT INTO UYELER (uye_id, ad, soyad, e_posta, kayit_tarihi) VALUES (204, 'Ali', 'Can', 'ali.can@email.com', TO_DATE('2023-04-05', 'YYYY-MM-DD'));
INSERT INTO UYELER (uye_id, ad, soyad, e_posta, kayit_tarihi) VALUES (205, 'Elif', 'Aksoy', 'elif.aksoy@email.com', TO_DATE('2023-05-12', 'YYYY-MM-DD'));
INSERT INTO UYELER (uye_id, ad, soyad, e_posta, kayit_tarihi) VALUES (206, 'Burak', 'Ozkan', 'burak.ozkan@email.com', TO_DATE('2023-06-18', 'YYYY-MM-DD'));
INSERT INTO UYELER (uye_id, ad, soyad, e_posta, kayit_tarihi) VALUES (207, 'Cansu', 'Tekin', 'cansu.tekin@email.com', TO_DATE('2023-07-01', 'YYYY-MM-DD'));
INSERT INTO UYELER (uye_id, ad, soyad, e_posta, kayit_tarihi) VALUES (208, 'Deniz', 'Yildirim', 'deniz.yildirim@email.com', TO_DATE('2023-08-03', 'YYYY-MM-DD'));
INSERT INTO UYELER (uye_id, ad, soyad, e_posta, kayit_tarihi) VALUES (209, 'Emre', 'Arslan', 'emre.arslan@email.com', TO_DATE('2023-09-07', 'YYYY-MM-DD'));
INSERT INTO UYELER (uye_id, ad, soyad, e_posta, kayit_tarihi) VALUES (210, 'Fatma', 'Gul', 'fatma.gul@email.com', TO_DATE('2023-10-11', 'YYYY-MM-DD'));
INSERT INTO UYELER (uye_id, ad, soyad, e_posta, kayit_tarihi) VALUES (211, 'Gokhan', 'Ersoy', 'gokhan.ersoy@email.com', TO_DATE('2023-11-02', 'YYYY-MM-DD'));
INSERT INTO UYELER (uye_id, ad, soyad, e_posta, kayit_tarihi) VALUES (212, 'Hande', 'Yasar', 'hande.yasar@email.com', TO_DATE('2023-12-08', 'YYYY-MM-DD'));
INSERT INTO UYELER (uye_id, ad, soyad, e_posta, kayit_tarihi) VALUES (213, 'Ibrahim', 'Koc', 'ibrahim.koc@email.com', TO_DATE('2024-01-01', 'YYYY-MM-DD'));
INSERT INTO UYELER (uye_id, ad, soyad, e_posta, kayit_tarihi) VALUES (214, 'Jale', 'Demirel', 'jale.demirel@email.com', TO_DATE('2024-02-14', 'YYYY-MM-DD'));
INSERT INTO UYELER (uye_id, ad, soyad, e_posta, kayit_tarihi) VALUES (215, 'Kemal', 'Ozturk', 'kemal.ozturk@email.com', TO_DATE('2024-03-22', 'YYYY-MM-DD'));
COMMIT;

/*YAZARLAR tablosundan ad, soyad, dogum tarihini getirtme */
SELECT ad, soyad, dogum_tarihi
FROM YAZARLAR;

/*1900 yılından sonra doğan yazarları isimlendirmesine göre göstertme*/
SELECT ad, soyad, dogum_tarihi
FROM YAZARLAR
WHERE dogum_tarihi > TO_DATE('1900-01-01', 'YYYY-MM-DD')
ORDER BY soyad DESC;

/*ismi "Harry Potter" ile başlayan kitapları göstertme*/
SELECT baslik, yayim_yili
FROM KITAPLAR
WHERE baslik LIKE 'Harry Potter%';

/*Yazarların Adını ve Soyadını Büyük Harfle Birleştirme*/
SELECT UPPER(ad) || ' ' || UPPER(soyad) AS yazar_tam_ad
FROM YAZARLAR;

/*Kitap Başlıklarının Uzunluğunu Gösterme*/
SELECT baslik, LENGTH(baslik) AS baslik_uzunlugu
FROM KITAPLAR
WHERE LENGTH(baslik) > 20;

/*Üyelerin Kayıt Tarihini Belirli Bir Formatla Gösterme*/
SELECT ad, soyad, TO_CHAR(kayit_tarihi, 'DD.MM.YYYY HH24:MI:SS') AS formatli_kayit_tarihi
FROM UYELER;

/*Her Yazarın Kaç Kitabı Olduğunu Gösterme*/
SELECT y.ad, y.soyad, COUNT(k.kitap_id) AS kitap_sayisi
FROM YAZARLAR y
JOIN KITAPLAR k ON y.yazar_id = k.yazar_id
GROUP BY y.ad, y.soyad
ORDER BY kitap_sayisi DESC;

/*Ortalamadan Daha Uzun Başlıklı Kitabı Olan Yazarları Gösterme*/
SELECT y.ad, y.soyad, AVG(LENGTH(k.baslik)) AS ortalama_baslik_uzunlugu
FROM YAZARLAR y
JOIN KITAPLAR k ON y.yazar_id = k.yazar_id
GROUP BY y.ad, y.soyad
HAVING AVG(LENGTH(k.baslik)) > (SELECT AVG(LENGTH(baslik)) FROM KITAPLAR);

/*Tüm Kitapları Yazar Bilgileriyle Birlikte Getirme*/
SELECT k.baslik, y.ad, y.soyad
FROM KITAPLAR k
INNER JOIN YAZARLAR y ON k.yazar_id = y.yazar_id;

/* Tüm Yazarları ve Yazmadığı Kitapları da Gösterme*/
SELECT y.ad, y.soyad, k.baslik
FROM YAZARLAR y
LEFT JOIN KITAPLAR k ON y.yazar_id = k.yazar_id;

/*Ortalama Kitap Yayım Yılından Daha Eski Kitapları Bulma*/
SELECT baslik, yayim_yili
FROM KITAPLAR
WHERE yayim_yili < (SELECT AVG(yayim_yili) FROM KITAPLAR);

/*Hiç Kitabı Olmayan Yazarları Bulma*/
SELECT ad, soyad
FROM YAZARLAR
WHERE yazar_id NOT IN (SELECT yazar_id FROM KITAPLAR);

/*Kitap Sayısı 3'ten Fazla Olan Yazarları Bulma */
SELECT y.ad, y.soyad, yazar_kitap_sayisi.kitap_sayisi
FROM YAZARLAR y
JOIN (
    SELECT yazar_id, COUNT(kitap_id) AS kitap_sayisi
    FROM KITAPLAR
    GROUP BY yazar_id
    HAVING COUNT(kitap_id) > 3
) yazar_kitap_sayisi ON y.yazar_id = yazar_kitap_sayisi.yazar_id;

/*Yazarların Adı ve Üyelerin Adını Tek Bir Listede Gösterme*/
SELECT ad FROM YAZARLAR
UNION ALL
SELECT ad FROM UYELER;

/*En Çok Kitabı Olan İlk 5 Yazarı Bulma*/
WITH YazarKitapSayisi AS (
    SELECT
        y.ad,
        y.soyad,
        COUNT(k.kitap_id) AS kitap_sayisi
    FROM YAZARLAR y
    JOIN KITAPLAR k ON y.yazar_id = k.yazar_id
    GROUP BY y.ad, y.soyad
)
SELECT ad, soyad, kitap_sayisi
FROM YazarKitapSayisi
ORDER BY kitap_sayisi DESC
FETCH FIRST 5 ROWS ONLY;

/*Her Yazarın Kitaplarını Yayım Yılına Göre Sıralayarak Numara Verme*/
SELECT
    y.ad,
    y.soyad,
    k.baslik,
    k.yayim_yili,
    ROW_NUMBER() OVER (PARTITION BY y.yazar_id ORDER BY k.yayim_yili ASC) AS yazar_kitap_sira_no
FROM YAZARLAR y
JOIN KITAPLAR k ON y.yazar_id = k.yazar_id;

/*En Son Katılan 3 Üyeyi Bulma*/
SELECT
    ad,
    soyad,
    kayit_tarihi
FROM (
    SELECT
        ad,
        soyad,
        kayit_tarihi,
        ROW_NUMBER() OVER (ORDER BY kayit_tarihi DESC) AS sira_no
    FROM UYELER
)
WHERE sira_no <= 3;

/*Doğum Tarihi Bilgisi Olmayan Yazarlar İçin 'Bilinmiyor' Yazdırma*/
SELECT ad, soyad, NVL(TO_CHAR(dogum_tarihi, 'YYYY-MM-DD'), 'Bilinmiyor') AS dogum_tarihi_bilgisi
FROM YAZARLAR;

/*Yayım Yılına Göre Kitapları Kategorileştirerek Gösterme*/
SELECT
    baslik,
    yayim_yili,
    DECODE(TRUE,
        yayim_yili < 1900, 'Antik',
        yayim_yili BETWEEN 1900 AND 1950, 'Klasik',
        yayim_yili > 1950, 'Modern',
        'Bilinmiyor'
    ) AS donem
FROM KITAPLAR;

/* Güncel Tarihi DUAL Tablosu ile Gösterme*/
SELECT SYSDATE FROM DUAL;
