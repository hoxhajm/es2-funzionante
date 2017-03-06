-- Adminer 4.2.5 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `clienti`;
CREATE TABLE `clienti` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `clienti` (`id`, `nome`) VALUES
(1,	'alice'),
(2,	'emanuele');

DROP TABLE IF EXISTS `ricevute`;
CREATE TABLE `ricevute` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dataemissione` date NOT NULL,
  `descrizione` varchar(100) DEFAULT NULL,
  `importo` float NOT NULL,
  `clienti_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `clienti_id` (`clienti_id`),
  CONSTRAINT `ricevute_ibfk_1` FOREIGN KEY (`clienti_id`) REFERENCES `clienti` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `ricevute` (`id`, `dataemissione`, `descrizione`, `importo`, `clienti_id`) VALUES
(1,	'2016-10-10',	NULL,	200,	1),
(2,	'2016-08-08',	NULL,	135,	2);

-- 2017-03-06 21:21:04
