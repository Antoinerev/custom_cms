-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Client :  competencmrhs.mysql.db
-- Généré le :  Lun 03 Avril 2017 à 17:38
-- Version du serveur :  5.5.54-0+deb7u2-log
-- Version de PHP :  5.4.45-0+deb7u6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `competencmrhs`
--
CREATE DATABASE IF NOT EXISTS `competencmrhs` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `competencmrhs`;

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `Codes SIRET`
--
DROP VIEW IF EXISTS `Codes SIRET`;
CREATE TABLE IF NOT EXISTS `Codes SIRET` (
`SIRET` text
,`Clients` text
,`Raison_Sociale` text
);

-- --------------------------------------------------------

--
-- Structure de la table `Rhs_contacts`
--

DROP TABLE IF EXISTS `Rhs_contacts`;
CREATE TABLE IF NOT EXISTS `Rhs_contacts` (
  `contacts_idx` int(11) NOT NULL,
  `contacts_annee` int(11) NOT NULL,
  `contacts_nom` text NOT NULL,
  `contacts_prenom` text NOT NULL,
  `contacts_civilite` text NOT NULL,
  `contacts_secteur_d_activite` text NOT NULL,
  `contacts_adresse` text NOT NULL,
  `contacts_adresse2` text NOT NULL,
  `contacts_cp` text NOT NULL,
  `contacts_ville` text NOT NULL,
  `contacts_telephone_mobile` text NOT NULL,
  `contacts_telephone_perso` text NOT NULL,
  `contacts_telephone_pro` text NOT NULL,
  `contacts_mail` text NOT NULL,
  `contacts_mail_pro` text NOT NULL,
  `contacts_ville_agence` text NOT NULL,
  `contacts_present` text NOT NULL,
  `contacts_entretient` text NOT NULL,
  `contacts_categorie` text NOT NULL,
  `contacts_origine` text NOT NULL,
  `contact_date_premier_contact` date NOT NULL,
  `contact_source` text NOT NULL,
  `contacts_suite_donnee` text NOT NULL,
  `contacts_resultat` text NOT NULL,
  `contacts_derniere_annee_contrat` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Rhs_histo_clients`
--

DROP TABLE IF EXISTS `Rhs_histo_clients`;
CREATE TABLE IF NOT EXISTS `Rhs_histo_clients` (
  `idx_Rhs_histo_clients` int(11) NOT NULL,
  `Mt_retardTTC` decimal(10,0) NOT NULL,
  `Date_echeance` datetime NOT NULL,
  `Date_emission` datetime NOT NULL,
  `CAHT` decimal(10,0) NOT NULL,
  `Mt_retard` decimal(10,0) NOT NULL,
  `Retard` int(11) NOT NULL,
  `Clients` text NOT NULL,
  `Statut` text NOT NULL,
  `SIRET` text NOT NULL,
  `Numero` text NOT NULL,
  `Raison_Sociale` text NOT NULL,
  `Nature` text NOT NULL,
  `Prenom_porte` text NOT NULL,
  `CATTC` decimal(10,0) NOT NULL,
  `Nom_porte` text NOT NULL,
  `Solde` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `TOP Clients`
--
DROP VIEW IF EXISTS `TOP Clients`;
CREATE TABLE IF NOT EXISTS `TOP Clients` (
`sum(CAHT)` decimal(32,0)
,`SIRET` text
,`Clients` text
);

-- --------------------------------------------------------

--
-- Structure de la vue `Codes SIRET`
--
DROP TABLE IF EXISTS `Codes SIRET`;

CREATE ALGORITHM=UNDEFINED DEFINER=`competencmrhs`@`%` SQL SECURITY DEFINER VIEW `Codes SIRET` AS select distinct `Rhs_histo_clients`.`SIRET` AS `SIRET`,`Rhs_histo_clients`.`Clients` AS `Clients`,`Rhs_histo_clients`.`Raison_Sociale` AS `Raison_Sociale` from `Rhs_histo_clients` where (`Rhs_histo_clients`.`SIRET` <> '') order by `Rhs_histo_clients`.`SIRET`;

-- --------------------------------------------------------

--
-- Structure de la vue `TOP Clients`
--
DROP TABLE IF EXISTS `TOP Clients`;

CREATE ALGORITHM=UNDEFINED DEFINER=`competencmrhs`@`%` SQL SECURITY DEFINER VIEW `TOP Clients` AS select sum(`Rhs_histo_clients`.`CAHT`) AS `sum(CAHT)`,`Rhs_histo_clients`.`SIRET` AS `SIRET`,`Rhs_histo_clients`.`Clients` AS `Clients` from `Rhs_histo_clients` where ((`Rhs_histo_clients`.`Raison_Sociale` = 'Competences 44') and (`Rhs_histo_clients`.`Date_emission` >= '2015-09-01 00:00:00') and (`Rhs_histo_clients`.`Date_emission` <= '2016-09-01 00:00:00')) group by `Rhs_histo_clients`.`SIRET` order by sum(`Rhs_histo_clients`.`CAHT`) desc;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `Rhs_contacts`
--
ALTER TABLE `Rhs_contacts`
  ADD PRIMARY KEY (`contacts_idx`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
