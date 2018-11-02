-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le :  mer. 31 oct. 2018 à 19:09
-- Version du serveur :  5.6.38
-- Version de PHP :  7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de données :  `sighter_dev`
--

-- --------------------------------------------------------

--
-- Structure de la table `clientDependencies`
--

CREATE TABLE `clientDependencies` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `clientLanguages`
--

CREATE TABLE `clientLanguages` (
  `id` int(11) NOT NULL,
  `string` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `clientLibs`
--

CREATE TABLE `clientLibs` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `clientUi`
--

CREATE TABLE `clientUi` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `adresse` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `customers`
--

INSERT INTO `customers` (`id`, `name`, `adresse`) VALUES
(1, 'The customer name', 'The customer adresse');

-- --------------------------------------------------------

--
-- Structure de la table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `numberSprintsInitial` int(11) DEFAULT NULL,
  `numberAdditionalSprints` int(11) DEFAULT NULL,
  `weekDuration` int(11) DEFAULT NULL,
  `deadline` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `details`
--

INSERT INTO `details` (`id`, `numberSprintsInitial`, `numberAdditionalSprints`, `weekDuration`, `deadline`) VALUES
(3, 4, NULL, 2, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `notes`
--

CREATE TABLE `notes` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `notes`
--

INSERT INTO `notes` (`id`, `title`, `content`) VALUES
(1, 'Note de test', 'Bonjour, ceci est une note de test');

-- --------------------------------------------------------

--
-- Structure de la table `projectClientDependencies`
--

CREATE TABLE `projectClientDependencies` (
  `projectId` int(11) NOT NULL,
  `clientDependenciesId` int(11) NOT NULL,
  `used` int(1) NOT NULL,
  `version` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `projectClientLanguages`
--

CREATE TABLE `projectClientLanguages` (
  `projectId` int(11) NOT NULL,
  `clientLanguagesId` int(11) NOT NULL,
  `used` int(1) NOT NULL,
  `version` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `projectClientLibs`
--

CREATE TABLE `projectClientLibs` (
  `projectId` int(11) NOT NULL,
  `clientLibsId` int(11) NOT NULL,
  `used` int(1) NOT NULL,
  `version` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `projectClientUi`
--

CREATE TABLE `projectClientUi` (
  `projectId` int(11) NOT NULL,
  `clientUiId` int(11) NOT NULL,
  `used` int(1) NOT NULL,
  `version` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `projectNotes`
--

CREATE TABLE `projectNotes` (
  `projectId` int(11) NOT NULL,
  `noteId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `projectNotes`
--

INSERT INTO `projectNotes` (`projectId`, `noteId`) VALUES
(2, 1);

-- --------------------------------------------------------

--
-- Structure de la table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `customerId` int(11) DEFAULT NULL,
  `detailId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `projects`
--

INSERT INTO `projects` (`id`, `name`, `avatar`, `description`, `customerId`, `detailId`, `createdAt`, `updatedAt`) VALUES
(1, 'Sighter', 'https://cdn.dribbble.com/users/60166/screenshots/4830500/logo_exploration.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla gravida magna ac quam scelerisque sodales.', NULL, NULL, '2018-10-13 14:39:00', '2018-10-13 14:39:00'),
(2, 'Test project', 'https://cdn.dribbble.com/users/60166/screenshots/4874958/eagle2.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla gravida magna ac quam scelerisque sodales.', 1, 3, '2018-10-13 16:00:00', '2018-10-13 16:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `projectServeurDependencies`
--

CREATE TABLE `projectServeurDependencies` (
  `projectId` int(11) NOT NULL,
  `serveurDependenciesId` int(11) NOT NULL,
  `used` int(1) NOT NULL,
  `version` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `projectServeurLanguages`
--

CREATE TABLE `projectServeurLanguages` (
  `projectId` int(11) NOT NULL,
  `serveurLanguagesId` int(11) NOT NULL,
  `used` int(1) NOT NULL,
  `version` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `projectServeurLibs`
--

CREATE TABLE `projectServeurLibs` (
  `projectId` int(11) NOT NULL,
  `serveurLibsId` int(11) NOT NULL,
  `used` int(1) NOT NULL,
  `version` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `projectTasks`
--

CREATE TABLE `projectTasks` (
  `projectId` int(11) NOT NULL,
  `taskId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `projectTasks`
--

INSERT INTO `projectTasks` (`projectId`, `taskId`) VALUES
(2, 1);

-- --------------------------------------------------------

--
-- Structure de la table `serveurDependencies`
--

CREATE TABLE `serveurDependencies` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `serveurLanguages`
--

CREATE TABLE `serveurLanguages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `serveurLibs`
--

CREATE TABLE `serveurLibs` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `tags` text,
  `taskTypesId` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `tasks`
--

INSERT INTO `tasks` (`id`, `title`, `description`, `state`, `tags`, `taskTypesId`, `createdAt`, `updatedAt`) VALUES
(1, 'Maj data', 'Mettre à jour les données', 'TO DO', NULL, 2, '2018-10-13 17:00:00', '2018-10-13 17:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `taskTypes`
--

CREATE TABLE `taskTypes` (
  `id` int(11) NOT NULL,
  `label` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `taskTypes`
--

INSERT INTO `taskTypes` (`id`, `label`, `icon`, `color`) VALUES
(1, 'Bug', 'exclamation-triangle', 'red'),
(2, 'Tâche', 'puzzle-piece', 'yellow'),
(3, 'Test', 'flask', 'blue');

-- --------------------------------------------------------

--
-- Structure de la table `userProjects`
--

CREATE TABLE `userProjects` (
  `userId` int(11) NOT NULL,
  `projectId` int(11) NOT NULL,
  `owner` int(1) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `userProjects`
--

INSERT INTO `userProjects` (`userId`, `projectId`, `owner`, `status`) VALUES
(1, 1, 1, 'started'),
(1, 2, 1, 'paused');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `mail`, `password`, `createdAt`, `updatedAt`) VALUES
(1, 'Charles Poullain', 'dev@charlespoullain.fr', 'pass', '2018-10-13 14:00:00', '2018-10-13 14:00:00');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `clientDependencies`
--
ALTER TABLE `clientDependencies`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `clientLanguages`
--
ALTER TABLE `clientLanguages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `clientLibs`
--
ALTER TABLE `clientLibs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `clientUi`
--
ALTER TABLE `clientUi`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Index pour la table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `projectClientDependencies`
--
ALTER TABLE `projectClientDependencies`
  ADD PRIMARY KEY (`projectId`,`clientDependenciesId`),
  ADD KEY `clientDependenciesId` (`clientDependenciesId`);

--
-- Index pour la table `projectClientLanguages`
--
ALTER TABLE `projectClientLanguages`
  ADD PRIMARY KEY (`projectId`,`clientLanguagesId`),
  ADD KEY `clientLanguagesId` (`clientLanguagesId`);

--
-- Index pour la table `projectClientLibs`
--
ALTER TABLE `projectClientLibs`
  ADD PRIMARY KEY (`projectId`,`clientLibsId`),
  ADD KEY `clientLibsId` (`clientLibsId`);

--
-- Index pour la table `projectClientUi`
--
ALTER TABLE `projectClientUi`
  ADD PRIMARY KEY (`projectId`,`clientUiId`),
  ADD KEY `clientUiId` (`clientUiId`);

--
-- Index pour la table `projectNotes`
--
ALTER TABLE `projectNotes`
  ADD PRIMARY KEY (`projectId`,`noteId`),
  ADD KEY `noteId` (`noteId`),
  ADD KEY `projectId` (`projectId`);

--
-- Index pour la table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customerId` (`customerId`),
  ADD KEY `detailIsd` (`detailId`);

--
-- Index pour la table `projectServeurDependencies`
--
ALTER TABLE `projectServeurDependencies`
  ADD PRIMARY KEY (`projectId`,`serveurDependenciesId`),
  ADD KEY `serveurDependenciesId` (`serveurDependenciesId`);

--
-- Index pour la table `projectServeurLanguages`
--
ALTER TABLE `projectServeurLanguages`
  ADD PRIMARY KEY (`projectId`,`serveurLanguagesId`),
  ADD KEY `serveurLanguagesId` (`serveurLanguagesId`);

--
-- Index pour la table `projectServeurLibs`
--
ALTER TABLE `projectServeurLibs`
  ADD PRIMARY KEY (`projectId`,`serveurLibsId`),
  ADD KEY `serveurLibsId` (`serveurLibsId`);

--
-- Index pour la table `projectTasks`
--
ALTER TABLE `projectTasks`
  ADD PRIMARY KEY (`projectId`,`taskId`),
  ADD KEY `taskId` (`taskId`);

--
-- Index pour la table `serveurDependencies`
--
ALTER TABLE `serveurDependencies`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `serveurLanguages`
--
ALTER TABLE `serveurLanguages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `serveurLibs`
--
ALTER TABLE `serveurLibs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `taskTypesId` (`taskTypesId`);

--
-- Index pour la table `taskTypes`
--
ALTER TABLE `taskTypes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `userProjects`
--
ALTER TABLE `userProjects`
  ADD PRIMARY KEY (`userId`,`projectId`),
  ADD KEY `userId` (`userId`),
  ADD KEY `projectId` (`projectId`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `clientDependencies`
--
ALTER TABLE `clientDependencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `clientLanguages`
--
ALTER TABLE `clientLanguages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `clientLibs`
--
ALTER TABLE `clientLibs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `clientUi`
--
ALTER TABLE `clientUi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `serveurDependencies`
--
ALTER TABLE `serveurDependencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `serveurLanguages`
--
ALTER TABLE `serveurLanguages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `serveurLibs`
--
ALTER TABLE `serveurLibs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `taskTypes`
--
ALTER TABLE `taskTypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `projectClientDependencies`
--
ALTER TABLE `projectClientDependencies`
  ADD CONSTRAINT `projectclientdependencies_ibfk_1` FOREIGN KEY (`clientDependenciesId`) REFERENCES `clientDependencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `projectclientdependencies_ibfk_2` FOREIGN KEY (`projectId`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `projectClientLanguages`
--
ALTER TABLE `projectClientLanguages`
  ADD CONSTRAINT `projectclientlanguages_ibfk_1` FOREIGN KEY (`clientLanguagesId`) REFERENCES `clientLanguages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `projectclientlanguages_ibfk_2` FOREIGN KEY (`projectId`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `projectClientLibs`
--
ALTER TABLE `projectClientLibs`
  ADD CONSTRAINT `projectclientlibs_ibfk_1` FOREIGN KEY (`clientLibsId`) REFERENCES `clientLibs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `projectclientlibs_ibfk_2` FOREIGN KEY (`projectId`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `projectClientUi`
--
ALTER TABLE `projectClientUi`
  ADD CONSTRAINT `projectclientui_ibfk_1` FOREIGN KEY (`clientUiId`) REFERENCES `clientUi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `projectclientui_ibfk_2` FOREIGN KEY (`projectId`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `projectNotes`
--
ALTER TABLE `projectNotes`
  ADD CONSTRAINT `projectnotes_ibfk_1` FOREIGN KEY (`projectId`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `projectnotes_ibfk_2` FOREIGN KEY (`noteId`) REFERENCES `notes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_ibfk_1` FOREIGN KEY (`detailId`) REFERENCES `details` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `projects_ibfk_2` FOREIGN KEY (`customerId`) REFERENCES `customers` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Contraintes pour la table `projectServeurDependencies`
--
ALTER TABLE `projectServeurDependencies`
  ADD CONSTRAINT `projectserveurdependencies_ibfk_1` FOREIGN KEY (`serveurDependenciesId`) REFERENCES `serveurDependencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `projectserveurdependencies_ibfk_2` FOREIGN KEY (`projectId`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `projectServeurLanguages`
--
ALTER TABLE `projectServeurLanguages`
  ADD CONSTRAINT `projectserveurlanguages_ibfk_1` FOREIGN KEY (`serveurLanguagesId`) REFERENCES `serveurLanguages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `projectserveurlanguages_ibfk_2` FOREIGN KEY (`projectId`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `projectServeurLibs`
--
ALTER TABLE `projectServeurLibs`
  ADD CONSTRAINT `projectserveurlibs_ibfk_1` FOREIGN KEY (`serveurLibsId`) REFERENCES `serveurLibs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `projectserveurlibs_ibfk_2` FOREIGN KEY (`projectId`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `projectTasks`
--
ALTER TABLE `projectTasks`
  ADD CONSTRAINT `projecttasks_ibfk_1` FOREIGN KEY (`taskId`) REFERENCES `tasks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `projecttasks_ibfk_2` FOREIGN KEY (`projectId`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_ibfk_1` FOREIGN KEY (`taskTypesId`) REFERENCES `taskTypes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `userProjects`
--
ALTER TABLE `userProjects`
  ADD CONSTRAINT `userprojects_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `userprojects_ibfk_2` FOREIGN KEY (`projectId`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
