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
-- Base de données: `test`
--

-- --------------------------------------------------------

--
-- Structure de la table `Alerte_H4X0R`
--

CREATE TABLE IF NOT EXISTS `Alerte_H4X0R` (
  `id_alerte` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL COMMENT '1: brute force , 2: duplication d''identité,3: intrusion page var, 4:erreurVideo',
  `date` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `IP1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `IP2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `compte` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_alerte`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=137 ;

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `id_article` int(11) NOT NULL AUTO_INCREMENT,
  `id_utilisateur` int(11) NOT NULL,
  `date` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `titre` tinytext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `corps` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `id_ideologie` int(11) NOT NULL DEFAULT '1',
  `id_theme` int(11) NOT NULL DEFAULT '1',
  `image` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `nbLectures` int(11) NOT NULL DEFAULT '0',
  `nbClicks` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_article`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=46 ;

-- --------------------------------------------------------

--
-- Structure de la table `articlesCommentaires`
--

CREATE TABLE IF NOT EXISTS `articlesCommentaires` (
  `id_commentaire` int(11) NOT NULL AUTO_INCREMENT,
  `id_article` int(11) NOT NULL,
  `valeurCommentaire` int(11) NOT NULL DEFAULT '50' COMMENT 'permet de donner une valeur au commentaire',
  `Pseudo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Corps_commentaire` text COLLATE utf8_unicode_ci NOT NULL,
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Ip` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_commentaire`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8599 ;

-- --------------------------------------------------------

--
-- Structure de la table `articlesEnAttentes`
--

CREATE TABLE IF NOT EXISTS `articlesEnAttentes` (
  `id_article` int(11) NOT NULL AUTO_INCREMENT,
  `id_utilisateur` int(11) NOT NULL,
  `date` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `titre` tinytext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `corps` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `id_ideologie` int(11) NOT NULL,
  `id_theme` int(11) NOT NULL,
  `image` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_article`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

-- --------------------------------------------------------

--
-- Structure de la table `articlesEnValidations`
--

CREATE TABLE IF NOT EXISTS `articlesEnValidations` (
  `id_article` int(11) NOT NULL AUTO_INCREMENT,
  `id_utilisateur` int(11) NOT NULL,
  `date` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `titre` tinytext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `corps` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `id_ideologie` int(11) NOT NULL,
  `id_theme` int(11) NOT NULL,
  `image` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_article`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

-- --------------------------------------------------------

--
-- Structure de la table `articles_VisitesUniques`
--

CREATE TABLE IF NOT EXISTS `articles_VisitesUniques` (
  `ip_visiteur` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `id_article` int(15) NOT NULL,
  PRIMARY KEY (`ip_visiteur`,`id_article`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `artisans_articles`
--

CREATE TABLE IF NOT EXISTS `artisans_articles` (
  `id_article` int(11) NOT NULL AUTO_INCREMENT,
  `id_artiste` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image_tailleX` int(11) NOT NULL,
  `image_tailleY` int(11) NOT NULL,
  `libelle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `prix` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_article`),
  UNIQUE KEY `id_artiocle` (`id_article`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=17 ;

-- --------------------------------------------------------

--
-- Structure de la table `artisans_descriptif`
--

CREATE TABLE IF NOT EXISTS `artisans_descriptif` (
  `id_artiste` int(11) NOT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `logo_tailleX` int(11) NOT NULL,
  `logo_tailleY` int(11) NOT NULL,
  `descriptif` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `artistes`
--

CREATE TABLE IF NOT EXISTS `artistes` (
  `id_artiste` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `prenom` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `pseudo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `telephone` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `voir_telephone` int(1) NOT NULL DEFAULT '1',
  `site_web_only` int(1) NOT NULL DEFAULT '0' COMMENT '1: site web only 0:all coord',
  `voir_courriel` int(1) NOT NULL DEFAULT '1',
  `voir_tweets` int(1) NOT NULL DEFAULT '0' COMMENT '0:invisible sur la liste 1:visible',
  `affichage_tweets` int(1) NOT NULL DEFAULT '0' COMMENT '0:murde billets 1:tableau',
  `nb_affichage_tweet` int(11) NOT NULL DEFAULT '0' COMMENT 'Nb d''affichage de la page',
  `description` tinytext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `siteInterWeb` varchar(255) NOT NULL,
  `id_utilisateur` int(11) NOT NULL,
  PRIMARY KEY (`id_artiste`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

-- --------------------------------------------------------

--
-- Structure de la table `artiste_BUZZ`
--

CREATE TABLE IF NOT EXISTS `artiste_BUZZ` (
  `id_buzz` int(11) NOT NULL AUTO_INCREMENT,
  `id_artiste` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` int(11) NOT NULL COMMENT '0: tweet txt  ;   1: tweet image  ;  2: tweet son  ;  3: tweet vidéo  ;  4: billet  ;  5: article',
  PRIMARY KEY (`id_buzz`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=169 ;

-- --------------------------------------------------------

--
-- Structure de la table `artiste_tweet_article`
--

CREATE TABLE IF NOT EXISTS `artiste_tweet_article` (
  `id_tweet` int(11) NOT NULL AUTO_INCREMENT,
  `id_buzz` int(11) NOT NULL,
  `titre` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `corps` text COLLATE utf8_unicode_ci NOT NULL,
  `bbcode` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_tweet`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `artiste_tweet_billet`
--

CREATE TABLE IF NOT EXISTS `artiste_tweet_billet` (
  `id_billet` int(11) NOT NULL AUTO_INCREMENT,
  `id_buzz` int(11) NOT NULL,
  `titre` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `corps` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_billet`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `artiste_tweet_image`
--

CREATE TABLE IF NOT EXISTS `artiste_tweet_image` (
  `id_tweet` int(11) NOT NULL AUTO_INCREMENT,
  `id_buzz` int(11) NOT NULL,
  `nomImage` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `original` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `text` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_tweet`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=82 ;

-- --------------------------------------------------------

--
-- Structure de la table `artiste_tweet_son`
--

CREATE TABLE IF NOT EXISTS `artiste_tweet_son` (
  `id_tweet` int(11) NOT NULL AUTO_INCREMENT,
  `id_buzz` int(11) NOT NULL,
  `nomMp3` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `son` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `text` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_tweet`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=18 ;

-- --------------------------------------------------------

--
-- Structure de la table `artiste_tweet_txt`
--

CREATE TABLE IF NOT EXISTS `artiste_tweet_txt` (
  `id_tweet` int(11) NOT NULL AUTO_INCREMENT,
  `id_buzz` int(11) NOT NULL,
  `text` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_tweet`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=17 ;

-- --------------------------------------------------------

--
-- Structure de la table `artiste_tweet_video`
--

CREATE TABLE IF NOT EXISTS `artiste_tweet_video` (
  `id_tweet` int(11) NOT NULL AUTO_INCREMENT,
  `id_buzz` int(11) NOT NULL,
  `adresseMedia` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `codeConnexe` text COLLATE utf8_unicode_ci NOT NULL,
  `text` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_tweet`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=51 ;

-- --------------------------------------------------------

--
-- Structure de la table `associations`
--

CREATE TABLE IF NOT EXISTS `associations` (
  `id_association` int(11) NOT NULL AUTO_INCREMENT,
  `logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `nom` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` tinytext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `telephone` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `siteInterWeb` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `voir_Page` int(11) NOT NULL DEFAULT '0',
  `adresse` tinytext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `codePostal` int(5) NOT NULL DEFAULT '25000',
  `ville` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `id_utilisateur` int(11) NOT NULL,
  PRIMARY KEY (`id_association`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

-- --------------------------------------------------------

--
-- Structure de la table `association_BUZZ`
--

CREATE TABLE IF NOT EXISTS `association_BUZZ` (
  `id_buzz` int(11) NOT NULL AUTO_INCREMENT,
  `id_association` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` int(11) NOT NULL COMMENT '0: tweet txt ; 1: tweet image ; 2: tweet son ; 3: tweet vidéo ; 4: billet ; 5: article',
  PRIMARY KEY (`id_buzz`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `association_descriptif`
--

CREATE TABLE IF NOT EXISTS `association_descriptif` (
  `id_association` int(11) NOT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `logo_tailleX` int(11) NOT NULL,
  `logo_tailleY` int(11) NOT NULL,
  `descriptif` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `association_liensWeb`
--

CREATE TABLE IF NOT EXISTS `association_liensWeb` (
  `id_lien` int(11) NOT NULL AUTO_INCREMENT,
  `id_association` int(11) NOT NULL,
  `libelle_lienWeb` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_lien`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=23 ;

-- --------------------------------------------------------

--
-- Structure de la table `association_membres`
--

CREATE TABLE IF NOT EXISTS `association_membres` (
  `id_membre` int(11) NOT NULL AUTO_INCREMENT,
  `id_association` int(11) NOT NULL,
  `membre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `courriel` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_membre`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=16 ;

-- --------------------------------------------------------

--
-- Structure de la table `association_status`
--

CREATE TABLE IF NOT EXISTS `association_status` (
  `id_association` int(11) NOT NULL,
  `president` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `courriel_president` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `vicePresident` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `courriel_vicePresident` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tresorier` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `courriel_tresorier` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `secretaire` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `courriel_secretaire` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `association_tweet_article`
--

CREATE TABLE IF NOT EXISTS `association_tweet_article` (
  `id_tweet` int(11) NOT NULL AUTO_INCREMENT,
  `id_buzz` int(11) NOT NULL,
  `titre` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `corps` text COLLATE utf8_unicode_ci NOT NULL,
  `bbcode` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_tweet`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `association_tweet_billet`
--

CREATE TABLE IF NOT EXISTS `association_tweet_billet` (
  `id_billet` int(11) NOT NULL AUTO_INCREMENT,
  `id_buzz` int(11) NOT NULL,
  `titre` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `corps` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_billet`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `association_tweet_image`
--

CREATE TABLE IF NOT EXISTS `association_tweet_image` (
  `id_tweet` int(11) NOT NULL AUTO_INCREMENT,
  `id_buzz` int(11) NOT NULL,
  `nomImage` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `original` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `text` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_tweet`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `association_tweet_son`
--

CREATE TABLE IF NOT EXISTS `association_tweet_son` (
  `id_tweet` int(11) NOT NULL AUTO_INCREMENT,
  `id_buzz` int(11) NOT NULL,
  `son` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `text` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_tweet`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `association_tweet_txt`
--

CREATE TABLE IF NOT EXISTS `association_tweet_txt` (
  `id_tweet` int(11) NOT NULL AUTO_INCREMENT,
  `id_buzz` int(11) NOT NULL,
  `text` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_tweet`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Structure de la table `association_tweet_video`
--

CREATE TABLE IF NOT EXISTS `association_tweet_video` (
  `id_tweet` int(11) NOT NULL AUTO_INCREMENT,
  `id_buzz` int(11) NOT NULL,
  `video` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `text` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_tweet`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `B25_bang_links`
--

CREATE TABLE IF NOT EXISTS `B25_bang_links` (
  `id_bang_link` int(11) NOT NULL AUTO_INCREMENT,
  `adresse` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `code` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_bang_link`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Structure de la table `B25_preferences`
--

CREATE TABLE IF NOT EXISTS `B25_preferences` (
  `gueuloir` int(11) NOT NULL COMMENT '0: Tchat ; 1:gueuloir'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `connectes`
--

CREATE TABLE IF NOT EXISTS `connectes` (
  `ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `derniere` int(20) unsigned NOT NULL DEFAULT '0',
  `pseudo` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tentativesConnection` int(9) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `dossiers`
--

CREATE TABLE IF NOT EXISTS `dossiers` (
  `id_dossier` int(11) NOT NULL AUTO_INCREMENT,
  `id_utilisateur` int(11) NOT NULL,
  `titre` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date_Crea` varchar(70) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date_Modif` varchar(70) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date_miseEnValid` varchar(70) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date_Validation` varchar(70) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date_misEnLigne` varchar(70) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `corps` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `bbcode` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `nbLecture` int(25) NOT NULL,
  PRIMARY KEY (`id_dossier`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

-- --------------------------------------------------------

--
-- Structure de la table `dossiersEnValidations`
--

CREATE TABLE IF NOT EXISTS `dossiersEnValidations` (
  `id_dossier` int(11) NOT NULL AUTO_INCREMENT,
  `id_utilisateur` int(11) NOT NULL,
  `titre` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date_Crea` varchar(70) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date_Modif` varchar(70) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date_miseEnValid` varchar(70) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `corps` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `bbcode` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_dossier`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

-- --------------------------------------------------------

--
-- Structure de la table `dossiersTemporaires`
--

CREATE TABLE IF NOT EXISTS `dossiersTemporaires` (
  `id_dossier` int(11) NOT NULL AUTO_INCREMENT,
  `id_utilisateur` int(11) NOT NULL,
  `titre` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date_Crea` varchar(70) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date_Modif` varchar(70) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `corps` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `bbcode` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_dossier`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

-- --------------------------------------------------------

--
-- Structure de la table `estRelierA`
--

CREATE TABLE IF NOT EXISTS `estRelierA` (
  `idCompte1` int(11) NOT NULL,
  `idCompte2` int(11) NOT NULL,
  PRIMARY KEY (`idCompte1`,`idCompte2`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='permet de lier les compte entre eux';

-- --------------------------------------------------------

--
-- Structure de la table `evenementsActifs`
--

CREATE TABLE IF NOT EXISTS `evenementsActifs` (
  `id_evenement` int(11) NOT NULL AUTO_INCREMENT,
  `id_association` int(11) NOT NULL DEFAULT '0',
  `courriel` text COLLATE utf8_unicode_ci NOT NULL,
  `dateEcriture` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dateEvenement` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `corps` text COLLATE utf8_unicode_ci NOT NULL,
  `cle` int(11) NOT NULL,
  `id_theme` int(11) NOT NULL,
  `nbLecture` int(11) NOT NULL,
  PRIMARY KEY (`id_evenement`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=42 ;

-- --------------------------------------------------------

--
-- Structure de la table `evenementsEnValidation`
--

CREATE TABLE IF NOT EXISTS `evenementsEnValidation` (
  `id_evenement` int(11) NOT NULL AUTO_INCREMENT,
  `id_association` int(11) NOT NULL DEFAULT '0',
  `courriel` text COLLATE utf8_unicode_ci NOT NULL,
  `dateEcriture` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dateEvenement` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `corps` text COLLATE utf8_unicode_ci NOT NULL,
  `cle` int(11) NOT NULL,
  `id_theme` int(11) NOT NULL,
  PRIMARY KEY (`id_evenement`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=37 ;

-- --------------------------------------------------------

--
-- Structure de la table `groupes_albums`
--

CREATE TABLE IF NOT EXISTS `groupes_albums` (
  `id_album` int(11) NOT NULL AUTO_INCREMENT,
  `id_association` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image_tailleX` int(11) NOT NULL,
  `image_tailleY` int(11) NOT NULL,
  `libelle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `annee` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `style` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_album`),
  UNIQUE KEY `id_album` (`id_album`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `groupes_albums_musiques`
--

CREATE TABLE IF NOT EXISTS `groupes_albums_musiques` (
  `id_musique` int(11) NOT NULL AUTO_INCREMENT,
  `id_album` int(11) NOT NULL,
  `nomFichier` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `musique` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `titre` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_musique`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `Ideologies`
--

CREATE TABLE IF NOT EXISTS `Ideologies` (
  `id_ideologie` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `nbLectures` int(11) NOT NULL COMMENT 'Champs pour une lecture plus facile de l''underground A-Politique',
  PRIMARY KEY (`id_ideologie`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

-- --------------------------------------------------------

--
-- Structure de la table `journalistes`
--

CREATE TABLE IF NOT EXISTS `journalistes` (
  `id_journaliste` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `prenom` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `surnom` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `signature` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `rencontre` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `geolocalisation` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `id_utilisateur` int(11) NOT NULL,
  PRIMARY KEY (`id_journaliste`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

-- --------------------------------------------------------

--
-- Structure de la table `petiteAnnoncesEnLecture`
--

CREATE TABLE IF NOT EXISTS `petiteAnnoncesEnLecture` (
  `id_annonce` int(11) NOT NULL AUTO_INCREMENT,
  `id_artiste` int(11) NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `titre` text COLLATE utf8_unicode_ci NOT NULL,
  `corps` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `courriel` text COLLATE utf8_unicode_ci NOT NULL,
  `cle` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `nbLecture` int(11) NOT NULL,
  PRIMARY KEY (`id_annonce`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='annonces en lecture de besancon25.com' AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- Structure de la table `petiteAnnoncesEnValidations`
--

CREATE TABLE IF NOT EXISTS `petiteAnnoncesEnValidations` (
  `id_annonce` int(11) NOT NULL AUTO_INCREMENT,
  `id_artiste` int(11) NOT NULL DEFAULT '0',
  `titre` text COLLATE utf8_unicode_ci NOT NULL,
  `corps` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cle` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `courriel` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_annonce`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='besancon25.com' AUTO_INCREMENT=58 ;

-- --------------------------------------------------------

--
-- Structure de la table `Tchat`
--

CREATE TABLE IF NOT EXISTS `Tchat` (
  `id_dialogue` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `corpsDuTexte` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `valide` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_dialogue`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Table permettant d''échanger des points de vue sur les articl' AUTO_INCREMENT=3224 ;

-- --------------------------------------------------------

--
-- Structure de la table `Themes`
--

CREATE TABLE IF NOT EXISTS `Themes` (
  `id_theme` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `libelle` varchar(255) NOT NULL,
  PRIMARY KEY (`id_theme`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE IF NOT EXISTS `utilisateur` (
  `id_utilisateur` int(11) NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'A encoder en base(64)',
  `repertoirePersonnel` varchar(255) NOT NULL,
  `dateInscription` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dateDerniereConnexion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `nbConnexions` int(11) NOT NULL DEFAULT '0',
  `type_compte` int(11) NOT NULL COMMENT '0:superutilisateur ; 1:journaliste ; 2:artiste ; 3:association ; 4:Artisans ; 5:Groupe',
  `statut` int(11) NOT NULL COMMENT '0: admis ; 1: kické ; 2:banni ; 3:déinscrit',
  PRIMARY KEY (`id_utilisateur`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=68 ;

--
-- Contenu de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id_utilisateur`, `pseudo`, `password`, `repertoirePersonnel`, `dateInscription`, `dateDerniereConnexion`, `nbConnexions`, `type_compte`, `statut`) VALUES
(66, '', '', 'test', '', '2014-06-30 14:25:01', 0, 1, 1),
(67, 'root', 'root', 'root', '', '2014-06-30 14:23:58', 0, 0, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
