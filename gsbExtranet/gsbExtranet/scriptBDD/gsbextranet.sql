-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 28 mars 2022 à 19:16
-- Version du serveur : 5.7.36
-- Version de PHP : 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gsbextranet`
--

-- --------------------------------------------------------

--
-- Structure de la table `archivagehistoriqueconnexion`
--

DROP TABLE IF EXISTS `archivagehistoriqueconnexion`;
CREATE TABLE IF NOT EXISTS `archivagehistoriqueconnexion` (
  `id_medecin` int(11) NOT NULL,
  `dateDebutLog` datetime NOT NULL,
  `dateFinLog` datetime NOT NULL,
  PRIMARY KEY (`id_medecin`,`dateDebutLog`,`dateFinLog`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `archivagehistoriqueconnexion`
--

INSERT INTO `archivagehistoriqueconnexion` (`id_medecin`, `dateDebutLog`, `dateFinLog`) VALUES
(11, '2022-03-28 18:40:17', '2022-03-28 18:40:21'),
(11, '2022-03-28 18:41:19', '2022-03-28 19:00:34'),
(11, '2022-03-28 19:22:44', '2022-03-28 19:23:09'),
(11, '2022-03-28 19:23:10', '2022-03-28 19:23:13'),
(11, '2022-03-28 19:23:14', '2022-03-28 19:23:16'),
(11, '2022-03-28 19:23:16', '2022-03-28 19:23:18'),
(15, '2022-03-28 19:25:56', '2022-03-28 19:27:54'),
(16, '2022-03-28 19:25:56', '2022-03-28 19:27:54');

-- --------------------------------------------------------

--
-- Structure de la table `archivagemedecin`
--

DROP TABLE IF EXISTS `archivagemedecin`;
CREATE TABLE IF NOT EXISTS `archivagemedecin` (
  `id_medecin` int(11) NOT NULL AUTO_INCREMENT,
  `anneNaissance` year(4) DEFAULT NULL,
  `dateCreation` date NOT NULL,
  PRIMARY KEY (`id_medecin`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `archivagemedecin`
--

INSERT INTO `archivagemedecin` (`id_medecin`, `anneNaissance`, `dateCreation`) VALUES
(11, NULL, '2022-03-28'),
(12, NULL, '2022-03-28'),
(13, NULL, '2022-03-28'),
(14, NULL, '2022-03-28'),
(15, NULL, '2022-03-28'),
(16, NULL, '2022-03-28');

-- --------------------------------------------------------

--
-- Structure de la table `archivagemedecinproduit`
--

DROP TABLE IF EXISTS `archivagemedecinproduit`;
CREATE TABLE IF NOT EXISTS `archivagemedecinproduit` (
  `id_medecin` int(11) NOT NULL,
  `id_produit` int(11) NOT NULL,
  `date` date NOT NULL,
  `heure` time NOT NULL,
  PRIMARY KEY (`date`,`id_produit`,`heure`,`id_medecin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `archivagemedecinproduit`
--

INSERT INTO `archivagemedecinproduit` (`id_medecin`, `id_produit`, `date`, `heure`) VALUES
(11, 1, '2028-03-22', '07:22:53'),
(11, 1, '2028-03-22', '07:22:59'),
(11, 1, '2028-03-22', '07:23:00'),
(11, 1, '2028-03-22', '07:23:01'),
(11, 1, '2028-03-22', '07:23:03'),
(11, 1, '2028-03-22', '07:23:05'),
(11, 1, '2028-03-22', '07:23:06'),
(11, 2, '2028-03-22', '07:22:52'),
(11, 3, '2028-03-22', '07:22:54');

-- --------------------------------------------------------

--
-- Structure de la table `archivagemedecinvisio`
--

DROP TABLE IF EXISTS `archivagemedecinvisio`;
CREATE TABLE IF NOT EXISTS `archivagemedecinvisio` (
  `idMedecin` int(11) NOT NULL,
  `idVisio` int(11) NOT NULL,
  `dateInscription` datetime NOT NULL,
  PRIMARY KEY (`idMedecin`,`idVisio`,`dateInscription`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `archivagemedecinvisio`
--

INSERT INTO `archivagemedecinvisio` (`idMedecin`, `idVisio`, `dateInscription`) VALUES
(11, 3, '2028-03-22 00:00:00'),
(11, 4, '2028-03-22 00:00:00'),
(15, 3, '2022-03-28 00:00:00'),
(16, 3, '2022-03-28 19:27:46'),
(16, 3, '2022-03-28 19:27:48'),
(16, 3, '2022-03-28 19:27:49'),
(16, 3, '2028-03-22 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `historiqueconnexion`
--

DROP TABLE IF EXISTS `historiqueconnexion`;
CREATE TABLE IF NOT EXISTS `historiqueconnexion` (
  `idMedecin` int(11) NOT NULL,
  `dateDebutLog` datetime NOT NULL,
  `dateFinLog` datetime DEFAULT NULL,
  PRIMARY KEY (`idMedecin`,`dateDebutLog`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `historiqueconnexion`
--

INSERT INTO `historiqueconnexion` (`idMedecin`, `dateDebutLog`, `dateFinLog`) VALUES
(27, '2022-03-28 20:55:12', '2022-03-28 20:55:21'),
(27, '2022-03-28 20:55:31', '2022-03-28 20:55:39'),
(27, '2022-03-28 20:58:21', '2022-03-28 20:58:22'),
(27, '2022-03-28 20:59:52', '2022-03-28 20:59:53'),
(28, '2022-03-28 20:55:46', '2022-03-28 20:55:51'),
(28, '2022-03-28 20:58:29', '2022-03-28 20:58:30'),
(28, '2022-03-28 21:00:00', '2022-03-28 21:00:01'),
(31, '2022-03-28 20:56:34', '2022-03-28 20:56:40'),
(31, '2022-03-28 20:57:22', '2022-03-28 20:57:23'),
(31, '2022-03-28 20:58:39', '2022-03-28 20:58:40'),
(31, '2022-03-28 21:00:09', '2022-03-28 21:00:10'),
(32, '2022-03-28 20:57:31', '2022-03-28 20:57:33'),
(32, '2022-03-28 20:57:38', '2022-03-28 20:57:39'),
(32, '2022-03-28 20:57:45', '2022-03-28 20:57:46'),
(32, '2022-03-28 20:58:48', '2022-03-28 20:58:49'),
(32, '2022-03-28 21:00:17', '2022-03-28 21:00:18'),
(33, '2022-03-28 21:07:00', '2022-03-28 21:11:04'),
(33, '2022-03-28 21:11:34', NULL),
(33, '2022-03-28 21:12:28', NULL),
(33, '2022-03-28 21:12:47', '2022-03-28 21:12:49'),
(33, '2022-03-28 21:15:19', '2022-03-28 21:15:21'),
(33, '2022-03-28 21:15:45', '2022-03-28 21:15:51');

-- --------------------------------------------------------

--
-- Structure de la table `maintenance`
--

DROP TABLE IF EXISTS `maintenance`;
CREATE TABLE IF NOT EXISTS `maintenance` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `informations` varchar(255) DEFAULT NULL,
  `dateDebut` date DEFAULT NULL,
  `dateFin` date DEFAULT NULL,
  `actif` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `maintenance`
--

INSERT INTO `maintenance` (`id`, `nom`, `informations`, `dateDebut`, `dateFin`, `actif`) VALUES
(1, 'Maintenance 1', 'Maintenance pour mettre à jour le site GSB', '2021-09-13', '2021-09-23', 0);

-- --------------------------------------------------------

--
-- Structure de la table `maintenanceprevention`
--

DROP TABLE IF EXISTS `maintenanceprevention`;
CREATE TABLE IF NOT EXISTS `maintenanceprevention` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) DEFAULT NULL,
  `informations` varchar(255) DEFAULT NULL,
  `dateDebut` date DEFAULT NULL,
  `dateFin` date DEFAULT NULL,
  `actif` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `maintenanceprevention`
--

INSERT INTO `maintenanceprevention` (`id`, `nom`, `informations`, `dateDebut`, `dateFin`, `actif`) VALUES
(1, 'Maintenance Prevention 1', 'Maintenance pour mise à jour', '2021-09-14', '2021-09-17', 0);

-- --------------------------------------------------------

--
-- Structure de la table `medecin`
--

DROP TABLE IF EXISTS `medecin`;
CREATE TABLE IF NOT EXISTS `medecin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(40) DEFAULT NULL,
  `prenom` varchar(30) DEFAULT NULL,
  `mail` varchar(50) DEFAULT NULL,
  `dateNaissance` year(4) DEFAULT NULL,
  `motDePasse` varchar(255) DEFAULT NULL,
  `dateCreation` datetime DEFAULT NULL,
  `rpps` varchar(10) DEFAULT NULL,
  `token` varchar(100) DEFAULT NULL,
  `dateDiplome` year(4) DEFAULT NULL,
  `dateConsentement` date DEFAULT NULL,
  `access` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `medecin`
--

INSERT INTO `medecin` (`id`, `nom`, `prenom`, `mail`, `dateNaissance`, `motDePasse`, `dateCreation`, `rpps`, `token`, `dateDiplome`, `dateConsentement`, `access`) VALUES
(27, 'GSB', 'Medecin1', '???????a?OU???O:?8C(	?Hi??#L????', NULL, '0e932f757d46017436475913ea770b29', '2022-03-28 20:53:37', NULL, NULL, NULL, '2022-03-28', NULL),
(28, 'GSB', 'Medecin2', '????7?@t?+%???O:?8C(	?Hi??#L????', NULL, '0e932f757d46017436475913ea770b29', '2022-03-28 20:53:57', NULL, NULL, NULL, '2022-03-28', NULL),
(31, 'GSB', 'Medecin3', '~dP????#?????O:?8C(	?Hi??#L????', NULL, '0e932f757d46017436475913ea770b29', '2022-03-28 20:56:24', NULL, NULL, NULL, '2022-03-28', NULL),
(32, 'GSB', 'Medecin4', '??;??y*:j?????O:?8C(	?Hi??#L????', NULL, '0e932f757d46017436475913ea770b29', '2022-03-28 20:57:14', NULL, NULL, NULL, '2022-03-28', NULL),
(33, 'GSB', 'Admin1', '??^g.??X????1d?O:?8C(?Vt??2H	??????\rU?z?', NULL, 'f60a81a90e8411a4cb71903fc6fbf423', '2022-03-28 21:05:19', NULL, NULL, NULL, '2022-03-28', 1);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `medecinaeffacer`
-- (Voir ci-dessous la vue réelle)
--
DROP VIEW IF EXISTS `medecinaeffacer`;
CREATE TABLE IF NOT EXISTS `medecinaeffacer` (
`idMedecin` int(11)
,`YEAR(NOW())-YEAR(MIN(dateFinLog))` int(5)
);

-- --------------------------------------------------------

--
-- Structure de la table `medecinproduit`
--

DROP TABLE IF EXISTS `medecinproduit`;
CREATE TABLE IF NOT EXISTS `medecinproduit` (
  `idMedecin` int(11) NOT NULL,
  `idProduit` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Heure` time NOT NULL,
  PRIMARY KEY (`idMedecin`,`idProduit`,`Date`,`Heure`),
  KEY `idProduit` (`idProduit`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `medecinproduit`
--

INSERT INTO `medecinproduit` (`idMedecin`, `idProduit`, `Date`, `Heure`) VALUES
(28, 1, '2028-03-22', '08:55:50'),
(27, 2, '2028-03-22', '08:55:37'),
(27, 3, '2028-03-22', '08:55:36'),
(31, 3, '2028-03-22', '08:56:38');

-- --------------------------------------------------------

--
-- Structure de la table `medecinvisio`
--

DROP TABLE IF EXISTS `medecinvisio`;
CREATE TABLE IF NOT EXISTS `medecinvisio` (
  `idMedecin` int(11) NOT NULL,
  `idVisio` int(11) NOT NULL,
  `dateInscription` datetime NOT NULL,
  PRIMARY KEY (`idMedecin`,`idVisio`,`dateInscription`),
  KEY `idVisio` (`idVisio`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `medecinvisio`
--

INSERT INTO `medecinvisio` (`idMedecin`, `idVisio`, `dateInscription`) VALUES
(27, 3, '2022-03-28 20:55:34'),
(28, 3, '2022-03-28 20:55:48'),
(31, 3, '2022-03-28 20:56:36'),
(27, 4, '2022-03-28 20:55:33');

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

DROP TABLE IF EXISTS `produit`;
CREATE TABLE IF NOT EXISTS `produit` (
  `id` int(11) NOT NULL,
  `nom` varchar(60) NOT NULL,
  `objectif` mediumtext NOT NULL,
  `information` mediumtext NOT NULL,
  `effetIndesirable` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`id`, `nom`, `objectif`, `information`, `effetIndesirable`) VALUES
(1, 'Doliprane', 'Attenu les maux de têtes ou les enlève ', 'Rembourser à 100% avec votre assurance maladie ', 'Aucun n\'effet indésirable'),
(2, 'Spasfond', 'Réduit ou enlève les douleurs à l\'estomac', 'Remboursé à 100% avec votre assurance maladie', 'Aucun effet indésirable'),
(3, 'Ventoline', 'Permet d\'ouvrir les bronches en cas d\'asthme et de mieux respirer', 'Remboursement selon l\'assurance maladie', 'Aucun');

-- --------------------------------------------------------

--
-- Structure de la table `visioconference`
--

DROP TABLE IF EXISTS `visioconference`;
CREATE TABLE IF NOT EXISTS `visioconference` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomVisio` varchar(100) DEFAULT NULL,
  `objectif` text,
  `url` varchar(100) DEFAULT NULL,
  `dateVisio` date NOT NULL,
  `actif` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `visioconference`
--

INSERT INTO `visioconference` (`id`, `nomVisio`, `objectif`, `url`, `dateVisio`, `actif`) VALUES
(3, 'Conférence internationale sur l\'avancée de la médecine ', 'Pour rejoindre la conférence internationale sur l\'avancée de la médecine, veuillez cliquez sur ce lien.\r\nVous êtes désormais inscrit.\r\nPour toutes désinscriptions contacter le support ou un administrateur.', 'https://conf.gouv.medecine.eu', '2022-05-20', 1),
(4, 'Equipe GSB - Tiers Payant', 'Réunion pour tout les médecins de GSB pour discuter du Tiers Payant', 'https://GSB-reunions-salle-1000.fr', '2022-04-01', 1);

-- --------------------------------------------------------

--
-- Structure de la vue `medecinaeffacer`
--
DROP TABLE IF EXISTS `medecinaeffacer`;

DROP VIEW IF EXISTS `medecinaeffacer`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `medecinaeffacer`  AS SELECT `historiqueconnexion`.`idMedecin` AS `idMedecin`, (year(now()) - year(min(`historiqueconnexion`.`dateFinLog`))) AS `YEAR(NOW())-YEAR(MIN(dateFinLog))` FROM `historiqueconnexion` GROUP BY `historiqueconnexion`.`idMedecin` HAVING ((year(now()) - year(min(`historiqueconnexion`.`dateFinLog`))) >= 3) ;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `archivagehistoriqueconnexion`
--
ALTER TABLE `archivagehistoriqueconnexion`
  ADD CONSTRAINT `pkEtrangère_idMedecin` FOREIGN KEY (`id_medecin`) REFERENCES `archivagemedecin` (`id_medecin`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `historiqueconnexion`
--
ALTER TABLE `historiqueconnexion`
  ADD CONSTRAINT `historiqueconnexion_ibfk_1` FOREIGN KEY (`idMedecin`) REFERENCES `medecin` (`id`);

--
-- Contraintes pour la table `medecinproduit`
--
ALTER TABLE `medecinproduit`
  ADD CONSTRAINT `medecinproduit_ibfk_1` FOREIGN KEY (`idMedecin`) REFERENCES `medecin` (`id`),
  ADD CONSTRAINT `medecinproduit_ibfk_2` FOREIGN KEY (`idProduit`) REFERENCES `produit` (`id`);

--
-- Contraintes pour la table `medecinvisio`
--
ALTER TABLE `medecinvisio`
  ADD CONSTRAINT `medecinvisio_ibfk_1` FOREIGN KEY (`idMedecin`) REFERENCES `medecin` (`id`),
  ADD CONSTRAINT `medecinvisio_ibfk_2` FOREIGN KEY (`idVisio`) REFERENCES `visioconference` (`id`);

DELIMITER $$
--
-- Évènements
--
DROP EVENT IF EXISTS `effacer_medecin_plus_de_3_ans`$$
CREATE DEFINER=`gsbExtranet`@`%` EVENT `effacer_medecin_plus_de_3_ans` ON SCHEDULE EVERY 1 DAY STARTS '2022-03-28 20:37:13' ON COMPLETION NOT PRESERVE ENABLE COMMENT 'Efface médecin inactif de 3 ans' DO BEGIN

DELETE FROM medecinproduit WHERE idMedecin IN(SELECT idMedecin FROM medecinaeffacer);

DELETE FROM medecinvisio WHERE idMedecin IN(SELECT idMedecin FROM medecinaeffacer);

CREATE TABLE Temporaire SELECT * FROM medecinaeffacer;

DELETE FROM historiqueconnexion WHERE idMedecin IN(SELECT idMedecin FROM Temporaire);

DELETE FROM medecin WHERE id IN(SELECT idMedecin FROM Temporaire);

DROP TABLE Temporaire;

END$$

DELIMITER ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
