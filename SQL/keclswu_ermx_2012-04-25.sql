-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 25-04-2012 a las 14:46:33
-- Versión del servidor: 5.0.95
-- Versión de PHP: 5.2.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `keclswu_ermx`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `busquedas`
--

CREATE TABLE IF NOT EXISTS `busquedas` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `sourceinfo` varchar(255) default NULL,
  `query` varchar(255) default NULL,
  `date` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `er` int(11) default NULL,
  `user` int(11) default NULL,
  `comment` varchar(255) default NULL,
  `date` datetime default NULL,
  `status` int(11) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `er`
--

CREATE TABLE IF NOT EXISTS `er` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `name` varchar(50) default NULL,
  `lat` double default NULL,
  `lon` double default NULL,
  `fulladdr` varchar(255) default NULL,
  `description` varchar(255) default NULL,
  `georefaddr` varchar(255) default NULL,
  `type` varchar(15) default NULL,
  `picture` varchar(100) default NULL,
  `author` int(11) default NULL,
  `device` varchar(255) default NULL,
  `inputdatetime` datetime default NULL,
  `confirm1` int(11) default NULL,
  `confirm1datetime` datetime default NULL,
  `confirm2` int(11) default NULL,
  `confirm2datetime` datetime default NULL,
  `confirm3` int(11) default NULL,
  `confirm3datetime` datetime default NULL,
  `status` int(11) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=154 ;

--
-- Volcado de datos para la tabla `er`
--

INSERT INTO `er` (`id`, `name`, `lat`, `lon`, `fulladdr`, `description`, `georefaddr`, `type`, `picture`, `author`, `device`, `inputdatetime`, `confirm1`, `confirm1datetime`, `confirm2`, `confirm2datetime`, `confirm3`, `confirm3datetime`, `status`) VALUES
(23, 'Cruz Roja Mexicana', 19.1588191, -96.140122, 'Adolfo López Mateos 518, Miguel Alemán, 92820 Veracruz, Veracruz-Llave, México', 'Cruz Roja Mexicana', 'Adolfo López Mateos 518, Miguel Alemán, 92820 Veracruz, Veracruz-Llave, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(21, 'Cruz Roja', 19.5408726, -96.9315307, 'Ignacio Zaragoza 49, Zona Centro, 92101 Tantoyuca, Veracruz-Llave, México', 'Cruz Roja', 'Ignacio Zaragoza 49, Zona Centro, 92101 Tantoyuca, Veracruz-Llave, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(22, 'Cruz Roja Base Norte', 19.2079775, -96.1523671, 'Independencia, 91891 Veracruz, Veracruz-Llave, México', 'Cruz Roja Base Norte', 'Independencia, 91891 Veracruz, Veracruz-Llave, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(20, 'Cruz Roja Mexicana Delegación Boca del Río', 19.1062297, -96.1052969, 'Miguel Aleman Valdéz 1698, Centro, 94290 Boca del Río, Veracruz-Llave, México', 'Cruz Roja Mexicana Delegación Boca del Río', 'Miguel Aleman Valdéz 1698, Centro, 94290 Boca del Río, Veracruz-Llave, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(19, 'Cruz Roja Mexicana', 19.1666573, -96.133415, 'Salvador Díaz Mirón 1698, Zaragoza, 91918 Veracruz, Veracruz-Llave, México', 'Cruz Roja Mexicana', 'Salvador Díaz Mirón 1698, Zaragoza, 91918 Veracruz, Veracruz-Llave, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(18, 'clinica IMSS 28', 19.383575, -99.165026, 'Gabriel Mancera 917, esq San Borja, Benito Juárez, 03100 Ciudad de México, DF, México', '', 'Insurgentes San Borja, Benito Juárez, 03100 Ciudad de México, DF, México', 'Hospital', NULL, 13, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.152 Safari/535.19', '2012-04-11 06:52:58', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(17, 'Hoospital General Gabriel Mancera, Xola ', 19.39555, -99.161054, 'Nicolas San Juan , 418.  San Borja, Benito Juárez, 03100 Ciudad de México, DF, México', 'tambien es hospital, ', 'Insurgentes San Borja, Benito Juárez, 03100 Ciudad de México, DF, México', 'ER', NULL, 13, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.152 Safari/535.19', '2012-04-11 06:50:52', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(16, 'Prueba', 18.8561707079283, -97.0719421387518, 'Jardín, 94346 Orizaba, VER, México', 'Esta es una prueba', 'Jardín, 94346 Orizaba, VER, México', 'ER', NULL, 11, 'Mozilla/5.0 (iPod; CPU iPhone OS 5_1 like Mac OS X) AppleWebKit/534.46 (KHTML, like Gecko) Version/5.1 Mobile/9B176 Safari/7534.48.3', '2012-04-08 18:24:24', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(15, 'Hospital Concordia', 18.852891085, -97.093930655, 'Norte 24 no 98, esq Oriente 3, La Concordia, Orizaba, VER, México', 'Privado, emergencias y todas las especialidades', 'La Concordia, Ciudad Mendoza, VER, México', 'Hospital', NULL, 1, 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; es-es) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '2012-04-07 08:17:19', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(14, 'Hospital Concordia', 18.852891085, -97.093930655, 'Norte 24 no 98, esq Oriente 3, La Concordia, Ciudad Mendoza, VER, México', 'Privado, emergencias y todas las especialidades', 'La Concordia, Ciudad Mendoza, VER, México', 'Hospital', NULL, 1, 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; es-es) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5', '2012-04-07 08:15:05', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(13, 'IMSS ORIZABA', 18.849477, -97.084766, 'Sur41 y Ote 16, Col Centro, Orizaba, VER, México', 'Hospital General.', 'Centro, Orizaba, VER, México', 'Hospital', NULL, 1, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.151 Safari/535.19', '2012-04-07 01:29:18', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(24, 'Cruz Roja', 19.3699908, -96.3710851, 'Emiliano Zapata 60, Centro, 91080 Ciudad José Cardel, Veracruz-Llave, México', 'Cruz Roja', 'Emiliano Zapata 60, Centro, 91080 Ciudad José Cardel, Veracruz-Llave, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(25, 'Cruz Roja', 18.797127, -96.4039067, 'Miguel Alemán Valdez Sn, Boca delRío Centro, 94290 Boca del Río, Veracruz-Llave, México', 'Cruz Roja', 'Miguel Alemán Valdez Sn, Boca delRío Centro, 94290 Boca del Río, Veracruz-Llave, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(26, 'Delegación Cruz Roja', 19.1939699, -96.1297039, '16 de Septiembre S/N, Centro, 92900 Veracruz, Veracruz-Llave, México', 'Delegación Cruz Roja', '16 de Septiembre S/N, Centro, 92900 Veracruz, Veracruz-Llave, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(27, 'Cruz Roja Delegación Piedras Negras', 18.7999134, -96.0527306, 'Benjamín Franklin 109, Piedras Negras, 95220 Tlalixcoyan, Veracruz-Llave, México', 'Cruz Roja Delegación Piedras Negras', 'Benjamín Franklin 109, Piedras Negras, 95220 Tlalixcoyan, Veracruz-Llave, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(28, 'Cruz Roja Mexicana', 20.678694, -103.3528003, 'Juan Manuel S/N, Centro, 44100 Guadalajara, Jalisco, México', 'Cruz Roja Mexicana', 'Juan Manuel S/N, Centro, 44100 Guadalajara, Jalisco, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(29, 'Cruz Roja', 19.5658096, -99.2431427, 'Calzada San Mateo 10, La Higuera, 52940 Atizapán De Zaragoza, Estado de México, México', 'Cruz Roja', 'Calzada San Mateo 10, La Higuera, 52940 Atizapán De Zaragoza, Estado de México, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(30, 'Cruz Roja', 18.8915668, -96.9329333, 'Centro, Córdoba, Veracruz-Llave, México', 'Cruz Roja', 'Centro, Córdoba, Veracruz-Llave, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(31, 'Cruz Roja', 19.1223754, -98.7667481, 'Fray Martin de Valencia 37, Centro, 56900 Amecameca, Estado de México, México', 'Cruz Roja', 'Fray Martin de Valencia 37, Centro, 56900 Amecameca, Estado de México, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(32, 'Cruz Roja Mexicana', 20.33947, -102.0226576, '95, Pena, 59300 La Piedad de Cavadas, Michoacán de Ocampo, México', 'Cruz Roja Mexicana', '95, Pena, 59300 La Piedad de Cavadas, Michoacán de Ocampo, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(33, 'Cruz Roja Mexicana', 19.4383066, -99.20936, 'Avenida Ejército Nacional 1032, Polanco, Miguel Hidalgo, 11510 Distrito Federal, México', 'Cruz Roja Mexicana', 'Avenida Ejército Nacional 1032, Polanco, Miguel Hidalgo, 11510 Distrito Federal, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(34, 'Cruz Roja', 19.5967299, -99.0468629, 'Insurgentes, San Cristóbal, Ecatepec de Morelos, Estado de México, México', 'Cruz Roja', 'Insurgentes, San Cristóbal, Ecatepec de Morelos, Estado de México, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(35, 'Cruz Roja', 20.1153012, -98.7458874, 'Pachuca de Soto, Hidalgo, México', 'Cruz Roja', 'Pachuca de Soto, Hidalgo, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(36, 'Cruz Roja', 22.1400897, -100.9726593, 'De Guadalupe 540, 78339 San Luis Potosí, México', 'Cruz Roja', 'De Guadalupe 540, 78339 San Luis Potosí, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(37, 'Cruz Roja', 19.7099706, -98.4526986, 'Centro, Apan, Hidalgo, México', 'Cruz Roja', 'Centro, Apan, Hidalgo, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(38, 'Cruz Roja Mexicana Iap', 19.4333333, -99.2, 'Juan Luis Vives 200, Polanco, Miguel Hidalgo, 11510 Ciudad de México, Distrito Federal, México', 'Cruz Roja Mexicana Iap', 'Juan Luis Vives 200, Polanco, Miguel Hidalgo, 11510 Ciudad de México, Distrito Federal, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(39, 'Cruz Roja', 20.127185, -98.7444767, 'Juan de Dios Peza 113, Cuauhtémoc, 42020 Pachuca de Soto, Hidalgo, México', 'Cruz Roja', 'Juan de Dios Peza 113, Cuauhtémoc, 42020 Pachuca de Soto, Hidalgo, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(40, 'Cruz Roja', 20.2871752, -103.1891907, 'Avenida González Gallo 1, Chapala Centro, 45900 Chapala, Jalisco, México', 'Cruz Roja', 'Avenida González Gallo 1, Chapala Centro, 45900 Chapala, Jalisco, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(41, 'Cruz Roja', 22.8974485, -109.9243283, 'Blvd. Hidalgo, Cabo San Lucas, Baja California Sur, México', 'Cruz Roja', 'Blvd. Hidalgo, Cabo San Lucas, Baja California Sur, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(42, 'Cruz Roja', 19.3166465, -98.8746865, 'Cuauhtémoc, Tezontle - Zoquiapan, Ixtapaluca, Estado de México, México', 'Cruz Roja', 'Cuauhtémoc, Tezontle - Zoquiapan, Ixtapaluca, Estado de México, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(43, 'Cruz Roja', 20.5385415, -97.4715949, 'Lázaro Cárdenas 106, Palma Sola, 93320 Poza Rica, Veracruz-Llave, México', 'Cruz Roja', 'Lázaro Cárdenas 106, Palma Sola, 93320 Poza Rica, Veracruz-Llave, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(44, 'Cruz Roja', 20.1945054, -100.1499026, 'Roberto Ruiz Obregón 832, Centro, 76850 Amealco de Bonfil, Querétaro, México', 'Cruz Roja', 'Roberto Ruiz Obregón 832, Centro, 76850 Amealco de Bonfil, Querétaro, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(45, 'Cruz Roja', 21.8350854, -105.2022405, 'Av Mexico N/A, 63310 Santiago Ixcuintla, Nayarit, México', 'Cruz Roja', 'Av Mexico N/A, 63310 Santiago Ixcuintla, Nayarit, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(46, 'Cruz Roja', 17.05626, -96.7247343, 'Armenta y López 700, Centro, 68000 Oaxaca, México', 'Cruz Roja', 'Armenta y López 700, Centro, 68000 Oaxaca, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(47, 'Cruz Roja', 24.8046213, -107.4034307, 'Gabriel Leyva Solano 115, 80000 Culiacan, Sinaloa, México', 'Cruz Roja', 'Gabriel Leyva Solano 115, 80000 Culiacan, Sinaloa, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(48, 'Cruz Roja', 30.4224437, -107.9133075, 'Constitución 1101, Centro, 31700 Nuevo Casas Grandes, Chihuahua, México', 'Cruz Roja', 'Constitución 1101, Centro, 31700 Nuevo Casas Grandes, Chihuahua, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(49, 'Cruz Roja Delg Tampico', 22.2216155, -97.8628115, 'Médico Militar Sn, Zona Centro, 89000 Tampico, Tamaulipas, México', 'Cruz Roja Delg Tampico', 'Médico Militar Sn, Zona Centro, 89000 Tampico, Tamaulipas, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(50, 'Cruz Roja', 19.4143213, -98.1392914, '2 de Abril, San Miguel, 90300 Apizaco, Tlaxcala, México', 'Cruz Roja', '2 de Abril, San Miguel, 90300 Apizaco, Tlaxcala, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(51, 'Cruz Roja', 20.1719107, -98.0649324, 'Santa Cruz, Huauchinango, Puebla, México', 'Cruz Roja', 'Santa Cruz, Huauchinango, Puebla, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(52, 'Cruz Roja', 22.2486214, -97.8360327, 'Álvaro Obregón Sn, Felipe Carrillo, 89430 Ciudad Madero, Tamaulipas, México', 'Cruz Roja', 'Álvaro Obregón Sn, Felipe Carrillo, 89430 Ciudad Madero, Tamaulipas, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(53, 'Cruz Roja', 27.4961277, -99.496983, 'Comonfort N/A, 88000 Nuevo Laredo, Tamaulipas, México', 'Cruz Roja', 'Comonfort N/A, 88000 Nuevo Laredo, Tamaulipas, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(54, 'Cruz Roja', 21.1701452, -102.4674579, 'Ramón Corona 129, Centro, 47120 Jalostotitlán, Jalisco, México', 'Cruz Roja', 'Ramón Corona 129, Centro, 47120 Jalostotitlán, Jalisco, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(55, 'Cruz Roja', 22.7694935, -102.5821193, 'Heroes de Chapultepec 1110, Lázaro Cárdenas, 98040 Zacatecas, México', 'Cruz Roja', 'Heroes de Chapultepec 1110, Lázaro Cárdenas, 98040 Zacatecas, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(56, 'Cruz Roja', 31.30591, -113.538589, 'Freemont SN, Benito Juárez, 83550 Puerto Peñasco, Sonora, México', 'Cruz Roja', 'Freemont SN, Benito Juárez, 83550 Puerto Peñasco, Sonora, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(57, 'Cruz Roja', 32.533489, -117.018204, 'Tijuana, Baja California, México', 'Cruz Roja', 'Tijuana, Baja California, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(58, 'Cruz Roja Azcapotzalco', 19.4898956, -99.2106745, 'Providencia, Azcapotzalco, Estado de México, México', 'Cruz Roja Azcapotzalco', 'Providencia, Azcapotzalco, Estado de México, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(59, 'Cruz Roja', 28.6847527, -106.0973684, 'Juan Escutia 1905, Fraccionamiento Gloria, 31130 Chihuahua, México', 'Cruz Roja', 'Juan Escutia 1905, Fraccionamiento Gloria, 31130 Chihuahua, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(60, 'Cruz Roja', 19.5283071, -96.9246131, 'Francisco Javier Clavijero 13, Centro, 91000 Xalapa Enríquez, Veracruz-Llave, México', 'Cruz Roja', 'Francisco Javier Clavijero 13, Centro, 91000 Xalapa Enríquez, Veracruz-Llave, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(61, 'Cruz Roja', 20.9118333, -100.7407895, 'Manuel Zavala Sn, Centro, 37700 San Miguel de Allende, Guanajuato, México', 'Cruz Roja', 'Manuel Zavala Sn, Centro, 37700 San Miguel de Allende, Guanajuato, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(62, 'Cruz Roja', 28.7173797, -106.1407873, 'Paseo de Arareco 1501, Paseos de Chihuahua, 31125 Chihuahua, México', 'Cruz Roja', 'Paseo de Arareco 1501, Paseos de Chihuahua, 31125 Chihuahua, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(63, 'Cruz Roja', 20.666392, -101.3590006, 'Cll Casimiro Liceaga 404, 36567 Irapuato, Guanajuato, México', 'Cruz Roja', 'Cll Casimiro Liceaga 404, 36567 Irapuato, Guanajuato, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(64, 'Cruz Roja', 19.3164933, -98.2414207, 'Ignacio Allende 48, 90000 Tlaxcala de Xicohtencatl, Tlaxcala, México', 'Cruz Roja', 'Ignacio Allende 48, 90000 Tlaxcala de Xicohtencatl, Tlaxcala, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(65, 'Cruz Roja', 20.5171541, -100.8386632, 'Henrry Dunant, Rosa Linda, Celaya, Guanajuato, México', 'Cruz Roja', 'Henrry Dunant, Rosa Linda, Celaya, Guanajuato, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(66, 'Cruz Roja', 19.2879661, -98.4211639, 'Parque Ferrocarril 3, Centro, 74000 San Martin Texmelucan de Labastida, Puebla, México', 'Cruz Roja', 'Parque Ferrocarril 3, Centro, 74000 San Martin Texmelucan de Labastida, Puebla, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(67, 'Cruz Roja', 21.070814, -97.642069, 'Prolongación Enriquez SN, Centro, 92730 Alamo Temapache, Veracruz-Llave, México', 'Cruz Roja', 'Prolongación Enriquez SN, Centro, 92730 Alamo Temapache, Veracruz-Llave, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(68, 'Cruz Roja Delegacion Nezahualcoyotl', 19.4164176, -99.0467072, '23 80, 57120 Ciudad Nezahualcóyotl, Estado de México, México', 'Cruz Roja Delegacion Nezahualcoyotl', '23 80, 57120 Ciudad Nezahualcóyotl, Estado de México, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(69, 'Cruz Roja', 18.8201183, -98.9542152, 'Retirada de Callejas 1, Centro, Cuautla, Morelos, México', 'Cruz Roja', 'Retirada de Callejas 1, Centro, Cuautla, Morelos, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(70, 'Cruz Roja', 19.536751, -96.9188056, 'Pipila 100, Centro, 93600 Martínez de La Torre, Veracruz-Llave, México', 'Cruz Roja', 'Pipila 100, Centro, 93600 Martínez de La Torre, Veracruz-Llave, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(71, 'Cruz Roja', 20.821262, -102.7521967, 'Sevilla 98, Centro, 47715 Tepatitlán de Morelos, Jalisco, México', 'Cruz Roja', 'Sevilla 98, Centro, 47715 Tepatitlán de Morelos, Jalisco, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(72, 'Cruz Roja', 20.6119068, -103.4210845, 'Periférico Sur SN, Toluquillas, 45610 Tlaquepaque, Jalisco, México', 'Cruz Roja', 'Periférico Sur SN, Toluquillas, 45610 Tlaquepaque, Jalisco, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(73, 'Cruz Roja Delegacion Chalco', 19.2726535, -98.8975552, 'José Ma. Martínez N/A, 56600 Chalco, Estado de México, México', 'Cruz Roja Delegacion Chalco', 'José Ma. Martínez N/A, 56600 Chalco, Estado de México, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(74, 'Cruz Roja', 25.7854682, -100.2997968, 'Benito Juárez S/N, Las Encinas, General Escobedo, Nuevo León, México', 'Cruz Roja', 'Benito Juárez S/N, Las Encinas, General Escobedo, Nuevo León, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(75, 'Cruz Roja', 25.867899, -97.4963156, 'Cll Luis Caballero N/A, 87360 Matamoros, Tamaulipas, México', 'Cruz Roja', 'Cll Luis Caballero N/A, 87360 Matamoros, Tamaulipas, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(76, 'Cruz Roja', 16.8999933, -99.8375958, '13 50, Emiliano Zapata, 39562 Acapulco, Guerrero, México', 'Cruz Roja', '13 50, Emiliano Zapata, 39562 Acapulco, Guerrero, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(77, 'Cruz Roja', 21.4795302, -101.2186543, 'Morelos 202, Centro, 37600 San Felipe, Guanajuato, México', 'Cruz Roja', 'Morelos 202, Centro, 37600 San Felipe, Guanajuato, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(78, 'Cruz Roja', 23.1849089, -102.8620079, 'Tránsito Pesado SN, Paseo Mineral, 99150 Fresnillo, Zacatecas, México', 'Cruz Roja', 'Tránsito Pesado SN, Paseo Mineral, 99150 Fresnillo, Zacatecas, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(79, 'Cruz Roja', 25.9821389, -98.0996129, '5 de Febrero 505, Cuauhtémoc, 88950 Río Bravo, Tamaulipas, México', 'Cruz Roja', '5 de Febrero 505, Cuauhtémoc, 88950 Río Bravo, Tamaulipas, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(80, 'Cruz Roja', 19.0057367, -98.2233189, 'Guadalupe Victoria 104, Hidalgo, 73870 Teziutlan, Puebla, México', 'Cruz Roja', 'Guadalupe Victoria 104, Hidalgo, 73870 Teziutlan, Puebla, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(81, 'Cruz Roja', 20.4806507, -99.2194675, 'Corregidora 3, Centro, 42300 Ixmiquilpan, Hidalgo, México', 'Cruz Roja', 'Corregidora 3, Centro, 42300 Ixmiquilpan, Hidalgo, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(82, 'Cruz Roja', 30.7089607, -112.1572414, 'Avenida K 50, Centro, 83600 Caborca, Sonora, México', 'Cruz Roja', 'Avenida K 50, Centro, 83600 Caborca, Sonora, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(83, 'Cruz Roja', 20.666157, -101.3589704, 'Casimiro Liceaga 454, Las Misiones, 36567 Irapuato, Guanajuato, México', 'Cruz Roja', 'Casimiro Liceaga 454, Las Misiones, 36567 Irapuato, Guanajuato, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(84, 'Cruz Roja', 20.5134014, -100.8324485, 'Avenida Constituyentes SN, Rosalinda I, 38060 Celaya, Guanajuato, México', 'Cruz Roja', 'Avenida Constituyentes SN, Rosalinda I, 38060 Celaya, Guanajuato, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(85, 'Cruz Roja', 25.439826, -102.1832854, 'Juan Aldama Sn, Marquez de Ahuayo, 27980 Parras de La Fuente, Coahuila de Zaragoza, México', 'Cruz Roja', 'Juan Aldama Sn, Marquez de Ahuayo, 27980 Parras de La Fuente, Coahuila de Zaragoza, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(86, 'Cruz Roja', 21.0366984, -104.3805884, 'Adolfo Ruíz Cortines 24, Moderna, 63940 Ixtlan del Río, Nayarit, México', 'Cruz Roja', 'Adolfo Ruíz Cortines 24, Moderna, 63940 Ixtlan del Río, Nayarit, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(87, 'Cruz Roja', 20.0478984, -102.7145146, 'José María Gutiérrez 375, Centro, 59000 Sahuayo de Morelos, Michoacán de Ocampo, México', 'Cruz Roja', 'José María Gutiérrez 375, Centro, 59000 Sahuayo de Morelos, Michoacán de Ocampo, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(88, 'Cruz Roja', 21.2930914, -100.522787, 'Prolongación de Allende 715, Del Sol, 37900 San Luis de La Paz, Guanajuato, México', 'Cruz Roja', 'Prolongación de Allende 715, Del Sol, 37900 San Luis de La Paz, Guanajuato, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(89, 'Cruz Roja', 21.0321669, -102.3936459, 'Carretera San Miguel San Julian SN, Sagrada Familia, 47140 San Miguel El Alto, Jalisco, México', 'Cruz Roja', 'Carretera San Miguel San Julian SN, Sagrada Familia, 47140 San Miguel El Alto, Jalisco, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(90, 'Cruz Roja', 19.5408726, -96.9315307, 'Ignacio Zaragoza 49, Zona Centro, 92101 Tantoyuca, Veracruz-Llave, México', 'Cruz Roja', 'Ignacio Zaragoza 49, Zona Centro, 92101 Tantoyuca, Veracruz-Llave, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(91, 'Cruz Roja', 20.2128163, -100.8790855, 'Fernando Dávila SN, Zona Centro, 38900 Salvatierra, Guanajuato, México', 'Cruz Roja', 'Fernando Dávila SN, Zona Centro, 38900 Salvatierra, Guanajuato, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(92, 'Cruz Roja', 21.9939806, -99.017202, 'José María Morelos 59, Ciudad Valles Centro, 79000 Ciudad Valles, San Luis Potosí, México', 'Cruz Roja', 'José María Morelos 59, Ciudad Valles Centro, 79000 Ciudad Valles, San Luis Potosí, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(93, 'Cruz Roja', 26.0117564, -111.3477531, 'Loreto, Baja California Sur, México', 'Cruz Roja', 'Loreto, Baja California Sur, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(94, 'Cruz Roja', 25.797361, -108.9865481, 'Guillermo Prieto 701, Centro, 81200 Los Mochis, Sinaloa, México', 'Cruz Roja', 'Guillermo Prieto 701, Centro, 81200 Los Mochis, Sinaloa, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(95, 'Cruz Roja', 25.4434839, -108.0683908, 'Internacional 1524, Del Evora, 81460 Guamuchil, Sinaloa, México', 'Cruz Roja', 'Internacional 1524, Del Evora, 81460 Guamuchil, Sinaloa, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(96, 'Cruz Roja', 17.9083872, -94.0921413, 'Plan de Ayala 1, Centro, 96980 Las Choapas, Veracruz-Llave, México', 'Cruz Roja', 'Plan de Ayala 1, Centro, 96980 Las Choapas, Veracruz-Llave, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(97, 'Cruz Roja', 19.8472784, -97.4977708, 'Reforma 10, Centro, 73900 Tlatlauquitepec, Puebla, México', 'Cruz Roja', 'Reforma 10, Centro, 73900 Tlatlauquitepec, Puebla, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(98, 'Delegación Cruz Roja', 20.5721858, -101.1999657, 'Tampico Sn, Salamanca Centro, 36700 Salamanca, Guanajuato, México', 'Delegación Cruz Roja', 'Tampico Sn, Salamanca Centro, 36700 Salamanca, Guanajuato, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(99, 'Cruz Roja', 19.5505103, -96.9560961, 'Emiliano Zapata 60, Centro, 91680 La Antigua, Veracruz-Llave, México', 'Cruz Roja', 'Emiliano Zapata 60, Centro, 91680 La Antigua, Veracruz-Llave, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(100, 'Cruz Roja', 16.4692346, -98.3992345, 'Acapulco Pinotepa SN, Centro, 41940 Cuajinicuilapa, Guerrero, México', 'Cruz Roja', 'Acapulco Pinotepa SN, Centro, 41940 Cuajinicuilapa, Guerrero, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(101, 'Cruz Roja', 18.797127, -96.4039067, 'Miguel Alemán Valdez Sn, Boca delRío Centro, 94290 Boca del Río, Veracruz-Llave, México', 'Cruz Roja', 'Miguel Alemán Valdez Sn, Boca delRío Centro, 94290 Boca del Río, Veracruz-Llave, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(102, 'Cruz Roja', 27.9152897, -110.9163887, 'Agustín García López Sn, Delicias, 85440 Heroica Guaymas, Sonora, México', 'Cruz Roja', 'Agustín García López Sn, Delicias, 85440 Heroica Guaymas, Sonora, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(103, 'Cruz Roja De Monterrey', 25.6982903, -100.3165925, 'Av Alfonso Reyes Nte 2503, 64410 Monterrey, Nuevo León, México', 'Cruz Roja De Monterrey', 'Av Alfonso Reyes Nte 2503, 64410 Monterrey, Nuevo León, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(104, 'Cruz Roja', 25.7587706, -102.9797193, 'Boulevard Hidalgo SN, Centro, 27800 San Pedro, Coahuila de Zaragoza, México', 'Cruz Roja', 'Boulevard Hidalgo SN, Centro, 27800 San Pedro, Coahuila de Zaragoza, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(105, 'Cruz Roja', 19.1400064, -96.1155932, 'Boca del Río, Veracruz-Llave, México', 'Cruz Roja', 'Boca del Río, Veracruz-Llave, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(106, 'Cruz Roja', 15.8308582, -96.3198966, 'Boulevard Chahue 110, Bahías de Huatulco, 70987 Santa María Huatulco, Oaxaca, México', 'Cruz Roja', 'Boulevard Chahue 110, Bahías de Huatulco, 70987 Santa María Huatulco, Oaxaca, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(107, 'Cruz Roja', 21.3639425, -102.8471696, 'San Juan 8, Centro, 99900 Nochistlan de Mejía, Zacatecas, México', 'Cruz Roja', 'San Juan 8, Centro, 99900 Nochistlan de Mejía, Zacatecas, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(108, 'Cruz Roja', 19.4225128, -99.164199, 'Séptima Norte Sn, Puerto Escondido Centro, 71980 San Pedro Mixtepec -Dto. 22 -, Oaxaca, México', 'Cruz Roja', 'Séptima Norte Sn, Puerto Escondido Centro, 71980 San Pedro Mixtepec -Dto. 22 -, Oaxaca, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(109, 'Cruz Roja', 16.759826, -93.3790138, 'Avenida 1a Sur Poniente 78, 5 de Mayo, 29140 Ocozocuautla, Chiapas, México', 'Cruz Roja', 'Avenida 1a Sur Poniente 78, 5 de Mayo, 29140 Ocozocuautla, Chiapas, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(110, 'Cruz Roja', 17.8139452, -97.7742377, 'Benito Juárez, El Calvario, Heroica Ciudad de Huajuapan de León, Oaxaca, México', 'Cruz Roja', 'Benito Juárez, El Calvario, Heroica Ciudad de Huajuapan de León, Oaxaca, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(111, 'Cruz Roja', 23.2848669, -106.0683154, 'Carretera Mazatlán Durango 65, Centro, 82600 Concordia, Sinaloa, México', 'Cruz Roja', 'Carretera Mazatlán Durango 65, Centro, 82600 Concordia, Sinaloa, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(112, 'Cruz Roja', 20.4846205, -100.9623328, 'Torre de Babel 102, Centro, 38300 Cortázar, Guanajuato, México', 'Cruz Roja', 'Torre de Babel 102, Centro, 38300 Cortázar, Guanajuato, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(113, 'Cruz Roja', 20.3733333, -99.6488889, 'Cerrada Huichapán Sn, Estación, 42400 Huichapan, Hidalgo, México', 'Cruz Roja', 'Cerrada Huichapán Sn, Estación, 42400 Huichapan, Hidalgo, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(114, 'Cruz Roja', 18.6119306, -99.1803896, 'Zayas Enríquez 410, Jojutla de Juárez Centro, 62900 Jojutla, Morelos, México', 'Cruz Roja', 'Zayas Enríquez 410, Jojutla de Juárez Centro, 62900 Jojutla, Morelos, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(115, 'Cruz Roja', 19.9346349, -96.8507277, 'Manuel Ávila Camacho 214, Misantla, 93821 Misantla, Veracruz-Llave, México', 'Cruz Roja', 'Manuel Ávila Camacho 214, Misantla, 93821 Misantla, Veracruz-Llave, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(116, 'Cruz Roja', 17.55, -99.5, 'Benito Juárez Sn, Centro, 39000 Chilpancingo de Los Bravo, Guerrero, México', 'Cruz Roja', 'Benito Juárez Sn, Centro, 39000 Chilpancingo de Los Bravo, Guerrero, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(117, 'Cruz Roja', 24.1428677, -110.2960591, 'Venustiano Carranza 2, Centro, 23920 Mulegé, Baja California Sur, México', 'Cruz Roja', 'Venustiano Carranza 2, Centro, 23920 Mulegé, Baja California Sur, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(118, 'Cruz Roja de la Madera', 28.6218641, -106.0871133, 'Carretera Cuauhtémoc S/N, Ferrocarrilera, 31940 Madera, Chihuahua, México', 'Cruz Roja de la Madera', 'Carretera Cuauhtémoc S/N, Ferrocarrilera, 31940 Madera, Chihuahua, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(119, 'Cruz Roja Mexicana', 19.392014, -99.2474431, 'Paseo de Las Lilas 122, Bosques de Las Lomas, Miguel Hidalgo, 11700 Distrito Federal, México', 'Cruz Roja Mexicana', 'Paseo de Las Lilas 122, Bosques de Las Lomas, Miguel Hidalgo, 11700 Distrito Federal, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(120, 'Cruz Roja', 27.9668028, -110.8097002, 'Las Américas Oriente SN, Libertad, 85380 Empalme, Sonora, México', 'Cruz Roja', 'Las Américas Oriente SN, Libertad, 85380 Empalme, Sonora, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(121, 'Cruz Roja', 27.1220954, -104.904575, 'Manuel López Dávila, José Mariano Jiménez, Chihuahua, México', 'Cruz Roja', 'Manuel López Dávila, José Mariano Jiménez, Chihuahua, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(122, 'Cruz Roja Naucalpan', 19.4766958, -99.2383753, 'Avenida Corona SN, Las Americas, 53040 Naucalpan de Juárez, Estado de México, México', 'Cruz Roja Naucalpan', 'Avenida Corona SN, Las Americas, 53040 Naucalpan de Juárez, Estado de México, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(123, 'Cruz Roja', 28.0283121, -105.2935325, 'Colón 109, Benito Juárez, 33620 Saucillo, Chihuahua, México', 'Cruz Roja', 'Colón 109, Benito Juárez, 33620 Saucillo, Chihuahua, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(124, 'Cruz Roja', 21.0189022, -101.2599085, 'Juárez 131, 36000 Guanajuato, México', 'Cruz Roja', 'Juárez 131, 36000 Guanajuato, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(125, 'Cruz Roja Mexicana', 20.3319135, -102.7796034, 'Morelos esq. Oxnard S/N , Centro, 47800 Ocotlán, Jalisco, México', 'Cruz Roja Mexicana', 'Morelos esq. Oxnard S/N , Centro, 47800 Ocotlán, Jalisco, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(126, 'Cruz Roja', 19.6775462, -103.4621269, 'Adolph Bosque Horn SN, ISSSTE, 44008 Guadalajara, Jalisco, México', 'Cruz Roja', 'Adolph Bosque Horn SN, ISSSTE, 44008 Guadalajara, Jalisco, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(127, 'Cruz Roja Bahía de Banderas', 20.673459, -105.3248269, 'Carretera Mezcales San Vicente 343, San Vicente, 63735 Bahía de Banderas, Nayarit, México', 'Cruz Roja Bahía de Banderas', 'Carretera Mezcales San Vicente 343, San Vicente, 63735 Bahía de Banderas, Nayarit, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(128, 'Cruz Roja Mexicana Cuautitlán México', 19.6606261, -99.1793542, 'Enrique Dunant, El Partidor, Cuautitlán, Estado de México, México', 'Cruz Roja Mexicana Cuautitlán México', 'Enrique Dunant, El Partidor, Cuautitlán, Estado de México, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(129, 'Cruz Roja Delegacion Texcoco', 19.5512108, -98.8873466, 'Avenida Hidalgo N/A, Texcoco, 56100 Estado de México, México', 'Cruz Roja Delegacion Texcoco', 'Avenida Hidalgo N/A, Texcoco, 56100 Estado de México, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(130, 'Cruz Roja Mexicana Deleg Curnavaca', 18.9301266, -99.2138172, 'Río Pánuco 10, 62350 Cuernavaca, Morelos, México', 'Cruz Roja Mexicana Deleg Curnavaca', 'Río Pánuco 10, 62350 Cuernavaca, Morelos, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(131, 'Cruz roja', 20.446907, -101.5262009, 'Picachos 120, Lomas de Santa María, 36970 Abasolo, Guanajuato, México', 'Cruz roja', 'Picachos 120, Lomas de Santa María, 36970 Abasolo, Guanajuato, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(132, 'Cruz Roja San Juan Del Río', 20.3861449, -99.9931987, 'Francisco Villa SN, San Juan Bosco, 76810 San Juan del Río, Querétaro, México', 'Cruz Roja San Juan Del Río', 'Francisco Villa SN, San Juan Bosco, 76810 San Juan del Río, Querétaro, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(133, 'Cruz Roja', 19.61766, -98.1174721, 'Tlaxco Zacatlán Kilómetro 24.1, Unidad Proletaría, 90250 Tlaxcala, México', 'Cruz Roja', 'Tlaxco Zacatlán Kilómetro 24.1, Unidad Proletaría, 90250 Tlaxcala, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(134, 'Cruz Roja', 27.6908351, -105.1756061, 'González Ortega 1006, Ciudad Camargo Centro, 33700 Ciudad Camargo, Chihuahua, México', 'Cruz Roja', 'González Ortega 1006, Ciudad Camargo Centro, 33700 Ciudad Camargo, Chihuahua, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(135, 'Cruz Roja', 24.0256478, -104.6504014, 'Burócrata, Durango', 'Cruz Roja', 'Burócrata, Durango', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(136, 'Cruz Roja', 25.0836119, -107.699968, 'Pericos, 80900 Pericos, Sinaloa, México', 'Cruz Roja', 'Pericos, 80900 Pericos, Sinaloa, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(137, 'Cruz Roja', 30.171879, -111.0982531, 'Abelardo L. Rodríguez Sn, San Fernando, 83900 Benjamin Gil, Sonora, México', 'Cruz Roja', 'Abelardo L. Rodríguez Sn, San Fernando, 83900 Benjamin Gil, Sonora, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(138, 'Cruz Roja Mexicana Puesto de Socorros', 25.1865051, -99.8497689, 'Manuel Acuña SN, Gil de Leyva, 67560 Montemorelos, Nuevo León, México', 'Cruz Roja Mexicana Puesto de Socorros', 'Manuel Acuña SN, Gil de Leyva, 67560 Montemorelos, Nuevo León, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(139, 'Cruz Roja Mexicana Delegación Cancún', 21.1829551, -86.8098966, 'Yaxchilan 2, Supermanzana 21, 77500 Benito Juárez, Quintana Roo, México', 'Cruz Roja Mexicana Delegación Cancún', 'Yaxchilan 2, Supermanzana 21, 77500 Benito Juárez, Quintana Roo, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(140, 'Cruz Roja', 21.2811814, -89.6604593, '23 140, Progreso de Castro Centro, 97320 Progreso, Yucatán, México', 'Cruz Roja', '23 140, Progreso de Castro Centro, 97320 Progreso, Yucatán, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(141, 'Cruz Roja Mexicana Delegación Quéretaro', 20.5781095, -100.3639159, 'Luis Vega y Monroy Sn, Circuito Estadio, 76079 Santiago de Querétaro, Querétaro, México', 'Cruz Roja Mexicana Delegación Quéretaro', 'Luis Vega y Monroy Sn, Circuito Estadio, 76079 Santiago de Querétaro, Querétaro, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(142, 'Cruz Roja Mexicana Tlaltenango', 21.777077, -103.2980962, 'Heroico Colegio Militar 5, Tlatenango de Sánchez Román, 99700 Tlaltenango, Zacatecas, México', 'Cruz Roja Mexicana Tlaltenango', 'Heroico Colegio Militar 5, Tlatenango de Sánchez Román, 99700 Tlaltenango, Zacatecas, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(143, 'Cruz Roja Urgencias', 21.0189022, -101.2599085, 'Juárez 131, Centro, 36000 Guanajuato, México', 'Cruz Roja Urgencias', 'Juárez 131, Centro, 36000 Guanajuato, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(144, 'Cruz Roja Delegacion Cuatitlan', 19.6606261, -99.1793542, 'Juan Enriquee Dunant N/A, 54879 Cuautitlán, Estado de México, México', 'Cruz Roja Delegacion Cuatitlan', 'Juan Enriquee Dunant N/A, 54879 Cuautitlán, Estado de México, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(145, 'Cruz Roja de Actopan', 20.2666914, -98.9431642, 'Carretera México Laredo Kilómetro 118, Centro Sur, 42500 Actopan, Hidalgo, México', 'Cruz Roja de Actopan', 'Carretera México Laredo Kilómetro 118, Centro Sur, 42500 Actopan, Hidalgo, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(146, 'Cruz Roja Méxicana', 31.8695148, -116.6398586, 'Bulevar de José de Jesús Clarsck 628, Ampliación Moderna, 22879 Ensenada, Baja California, México', 'Cruz Roja Méxicana', 'Bulevar de José de Jesús Clarsck 628, Ampliación Moderna, 22879 Ensenada, Baja California, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(147, 'Cruz Roja Mexicana Delegacion Local En Tapachula', 14.8844764, -92.2658791, '9A Norte N/A, 30700 Tapachula, Chiapas, México', 'Cruz Roja Mexicana Delegacion Local En Tapachula', '9A Norte N/A, 30700 Tapachula, Chiapas, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(148, 'Cruz Roja Delg Soto La Marina', 26.0511596, -98.2850084, 'Enrique Cárdenas González S/n, 20 de Noviembre, 87670 Soto la Marina, Tamaulipas, México', 'Cruz Roja Delg Soto La Marina', 'Enrique Cárdenas González S/n, 20 de Noviembre, 87670 Soto la Marina, Tamaulipas, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(149, 'Cruz Roja Delg Xicotencatl', 22.2245122, -97.8406929, 'Juarez Sur 412, N/A Xicotencatl, Tamaulipas, México', 'Cruz Roja Delg Xicotencatl', 'Juarez Sur 412, N/A Xicotencatl, Tamaulipas, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(150, 'Cruz Roja Mexicana Delg Rosarito', 32.354119, -117.0582247, '100, Centro Carretera, 22710 Playas de Rosarito, Baja California, México', 'Cruz Roja Mexicana Delg Rosarito', '100, Centro Carretera, 22710 Playas de Rosarito, Baja California, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(151, 'Cruz Roja Mexicana', 20.8185815, -102.7580877, 'Constitución 95, Centro, 47700 Tepatitlán de Morelos, Jalisco, México', 'Cruz Roja Mexicana', 'Constitución 95, Centro, 47700 Tepatitlán de Morelos, Jalisco, México', 'ER', NULL, 1, 'Inicial', '2012-04-13 16:14:01', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(152, 'Hospital Abc santa fe', 19.356115, -99.282593, 'Las Tinajas, Cuajimalpa de Morelos, Ciudad de México, DF, México', 'Privado', 'Las Tinajas, Cuajimalpa de Morelos, Ciudad de México, DF, México', 'Hospital', NULL, 1, 'Mozilla/5.0 (iPad; CPU OS 5_1 like Mac OS X) AppleWebKit/534.46 (KHTML, like Gecko) Version/5.1 Mobile/9B176 Safari/7534.48.3', '2012-04-17 14:12:20', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(153, 'urgenciss prueba', 19.3816922, -99.1768525, 'Metrobus Ciudad de los Deportes, Eje 6 Sur (Holbein), Ciudad de Los Deportes, Benito Juárez, 03100 Ciudad de México, DF, México', '', 'Metrobus Ciudad de los Deportes, Eje 6 Sur (Holbein), Ciudad de Los Deportes, Benito Juárez, 03100 Ciudad de México, DF, México', 'ER', NULL, 12, 'Mozilla/5.0 (Linux; U; Android 2.1-update1; es-us; GT-I9000T Build/ECLAIR) AppleWebKit/530.17 (KHTML, like Gecko) Version/4.0 Mobile Safari/530.17', '2012-04-18 22:00:09', NULL, NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `geocode_cache`
--

CREATE TABLE IF NOT EXISTS `geocode_cache` (
  `id` int(11) NOT NULL auto_increment,
  `lng` double NOT NULL,
  `lat` double NOT NULL,
  `query` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=145 ;

--
-- Volcado de datos para la tabla `geocode_cache`
--

INSERT INTO `geocode_cache` (`id`, `lng`, `lat`, `query`) VALUES
(1, -96.9348441, 18.9066734, 'violeta 121, córdoba, veracruz, mexico'),
(2, -99.1807111, 19.3687917, 'insurgentes sur 1400, méxico , distrito federal, mexico'),
(3, -96.9327021, 18.8917161, 'calle 6 y avenida 3, colonia centro, córdoba, veracruz, méxico'),
(4, -96.9347222, 18.8941667, 'calle 6 esquina avenida 3, colonia centro, córdoba, veracruz, méxico'),
(5, -96.9368263, 18.8966384, 'calle 6 no. 8, colonia centro, córdoba, veracruz, méxico'),
(6, -97.4118239, 18.4603502, 'calle puebla #4, puerta del sol, mariano escobedo, veracruz'),
(7, -97.4118239, 18.4603502, 'c. puebla 4, fraccionamiento puerta del sol, mariano escobedo, veracruz, méxico'),
(8, -97.1155155, 18.8783369, 'puerta del sol, mariano escobedo, veracruz'),
(9, -100.1887268, 25.6635777, 'violeta 121'),
(10, -97.1119913, 18.8799846, 'calle puebla #4, puerta del sol, palmira, veracruz'),
(11, -97.094733, 18.8499541, 'oriente 4, orizaba, veracruz, méxico'),
(12, -96.133415, 19.1666573, 'Salvador Díaz Mirón 1698, Zaragoza, 91918 Veracruz, Veracruz-Llave, México'),
(13, -96.1052969, 19.1062297, 'Miguel Aleman Valdéz 1698, Centro, 94290 Boca del Río, Veracruz-Llave, México'),
(14, -96.9315307, 19.5408726, 'Ignacio Zaragoza 49, Zona Centro, 92101 Tantoyuca, Veracruz-Llave, México'),
(15, -96.1523671, 19.2079775, 'Independencia, 91891 Veracruz, Veracruz-Llave, México'),
(16, -96.140122, 19.1588191, 'Adolfo López Mateos 518, Miguel Alemán, 92820 Veracruz, Veracruz-Llave, México'),
(17, -96.3710851, 19.3699908, 'Emiliano Zapata 60, Centro, 91080 Ciudad José Cardel, Veracruz-Llave, México'),
(18, -96.4039067, 18.797127, 'Miguel Alemán Valdez Sn, Boca delRío Centro, 94290 Boca del Río, Veracruz-Llave, México'),
(19, -96.1297039, 19.1939699, '16 de Septiembre S/N, Centro, 92900 Veracruz, Veracruz-Llave, México'),
(20, -96.0527306, 18.7999134, 'Benjamín Franklin 109, Piedras Negras, 95220 Tlalixcoyan, Veracruz-Llave, México'),
(21, -103.3528003, 20.678694, 'Juan Manuel S/N, Centro, 44100 Guadalajara, Jalisco, México'),
(22, -99.2431427, 19.5658096, 'Calzada San Mateo 10, La Higuera, 52940 Atizapán De Zaragoza, Estado de México, México'),
(23, -96.9329333, 18.8915668, 'Centro, Córdoba, Veracruz-Llave, México'),
(24, -98.7667481, 19.1223754, 'Fray Martin de Valencia 37, Centro, 56900 Amecameca, Estado de México, México'),
(25, -102.0226576, 20.33947, '95, Pena, 59300 La Piedad de Cavadas, Michoacán de Ocampo, México'),
(26, -99.20936, 19.4383066, 'Avenida Ejército Nacional 1032, Polanco, Miguel Hidalgo, 11510 Distrito Federal, México'),
(27, -99.0468629, 19.5967299, 'Insurgentes, San Cristóbal, Ecatepec de Morelos, Estado de México, México'),
(28, -98.7458874, 20.1153012, 'Pachuca de Soto, Hidalgo, México'),
(29, -100.9726593, 22.1400897, 'De Guadalupe 540, 78339 San Luis Potosí, México'),
(30, -98.4526986, 19.7099706, 'Centro, Apan, Hidalgo, México'),
(31, -99.2, 19.4333333, 'Juan Luis Vives 200, Polanco, Miguel Hidalgo, 11510 Ciudad de México, Distrito Federal, México'),
(32, -98.7444767, 20.127185, 'Juan de Dios Peza 113, Cuauhtémoc, 42020 Pachuca de Soto, Hidalgo, México'),
(33, -103.1891907, 20.2871752, 'Avenida González Gallo 1, Chapala Centro, 45900 Chapala, Jalisco, México'),
(34, -109.9243283, 22.8974485, 'Blvd. Hidalgo, Cabo San Lucas, Baja California Sur, México'),
(35, -98.8746865, 19.3166465, 'Cuauhtémoc, Tezontle - Zoquiapan, Ixtapaluca, Estado de México, México'),
(36, -97.4715949, 20.5385415, 'Lázaro Cárdenas 106, Palma Sola, 93320 Poza Rica, Veracruz-Llave, México'),
(37, -100.1499026, 20.1945054, 'Roberto Ruiz Obregón 832, Centro, 76850 Amealco de Bonfil, Querétaro, México'),
(38, -105.2022405, 21.8350854, 'Av Mexico N/A, 63310 Santiago Ixcuintla, Nayarit, México'),
(39, -96.7247343, 17.05626, 'Armenta y López 700, Centro, 68000 Oaxaca, México'),
(40, -107.4034307, 24.8046213, 'Gabriel Leyva Solano 115, 80000 Culiacan, Sinaloa, México'),
(41, -107.9133075, 30.4224437, 'Constitución 1101, Centro, 31700 Nuevo Casas Grandes, Chihuahua, México'),
(42, -97.8628115, 22.2216155, 'Médico Militar Sn, Zona Centro, 89000 Tampico, Tamaulipas, México'),
(43, -98.1392914, 19.4143213, '2 de Abril, San Miguel, 90300 Apizaco, Tlaxcala, México'),
(44, -98.0649324, 20.1719107, 'Santa Cruz, Huauchinango, Puebla, México'),
(45, -97.8360327, 22.2486214, 'Álvaro Obregón Sn, Felipe Carrillo, 89430 Ciudad Madero, Tamaulipas, México'),
(46, -99.496983, 27.4961277, 'Comonfort N/A, 88000 Nuevo Laredo, Tamaulipas, México'),
(47, -102.4674579, 21.1701452, 'Ramón Corona 129, Centro, 47120 Jalostotitlán, Jalisco, México'),
(48, -102.5821193, 22.7694935, 'Heroes de Chapultepec 1110, Lázaro Cárdenas, 98040 Zacatecas, México'),
(49, -113.538589, 31.30591, 'Freemont SN, Benito Juárez, 83550 Puerto Peñasco, Sonora, México'),
(50, -117.018204, 32.533489, 'Tijuana, Baja California, México'),
(51, -99.2106745, 19.4898956, 'Providencia, Azcapotzalco, Estado de México, México'),
(52, -106.0973684, 28.6847527, 'Juan Escutia 1905, Fraccionamiento Gloria, 31130 Chihuahua, México'),
(53, -96.9246131, 19.5283071, 'Francisco Javier Clavijero 13, Centro, 91000 Xalapa Enríquez, Veracruz-Llave, México'),
(54, -100.7407895, 20.9118333, 'Manuel Zavala Sn, Centro, 37700 San Miguel de Allende, Guanajuato, México'),
(55, -106.1407873, 28.7173797, 'Paseo de Arareco 1501, Paseos de Chihuahua, 31125 Chihuahua, México'),
(56, -101.3590006, 20.666392, 'Cll Casimiro Liceaga 404, 36567 Irapuato, Guanajuato, México'),
(57, -98.2414207, 19.3164933, 'Ignacio Allende 48, 90000 Tlaxcala de Xicohtencatl, Tlaxcala, México'),
(58, -100.8386632, 20.5171541, 'Henrry Dunant, Rosa Linda, Celaya, Guanajuato, México'),
(59, -98.4211639, 19.2879661, 'Parque Ferrocarril 3, Centro, 74000 San Martin Texmelucan de Labastida, Puebla, México'),
(60, -97.642069, 21.070814, 'Prolongación Enriquez SN, Centro, 92730 Alamo Temapache, Veracruz-Llave, México'),
(61, -99.0467072, 19.4164176, '23 80, 57120 Ciudad Nezahualcóyotl, Estado de México, México'),
(62, -98.9542152, 18.8201183, 'Retirada de Callejas 1, Centro, Cuautla, Morelos, México'),
(63, -96.9188056, 19.536751, 'Pipila 100, Centro, 93600 Martínez de La Torre, Veracruz-Llave, México'),
(64, -102.7521967, 20.821262, 'Sevilla 98, Centro, 47715 Tepatitlán de Morelos, Jalisco, México'),
(65, -103.4210845, 20.6119068, 'Periférico Sur SN, Toluquillas, 45610 Tlaquepaque, Jalisco, México'),
(66, -98.8975552, 19.2726535, 'José Ma. Martínez N/A, 56600 Chalco, Estado de México, México'),
(67, -100.2997968, 25.7854682, 'Benito Juárez S/N, Las Encinas, General Escobedo, Nuevo León, México'),
(68, -97.4963156, 25.867899, 'Cll Luis Caballero N/A, 87360 Matamoros, Tamaulipas, México'),
(69, -99.8375958, 16.8999933, '13 50, Emiliano Zapata, 39562 Acapulco, Guerrero, México'),
(70, -101.2186543, 21.4795302, 'Morelos 202, Centro, 37600 San Felipe, Guanajuato, México'),
(71, -102.8620079, 23.1849089, 'Tránsito Pesado SN, Paseo Mineral, 99150 Fresnillo, Zacatecas, México'),
(72, -98.0996129, 25.9821389, '5 de Febrero 505, Cuauhtémoc, 88950 Río Bravo, Tamaulipas, México'),
(73, -98.2233189, 19.0057367, 'Guadalupe Victoria 104, Hidalgo, 73870 Teziutlan, Puebla, México'),
(74, -99.2194675, 20.4806507, 'Corregidora 3, Centro, 42300 Ixmiquilpan, Hidalgo, México'),
(75, -112.1572414, 30.7089607, 'Avenida K 50, Centro, 83600 Caborca, Sonora, México'),
(76, -101.3589704, 20.666157, 'Casimiro Liceaga 454, Las Misiones, 36567 Irapuato, Guanajuato, México'),
(77, -100.8324485, 20.5134014, 'Avenida Constituyentes SN, Rosalinda I, 38060 Celaya, Guanajuato, México'),
(78, -102.1832854, 25.439826, 'Juan Aldama Sn, Marquez de Ahuayo, 27980 Parras de La Fuente, Coahuila de Zaragoza, México'),
(79, -104.3805884, 21.0366984, 'Adolfo Ruíz Cortines 24, Moderna, 63940 Ixtlan del Río, Nayarit, México'),
(80, -102.7145146, 20.0478984, 'José María Gutiérrez 375, Centro, 59000 Sahuayo de Morelos, Michoacán de Ocampo, México'),
(81, -100.522787, 21.2930914, 'Prolongación de Allende 715, Del Sol, 37900 San Luis de La Paz, Guanajuato, México'),
(82, -102.3936459, 21.0321669, 'Carretera San Miguel San Julian SN, Sagrada Familia, 47140 San Miguel El Alto, Jalisco, México'),
(83, -96.9315307, 19.5408726, 'Ignacio Zaragoza 49, Zona Centro, 92101 Tantoyuca, Veracruz-Llave, México'),
(84, -100.8790855, 20.2128163, 'Fernando Dávila SN, Zona Centro, 38900 Salvatierra, Guanajuato, México'),
(85, -99.017202, 21.9939806, 'José María Morelos 59, Ciudad Valles Centro, 79000 Ciudad Valles, San Luis Potosí, México'),
(86, -111.3477531, 26.0117564, 'Loreto, Baja California Sur, México'),
(87, -108.9865481, 25.797361, 'Guillermo Prieto 701, Centro, 81200 Los Mochis, Sinaloa, México'),
(88, -108.0683908, 25.4434839, 'Internacional 1524, Del Evora, 81460 Guamuchil, Sinaloa, México'),
(89, -94.0921413, 17.9083872, 'Plan de Ayala 1, Centro, 96980 Las Choapas, Veracruz-Llave, México'),
(90, -97.4977708, 19.8472784, 'Reforma 10, Centro, 73900 Tlatlauquitepec, Puebla, México'),
(91, -101.1999657, 20.5721858, 'Tampico Sn, Salamanca Centro, 36700 Salamanca, Guanajuato, México'),
(92, -96.9560961, 19.5505103, 'Emiliano Zapata 60, Centro, 91680 La Antigua, Veracruz-Llave, México'),
(93, -98.3992345, 16.4692346, 'Acapulco Pinotepa SN, Centro, 41940 Cuajinicuilapa, Guerrero, México'),
(94, -96.4039067, 18.797127, 'Miguel Alemán Valdez Sn, Boca delRío Centro, 94290 Boca del Río, Veracruz-Llave, México'),
(95, -110.9163887, 27.9152897, 'Agustín García López Sn, Delicias, 85440 Heroica Guaymas, Sonora, México'),
(96, -100.3165925, 25.6982903, 'Av Alfonso Reyes Nte 2503, 64410 Monterrey, Nuevo León, México'),
(97, -102.9797193, 25.7587706, 'Boulevard Hidalgo SN, Centro, 27800 San Pedro, Coahuila de Zaragoza, México'),
(98, -96.1155932, 19.1400064, 'Boca del Río, Veracruz-Llave, México'),
(99, -96.3198966, 15.8308582, 'Boulevard Chahue 110, Bahías de Huatulco, 70987 Santa María Huatulco, Oaxaca, México'),
(100, -102.8471696, 21.3639425, 'San Juan 8, Centro, 99900 Nochistlan de Mejía, Zacatecas, México'),
(101, -99.164199, 19.4225128, 'Séptima Norte Sn, Puerto Escondido Centro, 71980 San Pedro Mixtepec -Dto. 22 -, Oaxaca, México'),
(102, -93.3790138, 16.759826, 'Avenida 1a Sur Poniente 78, 5 de Mayo, 29140 Ocozocuautla, Chiapas, México'),
(103, -97.7742377, 17.8139452, 'Benito Juárez, El Calvario, Heroica Ciudad de Huajuapan de León, Oaxaca, México'),
(104, -106.0683154, 23.2848669, 'Carretera Mazatlán Durango 65, Centro, 82600 Concordia, Sinaloa, México'),
(105, -100.9623328, 20.4846205, 'Torre de Babel 102, Centro, 38300 Cortázar, Guanajuato, México'),
(106, -99.6488889, 20.3733333, 'Cerrada Huichapán Sn, Estación, 42400 Huichapan, Hidalgo, México'),
(107, -99.1803896, 18.6119306, 'Zayas Enríquez 410, Jojutla de Juárez Centro, 62900 Jojutla, Morelos, México'),
(108, -96.8507277, 19.9346349, 'Manuel Ávila Camacho 214, Misantla, 93821 Misantla, Veracruz-Llave, México'),
(109, -99.5, 17.55, 'Benito Juárez Sn, Centro, 39000 Chilpancingo de Los Bravo, Guerrero, México'),
(110, -110.2960591, 24.1428677, 'Venustiano Carranza 2, Centro, 23920 Mulegé, Baja California Sur, México'),
(111, -106.0871133, 28.6218641, 'Carretera Cuauhtémoc S/N, Ferrocarrilera, 31940 Madera, Chihuahua, México'),
(112, -99.2474431, 19.392014, 'Paseo de Las Lilas 122, Bosques de Las Lomas, Miguel Hidalgo, 11700 Distrito Federal, México'),
(113, -110.8097002, 27.9668028, 'Las Américas Oriente SN, Libertad, 85380 Empalme, Sonora, México'),
(114, -104.904575, 27.1220954, 'Manuel López Dávila, José Mariano Jiménez, Chihuahua, México'),
(115, -99.2383753, 19.4766958, 'Avenida Corona SN, Las Americas, 53040 Naucalpan de Juárez, Estado de México, México'),
(116, -105.2935325, 28.0283121, 'Colón 109, Benito Juárez, 33620 Saucillo, Chihuahua, México'),
(117, -101.2599085, 21.0189022, 'Juárez 131, 36000 Guanajuato, México'),
(118, -102.7796034, 20.3319135, 'Morelos esq. Oxnard S/N , Centro, 47800 Ocotlán, Jalisco, México'),
(119, -103.4621269, 19.6775462, 'Adolph Bosque Horn SN, ISSSTE, 44008 Guadalajara, Jalisco, México'),
(120, -105.3248269, 20.673459, 'Carretera Mezcales San Vicente 343, San Vicente, 63735 Bahía de Banderas, Nayarit, México'),
(121, -99.1793542, 19.6606261, 'Enrique Dunant, El Partidor, Cuautitlán, Estado de México, México'),
(122, -98.8873466, 19.5512108, 'Avenida Hidalgo N/A, Texcoco, 56100 Estado de México, México'),
(123, -99.2138172, 18.9301266, 'Río Pánuco 10, 62350 Cuernavaca, Morelos, México'),
(124, -101.5262009, 20.446907, 'Picachos 120, Lomas de Santa María, 36970 Abasolo, Guanajuato, México'),
(125, -99.9931987, 20.3861449, 'Francisco Villa SN, San Juan Bosco, 76810 San Juan del Río, Querétaro, México'),
(126, -98.1174721, 19.61766, 'Tlaxco Zacatlán Kilómetro 24.1, Unidad Proletaría, 90250 Tlaxcala, México'),
(127, -105.1756061, 27.6908351, 'González Ortega 1006, Ciudad Camargo Centro, 33700 Ciudad Camargo, Chihuahua, México'),
(128, -104.6504014, 24.0256478, 'Burócrata, Durango'),
(129, -107.699968, 25.0836119, 'Pericos, 80900 Pericos, Sinaloa, México'),
(130, -111.0982531, 30.171879, 'Abelardo L. Rodríguez Sn, San Fernando, 83900 Benjamin Gil, Sonora, México'),
(131, -99.8497689, 25.1865051, 'Manuel Acuña SN, Gil de Leyva, 67560 Montemorelos, Nuevo León, México'),
(132, -86.8098966, 21.1829551, 'Yaxchilan 2, Supermanzana 21, 77500 Benito Juárez, Quintana Roo, México'),
(133, -89.6604593, 21.2811814, '23 140, Progreso de Castro Centro, 97320 Progreso, Yucatán, México'),
(134, -100.3639159, 20.5781095, 'Luis Vega y Monroy Sn, Circuito Estadio, 76079 Santiago de Querétaro, Querétaro, México'),
(135, -103.2980962, 21.777077, 'Heroico Colegio Militar 5, Tlatenango de Sánchez Román, 99700 Tlaltenango, Zacatecas, México'),
(136, -101.2599085, 21.0189022, 'Juárez 131, Centro, 36000 Guanajuato, México'),
(137, -99.1793542, 19.6606261, 'Juan Enriquee Dunant N/A, 54879 Cuautitlán, Estado de México, México'),
(138, -98.9431642, 20.2666914, 'Carretera México Laredo Kilómetro 118, Centro Sur, 42500 Actopan, Hidalgo, México'),
(139, -116.6398586, 31.8695148, 'Bulevar de José de Jesús Clarsck 628, Ampliación Moderna, 22879 Ensenada, Baja California, México'),
(140, -92.2658791, 14.8844764, '9A Norte N/A, 30700 Tapachula, Chiapas, México'),
(141, -98.2850084, 26.0511596, 'Enrique Cárdenas González S/n, 20 de Noviembre, 87670 Soto la Marina, Tamaulipas, México'),
(142, -97.8406929, 22.2245122, 'Juarez Sur 412, N/A Xicotencatl, Tamaulipas, México'),
(143, -117.0582247, 32.354119, '100, Centro Carretera, 22710 Playas de Rosarito, Baja California, México'),
(144, -102.7580877, 20.8185815, 'Constitución 95, Centro, 47700 Tepatitlán de Morelos, Jalisco, México');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `user` int(11) default NULL,
  `logindate` datetime default NULL,
  `loginip` varchar(25) default NULL,
  `loginsource` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Volcado de datos para la tabla `login`
--

INSERT INTO `login` (`id`, `user`, `logindate`, `loginip`, `loginsource`) VALUES
(1, 3, '2012-04-06 23:59:29', '192.168.1.104', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.151 Safari/535.19'),
(2, 3, '2012-04-07 01:06:56', '192.168.1.104', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.151 Safari/535.19'),
(3, 9, '2012-04-07 01:44:49', '192.168.1.104', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.151 Safari/535.19'),
(4, 9, '2012-04-07 02:13:58', '192.168.1.104', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.151 Safari/535.19'),
(5, 1, '2012-04-07 02:16:37', '192.168.1.104', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.151 Safari/535.19'),
(6, 1, '2012-04-07 00:31:45', '189.251.241.125', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.151 Safari/535.19'),
(7, 1, '2012-04-07 00:43:23', '189.251.241.125', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.151 Safari/535.19'),
(8, 1, '2012-04-07 00:47:33', '189.251.241.125', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.54.16 (KHTML, like Gecko) Version/5.1.4 Safari/534.54.16'),
(9, 1, '2012-04-07 01:25:37', '189.251.241.125', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.151 Safari/535.19'),
(10, 1, '2012-04-07 08:11:41', '187.141.102.196', 'Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_2_1 like Mac OS X; es-es) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5'),
(11, 10, '2012-04-07 12:45:10', '187.141.102.203', 'Mozilla/5.0 (iPhone; CPU iPhone OS 5_1 like Mac OS X) AppleWebKit/534.46 (KHTML, like Gecko) Version/5.1 Mobile/9B176 Safari/7534.48.3'),
(12, 11, '2012-04-08 18:23:09', '189.251.245.39', 'Mozilla/5.0 (iPod; CPU iPhone OS 5_1 like Mac OS X) AppleWebKit/534.46 (KHTML, like Gecko) Version/5.1 Mobile/9B176 Safari/7534.48.3'),
(13, 1, '2012-04-09 13:41:26', '187.171.237.137', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.151 Safari/535.19'),
(14, 13, '2012-04-11 06:47:15', '201.156.228.59', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.152 Safari/535.19'),
(15, 15, '2012-04-12 06:59:49', '189.229.216.197', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.54.16 (KHTML, like Gecko) Version/5.1.4 Safari/534.54.16'),
(16, 1, '2012-04-13 14:23:00', '201.154.199.217', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.162 Safari/535.19'),
(17, 1, '2012-04-17 14:10:11', '189.253.244.8', 'Mozilla/5.0 (iPad; CPU OS 5_1 like Mac OS X) AppleWebKit/534.46 (KHTML, like Gecko) Version/5.1 Mobile/9B176 Safari/7534.48.3'),
(18, 12, '2012-04-18 21:58:40', '200.95.163.92', 'Mozilla/5.0 (Linux; U; Android 2.1-update1; es-us; GT-I9000T Build/ECLAIR) AppleWebKit/530.17 (KHTML, like Gecko) Version/4.0 Mobile Safari/530.17'),
(19, 12, '2012-04-21 06:03:57', '200.95.163.84', 'Mozilla/5.0 (Linux; U; Android 2.1-update1; es-us; GT-I9000T Build/ECLAIR) AppleWebKit/530.17 (KHTML, like Gecko) Version/4.0 Mobile Safari/530.17');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `stats`
--
CREATE TABLE IF NOT EXISTS `stats` (
`total_er` bigint(21)
,`total_usr` bigint(21)
,`total_logins` bigint(21)
);
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `iduser` int(11) unsigned NOT NULL auto_increment,
  `email` varchar(100) default NULL,
  `password` varchar(100) default NULL,
  `nick` varchar(50) default NULL,
  `sourceip` varchar(50) default NULL,
  `sourceinfo` varchar(255) default NULL,
  `status` int(11) default '0',
  `type` int(11) default '0',
  `avatar` varchar(50) default NULL,
  PRIMARY KEY  (`iduser`),
  UNIQUE KEY `emailuser` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`iduser`, `email`, `password`, `nick`, `sourceip`, `sourceinfo`, `status`, `type`, `avatar`) VALUES
(1, 'carlos@metistd.com', '1a1dc91c907325c69271ddf0c944bc72', 'carlos', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.54.16 (KHTML, like Gecko) Version/5.1.4 Safari/534.54.16', 1, 0, NULL),
(10, 'ilopezh@itesm.mx', 'f71029e0e7626d376def54f917e6e93e', 'Ivan', '187.141.102.203', 'Mozilla/5.0 (iPhone; CPU iPhone OS 5_1 like Mac OS X) AppleWebKit/534.46 (KHTML, like Gecko) Version/5.1 Mobile/9B176 Safari/7534.48.3', 1, 0, NULL),
(11, 'olmos.carlos@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'Carlos', '189.251.245.39', 'Mozilla/5.0 (iPod; CPU iPhone OS 5_1 like Mac OS X) AppleWebKit/534.46 (KHTML, like Gecko) Version/5.1 Mobile/9B176 Safari/7534.48.3', 1, 0, NULL),
(12, 'garzajaimesalberto@gmail.com', '2507232c6128f30b64788432e85ba62c', 'fofolocaustic', '189.230.45.132', 'Mozilla/5.0 (Linux; U; Android 2.1-update1; es-us; GT-I9000T Build/ECLAIR) AppleWebKit/530.17 (KHTML, like Gecko) Version/4.0 Mobile Safari/530.17', 1, 0, NULL),
(13, 'epsilonrequiem@gmail.com', 'c8ae5bc5b3a6831619a35841e084806f', 'epsilon', '201.156.228.59', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.152 Safari/535.19', 1, 0, NULL),
(14, 'cao@masnegocio.com', '1a1dc91c907325c69271ddf0c944bc72', 'carlosmn', '189.229.216.197', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.54.16 (KHTML, like Gecko) Version/5.1.4 Safari/534.54.16', 1, 0, NULL),
(15, 'ermx@metistd.com', 'fb1b0ee77fac5d5c9b9bd8edc43106af', 'ERMX', '189.229.216.197', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.54.16 (KHTML, like Gecko) Version/5.1.4 Safari/534.54.16', 1, 0, NULL);

-- --------------------------------------------------------

--
-- Estructura para la vista `stats`
--
DROP TABLE IF EXISTS `stats`;

CREATE ALGORITHM=UNDEFINED DEFINER=`keclswu`@`localhost` SQL SECURITY DEFINER VIEW `stats` AS select (select count(0) AS `count(0)` from `er` where (`er`.`status` < 3)) AS `total_er`,(select count(0) AS `count(0)` from `users` where (`users`.`status` < 3)) AS `total_usr`,(select count(0) AS `count(0)` from `login`) AS `total_logins`;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
