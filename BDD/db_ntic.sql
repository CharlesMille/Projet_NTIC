-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mar 06 Décembre 2016 à 16:43
-- Version du serveur :  10.1.13-MariaDB
-- Version de PHP :  5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `db_ntic`
--
CREATE DATABASE IF NOT EXISTS `db_ntic` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_ntic`;

-- --------------------------------------------------------

--
-- Structure de la table `bouton`
--

DROP TABLE IF EXISTS `bouton`;
CREATE TABLE `bouton` (
  `id_bouton` int(11) NOT NULL,
  `id_page` int(11) NOT NULL,
  `go_to_page` int(11) NOT NULL,
  `texte` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vider la table avant d'insérer `bouton`
--

TRUNCATE TABLE `bouton`;
-- --------------------------------------------------------

--
-- Structure de la table `page`
--

DROP TABLE IF EXISTS `page`;
CREATE TABLE `page` (
  `id_page` int(11) NOT NULL,
  `id_scenario` int(11) NOT NULL,
  `numero` int(11) NOT NULL,
  `texte` varchar(5000) NOT NULL,
  `image` varchar(500) DEFAULT NULL,
  `bouton1` int(11) DEFAULT NULL,
  `bouton2` int(11) DEFAULT NULL,
  `bouton3` int(11) DEFAULT NULL,
  `bouton4` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vider la table avant d'insérer `page`
--

TRUNCATE TABLE `page`;
-- --------------------------------------------------------

--
-- Structure de la table `scenario`
--

DROP TABLE IF EXISTS `scenario`;
CREATE TABLE `scenario` (
  `id_scenario` int(11) NOT NULL,
  `nom` varchar(500) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vider la table avant d'insérer `scenario`
--

TRUNCATE TABLE `scenario`;
--
-- Index pour les tables exportées
--

--
-- Index pour la table `bouton`
--
ALTER TABLE `bouton`
  ADD PRIMARY KEY (`id_bouton`);

--
-- Index pour la table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id_page`);

--
-- Index pour la table `scenario`
--
ALTER TABLE `scenario`
  ADD PRIMARY KEY (`id_scenario`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `bouton`
--
ALTER TABLE `bouton`
  MODIFY `id_bouton` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `page`
--
ALTER TABLE `page`
  MODIFY `id_page` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `scenario`
--
ALTER TABLE `scenario`
  MODIFY `id_scenario` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
