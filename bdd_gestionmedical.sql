-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Serveur: localhost
-- Généré le : Mar 30 Mars 2021 à 13:41
-- Version du serveur: 5.5.8
-- Version de PHP: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `bdd_medical`
--

-- --------------------------------------------------------

--
-- Structure de la table `dosirer_medical`
--

CREATE TABLE IF NOT EXISTS `dosirer_medical` (
  `id_dossier` int(11) NOT NULL AUTO_INCREMENT,
  `id_p` int(11) NOT NULL,
  `id_m` int(11) NOT NULL,
  `Antecedant` text CHARACTER SET utf8 COLLATE utf8_bin,
  `traitement_actuel` text CHARACTER SET utf8 COLLATE utf8_bin,
  `resultat_anal_biologiques` text CHARACTER SET utf8 COLLATE utf8_bin,
  `resultat_irm_radio` text CHARACTER SET utf8 COLLATE utf8_bin,
  PRIMARY KEY (`id_dossier`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Contenu de la table `dosirer_medical`
--


-- --------------------------------------------------------

--
-- Structure de la table `medecin`
--

CREATE TABLE IF NOT EXISTS `medecin` (
  `id_med` int(11) NOT NULL AUTO_INCREMENT,
  `nom_med` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `prenom_med` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `specialite_med` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `mp` varchar(100) NOT NULL,
  PRIMARY KEY (`id_med`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Contenu de la table `medecin`
--


-- --------------------------------------------------------

--
-- Structure de la table `patient`
--

CREATE TABLE IF NOT EXISTS `patient` (
  `id_p` int(11) NOT NULL AUTO_INCREMENT,
  `nom_p` varchar(100) NOT NULL,
  `prenom_p` varchar(100) NOT NULL,
  `date_naiss_p` int(25) NOT NULL,
  `adresse_p` varchar(100) NOT NULL,
  `tel_p` varchar(25) NOT NULL,
  `email_p` varchar(100) NOT NULL,
  `sexe_p` varchar(25) NOT NULL,
  `n_securite_social` varchar(100) DEFAULT NULL,
  `ville_p` varchar(100) NOT NULL,
  `pays_p` varchar(100) NOT NULL,
  PRIMARY KEY (`id_p`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Contenu de la table `patient`
--


-- --------------------------------------------------------

--
-- Structure de la table `plage_horaire`
--

CREATE TABLE IF NOT EXISTS `plage_horaire` (
  `id_h` int(11) NOT NULL AUTO_INCREMENT,
  `id_m` int(11) NOT NULL,
  `jour_semaine` varchar(100) NOT NULL,
  `heure_debut` time NOT NULL,
  `heur_fin` time NOT NULL,
  PRIMARY KEY (`id_h`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Contenu de la table `plage_horaire`
--


-- --------------------------------------------------------

--
-- Structure de la table `rdv`
--

CREATE TABLE IF NOT EXISTS `rdv` (
  `id_rdv` int(11) NOT NULL AUTO_INCREMENT,
  `id_p` int(11) NOT NULL,
  `id_m` int(11) NOT NULL,
  `date_heure_rdv` datetime NOT NULL,
  PRIMARY KEY (`id_rdv`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Contenu de la table `rdv`
--


-- --------------------------------------------------------

--
-- Structure de la table `secretaire`
--

CREATE TABLE IF NOT EXISTS `secretaire` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mp` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Contenu de la table `secretaire`
--


-- --------------------------------------------------------

--
-- Structure de la table `visite`
--

CREATE TABLE IF NOT EXISTS `visite` (
  `id_visite` int(11) NOT NULL AUTO_INCREMENT,
  `id_p` int(11) NOT NULL,
  `id_m` int(11) NOT NULL,
  `date_visite` date NOT NULL,
  `diagnostic_patient` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id_visite`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Contenu de la table `visite`
--

