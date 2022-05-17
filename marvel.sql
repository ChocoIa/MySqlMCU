-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : db
-- Généré le : mar. 17 mai 2022 à 12:03
-- Version du serveur :  8.0.19
-- Version de PHP : 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `marvel`
--

-- --------------------------------------------------------

--
-- Structure de la table `actors`
--

CREATE TABLE `actors` (
  `id` int NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `birthday` date NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `change_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `actors`
--

INSERT INTO `actors` (`id`, `last_name`, `first_name`, `birthday`, `creation_date`) VALUES
(1, 'Downey Jr', 'Robert', '1965-04-04', '2022-05-17 08:30:40'),
(2, 'Howard', 'Terrence', '1969-03-11', '2022-05-17 08:38:34'),
(3, 'Bridges', 'Jeff', '1949-12-04', '2022-05-17 08:38:34'),
(4, 'Toub', 'Shaun', '1963-04-06', '2022-05-17 08:38:34'),
(5, 'Paltrow', 'Gwyneth', '1972-09-27', '2022-05-17 08:38:34'),
(6, 'Norton', 'Edward', '1969-08-18', '2022-05-17 08:56:24'),
(7, 'Tyler', 'Liv', '1977-07-01', '2022-05-17 08:56:24'),
(8, 'Roth', 'Tim', '1961-05-14', '2022-05-17 08:56:24'),
(9, 'Nelson', 'Tim Blake', '1964-05-11', '2022-05-17 08:56:24'),
(10, 'Burrell', 'Ty', '1967-08-22', '2022-05-17 08:56:24'),
(11, 'Hurt', 'William', '1950-03-20', '2022-05-17 08:56:24'),
(12, 'Holland', 'Tom ', '1996-06-01', '2022-05-17 09:01:52');

-- --------------------------------------------------------

--
-- Structure de la table `movies`
--

CREATE TABLE `movies` (
  `id` int NOT NULL,
  `Title` varchar(255) NOT NULL,
  `release_date` date NOT NULL,
  `length` time NOT NULL,
  `director` varchar(255) NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `change_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `movies`
--

INSERT INTO `movies` (`id`, `Title`, `release_date`, `length`, `director`, `creation_date`) VALUES
(2, 'Iron Man', '2008-05-02', '02:06:00', 'Jon Favreau', '2022-05-17 08:24:02'),
(3, 'The Incredible Hulk', '2008-06-13', '01:52:00', 'Louis Leterrier', '2022-05-17 08:24:02'),
(4, 'Iron Man 2', '2010-05-07', '02:05:00', 'Jon Favreau', '2022-05-17 08:24:02'),
(5, 'Thor', '2011-05-02', '01:54:00', 'Kenneth Branagh', '2022-05-17 08:24:02'),
(6, 'Captain America: The First Avenger', '2011-06-22', '02:04:00', 'Joe Johnston', '2022-05-17 08:24:02'),
(7, 'Marvel\'s The Avengers', '2012-05-04', '02:23:00', 'Joss Whedon', '2022-05-17 08:24:02'),
(8, 'Iron Man 3', '2013-05-03', '02:11:00', 'Shane Black', '2022-05-17 08:24:02'),
(9, 'Thor: The Dark World', '2013-11-08', '01:52:00', 'Alan Taylor', '2022-05-17 08:24:02'),
(10, 'Captain America: The Winter Soldier', '2014-04-04', '02:16:00', 'Anthony and Joe Russo', '2022-05-17 08:24:02'),
(11, 'Guardians of the Galaxy', '2014-08-01', '02:02:00', 'James Gunn', '2022-05-17 08:24:02'),
(12, 'Avengers: Age of Ultron', '2015-05-01', '02:21:00', 'Joss Whedon', '2022-05-17 08:24:02'),
(13, 'Ant-Man', '2015-07-17', '01:57:00', 'Peyton Reed', '2022-05-17 08:24:02'),
(14, 'Captain America: Civil War', '2016-05-06', '02:27:00', 'Anthony and Joe Russo', '2022-05-17 08:24:02');

-- --------------------------------------------------------

--
-- Structure de la table `movies_actors`
--

CREATE TABLE `movies_actors` (
  `id_actors` int NOT NULL,
  `id_movies` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `movies_actors`
--

INSERT INTO `movies_actors` (`id_actors`, `id_movies`) VALUES
(1, 2),
(1, 4),
(1, 8),
(1, 7),
(1, 14),
(1, 12),
(1, 3),
(1, 2),
(1, 4),
(1, 8),
(1, 7),
(1, 14),
(1, 12),
(1, 3),
(12, 14),
(12, 14),
(2, 2),
(2, 2),
(3, 2),
(3, 2),
(4, 2),
(4, 8),
(4, 2),
(4, 8),
(5, 2),
(5, 4),
(5, 8),
(5, 7),
(5, 2),
(5, 4),
(5, 8),
(5, 7),
(6, 3),
(6, 3),
(7, 3),
(7, 3),
(8, 3),
(8, 3),
(9, 3),
(9, 3),
(10, 3),
(10, 3),
(12, 14),
(12, 14);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `actors`
--
ALTER TABLE `actors`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `movies_actors`
--
ALTER TABLE `movies_actors`
  ADD KEY `id_actors` (`id_actors`),
  ADD KEY `id_movies` (`id_movies`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `actors`
--
ALTER TABLE `actors`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `movies_actors`
--
ALTER TABLE `movies_actors`
  ADD CONSTRAINT `movies_actors_ibfk_1` FOREIGN KEY (`id_actors`) REFERENCES `actors` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `movies_actors_ibfk_2` FOREIGN KEY (`id_movies`) REFERENCES `movies` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
