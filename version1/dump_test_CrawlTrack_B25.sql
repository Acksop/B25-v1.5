-- phpMyAdmin SQL Dump
-- version 3.5.2.1
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Lun 30 Juin 2014 à 16:30
-- Version du serveur: 5.1.72-2
-- Version de PHP: 5.5.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `test_CT`
--

-- --------------------------------------------------------

--
-- Structure de la table `crawlt_attack`
--

CREATE TABLE IF NOT EXISTS `crawlt_attack` (
  `id_attack` int(10) unsigned NOT NULL,
  `attack` varchar(255) NOT NULL,
  `script` varchar(255) NOT NULL,
  `type` varchar(5) NOT NULL,
  PRIMARY KEY (`id_attack`),
  KEY `attack` (`attack`),
  KEY `script` (`script`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `crawlt_badreferer`
--

CREATE TABLE IF NOT EXISTS `crawlt_badreferer` (
  `id_referer` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `referer` varchar(255) DEFAULT NULL,
  KEY `referer` (`referer`),
  KEY `id_referer` (`id_referer`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `crawlt_cache`
--

CREATE TABLE IF NOT EXISTS `crawlt_cache` (
  `cachename` varchar(255) NOT NULL,
  `time` int(11) DEFAULT NULL,
  PRIMARY KEY (`cachename`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `crawlt_config`
--

CREATE TABLE IF NOT EXISTS `crawlt_config` (
  `id_config` smallint(5) unsigned NOT NULL DEFAULT '0',
  `timeshift` smallint(6) DEFAULT NULL,
  `public` smallint(5) unsigned DEFAULT NULL,
  `mail` smallint(5) unsigned DEFAULT NULL,
  `datelastmail` smallint(5) unsigned DEFAULT NULL,
  `addressmail` varchar(255) DEFAULT NULL,
  `lang` varchar(20) DEFAULT NULL,
  `version` int(10) unsigned DEFAULT NULL,
  `firstdayweek` enum('Monday','Sunday') NOT NULL DEFAULT 'Monday',
  `datelastseorequest` smallint(5) NOT NULL DEFAULT '0',
  `loop1` smallint(5) NOT NULL DEFAULT '0',
  `loop2` smallint(5) NOT NULL DEFAULT '0',
  `datelastcleaning` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `rowdisplay` smallint(5) NOT NULL DEFAULT '0',
  `orderdisplay` smallint(5) NOT NULL DEFAULT '0',
  `typemail` smallint(5) NOT NULL DEFAULT '1',
  `typecharset` smallint(5) NOT NULL DEFAULT '1',
  `blockattack` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sessionid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `includeparameter` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_config`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `crawlt_crawler`
--

CREATE TABLE IF NOT EXISTS `crawlt_crawler` (
  `id_crawler` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `crawler_user_agent` varchar(255) DEFAULT NULL,
  `crawler_name` varchar(45) DEFAULT NULL,
  `crawler_url` varchar(255) DEFAULT NULL,
  `crawler_info` varchar(255) DEFAULT NULL,
  `crawler_ip` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id_crawler`),
  KEY `crawler_info` (`crawler_info`),
  KEY `crawler_ip` (`crawler_ip`),
  KEY `crawler_name` (`crawler_name`),
  KEY `crawler_url` (`crawler_url`),
  KEY `crawler_user_agent` (`crawler_user_agent`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1395 ;

-- --------------------------------------------------------

--
-- Structure de la table `crawlt_download`
--

CREATE TABLE IF NOT EXISTS `crawlt_download` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `link` varchar(255) NOT NULL,
  `count` int(11) NOT NULL,
  `date` date NOT NULL,
  `idsite` smallint(5) NOT NULL,
  KEY `id` (`id`,`link`,`count`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `crawlt_error`
--

CREATE TABLE IF NOT EXISTS `crawlt_error` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT,
  `idsite` smallint(5) NOT NULL,
  `count` int(10) NOT NULL,
  `date` date NOT NULL,
  `attacktype` smallint(5) unsigned NOT NULL,
  KEY `id` (`id`),
  KEY `id_site` (`idsite`),
  KEY `date` (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `crawlt_goodreferer`
--

CREATE TABLE IF NOT EXISTS `crawlt_goodreferer` (
  `referer` varchar(255) DEFAULT NULL,
  `id_site` smallint(5) NOT NULL,
  KEY `referer` (`referer`),
  KEY `id_site` (`id_site`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `crawlt_good_sites`
--

CREATE TABLE IF NOT EXISTS `crawlt_good_sites` (
  `id_site` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `host_site` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_site`),
  KEY `host_site` (`host_site`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `crawlt_graph`
--

CREATE TABLE IF NOT EXISTS `crawlt_graph` (
  `name` varchar(255) NOT NULL DEFAULT '',
  `graph_values` blob NOT NULL,
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `crawlt_hits`
--

CREATE TABLE IF NOT EXISTS `crawlt_hits` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT,
  `idsite` smallint(5) NOT NULL,
  `count` int(10) NOT NULL,
  `date` date NOT NULL,
  KEY `id` (`id`),
  KEY `id_site` (`idsite`),
  KEY `date` (`date`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2306 ;

-- --------------------------------------------------------

--
-- Structure de la table `crawlt_keyword`
--

CREATE TABLE IF NOT EXISTS `crawlt_keyword` (
  `id_keyword` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `keyword` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id_keyword`),
  KEY `id_keyword` (`id_keyword`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=47 ;

-- --------------------------------------------------------

--
-- Structure de la table `crawlt_login`
--

CREATE TABLE IF NOT EXISTS `crawlt_login` (
  `id_login` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `crawlt_user` varchar(20) DEFAULT NULL,
  `crawlt_password` varchar(45) DEFAULT NULL,
  `admin` smallint(5) unsigned DEFAULT NULL,
  `site` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`id_login`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Structure de la table `crawlt_pages`
--

CREATE TABLE IF NOT EXISTS `crawlt_pages` (
  `id_page` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url_page` varchar(255) DEFAULT NULL,
  KEY `url_page` (`url_page`),
  KEY `id_page` (`id_page`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29865 ;

-- --------------------------------------------------------

--
-- Structure de la table `crawlt_pages_attack`
--

CREATE TABLE IF NOT EXISTS `crawlt_pages_attack` (
  `id_page` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url_page` varchar(255) DEFAULT NULL,
  KEY `url_page` (`url_page`),
  KEY `id_page` (`id_page`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=41 ;

-- --------------------------------------------------------

--
-- Structure de la table `crawlt_referer`
--

CREATE TABLE IF NOT EXISTS `crawlt_referer` (
  `id_referer` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `referer` varchar(255) DEFAULT NULL,
  KEY `referer` (`referer`),
  KEY `id_referer` (`id_referer`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5700 ;

-- --------------------------------------------------------

--
-- Structure de la table `crawlt_seo_position`
--

CREATE TABLE IF NOT EXISTS `crawlt_seo_position` (
  `date` date DEFAULT NULL,
  `id_site` smallint(5) NOT NULL DEFAULT '0',
  `linkyahoo` int(10) unsigned DEFAULT NULL,
  `pageyahoo` int(10) unsigned DEFAULT NULL,
  `linkmsn` int(10) unsigned DEFAULT NULL,
  `pagemsn` int(10) unsigned DEFAULT NULL,
  `nbrdelicious` int(10) unsigned DEFAULT '0',
  `tagdelicious` varchar(255) NOT NULL DEFAULT '',
  `linkexalead` int(10) NOT NULL DEFAULT '0',
  `pageexalead` int(10) NOT NULL DEFAULT '0',
  `linkgoogle` int(10) NOT NULL DEFAULT '0',
  `pagegoogle` int(10) NOT NULL DEFAULT '0',
  KEY `date` (`date`),
  KEY `id_site` (`id_site`),
  KEY `linkmsn` (`linkmsn`),
  KEY `linkyahoo` (`linkyahoo`),
  KEY `nbrdelicious` (`nbrdelicious`),
  KEY `pagemsn` (`pagemsn`),
  KEY `pageyahoo` (`pageyahoo`),
  KEY `tagdelicious` (`tagdelicious`),
  KEY `linkexalead` (`linkexalead`),
  KEY `pageexalead` (`pageexalead`),
  KEY `linkgoogle` (`linkgoogle`),
  KEY `pagegoogle` (`pagegoogle`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `crawlt_sessionid`
--

CREATE TABLE IF NOT EXISTS `crawlt_sessionid` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sessionid` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `crawlt_site`
--

CREATE TABLE IF NOT EXISTS `crawlt_site` (
  `id_site` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL DEFAULT '',
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_site`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

-- --------------------------------------------------------

--
-- Structure de la table `crawlt_update`
--

CREATE TABLE IF NOT EXISTS `crawlt_update` (
  `idcrawlt_update` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `update_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`idcrawlt_update`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Structure de la table `crawlt_update_attack`
--

CREATE TABLE IF NOT EXISTS `crawlt_update_attack` (
  `idcrawlt_update` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `update_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`idcrawlt_update`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Structure de la table `crawlt_visits`
--

CREATE TABLE IF NOT EXISTS `crawlt_visits` (
  `id_visit` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `crawlt_site_id_site` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `crawlt_pages_id_page` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `crawlt_crawler_id_crawler` smallint(5) unsigned NOT NULL DEFAULT '0',
  `date` datetime DEFAULT NULL,
  `crawlt_ip_used` varchar(15) NOT NULL,
  `crawlt_error` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_visit`),
  KEY `crawlt_crawler_id_crawler` (`crawlt_crawler_id_crawler`),
  KEY `crawlt_ip_used` (`crawlt_ip_used`),
  KEY `crawlt_pages_id_page` (`crawlt_pages_id_page`),
  KEY `crawlt_site_id_site` (`crawlt_site_id_site`),
  KEY `date` (`date`),
  KEY `crawlt_error` (`crawlt_error`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25793 ;

-- --------------------------------------------------------

--
-- Structure de la table `crawlt_visits_human`
--

CREATE TABLE IF NOT EXISTS `crawlt_visits_human` (
  `id_visit` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `crawlt_site_id_site` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `crawlt_keyword_id_keyword` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `crawlt_id_crawler` smallint(5) unsigned NOT NULL DEFAULT '0',
  `date` datetime DEFAULT NULL,
  `crawlt_id_page` mediumint(9) NOT NULL DEFAULT '0',
  `crawlt_id_referer` mediumint(9) NOT NULL DEFAULT '0',
  `crawlt_ip` varchar(15) NOT NULL DEFAULT '0',
  `crawlt_error` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `crawlt_browser` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_visit`),
  KEY `crawlt_id_crawler` (`crawlt_id_crawler`),
  KEY `crawlt_id_page` (`crawlt_id_page`),
  KEY `crawlt_keyword_id_keyword` (`crawlt_keyword_id_keyword`),
  KEY `crawlt_site_id_site` (`crawlt_site_id_site`),
  KEY `date` (`date`),
  KEY `crawlt_id_referer` (`crawlt_id_referer`),
  KEY `crawlt_ip` (`crawlt_ip`),
  KEY `crawlt_error` (`crawlt_error`),
  KEY `crawlt_browser` (`crawlt_browser`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2731891 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
