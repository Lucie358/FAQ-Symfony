-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Mar 27 Août 2019 à 19:15
-- Version du serveur :  5.7.24-0ubuntu0.16.04.1
-- Version de PHP :  7.2.20-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `faqParcours`
--

-- --------------------------------------------------------

--
-- Structure de la table `answer`
--

CREATE TABLE `answer` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `answer`
--

INSERT INTO `answer` (`id`, `user_id`, `status_id`, `question_id`, `content`, `created_at`, `updated_at`) VALUES
(232, 127, 2, 146, 'Contrairement à une opinion répandue, le Lorem Ipsum n\'est pas simplement du texte aléatoire. Il trouve ses racines dans une oeuvre de la littérature latine classique datant de 45 av. J.-C., le rendant vieux de 2000 ans. Un professeur du Hampden-Sydney College, en Virginie, s\'est intéressé à un des mots latins les plus obscurs, consectetur, extrait d\'un passage du Lorem Ipsum, et en étudiant tous les usages de ce mot dans la littérature classique, découvrit la source incontestable du Lorem Ipsum. Il provient en fait des sections 1.10.32 et 1.10.33 du "De Finibus Bonorum et Malorum" (Des Suprêmes Biens et des Suprêmes Maux) de Cicéron. Cet ouvrage, très populaire pendant la Renaissance, est un traité sur la théorie de l\'éthique. Les premières lignes du Lorem Ipsum, "Lorem ipsum dolor sit amet...", proviennent de la section 1.10.32.\r\n\r\nL\'extrait standard de Lorem Ipsum utilisé depuis le XVIè siècle est reproduit ci-dessous pour les curieux. Les sections 1.10.32 et 1.10.33 du "De Finibus Bonorum et Malorum" de Cicéron sont aussi reproduites dans leur version originale, accompagnée de la traduction anglaise de H. Rackham (1914).', '2019-08-24 13:13:21', '2019-08-24 13:13:21'),
(238, 122, 2, 152, 'Please go through with following steps\r\n\r\nsudo apt-get install mysql-server\r\n\r\nsudo mysql_secure_installation\r\nYou need to check MySQL servics running or not.\r\n\r\n sudo service mysql start\r\nCheck status by executing\r\n\r\nsudo service mysql status\r\nThen then\r\n\r\n mysql\r\nOr check which port used during instllation\r\n\r\n mysql -h localhost --port 3306 - u root -p\r\nyou can also use MySQLTuner by executing:\r\n\r\n sudo apt-get install mysqltuner', '2019-08-27 18:56:29', '2019-08-27 18:56:29'),
(239, 122, 2, 152, 'You can refer the MySQL official documentation here', '2019-08-27 18:56:47', '2019-08-27 18:56:47'),
(240, 128, 2, 152, 'It\'s quite easy to install mysql on Ubuntu.\r\n\r\nsudo apt-get update\r\nsudo apt-get install mysql-server\r\nYou\'ll be asked to create a new password for root user. Set a good password and you\'re ready to go.\r\n\r\nYou can also follow this youtube videos for installation and basic understanding for Mysql', '2019-08-27 18:57:27', '2019-08-27 18:57:27'),
(241, 122, 2, 153, 'Salut,\r\n\r\nquand tu parle de libellé tu parles de <label> ?\r\n\r\nDonnes nous tes codes html et CSS si tu veux que l\'on t\'aide.', '2019-08-27 19:09:45', '2019-08-27 19:09:45'),
(242, 122, 1, 151, 'On sait depuis longtemps que travailler avec du texte lisible et contenant du sens est source de distractions, et empêche de se concentrer sur la mise en page elle-même. L\'avantage du Lorem Ipsum sur un texte générique comme \'Du texte. Du texte. Du texte.\' est qu\'il possède une distribution de lettres plus ou moins normale, et en tout cas comparable avec celle du français standard. De nombreuses suites logicielles de mise en page ou éditeurs de sites Web ont fait du Lorem Ipsum leur faux texte par défaut, et une recherche pour \'Lorem Ipsum\' vous conduira vers de nombreux sites qui n\'en sont encore qu\'à leur phase de construction. Plusieurs versions sont apparues avec le temps, parfois par accident, souvent intentionnellement (histoire d\'y rajouter de petits clins d\'oeil, voire des phrases embarassantes).', '2019-08-27 19:10:48', '2019-08-27 19:10:48'),
(243, 122, 2, 151, 'e Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\'a pas fait que survivre cinq siècles, mais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.', '2019-08-27 19:11:05', '2019-08-27 19:11:05');

-- --------------------------------------------------------

--
-- Structure de la table `migration_versions`
--

CREATE TABLE `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `migration_versions`
--

INSERT INTO `migration_versions` (`version`, `executed_at`) VALUES
('20190820131510', '2019-08-20 13:15:21'),
('20190820132259', '2019-08-20 13:23:52'),
('20190820134714', '2019-08-20 13:47:23');

-- --------------------------------------------------------

--
-- Structure de la table `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `valide_answer` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `question`
--

INSERT INTO `question` (`id`, `title`, `content`, `created_at`, `updated_at`, `valide_answer`, `user_id`, `status_id`) VALUES
(148, 'Is there a way to access object properties without referencing the object when provided as a function argument?', 'Assume you got an object like var obj = {a:\'foo\',b:\'bar\'} you provide to a function function equal(x) { return x.a === x.b}; Is there a way to provide the object argument as scope to remove the object references within the function like so function equal(x) { return a === b};?\n\nSide note: Syntax preferably works with ECMAScript 5th edition', '2019-08-26 18:37:22', '2019-08-26 18:37:22', NULL, 128, 1),
(149, 'Not all parameters were used in the SQL statement but I just want to update 1 column', 'I have a list of file names which I want to insert into my mySQL database. I have done the following:\n\ncur.executemany("""INSERT INTO table (filename) VALUES(%s)""", folder_files)\nHowever, I am getting: mysql.connector.errors.ProgrammingError: Not all parameters were used in the SQL statement.\n\nThe table in the database does have 3 columns but I only want to insert data into the filename column.\n\nMy alternative (and working) code is\n\nfor each_pdf_file in folder_files:\n    cur.execute("INSERT INTO table (filename) VALUES(%s)", (each_pdf_file,))\n    print(each_pdf_file)\nbut this is incredibly slow (I have thousands of files to import into the database).\n\nSo how do I use the executemany? Or must I stick to my alternative code?', '2019-08-26 19:15:57', '2019-08-26 19:15:57', NULL, 128, 2),
(151, 'Is There any function in google\'s map api for android to locate a building (i.e hospital )using state name and district name and the name of the place', 'Actually i am building an android app , which locates the hospital , and i am getting the data of hospitals from government website , but data from website doesn\'t mention longitude and latitude of the hospitals , instead it have district name , State Name and Hospital name. Now i want to implement locator functionality , and thinking of using the above mentioned information available ,\r\n\r\nso is there any function to query google maps using name of hospital , district name and city name?', '2019-08-27 18:46:29', '2019-08-27 18:46:29', 237, 129, 2),
(152, 'How to properly install mysql on Ubuntu 14.04', 'I tried installing MySQL on my machine (sudo apt-get install mysql-server ) but after installation I cannot get it to run. When I enter mysql or mysql -u root command I receive the error  ERROR 2002 (HY000): Can\'t connect to local MySQL server through socket \'/var/run/mysqld/mysqld.sock.\r\n\r\nI tried following the tutorials online and I noticed that I\'m not asked to created a password during installation as mentioned online. I had a lamp stack before which I got rid of. I\'m now reinstalling MySQL which I want to use for web development (JavaEE/Spring). Can anybody shed some light on what I\'m doing wrong?', '2019-08-27 18:56:07', '2019-08-27 18:56:07', 240, 122, 2),
(153, 'Lier un checkbox à son intitulé', 'Bonjour à tous,\r\n\r\nJe suis devant un problème idiot (à moins que ce soit moi), mais je ne trouve pas de solution.\r\n\r\nJ\'ai une série de Checkbox avec leurs intitulés, mais lorsque je resize la fenêtre, certains Checkbox restent sur une ligne alors que leur intitulé (qui est après) passe à la ligne suivante.\r\n\r\nMon premier réflexe a été d\'essayer de mettre un insécable, mais ça ne fonctionne pas (que le display du Checkbox soit sur inline-block ou inline ça ne fonctionne pas).\r\n\r\nJ\'ai essayé de mettre un :after avec mon texte dans la propriété content, mais je n\'arrive pas à lui donner l\'aspect que je veux (je vais faire d\'autres essais dans ce sens).\r\n\r\nMais si quelqu\'un a une idée, ce serait super sympa.\r\n\r\nMerci d\'avance pour votre écoute et votre aide.', '2019-08-27 19:09:25', '2019-08-27 19:09:25', NULL, 122, 2);

-- --------------------------------------------------------

--
-- Structure de la table `question_tag`
--

CREATE TABLE `question_tag` (
  `question_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `question_tag`
--

INSERT INTO `question_tag` (`question_id`, `tag_id`) VALUES
(123, 52),
(123, 53),
(123, 59),
(124, 55),
(124, 56),
(124, 57),
(124, 58),
(125, 53),
(125, 55),
(125, 56),
(125, 58),
(126, 52),
(126, 55),
(126, 57),
(127, 52),
(127, 53),
(127, 55),
(127, 56),
(127, 60),
(128, 52),
(128, 56),
(129, 52),
(129, 56),
(129, 60),
(130, 52),
(130, 58),
(130, 59),
(131, 53),
(131, 57),
(131, 60),
(132, 52),
(132, 57),
(132, 58),
(132, 60),
(133, 55),
(133, 56),
(133, 57),
(134, 53),
(134, 56),
(134, 58),
(134, 59),
(135, 52),
(135, 53),
(135, 55),
(135, 60),
(136, 52),
(136, 53),
(136, 55),
(136, 56),
(137, 55),
(137, 56),
(137, 59),
(138, 52),
(138, 56),
(138, 58),
(138, 59),
(138, 60),
(139, 52),
(139, 55),
(139, 58),
(139, 59),
(139, 60),
(140, 57),
(140, 58),
(141, 55),
(141, 56),
(141, 59),
(141, 60),
(142, 52),
(142, 53),
(142, 59),
(143, 53),
(143, 55),
(143, 60),
(144, 52),
(144, 53),
(144, 57),
(144, 59),
(146, 52),
(147, 55),
(147, 58),
(148, 59),
(148, 61),
(148, 62),
(149, 56),
(149, 59),
(150, 59),
(150, 61),
(151, 56),
(151, 57),
(152, 61),
(153, 57);

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `role`
--

INSERT INTO `role` (`id`, `label`, `code`) VALUES
(16, 'Admin', 'ROLE_USER_ADMIN'),
(17, 'User', 'ROLE_USER_USER'),
(18, 'Modo', 'ROLE_USER_MODO');

-- --------------------------------------------------------

--
-- Structure de la table `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `status`
--

INSERT INTO `status` (`id`, `label`, `code`) VALUES
(1, 'Bloqué', 'BLOCKED'),
(2, 'Débloqué', 'UNBLOCKED');

-- --------------------------------------------------------

--
-- Structure de la table `tag`
--

CREATE TABLE `tag` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `tag`
--

INSERT INTO `tag` (`id`, `name`, `created_at`, `updated_at`) VALUES
(52, 'React', '2019-08-22 20:31:54', '2019-08-22 20:31:54'),
(53, 'Symfony', '2019-08-22 20:31:54', '2019-08-22 20:31:54'),
(55, 'Framework', '2019-08-22 20:31:54', '2019-08-22 20:31:54'),
(56, 'Fonctions', '2019-08-22 20:31:54', '2019-08-22 20:31:54'),
(57, 'CSS', '2019-08-22 20:31:54', '2019-08-22 20:31:54'),
(58, 'Javascript', '2019-08-22 20:31:54', '2019-08-22 20:31:54'),
(59, 'SQL', '2019-08-22 20:31:54', '2019-08-22 20:31:54'),
(60, 'Terminal', '2019-08-22 20:31:54', '2019-08-22 20:31:54'),
(61, 'Laravel', '2019-08-26 17:10:26', '2019-08-26 17:10:26'),
(62, 'PHP', '2019-08-26 17:19:59', '2019-08-26 17:19:59'),
(63, 'Lays', '2019-08-26 19:19:10', '2019-08-26 19:19:10');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`id`, `role_id`, `username`, `password`, `email`, `created_at`, `updated_at`) VALUES
(102, 17, 'emoen', 'pH>?R4Usi|L@v', 'erna39@example.net', '2019-08-22 20:31:54', '2019-08-22 20:31:54'),
(103, 17, 'trinity79', ')bQsrunw0{:0&,`v', 'donnelly.virginia@example.com', '2019-08-22 20:31:54', '2019-08-22 20:31:54'),
(104, 18, 'verner59', '>40G|$7[', 'elmira.grant@example.net', '2019-08-22 20:31:54', '2019-08-22 20:31:54'),
(105, 16, 'jackeline78', 'u<*d,-R', 'tremblay.jovani@example.org', '2019-08-22 20:31:54', '2019-08-22 20:31:54'),
(106, 17, 'xeffertz', 'HZqzXf=6tSGzbO', 'josie.mcdermott@example.com', '2019-08-22 20:31:54', '2019-08-22 20:31:54'),
(107, 17, 'oran53', '&|X+*KrK.*2[ZSoAx', 'wondricka@example.org', '2019-08-22 20:31:54', '2019-08-22 20:31:54'),
(108, 16, 'dandre.nienow', 'g]A7:BugV,{"_OD', 'shanna30@example.org', '2019-08-22 20:31:54', '2019-08-22 20:31:54'),
(109, 17, 'schaefer.arnulfo', 'hh*6Vb~6E/`', 'halle.beier@example.org', '2019-08-22 20:31:54', '2019-08-22 20:31:54'),
(110, 18, 'sigrid.greenfelder', '}e(o=T!xnR-f&', 'benton76@example.org', '2019-08-22 20:31:54', '2019-08-22 20:31:54'),
(111, 16, 'tiana23', 'cM,1}Z', 'lakin.quinton@example.net', '2019-08-22 20:31:54', '2019-08-22 20:31:54'),
(112, 17, 'mwolf', '6K$0e,i;)XV|', 'dbrakus@example.com', '2019-08-22 20:31:54', '2019-08-22 20:31:54'),
(113, 17, 'wilbert18', 'ZEIr89IU', 'gpurdy@example.net', '2019-08-22 20:31:54', '2019-08-22 20:31:54'),
(114, 18, 'nader.breanne', '6Zd$UA~-\'', 'bernhard.thaddeus@example.net', '2019-08-22 20:31:54', '2019-08-22 20:31:54'),
(115, 16, 'herzog.dolly', 'l&H\\#yp9hbO4D}n*/h', 'bins.rosella@example.net', '2019-08-22 20:31:54', '2019-08-22 20:31:54'),
(116, 18, 'alfreda.lakin', 'L"uHq[NTkg', 'moen.kamryn@example.org', '2019-08-22 20:31:54', '2019-08-22 20:31:54'),
(117, 18, 'nels.cole', 'x4)70xB9ulq', 'qrunolfsdottir@example.com', '2019-08-22 20:31:54', '2019-08-22 20:31:54'),
(118, 16, 'onikolaus', 'xe9R6f)0&>"Ii9Eh', 'tessie62@example.net', '2019-08-22 20:31:54', '2019-08-22 20:31:54'),
(119, 17, 'thalia.kertzmann', '<N0E|JTxlwC', 'bode.evangeline@example.com', '2019-08-22 20:31:54', '2019-08-22 20:31:54'),
(120, 16, 'allan.schuster', '~}T%{1@~Rnt`P', 'angeline13@example.com', '2019-08-22 20:31:54', '2019-08-22 20:31:54'),
(121, 16, 'mschowalter', 'sh/#v$LIL^3Id,OzYa~', 'trisha.nitzsche@example.org', '2019-08-22 20:31:54', '2019-08-22 20:31:54'),
(122, 16, 'lucie', '$argon2id$v=19$m=65536,t=4,p=1$+cAYRERnjhXFQXveICofSQ$l6H3H9E4atHJs7R1dKa2hQvdiUWMW5PSGmw3ogOZvsU', 'luciebrochet358@gmail.com', '2019-08-22 20:43:01', '2019-08-22 20:43:01'),
(127, 17, 'allez', '$argon2id$v=19$m=65536,t=4,p=1$EaLSTowzA6490IsFIpGJSw$oTUwXgsX4n9cRAwEOUoaPYOL7q++ACpVmR7kllu2k8U', 'testnsdsdbfd@test.fr', '2019-08-24 13:10:04', '2019-08-24 13:10:04'),
(128, 18, 'test', '$argon2id$v=19$m=65536,t=4,p=1$AhGziBqz+qkLN/pbH0LaJA$UOc6RmelZjAzNQb/HvJG5V+Yo88us+/2ctnMrdiTmjY', 'test@gmail.com', '2019-08-24 17:27:42', '2019-08-24 17:27:42'),
(129, 17, 'user', '$argon2id$v=19$m=65536,t=4,p=1$e7M/daDU5+fbkKfTxFL0NQ$CFbnlc4fyzSqqoWofNMhQurenen5st3qzBLgFws/2sM', 'user@test.fr', '2019-08-27 18:42:57', '2019-08-27 18:42:57'),
(130, 16, 'admin', '$argon2id$v=19$m=65536,t=4,p=1$8SxtDgX6jZKHcgONzVmQ+Q$RGx2GUV/gV1E/fvRr/EbLt36O21030w5dRJaADajB4M', 'admin@admin.fr', '2019-08-27 19:12:42', '2019-08-27 19:12:42'),
(131, 18, 'modo', '$argon2id$v=19$m=65536,t=4,p=1$7iKlPM8Ni37k9AQ7HJcslQ$aGGPN7nQzbtiagk2hNbDlL3t6/TnhGPbUVc5EgzbqmE', 'modo@modo.fr', '2019-08-27 19:13:50', '2019-08-27 19:13:50');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_DADD4A25A76ED395` (`user_id`),
  ADD KEY `IDX_DADD4A256BF700BD` (`status_id`),
  ADD KEY `IDX_DADD4A251E27F6BF` (`question_id`);

--
-- Index pour la table `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_B6F7494EA76ED395` (`user_id`),
  ADD KEY `IDX_B6F7494E6BF700BD` (`status_id`);

--
-- Index pour la table `question_tag`
--
ALTER TABLE `question_tag`
  ADD PRIMARY KEY (`question_id`,`tag_id`),
  ADD KEY `IDX_339D56FB1E27F6BF` (`question_id`),
  ADD KEY `IDX_339D56FBBAD26311` (`tag_id`);

--
-- Index pour la table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_8D93D649D60322AC` (`role_id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `answer`
--
ALTER TABLE `answer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244;
--
-- AUTO_INCREMENT pour la table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;
--
-- AUTO_INCREMENT pour la table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT pour la table `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `tag`
--
ALTER TABLE `tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `answer`
--
ALTER TABLE `answer`
  ADD CONSTRAINT `FK_DADD4A251E27F6BF` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`),
  ADD CONSTRAINT `FK_DADD4A256BF700BD` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`),
  ADD CONSTRAINT `FK_DADD4A25A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `FK_B6F7494E6BF700BD` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`),
  ADD CONSTRAINT `FK_B6F7494EA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `question_tag`
--
ALTER TABLE `question_tag`
  ADD CONSTRAINT `FK_339D56FB1E27F6BF` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_339D56FBBAD26311` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FK_8D93D649D60322AC` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
