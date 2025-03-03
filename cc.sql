SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

DROP SCHEMA IF EXISTS cc;
CREATE SCHEMA cc;
USE cc;

CREATE TABLE city (
  city_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  city VARCHAR(50) NOT NULL,
  country_id INT UNSIGNED NOT NULL,
  last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY  (city_id),
  KEY idx_fk_country_id (country_id),
  CONSTRAINT `fk_city_country` FOREIGN KEY (country_id) REFERENCES country (country_id) ON DELETE RESTRICT ON UPDATE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE country (
  country_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  country VARCHAR(50) NOT NULL,
  last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY  (country_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

Insert into country
 (`country_id`,`country`,`last_update`)
Values
('1','Afghanistan','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('2','Algeria','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('3','American Samoa','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('4','Angola','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('5','Anguilla','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('6','Argentina','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('7','Armenia','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('8','Australia','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('9','Austria','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('10','Azerbaijan','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('11','Bahrain','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('12','Bangladesh','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('13','Belarus','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('14','Bolivia','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('15','Brazil','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('16','Brunei','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('17','Bulgaria','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('18','Cambodia','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('19','Cameroon','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('20','Canada','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('21','Chad','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('22','Chile','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('23','China','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('24','Colombia','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('25','Congo, The Democratic Republic of the','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('26','Czech Republic','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('27','Dominican Republic','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('28','Ecuador','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('29','Egypt','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('30','Estonia','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('31','Ethiopia','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('32','Faroe Islands','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('33','Finland','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('34','France','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('35','French Guiana','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('36','French Polynesia','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('37','Gambia','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('38','Germany','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('39','Greece','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('40','Greenland','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('41','Holy See (Vatican City State)','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('42','Hong Kong','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('43','Hungary','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('44','India','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('45','Indonesia','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('46','Iran','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('47','Iraq','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('48','Israel','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('49','Italy','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('50','Japan','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('51','Kazakstan','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('52','Kenya','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('53','Kuwait','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('54','Latvia','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('55','Liechtenstein','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('56','Lithuania','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('57','Madagascar','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('58','Malawi','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('59','Malaysia','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('60','Mexico','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('61','Moldova','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('62','Morocco','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('63','Mozambique','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('64','Myanmar','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('65','Nauru','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('66','Nepal','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('67','Netherlands','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('68','New Zealand','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('69','Nigeria','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('70','North Korea','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('71','Oman','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('72','Pakistan','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('73','Paraguay','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('74','Peru','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('75','Philippines','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('76','Poland','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('77','Puerto Rico','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('78','Romania','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('79','Runion','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('80','Russian Federation','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('81','Saint Vincent and the Grenadines','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('82','Saudi Arabia','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('83','Senegal','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('84','Slovakia','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('85','South Africa','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('86','South Korea','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('87','Spain','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('88','Sri Lanka','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('89','Sudan','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('90','Sweden','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('91','Switzerland','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('92','Taiwan','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('93','Tanzania','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('94','Thailand','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('95','Tonga','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('96','Tunisia','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('97','Turkey','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('98','Turkmenistan','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('99','Tuvalu','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('100','Ukraine','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('101','United Arab Emirates','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('102','United Kingdom','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('103','United States','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('104','Venezuela','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('105','Vietnam','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('106','Virgin Islands, U.S.','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('107','Yemen','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('108','Yugoslavia','2006-02-15 04:44:00.000')
;
Insert into country
 (`country_id`,`country`,`last_update`)
Values
('109','Zambia','2006-02-15 04:44:00.000')
;

Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('1','A Corua (La Corua)','87','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('2','Abha','82','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('3','Abu Dhabi','101','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('4','Acua','60','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('5','Adana','97','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('6','Addis Abeba','31','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('7','Aden','107','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('8','Adoni','44','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('9','Ahmadnagar','44','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('10','Akishima','50','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('11','Akron','103','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('12','al-Ayn','101','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('13','al-Hawiya','82','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('14','al-Manama','11','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('15','al-Qadarif','89','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('16','al-Qatif','82','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('17','Alessandria','49','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('18','Allappuzha (Alleppey)','44','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('19','Allende','60','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('20','Almirante Brown','6','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('21','Alvorada','15','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('22','Ambattur','44','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('23','Amersfoort','67','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('24','Amroha','44','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('25','Angra dos Reis','15','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('26','Anpolis','15','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('27','Antofagasta','22','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('28','Aparecida de Goinia','15','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('29','Apeldoorn','67','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('30','Araatuba','15','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('31','Arak','46','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('32','Arecibo','77','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('33','Arlington','103','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('34','Ashdod','48','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('35','Ashgabat','98','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('36','Ashqelon','48','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('37','Asuncin','73','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('38','Athenai','39','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('39','Atinsk','80','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('40','Atlixco','60','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('41','Augusta-Richmond County','103','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('42','Aurora','103','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('43','Avellaneda','6','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('44','Bag','15','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('45','Baha Blanca','6','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('46','Baicheng','23','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('47','Baiyin','23','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('48','Baku','10','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('49','Balaiha','80','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('50','Balikesir','97','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('51','Balurghat','44','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('52','Bamenda','19','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('53','Bandar Seri Begawan','16','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('54','Banjul','37','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('55','Barcelona','104','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('56','Basel','91','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('57','Bat Yam','48','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('58','Batman','97','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('59','Batna','2','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('60','Battambang','18','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('61','Baybay','75','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('62','Bayugan','75','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('63','Bchar','2','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('64','Beira','63','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('65','Bellevue','103','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('66','Belm','15','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('67','Benguela','4','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('68','Beni-Mellal','62','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('69','Benin City','69','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('70','Bergamo','49','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('71','Berhampore (Baharampur)','44','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('72','Bern','91','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('73','Bhavnagar','44','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('74','Bhilwara','44','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('75','Bhimavaram','44','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('76','Bhopal','44','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('77','Bhusawal','44','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('78','Bijapur','44','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('79','Bilbays','29','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('80','Binzhou','23','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('81','Birgunj','66','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('82','Bislig','75','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('83','Blumenau','15','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('84','Boa Vista','15','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('85','Boksburg','85','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('86','Botosani','78','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('87','Botshabelo','85','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('88','Bradford','102','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('89','Braslia','15','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('90','Bratislava','84','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('91','Brescia','49','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('92','Brest','34','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('93','Brindisi','49','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('94','Brockton','103','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('95','Bucuresti','78','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('96','Buenaventura','24','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('97','Bydgoszcz','76','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('98','Cabuyao','75','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('99','Callao','74','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('100','Cam Ranh','105','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('101','Cape Coral','103','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('102','Caracas','104','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('103','Carmen','60','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('104','Cavite','75','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('105','Cayenne','35','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('106','Celaya','60','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('107','Chandrapur','44','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('108','Changhwa','92','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('109','Changzhou','23','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('110','Chapra','44','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('111','Charlotte Amalie','106','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('112','Chatsworth','85','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('113','Cheju','86','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('114','Chiayi','92','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('115','Chisinau','61','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('116','Chungho','92','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('117','Cianjur','45','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('118','Ciomas','45','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('119','Ciparay','45','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('120','Citrus Heights','103','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('121','Citt del Vaticano','41','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('122','Ciudad del Este','73','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('123','Clarksville','103','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('124','Coacalco de Berriozbal','60','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('125','Coatzacoalcos','60','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('126','Compton','103','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('127','Coquimbo','22','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('128','Crdoba','6','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('129','Cuauhtmoc','60','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('130','Cuautla','60','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('131','Cuernavaca','60','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('132','Cuman','104','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('133','Czestochowa','76','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('134','Dadu','72','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('135','Dallas','103','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('136','Datong','23','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('137','Daugavpils','54','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('138','Davao','75','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('139','Daxian','23','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('140','Dayton','103','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('141','Deba Habe','69','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('142','Denizli','97','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('143','Dhaka','12','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('144','Dhule (Dhulia)','44','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('145','Dongying','23','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('146','Donostia-San Sebastin','87','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('147','Dos Quebradas','24','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('148','Duisburg','38','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('149','Dundee','102','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('150','Dzerzinsk','80','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('151','Ede','67','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('152','Effon-Alaiye','69','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('153','El Alto','14','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('154','El Fuerte','60','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('155','El Monte','103','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('156','Elista','80','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('157','Emeishan','23','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('158','Emmen','67','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('159','Enshi','23','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('160','Erlangen','38','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('161','Escobar','6','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('162','Esfahan','46','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('163','Eskisehir','97','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('164','Etawah','44','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('165','Ezeiza','6','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('166','Ezhou','23','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('167','Faaa','36','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('168','Fengshan','92','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('169','Firozabad','44','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('170','Florencia','24','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('171','Fontana','103','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('172','Fukuyama','50','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('173','Funafuti','99','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('174','Fuyu','23','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('175','Fuzhou','23','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('176','Gandhinagar','44','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('177','Garden Grove','103','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('178','Garland','103','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('179','Gatineau','20','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('180','Gaziantep','97','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('181','Gijn','87','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('182','Gingoog','75','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('183','Goinia','15','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('184','Gorontalo','45','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('185','Grand Prairie','103','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('186','Graz','9','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('187','Greensboro','103','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('188','Guadalajara','60','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('189','Guaruj','15','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('190','guas Lindas de Gois','15','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('191','Gulbarga','44','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('192','Hagonoy','75','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('193','Haining','23','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('194','Haiphong','105','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('195','Haldia','44','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('196','Halifax','20','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('197','Halisahar','44','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('198','Halle/Saale','38','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('199','Hami','23','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('200','Hamilton','68','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('201','Hanoi','105','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('202','Hidalgo','60','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('203','Higashiosaka','50','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('204','Hino','50','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('205','Hiroshima','50','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('206','Hodeida','107','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('207','Hohhot','23','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('208','Hoshiarpur','44','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('209','Hsichuh','92','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('210','Huaian','23','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('211','Hubli-Dharwad','44','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('212','Huejutla de Reyes','60','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('213','Huixquilucan','60','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('214','Hunuco','74','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('215','Ibirit','15','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('216','Idfu','29','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('217','Ife','69','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('218','Ikerre','69','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('219','Iligan','75','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('220','Ilorin','69','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('221','Imus','75','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('222','Inegl','97','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('223','Ipoh','59','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('224','Isesaki','50','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('225','Ivanovo','80','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('226','Iwaki','50','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('227','Iwakuni','50','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('228','Iwatsuki','50','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('229','Izumisano','50','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('230','Jaffna','88','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('231','Jaipur','44','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('232','Jakarta','45','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('233','Jalib al-Shuyukh','53','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('234','Jamalpur','12','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('235','Jaroslavl','80','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('236','Jastrzebie-Zdrj','76','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('237','Jedda','82','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('238','Jelets','80','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('239','Jhansi','44','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('240','Jinchang','23','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('241','Jining','23','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('242','Jinzhou','23','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('243','Jodhpur','44','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('244','Johannesburg','85','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('245','Joliet','103','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('246','Jos Azueta','60','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('247','Juazeiro do Norte','15','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('248','Juiz de Fora','15','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('249','Junan','23','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('250','Jurez','60','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('251','Kabul','1','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('252','Kaduna','69','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('253','Kakamigahara','50','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('254','Kaliningrad','80','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('255','Kalisz','76','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('256','Kamakura','50','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('257','Kamarhati','44','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('258','Kamjanets-Podilskyi','100','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('259','Kamyin','80','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('260','Kanazawa','50','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('261','Kanchrapara','44','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('262','Kansas City','103','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('263','Karnal','44','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('264','Katihar','44','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('265','Kermanshah','46','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('266','Kilis','97','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('267','Kimberley','85','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('268','Kimchon','86','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('269','Kingstown','81','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('270','Kirovo-Tepetsk','80','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('271','Kisumu','52','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('272','Kitwe','109','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('273','Klerksdorp','85','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('274','Kolpino','80','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('275','Konotop','100','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('276','Koriyama','50','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('277','Korla','23','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('278','Korolev','80','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('279','Kowloon and New Kowloon','42','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('280','Kragujevac','108','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('281','Ktahya','97','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('282','Kuching','59','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('283','Kumbakonam','44','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('284','Kurashiki','50','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('285','Kurgan','80','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('286','Kursk','80','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('287','Kuwana','50','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('288','La Paz','60','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('289','La Plata','6','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('290','La Romana','27','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('291','Laiwu','23','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('292','Lancaster','103','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('293','Laohekou','23','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('294','Lapu-Lapu','75','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('295','Laredo','103','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('296','Lausanne','91','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('297','Le Mans','34','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('298','Lengshuijiang','23','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('299','Leshan','23','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('300','Lethbridge','20','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('301','Lhokseumawe','45','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('302','Liaocheng','23','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('303','Liepaja','54','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('304','Lilongwe','58','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('305','Lima','74','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('306','Lincoln','103','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('307','Linz','9','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('308','Lipetsk','80','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('309','Livorno','49','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('310','Ljubertsy','80','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('311','Loja','28','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('312','London','102','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('313','London','20','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('314','Lublin','76','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('315','Lubumbashi','25','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('316','Lungtan','92','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('317','Luzinia','15','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('318','Madiun','45','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('319','Mahajanga','57','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('320','Maikop','80','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('321','Malm','90','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('322','Manchester','103','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('323','Mandaluyong','75','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('324','Mandi Bahauddin','72','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('325','Mannheim','38','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('326','Maracabo','104','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('327','Mardan','72','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('328','Maring','15','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('329','Masqat','71','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('330','Matamoros','60','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('331','Matsue','50','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('332','Meixian','23','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('333','Memphis','103','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('334','Merlo','6','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('335','Mexicali','60','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('336','Miraj','44','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('337','Mit Ghamr','29','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('338','Miyakonojo','50','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('339','Mogiljov','13','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('340','Molodetno','13','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('341','Monclova','60','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('342','Monywa','64','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('343','Moscow','80','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('344','Mosul','47','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('345','Mukateve','100','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('346','Munger (Monghyr)','44','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('347','Mwanza','93','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('348','Mwene-Ditu','25','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('349','Myingyan','64','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('350','Mysore','44','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('351','Naala-Porto','63','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('352','Nabereznyje Telny','80','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('353','Nador','62','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('354','Nagaon','44','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('355','Nagareyama','50','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('356','Najafabad','46','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('357','Naju','86','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('358','Nakhon Sawan','94','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('359','Nam Dinh','105','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('360','Namibe','4','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('361','Nantou','92','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('362','Nanyang','23','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('363','NDjamna','21','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('364','Newcastle','85','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('365','Nezahualcyotl','60','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('366','Nha Trang','105','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('367','Niznekamsk','80','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('368','Novi Sad','108','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('369','Novoterkassk','80','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('370','Nukualofa','95','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('371','Nuuk','40','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('372','Nyeri','52','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('373','Ocumare del Tuy','104','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('374','Ogbomosho','69','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('375','Okara','72','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('376','Okayama','50','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('377','Okinawa','50','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('378','Olomouc','26','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('379','Omdurman','89','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('380','Omiya','50','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('381','Ondo','69','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('382','Onomichi','50','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('383','Oshawa','20','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('384','Osmaniye','97','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('385','ostka','100','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('386','Otsu','50','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('387','Oulu','33','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('388','Ourense (Orense)','87','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('389','Owo','69','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('390','Oyo','69','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('391','Ozamis','75','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('392','Paarl','85','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('393','Pachuca de Soto','60','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('394','Pak Kret','94','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('395','Palghat (Palakkad)','44','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('396','Pangkal Pinang','45','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('397','Papeete','36','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('398','Parbhani','44','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('399','Pathankot','44','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('400','Patiala','44','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('401','Patras','39','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('402','Pavlodar','51','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('403','Pemalang','45','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('404','Peoria','103','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('405','Pereira','24','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('406','Phnom Penh','18','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('407','Pingxiang','23','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('408','Pjatigorsk','80','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('409','Plock','76','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('410','Po','15','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('411','Ponce','77','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('412','Pontianak','45','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('413','Poos de Caldas','15','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('414','Portoviejo','28','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('415','Probolinggo','45','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('416','Pudukkottai','44','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('417','Pune','44','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('418','Purnea (Purnia)','44','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('419','Purwakarta','45','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('420','Pyongyang','70','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('421','Qalyub','29','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('422','Qinhuangdao','23','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('423','Qomsheh','46','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('424','Quilmes','6','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('425','Rae Bareli','44','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('426','Rajkot','44','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('427','Rampur','44','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('428','Rancagua','22','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('429','Ranchi','44','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('430','Richmond Hill','20','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('431','Rio Claro','15','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('432','Rizhao','23','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('433','Roanoke','103','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('434','Robamba','28','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('435','Rockford','103','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('436','Ruse','17','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('437','Rustenburg','85','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('438','s-Hertogenbosch','67','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('439','Saarbrcken','38','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('440','Sagamihara','50','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('441','Saint Louis','103','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('442','Saint-Denis','79','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('443','Sal','62','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('444','Salala','71','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('445','Salamanca','60','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('446','Salinas','103','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('447','Salzburg','9','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('448','Sambhal','44','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('449','San Bernardino','103','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('450','San Felipe de Puerto Plata','27','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('451','San Felipe del Progreso','60','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('452','San Juan Bautista Tuxtepec','60','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('453','San Lorenzo','73','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('454','San Miguel de Tucumn','6','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('455','Sanaa','107','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('456','Santa Brbara dOeste','15','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('457','Santa F','6','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('458','Santa Rosa','75','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('459','Santiago de Compostela','87','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('460','Santiago de los Caballeros','27','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('461','Santo Andr','15','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('462','Sanya','23','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('463','Sasebo','50','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('464','Satna','44','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('465','Sawhaj','29','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('466','Serpuhov','80','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('467','Shahr-e Kord','46','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('468','Shanwei','23','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('469','Shaoguan','23','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('470','Sharja','101','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('471','Shenzhen','23','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('472','Shikarpur','72','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('473','Shimoga','44','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('474','Shimonoseki','50','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('475','Shivapuri','44','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('476','Shubra al-Khayma','29','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('477','Siegen','38','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('478','Siliguri (Shiliguri)','44','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('479','Simferopol','100','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('480','Sincelejo','24','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('481','Sirjan','46','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('482','Sivas','97','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('483','Skikda','2','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('484','Smolensk','80','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('485','So Bernardo do Campo','15','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('486','So Leopoldo','15','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('487','Sogamoso','24','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('488','Sokoto','69','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('489','Songkhla','94','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('490','Sorocaba','15','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('491','Soshanguve','85','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('492','Sousse','96','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('493','South Hill','5','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('494','Southampton','102','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('495','Southend-on-Sea','102','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('496','Southport','102','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('497','Springs','85','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('498','Stara Zagora','17','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('499','Sterling Heights','103','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('500','Stockport','102','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('501','Sucre','14','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('502','Suihua','23','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('503','Sullana','74','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('504','Sultanbeyli','97','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('505','Sumqayit','10','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('506','Sumy','100','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('507','Sungai Petani','59','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('508','Sunnyvale','103','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('509','Surakarta','45','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('510','Syktyvkar','80','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('511','Syrakusa','49','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('512','Szkesfehrvr','43','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('513','Tabora','93','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('514','Tabriz','46','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('515','Tabuk','82','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('516','Tafuna','3','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('517','Taguig','75','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('518','Taizz','107','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('519','Talavera','75','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('520','Tallahassee','103','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('521','Tama','50','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('522','Tambaram','44','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('523','Tanauan','75','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('524','Tandil','6','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('525','Tangail','12','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('526','Tanshui','92','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('527','Tanza','75','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('528','Tarlac','75','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('529','Tarsus','97','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('530','Tartu','30','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('531','Teboksary','80','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('532','Tegal','45','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('533','Tel Aviv-Jaffa','48','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('534','Tete','63','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('535','Tianjin','23','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('536','Tiefa','23','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('537','Tieli','23','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('538','Tokat','97','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('539','Tonghae','86','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('540','Tongliao','23','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('541','Torren','60','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('542','Touliu','92','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('543','Toulon','34','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('544','Toulouse','34','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('545','Trshavn','32','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('546','Tsaotun','92','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('547','Tsuyama','50','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('548','Tuguegarao','75','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('549','Tychy','76','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('550','Udaipur','44','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('551','Udine','49','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('552','Ueda','50','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('553','Uijongbu','86','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('554','Uluberia','44','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('555','Urawa','50','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('556','Uruapan','60','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('557','Usak','97','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('558','Usolje-Sibirskoje','80','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('559','Uttarpara-Kotrung','44','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('560','Vaduz','55','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('561','Valencia','104','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('562','Valle de la Pascua','104','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('563','Valle de Santiago','60','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('564','Valparai','44','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('565','Vancouver','20','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('566','Varanasi (Benares)','44','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('567','Vicente Lpez','6','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('568','Vijayawada','44','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('569','Vila Velha','15','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('570','Vilnius','56','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('571','Vinh','105','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('572','Vitria de Santo Anto','15','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('573','Warren','103','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('574','Weifang','23','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('575','Witten','38','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('576','Woodridge','8','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('577','Wroclaw','76','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('578','Xiangfan','23','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('579','Xiangtan','23','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('580','Xintai','23','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('581','Xinxiang','23','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('582','Yamuna Nagar','44','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('583','Yangor','65','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('584','Yantai','23','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('585','Yaound','19','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('586','Yerevan','7','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('587','Yinchuan','23','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('588','Yingkou','23','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('589','York','102','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('590','Yuncheng','23','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('591','Yuzhou','23','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('592','Zalantun','23','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('593','Zanzibar','93','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('594','Zaoyang','23','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('595','Zapopan','60','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('596','Zaria','69','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('597','Zeleznogorsk','80','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('598','Zhezqazghan','51','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('599','Zhoushan','23','2006-02-15 04:45:25.000')
;
Insert into city
 (`city_id`,`city`,`country_id`,`last_update`)
Values
('600','Ziguinchor','83','2006-02-15 04:45:25.000')
;
-- End of Script