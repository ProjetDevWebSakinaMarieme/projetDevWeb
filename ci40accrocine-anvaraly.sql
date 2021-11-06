-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : sam. 06 nov. 2021 à 00:18
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ci40accrocine-anvaraly`
--

-- --------------------------------------------------------

--
-- Structure de la table `films`
--

DROP TABLE IF EXISTS `films`;
CREATE TABLE IF NOT EXISTS `films` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(50) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `enAffiche` tinyint(4) NOT NULL,
  `titreOriginal` varchar(50) NOT NULL,
  `realisateur` varchar(50) NOT NULL,
  `acteurs` text NOT NULL,
  `synopsis` text NOT NULL,
  `enVO` tinyint(4) NOT NULL,
  `dureeMinutes` int(11) NOT NULL,
  `genres_id` int(11) NOT NULL,
  `ageMiniPublic` int(11) NOT NULL,
  `dateSortie` date NOT NULL,
  `affiche` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `genre_id` (`genres_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `films`
--

INSERT INTO `films` (`id`, `titre`, `alias`, `enAffiche`, `titreOriginal`, `realisateur`, `acteurs`, `synopsis`, `enVO`, `dureeMinutes`, `genres_id`, `ageMiniPublic`, `dateSortie`, `affiche`) VALUES
(1, 'VENOM', 'venom', 1, 'Venom : Let There Be Carnage', 'Andy Serkis', 'Tom Hardy, Woody Harrelson, Michelle Williams', 'Tom Hardy est de retour sur grand écran sous les traits de Venom, l\'un des personnages les plus complexes de l\'univers Marvel.', 0, 98, 2, 0, '2021-10-20', 'venom.jpg'),
(2, 'MOURIR PEUT ATTENDRE', 'mourir peut attendre', 1, ' No Time To Die', '  Cary Joji Fukunaga', '  Daniel Craig, Rami Malek, Léa Seydoux', 'Dans MOURIR PEUT ATTENDRE, Bond a quitté les services secrets et coule des jours heureux en Jamaïque. Mais sa tranquillité est de courte durée car son vieil ami Felix Leiter de la CIA débarque pour solliciter son aide : il s\'agit de sauver un scientifique qui vient d\'être kidnappé. Mais la mission se révèle bien plus dangereuse que prévu et Bond se retrouve aux trousses d\'un mystérieux ennemi détenant de redoutables armes technologiques…', 0, 112, 3, 0, '2021-10-06', 'mourir_peut_attendre.jpg'),
(3, 'EIFFEL', 'Eiffel', 1, '', ' Martin Bourboulon', ' Romain Duris, Emma Mackey, Pierre Deladonchamps', 'Venant tout juste de terminer sa collaboration sur la Statue de la Liberté, Gustave Eiffel est au sommet de sa carrière. Le gouvernement français veut qu’il crée quelque chose de spectaculaire pour l’Exposition Universelle de 1889 à Paris, mais Eiffel ne s’intéresse qu’au projet de métropolitain. Tout bascule lorsqu\'il recroise son amour de jeunesse. Leur relation interdite l’inspire à changer l’horizon de Paris pour toujours.', 0, 109, 1, 0, '2021-10-13', 'Eiffel.jpg'),
(4, 'LE LOUP ET LE LIEN ', 'Le Loup et le lion', 1, '', 'Gilles de Maistre', 'Molly Kunz, Graham Greene (II), Charlie Carrick', 'A la mort de son grand père, Alma, jeune pianiste de 20 ans revient dans la maison de son enfance, perdue sur une île déserte du Canada. Là, tout bascule quand un louveteau et un lionceau en détresse surgissent dans sa vie. Elle choisit de les garder pour les sauver et l’improbable se produit : ils grandissent ensemble et s’aiment comme des frères. Mais leur monde idéal s’écroule lorsque leur secret est découvert...', 0, 100, 2, 0, '2021-10-13', 'leloupetlelion.jpg'),
(5, 'ILLUSIONS PERDUES', 'illusions perdues', 1, '', 'Xavier Giannoli', ' Benjamin Voisin, Cécile de France, Vincent Lacoste', 'Lucien est un jeune poète inconnu dans la France du XIXème siècle. Il a de grandes espérances et veut se forger un destin. Il quitte l’imprimerie familiale de sa province natale pour tenter sa chance à Paris, au bras de sa protectrice. Bientôt livré à lui-même dans la ville fabuleuse, le jeune homme va découvrir les coulisses d’un monde voué à la loi du profit et des faux-semblants. Une comédie humaine où tout s’achète et se vend, la littérature comme la presse, la politique comme les sentiments, les réputations comme les âmes. Il va aimer, il va souffrir, et survivre à ses illusions.', 0, 90, 4, 3, '2021-10-13', 'illusions_perdues.jpg'),
(6, 'PIERRE LAPIN 2 : PANIQUE EN VILLE', 'Pierre Lapin 2 : Panique en ville', 1, 'Peter Rabbit 2: The Runaway', ' Will Gluck', 'Thibaut Lacour, Pamela Ravassard, Benoit Du Pac', 'Béa, Thomas et les lapins forment désormais une famille recomposée, mais Pierre a beau faire tout son possible, il ne semble parvenir à se débarrasser de la réputation de voyou qui lui colle à la peau (de lapin).\r\nS\'aventurant hors du potager, Pierre découvre un monde dans lequel ses menus délits sont appréciés, mais quand sa famille risque tout pour partir à sa recherche, Pierre doit choisir quel genre de lapin il veut être.', 0, 93, 7, 6, '2021-06-30', 'pierre_lapin.jpg'),
(7, 'STAR WARS: L\'ASCENSION DE SKYWALKER', 'Star Wars: L\'Ascension de Skywalker', 1, ' Star Wars: The Rise of Skywalker', ' J.J. Abrams', ' Daisy Ridley, Adam Driver, Oscar Isaac', 'La conclusion de la saga Skywalker. De nouvelles légendes vont naître dans cette bataille épique pour la liberté.', 0, 142, 2, 12, '2019-12-18', 'star_wars.jpg'),
(8, 'ALBATROS', 'albatros', 1, '', ' Xavier Beauvois', ' Jérémie Renier, Marie-Julie Maille, Victor Belmondo', 'Laurent, un commandant de brigade de la gendarmerie d’Etretat, prévoit de se marier avec Marie, sa compagne, mère de sa fille surnommée Poulette. Il aime son métier malgré une confrontation quotidienne avec la misère sociale. En voulant sauver un agriculteur qui menace de se suicider, il le tue. Sa vie va alors basculer.', 0, 115, 4, 0, '2021-11-03', 'albatros.jpg'),
(9, 'AVATAR 2', 'avatar-2', 1, '', 'James Cameron', ' Sam Worthington, Zoe Saldana, Sigourney Weaver', 'Retour sur Pandora avec la suite d\'\"Avatar\".', 0, 85, 2, 0, '2022-12-14', 'Avatar_2.jpg'),
(10, 'VTC', 'vtc', 1, '', 'Sebastien Drouin, Julien Bittner', ' Golshifteh Farahani, Vincent Heneine, Gringe', 'Chauffeuse de VTC, Nora est dans une situation extrêmement précaire : accro aux amphétamines, elle vit dans sa voiture en attendant de réunir l’argent nécessaire pour louer un petit appartement et obtenir la garde partagée de sa fille. Quand son frère Ben, lui-même chauffeur, a un accident, Nora se propose de livrer un colis urgent à sa place. Sans s’en douter, elle vient de se mettre au service d’un dangereux réseau… et s’apprête à vivre la nuit la plus intense de sa vie.', 0, 20, 4, 0, '2021-11-01', 'vtc.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `genres`
--

DROP TABLE IF EXISTS `genres`;
CREATE TABLE IF NOT EXISTS `genres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `genre` varchar(50) NOT NULL,
  `alias` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `genres`
--

INSERT INTO `genres` (`id`, `genre`, `alias`) VALUES
(0, '-', ''),
(1, 'Comédie dramatique', 'comedie-dramatique'),
(2, 'Fantastique', 'fantastique'),
(3, 'Thriller', 'thriller'),
(4, 'Drame', 'drame'),
(5, 'Documentaire', 'documentaire'),
(6, 'Opéra', 'opera'),
(7, 'Comédie', 'comedie');

-- --------------------------------------------------------

--
-- Structure de la table `seances`
--

DROP TABLE IF EXISTS `seances`;
CREATE TABLE IF NOT EXISTS `seances` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `heure` time NOT NULL,
  `films_id` int(11) NOT NULL,
  `salle` int(11) NOT NULL,
  `alias` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `films_id` (`films_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `films`
--
ALTER TABLE `films`
  ADD CONSTRAINT `films_ibfk_1` FOREIGN KEY (`genres_id`) REFERENCES `genres` (`id`);

--
-- Contraintes pour la table `seances`
--
ALTER TABLE `seances`
  ADD CONSTRAINT `seances_ibfk_1` FOREIGN KEY (`films_id`) REFERENCES `films` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
