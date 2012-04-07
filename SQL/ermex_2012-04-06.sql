# ************************************************************
# Sequel Pro SQL dump
# Version 3348
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.1.54)
# Database: ermex
# Generation Time: 2012-04-06 21:24:54 -0500
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
  `device` varchar(15) DEFAULT NULL,
  `inputdatetime` datetime DEFAULT NULL,
  `confirm1` int(11) DEFAULT NULL,
  `confirm1datetime` datetime DEFAULT NULL,
  `confirm2` int(11) DEFAULT NULL,
  `confirm2datetime` datetime DEFAULT NULL,
  `confirm3` int(11) DEFAULT NULL,
  `confirm3datetime` datetime DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table geocode_cache
# ------------------------------------------------------------

DROP TABLE IF EXISTS `geocode_cache`;

CREATE TABLE `geocode_cache` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lng` double NOT NULL,
  `lat` double NOT NULL,
  `query` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

LOCK TABLES `geocode_cache` WRITE;
/*!40000 ALTER TABLE `geocode_cache` DISABLE KEYS */;

INSERT INTO `geocode_cache` (`id`, `lng`, `lat`, `query`)
VALUES
	(1,-96.9348441,18.9066734,'violeta 121, córdoba, veracruz, mexico'),
	(2,-99.1807111,19.3687917,'insurgentes sur 1400, méxico , distrito federal, mexico'),
	(3,-96.9327021,18.8917161,'calle 6 y avenida 3, colonia centro, córdoba, veracruz, méxico'),
	(4,-96.9347222,18.8941667,'calle 6 esquina avenida 3, colonia centro, córdoba, veracruz, méxico'),
	(5,-96.9368263,18.8966384,'calle 6 no. 8, colonia centro, córdoba, veracruz, méxico');

/*!40000 ALTER TABLE `geocode_cache` ENABLE KEYS */;
UNLOCK TABLES;


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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`iduser`, `email`, `password`, `nick`, `sourceip`, `sourceinfo`, `status`, `type`, `avatar`)
VALUES
	(1,'carlos@metistd.com','1a1dc91c907325c69271ddf0c944bc72','carlos','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.54.16 (KHTML, like Gecko) Version/5.1.4 Safari/534.54.16',1,0,NULL),
	(2,'Olmos@Mail.com','1a1dc91c907325c69271ddf0c944bc72','Carlos','192.168.2.9','Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; es-es) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5',1,0,NULL);

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
