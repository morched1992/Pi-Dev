-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Lun 17 Février 2014 à 15:37
-- Version du serveur: 5.6.12-log
-- Version de PHP: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `jetsetmag`
--
CREATE DATABASE IF NOT EXISTS `jetsetmag` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `jetsetmag`;

-- --------------------------------------------------------

--
-- Structure de la table `adherents`
--

CREATE TABLE IF NOT EXISTS `adherents` (
  `id_adherent` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nom` varchar(25) NOT NULL,
  `prenom` varchar(25) NOT NULL,
  `age` int(3) NOT NULL,
  `email` varchar(55) NOT NULL,
  `telephone` int(10) NOT NULL,
  `adresse` text NOT NULL,
  `pays` varchar(25) NOT NULL,
  PRIMARY KEY (`id_adherent`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `adherents`
--

INSERT INTO `adherents` (`id_adherent`, `login`, `password`, `nom`, `prenom`, `age`, `email`, `telephone`, `adresse`, `pays`) VALUES
(3, 'you3842', 'youssef', 'El Hachaichi', 'Youssef', 20, 'youssef@live.fr', 22600832, 'La Marsa', 'Tunisie'),
(4, 'greger', 'ergeg', 'ezze', 'you', 455, 'egeg', 582, 'fgerg', 'egerg');

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id_admin` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `admin`
--

INSERT INTO `admin` (`id_admin`, `login`, `password`) VALUES
(1, 'syrine', 'syrine'),
(2, 'khalil', 'khalil'),
(3, 'tarek', 'tarek'),
(4, 'morched', 'morched'),
(5, 'youssef', 'youssef');

-- --------------------------------------------------------

--
-- Structure de la table `album`
--

CREATE TABLE IF NOT EXISTS `album` (
  `id_album` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id_album`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `album`
--

INSERT INTO `album` (`id_album`, `titre`, `description`) VALUES
(1, 'Le 06/02/2014, Au Sindbad', 'La toute derni'),
(2, 'Le 12/02/2014, A La Closerie', '');

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `id_article` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(40) NOT NULL,
  `date_mise_en_ligne` varchar(40) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id_article`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `articles`
--

INSERT INTO `articles` (`id_article`, `titre`, `date_mise_en_ligne`, `description`) VALUES
(1, 'Youssef', '12-12-2012', 'Salut Youssef je me suis ajout? !'),
(2, 'La Campagne', '16/04/2078', 'Lalala'),
(3, 'Nouvel Article', '16/02/2014', 'Je suis g?nial !'),
(4, 'Bonjour', '13/02/2017', 'Syrine a ajout? un article par DAO'),
(5, 'Morched', '13/02/2014', 'Salut salut ! ');

-- --------------------------------------------------------

--
-- Structure de la table `cinema`
--

CREATE TABLE IF NOT EXISTS `cinema` (
  `id_cinema` int(11) NOT NULL AUTO_INCREMENT,
  `id_culture` int(11) NOT NULL,
  `date_sortie` date NOT NULL,
  `acteurs` text NOT NULL,
  `realisateurs` text NOT NULL,
  PRIMARY KEY (`id_cinema`),
  KEY `id_culture` (`id_culture`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `commentaires`
--

CREATE TABLE IF NOT EXISTS `commentaires` (
  `id_comentaire` int(11) NOT NULL AUTO_INCREMENT,
  `id_article` int(11) NOT NULL,
  `id_adherent` int(11) NOT NULL,
  `contenu` text NOT NULL,
  PRIMARY KEY (`id_comentaire`),
  KEY `id_adherent` (`id_adherent`),
  KEY `id_article` (`id_article`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `concert`
--

CREATE TABLE IF NOT EXISTS `concert` (
  `id_concert` int(11) NOT NULL AUTO_INCREMENT,
  `id_culture` int(11) NOT NULL,
  `nom_artistes` text NOT NULL,
  `date` date NOT NULL,
  `adresse` text NOT NULL,
  `heure_debut` varchar(35) NOT NULL,
  `heure_fin` varchar(35) NOT NULL,
  PRIMARY KEY (`id_concert`),
  KEY `id_culture` (`id_culture`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `culture`
--

CREATE TABLE IF NOT EXISTS `culture` (
  `id_culture` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(35) NOT NULL,
  `date_mise_en_ligne` date NOT NULL,
  `type_culture` varchar(35) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id_culture`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `evenement`
--

CREATE TABLE IF NOT EXISTS `evenement` (
  `id_evenement` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(20) NOT NULL,
  `date_evenement` date NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id_evenement`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `messagerie`
--

CREATE TABLE IF NOT EXISTS `messagerie` (
  `id_message` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(25) NOT NULL,
  `prenom` varchar(25) NOT NULL,
  `telephone` int(8) NOT NULL,
  `email` varchar(40) NOT NULL,
  `sujet` varchar(40) NOT NULL,
  `contenu` text NOT NULL,
  PRIMARY KEY (`id_message`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `photos`
--

CREATE TABLE IF NOT EXISTS `photos` (
  `id_photo` int(11) NOT NULL AUTO_INCREMENT,
  `id_album` int(11) NOT NULL,
  `description` text NOT NULL,
  `chemin_acces` varchar(255) NOT NULL,
  PRIMARY KEY (`id_photo`),
  KEY `id_album` (`id_album`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `photos`
--

INSERT INTO `photos` (`id_photo`, `id_album`, `description`, `chemin_acces`) VALUES
(1, 1, 'Voici la plus belle fille trouv?e ? la soir?e en train de poser ! Une vraie JetSetteuse ! :D', 'http://127.0.0.1/JetSetMag/cssmenu/menu_source/Images/Gallerie/Sindbad1.jpg'),
(2, 2, 'jj', 'http://127.0.0.1/JetSetMag/zAgroPlus/Gallerie/Sindbad2.jpg'),
(3, 1, 'HH', 'http://127.0.0.1/JetSetMag/cssmenu/menu_source/Images/Gallerie/Sindbad3.jpg'),
(4, 1, 'll', 'http://127.0.0.1/JetSetMag/cssmenu/menu_source/Images/Gallerie/Sindbad4.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `piece_de_theatre`
--

CREATE TABLE IF NOT EXISTS `piece_de_theatre` (
  `id_piece` int(11) NOT NULL AUTO_INCREMENT,
  `id_culture` int(11) NOT NULL,
  `date` date NOT NULL,
  `adresse` text NOT NULL,
  `heure_debut` varchar(35) NOT NULL,
  `heure_fin` varchar(35) NOT NULL,
  PRIMARY KEY (`id_piece`),
  KEY `id_culture` (`id_culture`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `soiree`
--

CREATE TABLE IF NOT EXISTS `soiree` (
  `id_soiree` int(11) NOT NULL,
  `date` date NOT NULL,
  `adresse` text NOT NULL,
  `heure_debut` varchar(35) NOT NULL,
  `heure_fin` varchar(35) NOT NULL,
  `titre` varchar(35) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `sorties_enfants`
--

CREATE TABLE IF NOT EXISTS `sorties_enfants` (
  `id_sorties_enfants` int(11) NOT NULL AUTO_INCREMENT,
  `destination` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `heure_depart` varchar(10) NOT NULL,
  `heure_retour` varchar(10) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id_sorties_enfants`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `videos`
--

CREATE TABLE IF NOT EXISTS `videos` (
  `id_video` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(25) NOT NULL,
  `chemin_acces` varchar(255) NOT NULL,
  PRIMARY KEY (`id_video`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `cinema`
--
ALTER TABLE `cinema`
  ADD CONSTRAINT `cinema_ibfk_1` FOREIGN KEY (`id_culture`) REFERENCES `culture` (`id_culture`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
