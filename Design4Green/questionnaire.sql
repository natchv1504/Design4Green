-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  jeu. 22 nov. 2018 à 16:00
-- Version du serveur :  5.7.19
-- Version de PHP :  5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
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

DROP TABLE IF EXISTS `question`;
CREATE TABLE IF NOT EXISTS `question` (
  `id` int(10) NOT NULL,
  `intitule` text NOT NULL,
  `theme` varchar(255) NOT NULL,
  `groupe_quest` varchar(255) NOT NULL,
  `type` varchar(30) DEFAULT NULL,
  `r1` varchar(255) DEFAULT NULL,
  `r2` varchar(255) DEFAULT NULL,
  `r3` varchar(255) DEFAULT NULL,
  `r4` varchar(255) DEFAULT NULL,
  `r5` varchar(255) DEFAULT NULL,
  `r6` varchar(255) DEFAULT NULL,
  `r7` varchar(255) DEFAULT NULL,
  `r8` varchar(255) DEFAULT NULL,
  `r9` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `question`
--

INSERT INTO `question` (`id`, `intitule`, `theme`, `groupe_quest`, `type`, `r1`, `r2`, `r3`, `r4`, `r5`, `r6`, `r7`, `r8`, `r9`) VALUES
(1, 'In which sector of activity is your company active? (linked with your APE code)', 'your compagny', '0', 'single', 'Industry', 'Business', 'Information and communication', 'Other services activity', 'All other activities (financial, agricultural activities ...)\r\n', 'Construction \r\n', 'Public sector \r\n', 'Specialized, Scientific and Technical or Administrative and Support Services Activities\r\n', 'Real estate'),
(6, 'Do you apply the rules and best practices for digital accessibility?', 'your compagny\r\n', 'Ecoconception good practices', 'single', 'Yes', 'No', 'I don\'t know', '', '', '', '', '', ''),
(2, 'What is the number of employees in your company on 18/12/31 ?', 'your compagny', '0', 'single', '0', '1 to 2\r\n', '3 to 9\r\n', '10 to 49\r\n', '50 to 249\r\n', '250 to 4999\r\n', 'More than 5000\r\n', '', ''),
(3, '3.What is the turnover of your company in the last fiscal year? (or annual budget for Public sector)', 'your company', '0', 'single', '0 to 100K €', '100 to 500 K€', '500 to 2 M €', '2 to 10 M€', '10 to 50 M€', 'More than 50 M€', NULL, NULL, NULL),
(4, '4. Do you develop digital services for internal or external use (sales to customers)?', 'your compagny', '0', 'single', 'Yes', 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, '5. What is the number of users of your digital services?', 'your compagny', '0', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, '7. Have you optimized the states and printouts in your application tools (reduced number of pages when printing, ink consumption ...)', 'your compagny', 'Ecoconception good practices', 'single', 'Yes', 'No', 'I don\'t know', NULL, NULL, NULL, NULL, NULL, NULL),
(8, '8. Do you integrate the principles of the ecodesign of digital services?', 'your compagny', 'Ecoconception good practices', 'single', 'Yes', 'No', 'I don\'t know', NULL, NULL, NULL, NULL, NULL, NULL),
(9, '9. Do you use a modular application architecture?', 'your compagny', 'Ecoconception good practices', 'single', 'Yes', 'No', 'I don\'t know', NULL, NULL, NULL, NULL, NULL, NULL),
(10, '10. Do you do a design review at the end of your application\'s development?', 'your compagny', 'Ecoconception good practices', 'single', 'Yes', 'No', 'I don\'t know', NULL, NULL, NULL, NULL, NULL, NULL),
(11, '11. What is the overall storage volume of your corporate data (centralized on external hard drives, centralized server, NAS, SAN ...) in Terabytes (TB) useful?', 'Infrastructures', 'Information system', 'singlefield', 'I don\'t know', 'I don\'t want to answer', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, '12. Do you have a server or do you only work with one or more workstations?', 'Infrastructures', 'Information system', 'single', 'We work with workstation (s), without centralized physical server', 'We have (at least) a centralized physical server', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, '13. Do you have a dedicated room, simple room or cupboard with bay dedicated to your IT infrastructure?', 'Infrastructures', 'Information system', 'single', 'A closet or a room without any specific system', 'A dedicated room', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, '14. Is your computer room in house or at a host?', 'Infrastructures', 'Server / Computer room', 'single', 'Internal', 'Host Member of the European Code of Conduct for Datacenters', 'Non-adhering Host of the European Code of Conduct for Data Centers', NULL, NULL, NULL, NULL, NULL, NULL),
(15, '15. What is the total area of your computer rooms (excluding technical infrastructure *)? (in m2)', 'Infrastructures', 'Server / Computer room', 'singlefield', 'X m2', 'I don\'t know', 'I do not want to answer', NULL, NULL, NULL, NULL, NULL, NULL),
(16, '16. Do you know the PUE * of your Data Center? *PUE : Power Usage Effectiveness', 'Infrastructures', 'Server / Computer room', 'single', 'Less than 1,6 ', 'Between 1,6 and 2,1 ', 'More than 2,1 ', 'I don\'t know', NULL, NULL, NULL, NULL, NULL),
(17, '17. What is the rate of charge or energy use of your computer rooms? \r\nRate = Electrical power absorbed by your IT equipment, divided by room capacity in kW, then multiplied by 100 (used energy / available energy)', 'Infrastructures', 'Server / Computer room', 'single', '100% - 90% ', '90% - 60% ', 'Less than 60% ', 'I don\'t know', NULL, NULL, NULL, NULL, NULL),
(18, '18. Have you led or are you planning actions to optimize your infrastructure? Especially :', 'Infrastructures', 'Optimisation Datacenter	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, '19. The purchase of non-IT equipment from IT rooms (air conditioning, air treatment, inverters, etc.) according to energy efficiency criteria', 'Infrastructures', 'Information system', 'single', 'Yes', 'No', 'I don\'t know', NULL, NULL, NULL, NULL, NULL, NULL),
(20, '20. Implementing the good practices of the \"European Code of Conduct for DataCenter\"?', 'Infrastructures', 'Optimisation Datacenter', 'single', 'Yes', 'No', 'I don\'t know', NULL, NULL, NULL, NULL, NULL, NULL),
(21, '21. Data center PUE tracking', 'Infrastructures', 'Optimisation Datacenter', 'single', 'Yes', 'No', 'I don\'t know', NULL, NULL, NULL, NULL, NULL, NULL),
(22, '22. Regular monitoring of environmental indicators of computer rooms', 'Infrastructures', 'Optimisation Datacenter	', 'single', 'Yes', 'No', 'I don\'t know', NULL, NULL, NULL, NULL, NULL, NULL),
(23, '23. Environmental impact analysis of the datacenter in life cycle approach', 'Infrastructures', 'Optimisation Datacenter', 'single', 'Yes', 'No', 'I don\'t know', NULL, NULL, NULL, NULL, NULL, NULL),
(24, '24. Optimizing the architecture and layout of rooms', 'Infrastructures', 'Optimisation Datacenter', 'single', 'Yes', 'No', 'I don\'t know', NULL, NULL, NULL, NULL, NULL, NULL),
(25, '25. The urbanization of halls in hot / cold aisles', 'Infrastructures', 'Optimisation Datacenter', 'single', 'Yes', 'No', 'I don\'t know', NULL, NULL, NULL, NULL, NULL, NULL),
(26, '26. Containment of air flows (corridors)', 'Infrastructures', 'Optimisation Datacenter	', 'single', 'Yes', 'No', 'I don\'t know', NULL, NULL, NULL, NULL, NULL, NULL),
(27, '27. The use of natural cooling sources (freecooling)', 'Infrastructures', 'Optimisation Datacenter', 'single', 'Yes', 'No', 'I don\'t know', NULL, NULL, NULL, NULL, NULL, NULL),
(28, '28. Implementation of a heat recovery system for computer rooms (heating)', 'Infrastructures', 'Optimisation Datacenter', 'single', 'Yes ', 'No', 'I don\'t know', NULL, NULL, NULL, NULL, NULL, NULL),
(29, '29. The set temperature in the cold corridor remains higher than 24 °', 'Infrastructures', 'Optimisation Datacenter', 'single', 'Yes ', 'No', 'I don\'t no', NULL, NULL, NULL, NULL, NULL, NULL),
(30, '30. The choice of a modular datacenter architecture', 'Infrastructures', 'Optimisation Datacenter	', 'single', 'Yes', 'No', 'I don\'t know', NULL, NULL, NULL, NULL, NULL, NULL),
(31, '31. Have you led or are you planning actions to optimize your infrastructure? Especially :', 'Infrastructures', 'Server / A cupboard or a dedicated room', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, '32. Suspending network equipment', 'Infrastructures', 'Server / A cupboard or a dedicated room', 'single', 'Yes', 'No', 'I don\'t know', NULL, NULL, NULL, NULL, NULL, NULL),
(33, '33. Pooling physical equipment', 'Infrastructures', 'Server / A cupboard or a dedicated room', 'single', 'Yes', 'No', 'I don\'t know', NULL, NULL, NULL, NULL, NULL, NULL),
(34, '34. Uninstalling unnecessary infrastructure', 'Infrastructures', 'Server / A cupboard or a dedicated room', 'single', 'Yes', 'No', 'I don\'t know', NULL, NULL, NULL, NULL, NULL, NULL),
(35, '35. Traceability of material elements (CMDB)', 'Infrastructures', 'Server / A cupboard or a dedicated room', 'single', 'Yes', 'No', 'I don\'t know', NULL, NULL, NULL, NULL, NULL, NULL),
(36, '36. The correct sizing of the servers in relation to their use', 'Infrastructures', 'Server / A cupboard or a dedicated room', 'single', 'Yes', 'No', 'I don\'t know', NULL, NULL, NULL, NULL, NULL, NULL),
(37, '37. Give priority to ASHRAE 2 compatible equipment', 'Infrastructures', 'Server / A cupboard or a dedicated room', 'single', 'Yes', 'No', 'I don\'t know', NULL, NULL, NULL, NULL, NULL, NULL),
(38, '38. A procedure for provisioning and de-provisioning data-processing equipment in datacenters', 'Infrastructures', 'Server / A cupboard or a dedicated room', 'single', 'Yes', 'No', 'I don\'t know', NULL, NULL, NULL, NULL, NULL, NULL),
(39, '39. Do you know the number of physical servers and virtual servers in your company?', 'Infrastructures', 'Server / A cupboard or a dedicated room', 'single', 'Yes', 'I do not want to answer', 'No', NULL, NULL, NULL, NULL, NULL, NULL),
(40, '40. How many physical servers do you have?', 'Infrastructures', 'Server / A cupboard or a dedicated room', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, '41. How many virtual servers do you have?', 'Infrastructures', 'Server / A cupboard or a dedicated room', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, '42. What will be the evolution of your number of physical servers for 2019? (in% or quantity)', 'Infrastructures', 'Server / A cupboard or a dedicated room', 'singlefield', 'In pourcent', 'In quantity', 'I do not want to answer', 'I don\'t know', NULL, NULL, NULL, NULL, NULL),
(43, '43. What will be the evolution of your number of virtual servers for 2019? (in% or quantity)', 'Infrastructures', 'Server / A cupboard or a dedicated room', 'singlefield', 'In pourcent', 'In quantity', 'I do not want to answer', 'I don\'t know', NULL, NULL, NULL, NULL, NULL),
(44, '44. Has your company appointed a Green IT Manager / Digital Manager?', 'Management', '0', 'single', 'Yes', 'No', 'I don\'t know', NULL, NULL, NULL, NULL, NULL, NULL),
(45, '45. Do you have a responsible digital strategy broken down into an action plan?', 'Management', '0', 'single', 'Yes', 'No', 'I don\'t know', NULL, NULL, NULL, NULL, NULL, NULL),
(46, '46. Is Green IT a topic integrated into your CSR strategy?', 'Management', '0', 'single', 'Yes', 'No', 'I don\'t know', NULL, NULL, NULL, NULL, NULL, NULL),
(47, '47. Do you regularly evaluate the environmental impacts of your information system?', 'Management', '0', 'single', 'Yes partially, including only equipment present in the company', 'Yes totally, including our internal equipment and services hosted by third parties', 'No', 'I do not know', NULL, NULL, NULL, NULL, NULL),
(48, '48. Do you have a team of competent referees on the topics of Green IT?', 'Management', '0', 'single', 'Yes', 'No', 'I don\'t know', NULL, NULL, NULL, NULL, NULL, NULL),
(49, '49. Have you integrated Green IT into your business strategy', 'Management', '0', 'single', 'Yes', 'No', 'I don\'t know', NULL, NULL, NULL, NULL, NULL, NULL),
(50, '50. Do you have those equipments in your compagny:\r\nUsed: equipment used in the business activity\r\n\r\nNot used functional: equipment in working order but no more used by the company (stored)\r\n\r\nNeither used nor functional: out of service equipment (HS) waiting for end of life treatment\r\n', 'Workstation', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, '51. Fixed stations, workstations', 'Workstation', '0', 'multiple', 'Used', 'Not used functional', 'Neither used nor functional', NULL, NULL, NULL, NULL, NULL, NULL),
(52, '52. Laptops, digital tablets', 'Workstation', '0', 'multiple', 'Used', 'Not used functional', 'Neither used nor functional', NULL, NULL, NULL, NULL, NULL, NULL),
(53, '53. Small printers (<15kg, potentially used by a household)', 'Workstation', '0', 'multiple', 'Used', 'Not used functional', 'Neither used nor functional', NULL, NULL, NULL, NULL, NULL, NULL),
(54, '54. Flat screen monitors', 'Workstation', '0', 'multiple', 'Used', 'Not used functional', 'Neither used nor functional', NULL, NULL, NULL, NULL, NULL, NULL),
(55, '55. Other flat screens (TV, projection screen, digital board ...)', 'Workstation', '0', 'multiple', 'Used', 'Not used functional', 'Neither used nor functional', NULL, NULL, NULL, NULL, NULL, NULL),
(56, '56. CRT monitors (monitors or other)', 'Workstation', '0', 'multiple', 'Used', 'Not used functional', 'Neither used nor functional', NULL, NULL, NULL, NULL, NULL, NULL),
(57, '57. Video projectors', 'Workstation', '0', 'multiple', 'Used', 'Not used functional', 'Neither used nor functional', NULL, NULL, NULL, NULL, NULL, NULL),
(58, '58. Mobile phones', 'Workstation', '0', 'multiple', 'Used', 'Not used functional', 'Neither used nor functional', NULL, NULL, NULL, NULL, NULL, NULL),
(59, '59. Fixed telephones (standalone not connected to such a standard)', 'Workstation', '0', 'multiple', 'Used', 'Not used functional', 'Neither used nor functional', NULL, NULL, NULL, NULL, NULL, NULL),
(60, '60. Digital cameras', 'Workstation', '0', 'single', 'Used', 'Not used functional', 'Neither used nor functional', NULL, NULL, NULL, NULL, NULL, NULL),
(61, '61. Hard Disk Devices, Storage, Backup', 'Workstation', '0', 'multiple', 'Used', 'Not used functional', 'Neither used nor functional', NULL, NULL, NULL, NULL, NULL, NULL),
(62, '62. Do you have other devices in your company?\r\nKeyboards, mouse, graphic tablets, scanners, microphones, speakers, office equipment ...', 'Workstation', '0', 'single', 'Yes', 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, '63. Regarding other devices, do you have in your company:\r\nUsed: equipment used in the business activity\r\nNot used functional: equipment in working order but no more used by the company (stored)\r\nNeither used nor functional: out of service equipment (HS) waiting for end of life treatment', 'Workstation', '0', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, '64. Keyboards', 'Workstation', '0', 'multiple', 'Used', 'Not used functional', 'Neither used nor functional', NULL, NULL, NULL, NULL, NULL, NULL),
(65, '65. Mouse', 'Workstation', '0', 'multiple', 'Used', 'Not used functional', 'Neither used nor functional', NULL, NULL, NULL, NULL, NULL, NULL),
(66, '66. Graphic tablets', 'Workstation', '0', 'multiple', 'Used', 'Not used functional', 'Neither used nor functional', NULL, NULL, NULL, NULL, NULL, NULL),
(67, '67. Scanners', 'Workstation', '0', 'multiple', 'Used', 'Not used functional', 'Neither used nor functional', NULL, NULL, NULL, NULL, NULL, NULL),
(68, '68. Speakers', 'Workstation', '0', 'multiple', 'Used', 'Not used functional', 'Neither used nor functional', NULL, NULL, NULL, NULL, NULL, NULL),
(69, '69. Office automation', 'Workstation', '0', 'multiple', 'Used', 'Not used functional', 'Neither used nor functional', NULL, NULL, NULL, NULL, NULL, NULL),
(70, '70. Do you know the consumption of your workstation in kWh per year?', 'Energy consumption', '0', 'single', 'Yes (please specify how much in kWh / year) >> response field to be added', 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, '71. Do you track the energy consumption of your compagny activities?', 'Energy consumption', '0', 'single', 'Yes', 'No', 'I don\'t know', NULL, NULL, NULL, NULL, NULL, NULL),
(72, '72. Do you know the share of IT and IT equipment in your company\'s total energy consumption?', 'Energy consumption', '0', 'singlefield', 'Yes (please specify how much in pourcent )', 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, '73. Have you set up a power management system? (automatic shutdown / shutdown of workstations)', 'Energy consumption', '0', 'single', 'Yes', 'No', 'I don\'t know', NULL, NULL, NULL, NULL, NULL, NULL),
(74, '74. Do you use copiers from a repackaging industry (second-hand / second-hand)?', 'Printing', '0', 'single', 'Yes', 'No', 'I don\'t know', NULL, NULL, NULL, NULL, NULL, NULL),
(75, '75. Do you consolidate individual printers to shared printers?', 'Printing', '0', 'single', 'Yes', 'No', 'I don\'t know', NULL, NULL, NULL, NULL, NULL, NULL),
(76, '76. Have you set up an identification system on printers (to trigger printing)?', 'Printing', '0', 'single', 'Yes', 'No', 'I don\'t know', NULL, NULL, NULL, NULL, NULL, NULL),
(77, '77. What is the average life of your professional copier / MFP *?\r\n* MFP Multi Fonction Printer', 'Printing', '0', 'single', 'I do not know', 'Do not want to answer', 'x years (please specify)', NULL, NULL, NULL, NULL, NULL, NULL),
(78, '78. Are your printers set by default in eco mode? Especially :', 'Printing', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, '79. Energy saving (Automatic standby)', 'Printing', '0', 'single', 'Yes', 'No', 'I don\'t know', NULL, NULL, NULL, NULL, NULL, NULL),
(80, '80. Black and white by default', 'Printing', '0', 'single', 'Yes', 'No', 'I don\'t know', NULL, NULL, NULL, NULL, NULL, NULL),
(81, '81. Default duplex', 'Printing', '0', 'single', 'Yes', 'No', 'I don\'t know', NULL, NULL, NULL, NULL, NULL, NULL),
(82, '82. Default draft mode', 'Printing', '0', 'single', 'Used', 'Not used functional', 'Neither used nor functional', NULL, NULL, NULL, NULL, NULL, NULL),
(83, '83. What is the number of pages printed / day / employee? (A4 equivalent)', 'Printing', 'Consumables', 'single', 'Less than 10 ', 'From 10 to 20 ', 'From 20 to 30', 'More than 30', 'I don\'t know', NULL, NULL, NULL, NULL),
(84, '84. Can you specify the number of cartridges / toners:', 'Printing', 'Consumables', 'singlefield', 'Cartridges used a year', 'Cartridges stored in the average business', 'Toners used a year', 'Toners stored in the average business', NULL, NULL, NULL, NULL, NULL),
(85, '85. Do you organize the separate collection of waste cartridges / toners?', 'Printing', 'Consumables', 'single', 'Yes, to a repackaging industry', 'Yes, towards a recycling channel (destruction)', 'No no separate collection device is planned', NULL, NULL, NULL, NULL, NULL, NULL),
(86, '86. Do you prefer the use of recycled paper?', 'Printing', 'Consumables', 'multiple', 'Yes, our paper is made from virgin paste', 'Yes, mixed paper', 'Yes, 100% recycled', 'I\'m not paying attention', NULL, NULL, NULL, NULL, NULL),
(87, '87. Do you choose certified paper?', 'Printing', 'Consumables', 'multiple', 'Yes, FSC', 'Yes, PEFC', 'Yes, Blue Angel', 'Yes, European Label', 'Yes, other', 'I\'m not paying attention', NULL, NULL, NULL),
(88, '88. Do you organize the separate collection of waste paper for recycling?', 'Printing', 'Consumables', 'single', 'Yes', 'No', 'I don\'t know', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `id_user` int(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `url` text NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
