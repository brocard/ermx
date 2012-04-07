# ************************************************************
# Sequel Pro SQL dump
# Version 3348
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.1.54)
# Database: ermex
# Generation Time: 2012-04-07 02:19:03 -0500
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table busquedas
# ------------------------------------------------------------

DROP TABLE IF EXISTS `busquedas`;

CREATE TABLE `busquedas` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sourceinfo` varchar(255) DEFAULT NULL,
  `query` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table comments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `comments`;

CREATE TABLE `comments` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `er` int(11) DEFAULT NULL,
  `user` int(11) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table er
# ------------------------------------------------------------

DROP TABLE IF EXISTS `er`;

CREATE TABLE `er` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `fulladdr` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `georefaddr` varchar(255) DEFAULT NULL,
  `type` varchar(15) DEFAULT NULL,
  `picture` varchar(100) DEFAULT NULL,
  `author` int(11) DEFAULT NULL,
  `device` varchar(255) DEFAULT NULL,
  `inputdatetime` datetime DEFAULT NULL,
  `confirm1` int(11) DEFAULT NULL,
  `confirm1datetime` datetime DEFAULT NULL,
  `confirm2` int(11) DEFAULT NULL,
  `confirm2datetime` datetime DEFAULT NULL,
  `confirm3` int(11) DEFAULT NULL,
  `confirm3datetime` datetime DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

LOCK TABLES `er` WRITE;
/*!40000 ALTER TABLE `er` DISABLE KEYS */;

INSERT INTO `er` (`id`, `name`, `lat`, `lon`, `fulladdr`, `description`, `georefaddr`, `type`, `picture`, `author`, `device`, `inputdatetime`, `confirm1`, `confirm1datetime`, `confirm2`, `confirm2datetime`, `confirm3`, `confirm3datetime`, `status`)
VALUES
	(1,'Nombre',18.8563434,-97.071827,'Jardín, 94346 Orizaba, VER, México','Esta es una prueba.','Jardín, 94346 Orizaba, VER, México','Sanatorio',NULL,1,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.151 Safari/535.19','2012-04-06 23:21:32',NULL,NULL,NULL,NULL,NULL,NULL,0),
	(2,'Nombre',18.8563434,-97.071827,'Jardín, 94346 Orizaba, VER, México','Esta es una prueba.','Jardín, 94346 Orizaba, VER, México','Sanatorio',NULL,1,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.151 Safari/535.19','2012-04-06 23:28:50',NULL,NULL,NULL,NULL,NULL,NULL,0),
	(3,'Casa de suegros',18.879311,-97.111696,'Calle Puebla 4, Puerta del Sol, 94420 Palmira, VER, México','Preguntar por brenda.','Puerta del Sol, 94420 Palmira, VER, México','Otro',NULL,3,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.151 Safari/535.19','2012-04-07 00:00:21',NULL,NULL,NULL,NULL,NULL,NULL,0),
	(4,'Mi casa',18.8563609,-97.0718099,'Calle Jardín 121, 94346 Orizaba, VER, México','llsflsfsaf','Jardín, 94346 Orizaba, VER, México','ER',NULL,3,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.151 Safari/535.19','2012-04-07 00:09:56',NULL,NULL,NULL,NULL,NULL,NULL,0),
	(5,'Mi casa',18.8563609,-97.0718099,'Calle Jardín 121, 94346 Orizaba, VER, México','llsflsfsaf','Jardín, 94346 Orizaba, VER, México','ER',NULL,3,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.151 Safari/535.19','2012-04-07 00:12:35',NULL,NULL,NULL,NULL,NULL,NULL,0),
	(6,'Mi casa',18.8563609,-97.0718099,'Calle Jardín 121, 94346 Orizaba, VER, México','llsflsfsaf','Jardín, 94346 Orizaba, VER, México','ER',NULL,3,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.151 Safari/535.19','2012-04-07 00:13:09',NULL,NULL,NULL,NULL,NULL,NULL,0),
	(7,'Mi casa',18.8563609,-97.0718099,'Calle Jardín 121, 94346 Orizaba, VER, México','llsflsfsaf','Jardín, 94346 Orizaba, VER, México','ER',NULL,3,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.151 Safari/535.19','2012-04-07 00:13:23',NULL,NULL,NULL,NULL,NULL,NULL,0),
	(8,'Mi casa',18.8563609,-97.0718099,'Calle Jardín 121, 94346 Orizaba, VER, México','llsflsfsaf','Jardín, 94346 Orizaba, VER, México','ER',NULL,3,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.151 Safari/535.19','2012-04-07 00:14:15',NULL,NULL,NULL,NULL,NULL,NULL,0),
	(9,'Mi casa',18.8563609,-97.0718099,'Calle Jardín 121, 94346 Orizaba, VER, México','llsflsfsaf','Jardín, 94346 Orizaba, VER, México','ER',NULL,3,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.151 Safari/535.19','2012-04-07 00:14:44',NULL,NULL,NULL,NULL,NULL,NULL,0),
	(10,'dasfads',18.8563609,-97.0718099,'Jardín, 94346 Orizaba, VER, México','afsfasd','Jardín, 94346 Orizaba, VER, México','ER',NULL,3,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.151 Safari/535.19','2012-04-07 00:25:15',NULL,NULL,NULL,NULL,NULL,NULL,0),
	(11,'en mty',25.6635777,-100.1887268,'Tres Caminos 1er Sector, Guadalupe, NL, México','asfsafsaf','Tres Caminos 1er Sector, Guadalupe, NL, México','ER',NULL,9,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.151 Safari/535.19','2012-04-07 01:48:06',NULL,NULL,NULL,NULL,NULL,NULL,0);

/*!40000 ALTER TABLE `er` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table geocode_cache
# ------------------------------------------------------------

DROP TABLE IF EXISTS `geocode_cache`;

CREATE TABLE `geocode_cache` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lng` double NOT NULL,
  `lat` double NOT NULL,
  `query` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

LOCK TABLES `geocode_cache` WRITE;
/*!40000 ALTER TABLE `geocode_cache` DISABLE KEYS */;

INSERT INTO `geocode_cache` (`id`, `lng`, `lat`, `query`)
VALUES
	(1,-96.9348441,18.9066734,'violeta 121, córdoba, veracruz, mexico'),
	(2,-99.1807111,19.3687917,'insurgentes sur 1400, méxico , distrito federal, mexico'),
	(3,-96.9327021,18.8917161,'calle 6 y avenida 3, colonia centro, córdoba, veracruz, méxico'),
	(4,-96.9347222,18.8941667,'calle 6 esquina avenida 3, colonia centro, córdoba, veracruz, méxico'),
	(5,-96.9368263,18.8966384,'calle 6 no. 8, colonia centro, córdoba, veracruz, méxico'),
	(6,-97.4118239,18.4603502,'calle puebla #4, puerta del sol, mariano escobedo, veracruz'),
	(7,-97.4118239,18.4603502,'c. puebla 4, fraccionamiento puerta del sol, mariano escobedo, veracruz, méxico'),
	(8,-97.1155155,18.8783369,'puerta del sol, mariano escobedo, veracruz'),
	(9,-100.1887268,25.6635777,'violeta 121');

/*!40000 ALTER TABLE `geocode_cache` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table login
# ------------------------------------------------------------

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user` int(11) DEFAULT NULL,
  `logindate` datetime DEFAULT NULL,
  `loginip` varchar(25) DEFAULT NULL,
  `loginsource` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;

INSERT INTO `login` (`id`, `user`, `logindate`, `loginip`, `loginsource`)
VALUES
	(1,3,'2012-04-06 23:59:29','192.168.1.104','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.151 Safari/535.19'),
	(2,3,'2012-04-07 01:06:56','192.168.1.104','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.151 Safari/535.19'),
	(3,9,'2012-04-07 01:44:49','192.168.1.104','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.151 Safari/535.19'),
	(4,9,'2012-04-07 02:13:58','192.168.1.104','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.151 Safari/535.19'),
	(5,1,'2012-04-07 02:16:37','192.168.1.104','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.151 Safari/535.19');

/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table stats
# ------------------------------------------------------------

DROP VIEW IF EXISTS `stats`;

CREATE TABLE `stats` (
   `total_er` BIGINT(21) DEFAULT NULL,
   `total_usr` BIGINT(21) DEFAULT NULL,
   `total_logins` BIGINT(21) DEFAULT NULL
) ENGINE=MyISAM;



# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `iduser` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `nick` varchar(50) DEFAULT NULL,
  `sourceip` varchar(50) DEFAULT NULL,
  `sourceinfo` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `type` int(11) DEFAULT '0',
  `avatar` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`iduser`),
  UNIQUE KEY `emailuser` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`iduser`, `email`, `password`, `nick`, `sourceip`, `sourceinfo`, `status`, `type`, `avatar`)
VALUES
	(1,'carlos@metistd.com','1a1dc91c907325c69271ddf0c944bc72','carlos','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.54.16 (KHTML, like Gecko) Version/5.1.4 Safari/534.54.16',1,0,NULL),
	(9,'olmos.carlos@gmail.com','3c7d32e60d7609bff41b63cd7258a0cf','asfsdfas','192.168.1.104','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.151 Safari/535.19',1,0,NULL);

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;




# Replace placeholder table for stats with correct view syntax
# ------------------------------------------------------------

DROP TABLE `stats`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `stats`
AS select
   (select count(0)
from `er`
where (`er`.`status` < 3)) AS `total_er`,(select count(0) from `users`
where (`users`.`status` < 3)) AS `total_usr`,(select count(0) from `login`) AS `total_logins`;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
