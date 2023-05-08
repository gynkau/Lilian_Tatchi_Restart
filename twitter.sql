-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : dim. 07 mai 2023 à 22:13
-- Version du serveur : 8.0.30
-- Version de PHP : 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `twitter`
--

-- --------------------------------------------------------

--
-- Structure de la table `tweets`
--

CREATE TABLE `tweets` (
  `id` int NOT NULL,
  `contenu` text NOT NULL,
  `id_utilisateur` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `tweets`
--

INSERT INTO `tweets` (`id`, `contenu`, `id_utilisateur`) VALUES
(1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1),
(2, 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.', 2),
(3, 'Nam vel porta felis, id pellentesque justo.', 3),
(4, 'Phasellus in est odio. Nam eget ultricies lorem.', 4),
(5, 'Donec quis nisl auctor, rhoncus mi eget, hendrerit velit.', 5),
(6, 'Aenean euismod nibh vel nunc luctus convallis.', 6),
(7, 'Maecenas eget purus enim. Pellentesque at elit euismod.', 7),
(8, 'Aliquam vitae mi ut turpis maximus fringilla.', 8),
(9, 'In in velit ullamcorper, interdum nibh eu, ullamcorper sapien.', 9),
(10, 'Sed sit amet sapien bibendum, consectetur ex a, congue lectus.', 10),
(11, 'Suspendisse finibus tincidunt lectus, in facilisis ex volutpat vel.', 11),
(12, 'Quisque rhoncus euismod orci ac tincidunt. Pellentesque eget massa in ipsum hendrerit ultrices.', 12),
(13, 'Cras interdum semper sapien, sed bibendum risus eleifend non.', 13),
(14, 'Nulla facilisi. Suspendisse ut quam velit. Vestibulum id odio vel sapien feugiat.', 14),
(15, 'Duis vitae sapien eget neque consectetur lacinia at eget ex.', 15),
(16, 'Vestibulum ullamcorper justo vel purus aliquam convallis.', 1),
(17, 'Sed vulputate quam non lectus imperdiet posuere.', 2),
(18, 'Curabitur pharetra tellus quis mi auctor blandit.', 3),
(19, 'Morbi euismod augue in tortor consequat ultricies.', 4),
(20, 'Nam bibendum augue eget sapien imperdiet dapibus.', 5),
(21, 'Aliquam erat volutpat. Vestibulum et sapien id mauris congue sollicitudin.', 6),
(22, 'Phasellus gravida turpis in elit efficitur ultrices.', 7),
(23, 'Pellentesque eu turpis bibendum, commodo urna in, sodales ex.', 8),
(24, 'Mauris hendrerit magna sit amet odio euismod, ac euismod neque sollicitudin.', 9),
(25, 'Sed in quam suscipit, vestibulum metus vitae, convallis nulla.', 10),
(26, 'Nam a neque ut velit ullamcorper malesuada vel ut purus.', 11);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `id` int NOT NULL,
  `nom` text NOT NULL,
  `pseudo` text NOT NULL,
  `mail` text NOT NULL,
  `motdepasse` text NOT NULL,
  `photo` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id`, `nom`, `pseudo`, `mail`, `motdepasse`, `photo`) VALUES
(1, 'Alice', 'alice123', 'alice@example.com', 'mdp123', 'https://picsum.photos/200'),
(2, 'Bob', 'bob456', 'bob@example.com', 'mdp456', 'https://picsum.photos/200'),
(3, 'Charlie', 'charlie789', 'charlie@example.com', 'mdp789', 'https://picsum.photos/200'),
(4, 'Dave', 'dave012', 'dave@example.com', 'mdp012', 'https://picsum.photos/200'),
(5, 'Eve', 'eve345', 'eve@example.com', 'mdp345', 'https://picsum.photos/200'),
(6, 'Frank', 'frank678', 'frank@example.com', 'mdp678', 'https://picsum.photos/200'),
(7, 'Grace', 'grace901', 'grace@example.com', 'mdp901', 'https://picsum.photos/200'),
(8, 'Henry', 'henry234', 'henry@example.com', 'mdp234', 'https://picsum.photos/200'),
(9, 'Isaac', 'isaac567', 'isaac@example.com', 'mdp567', 'https://picsum.photos/200'),
(10, 'John', 'john890', 'john@example.com', 'mdp890', 'https://picsum.photos/200'),
(11, 'Kate', 'kate123', 'kate@example.com', 'mdp123', 'https://picsum.photos/200'),
(12, 'Lucy', 'lucy456', 'lucy@example.com', 'mdp456', 'https://picsum.photos/200'),
(13, 'Mike', 'mike789', 'mike@example.com', 'mdp789', 'https://picsum.photos/200'),
(14, 'Nina', 'nina012', 'nina@example.com', 'mdp012', 'https://picsum.photos/200'),
(15, 'Oliver', 'oliver345', 'oliver@example.com', 'mdp345', 'https://picsum.photos/200'),
(16, 'Tweet', 'Tweet', 'Tweet@Tweet.fr', 'Tweet', 'https://picsum.photos/200'),
(17, 'Hi', 'There', 'em@il.fr', '12345', 'https://picsum.photos/200'),
(18, 'Hache', 'Oui', 'em@il.fr', '7e240de74fb1ed08fa08d38063f6a6a91462a815', 'https://picsum.photos/200');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `tweets`
--
ALTER TABLE `tweets`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `tweets`
--
ALTER TABLE `tweets`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
