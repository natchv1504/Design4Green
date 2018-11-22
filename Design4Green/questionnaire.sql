-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 22 Novembre 2018 à 05:46
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `questionnaire`
--

-- --------------------------------------------------------

--
-- Structure de la table `question`
--

CREATE TABLE `question` (
  `id` int(10) NOT NULL,
  `intitule` varchar(255) NOT NULL,
  `theme` varchar(255) NOT NULL,
  `groupe_quest` varchar(255) NOT NULL,
  `type` varchar(30) DEFAULT NULL,
  `r1` varchar(255) DEFAULT NULL,
  `r2` varchar(255) DEFAULT NULL,
  `r3` varchar(255) DEFAULT NULL,
  `r4` varchar(255) DEFAULT NULL,
  `r5` varchar(255) DEFAULT NULL,
  `r6` varchar(255) NOT NULL,
  `r7` varchar(255) NOT NULL,
  `r8` varchar(255) NOT NULL,
  `r9` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `question`
--

INSERT INTO `question` (`id`, `intitule`, `theme`, `groupe_quest`, `type`, `r1`, `r2`, `r3`, `r4`, `r5`, `r6`, `r7`, `r8`, `r9`) VALUES
(1, 'In which sector of activity is your company active? (linked with your APE code)', 'your compagny', '0', 'single', 'Industry', 'Business', 'Information and communication', 'Other services activity', 'All other activities (financial, agricultural activities ...)\r\n', 'Construction \r\n', 'Public sector \r\n', 'Specialized, Scientific and Technical or Administrative and Support Services Activities\r\n', 'Real estate'),
(6, 'Do you apply the rules and best practices for digital accessibility?', 'your compagny\r\n', 'Ecoconception good practices', 'single', 'Yes', 'No', 'I don\'t know', NULL, NULL, '', '', '', ''),
(2, 'What is the number of employees in your company on 18/12/31 ?', 'your compagny', '0', 'single', '0', '1 to 2\r\n', '3 to 9\r\n', '10 to 49\r\n', '50 to 249\r\n', '250 to 4999\r\n', 'More than 5000\r\n', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id_user` int(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `url` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id_user`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
