-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 16 fév. 2022 à 10:36
-- Version du serveur :  5.7.31
-- Version de PHP : 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `resilience34`
--

-- --------------------------------------------------------

--
-- Structure de la table `adresseip`
--

DROP TABLE IF EXISTS `adresseip`;
CREATE TABLE IF NOT EXISTS `adresseip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `adresseip`
--

INSERT INTO `adresseip` (`id`, `ip`) VALUES
(1, '129.0.28.1.26');

-- --------------------------------------------------------

--
-- Structure de la table `fonctions`
--

DROP TABLE IF EXISTS `fonctions`;
CREATE TABLE IF NOT EXISTS `fonctions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `fonctions`
--

INSERT INTO `fonctions` (`id`, `nom`) VALUES
(1, 'Médecin'),
(2, 'Infirmier'),
(3, 'Aide-Soignant');

-- --------------------------------------------------------

--
-- Structure de la table `pathologies`
--

DROP TABLE IF EXISTS `pathologies`;
CREATE TABLE IF NOT EXISTS `pathologies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `pathologies`
--

INSERT INTO `pathologies` (`id`, `nom`, `description`) VALUES
(1, 'Cholestérol', ' Les anomalies du bilan des graisses circulant dans le sang'),
(2, 'Diabète', ' Le diabète est une maladie chronique caractérisée par un taux de sucre dans le sang trop élevé'),
(3, 'Dyslexie ', 'La dyslexie est un trouble du langage écrit qui se manifeste habituellement par des difficultés d’apprentissage'),
(4, 'Anémie', 'L’anémie est définie par une diminution du taux d’hémoglobine sur les résultats d’une prise de sang');

-- --------------------------------------------------------

--
-- Structure de la table `patients`
--

DROP TABLE IF EXISTS `patients`;
CREATE TABLE IF NOT EXISTS `patients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `dateNaissance` date NOT NULL,
  `numeroSecuSociale` int(11) NOT NULL,
  `idpathologie` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `patients`
--

INSERT INTO `patients` (`id`, `nom`, `prenom`, `dateNaissance`, `numeroSecuSociale`, `idpathologie`) VALUES
(1, 'Hilton', 'Savi', '1979-01-01', 180019935, 4),
(2, 'Dupont', 'Antoine', '1980-01-01', 101803530, 2),
(3, 'Hilton', 'Vito', '1981-01-02', 102813540, 1),
(4, 'Lauret', 'Thierry', '1982-01-03', 103823550, 1),
(5, 'Pollard', 'André', '1983-01-04', 104833560, 3),
(6, 'Bryan', 'Kobe', '1984-01-05', 105843570, 4),
(7, 'George', 'Donald', '1985-01-06', 106853580, 1),
(8, 'Willemse', 'Paul', '1986-01-07', 107863590, 2),
(9, 'Trump', 'Moins', '1987-01-08', 108873500, 4),
(10, 'Der Zak', 'Lucas', '1988-01-09', 109883510, 3);

-- --------------------------------------------------------

--
-- Structure de la table `soignants`
--

DROP TABLE IF EXISTS `soignants`;
CREATE TABLE IF NOT EXISTS `soignants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `dateNaissance` date NOT NULL,
  `email` varchar(255) NOT NULL,
  `motDepasse` varchar(255) NOT NULL,
  `idfonction` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_fonction_soignant` (`idfonction`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `soignants`
--

INSERT INTO `soignants` (`id`, `nom`, `prenom`, `dateNaissance`, `email`, `motDepasse`, `idfonction`) VALUES
(1, 'Ntamack', 'Michel', '1980-01-01', 'Ntamack.Michel@resilience34.com', '123', 1),
(2, 'Santa', 'Chris', '1981-01-02', 'Santa.Chris@resilience34.com', '123', 2),
(3, 'Manet', 'lola', '1982-01-03', 'Manet.lola@resilience34.com', '123', 1),
(4, 'Pollard', 'Stephanie', '1983-01-04', 'Pollard.Stephanie@resilience34.com', '123', 2),
(5, 'Bryan', 'kamelia', '1984-01-05', 'Bryan.kamelia@resilience34.com', '123', 3),
(6, 'Clint', 'Frenki', '1985-01-06', 'Clint.Frenki@resilience34.com', '123', 3),
(7, 'Willemse', 'Eva', '1986-01-07', 'Willemse.Eva@resilience34.com', '123', 2),
(8, 'Trump', 'Alain', '1987-01-08', 'Trump.Alain@resilience34.com', '123', 1),
(9, 'Loulou', 'Lucas', '1988-01-09', 'Loulou.Lucas@resilience34.com', '123', 3);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
