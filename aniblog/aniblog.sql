-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  jeu. 02 juil. 2020 à 09:49
-- Version du serveur :  8.0.18
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `aniblog`
--

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `comment` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `post_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `seen` tinyint(11) NOT NULL DEFAULT '0',
  `signals` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=97 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `comment`, `post_id`, `date`, `seen`, `signals`) VALUES
(93, 14, 'Pas mal !', 40, '2018-02-22 07:20:01', 1, 0),
(94, 14, 'Bof', 11, '2018-02-22 07:20:13', 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `body` longtext NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'post.png',
  `createdDate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `image`, `createdDate`) VALUES
(11, 'Chat', '<p>Le chat domestique m&acirc;le est couramment appel&eacute; un &laquo; chat &raquo; tandis que la femelle est appel&eacute;e &laquo; chatte &raquo;2 et le jeune un &laquo; chaton &raquo;3,4,5. Le mot chat vient du bas latin cattus, qui, d&rsquo;apr&egrave;s le Littr&eacute; (&eacute;dition de 1878), provient du verbe cattare, qui signifie guetter, ce f&eacute;lin &eacute;tant alors consid&eacute;r&eacute; comme un chasseur qui guette sa proie. Cette interpr&eacute;tation porte cependant &agrave; controverse, au vu des termes utilis&eacute;s dans certaines langues afro-asiatiques (berb&egrave;re kadiska)6 ou nilo-sahariennes (nubien kadis)6. En latin classique, &laquo; chat &raquo; se dit felis (d&rsquo;o&ugrave;, en fran&ccedil;ais, f&eacute;lin, f&eacute;lid&eacute;s, etc.), mais d&eacute;signe uniquement le chat sauvage d&rsquo;Europe, tandis que cattus s&rsquo;applique au chat domestique7</p>', 'cat.jpg', '2018-02-03 16:08:55'),
(24, 'Cheval', '<p>Le cheval Écouter (Equus ferus caballus ou Equus caballus) est un grand mammifère herbivore et ongulé à sabot unique ; c\'est l\'une des espèces de la famille des Équidés (Equidae), lesquelles ont évolué, au cours des derniers 45 à 55 millions d\'années, à partir d\'un petit mammifère possédant plusieurs doigts. À l\'état naturel, les chevaux vivent en troupeaux, généralement sous la conduite d\'un unique étalon reproducteur. Ils entretiennent des rapports sociaux et comptent sur leur vitesse pour échapper à leurs prédateurs. Dotés d\'un bon sens de l\'équilibre, d\'un fort instinct de fuite et de grandes aptitudes de visualisation spatiale, ils possèdent un trait inhabituel dans le règne animal, étant capables d\'entrer en sommeil léger tout en restant debout. Les femelles, nommées juments, mettent bas après onze mois de gestation un petit appelé poulain, capable de se lever et de courir peu de temps après sa naissance.</p>\r\n<p>Le cheval est domestiqué par les humains. Son utilisation se répand à toute l\'Eurasie dès la plus haute Antiquité. Bien que la quasi-totalité des chevaux soient désormais domestiques, il existe des populations de chevaux domestiques retournés à l\'état sauvage dont le cheval de Przewalski. Un vaste vocabulaire spécialisé s\'est développé pour décrire les concepts liés au cheval. Ce lexique va de son anatomie et sa morphologie aux étapes de sa vie, en passant par sa couleur, les différentes races, sa locomotion et son comportement. La plupart des chevaux domestiques sont dressés pour l\'équitation ou la traction entre deux et quatre ans. Ils atteignent leur plein développement vers cinq ans en moyenne. Leur espérance de vie à la naissance est de vingt-cinq à trente ans.</p>\r\n<p>Des siècles durant, les chevaux sont au service des êtres humains qui sélectionnent différentes races pour la traction, l\'agriculture, la guerre ou encore la selle. Les chevaux permettent l\'essor du commerce et l\'expansion de civilisations sur de grandes étendues. Pendant la colonisation des Amériques, l\'espèce est réintroduite sur ce continent. Considéré comme « la plus noble conquête de l\'Homme », présent dans les mythes, les religions, les encyclopédies et toutes les formes d\'art, le cheval est, de tous les animaux, celui qui a le plus marqué l\'histoire et les progrès de l\'humanité. Des métiers sont liés à son entretien, son commerce et à des activités sportives, hippiques et équestres. Dans la plupart des pays développés, le cheval est désormais monté pour le loisir ou le sport. Il peut être un partenaire de thérapie, et tend à se rapprocher de l\'animal de compagnie. Il produit des biens de consommation grâce à sa viande, son lait, son cuir et son urine. Dans d\'autres pays, le cheval reste indispensable à l\'agriculture et au transport. L\'entretien de chevaux domestiques demande un matériel particulier et l\'attention de spécialistes.</p>', 'cheval.jpg', '2018-02-03 18:33:05'),
(40, 'Chien', '<p><img class=\"\" src=\"../blog-php-mvc/static/source/diner-chez-habitant-strasbourg.jpg\" alt=\"\" />Le Chien (Canis lupus familiaris) est la sous-esp&egrave;ce domestique de Canis lupus, un mammif&egrave;re de la famille des Canid&eacute;s (Canidae), laquelle comprend &eacute;galement le Loup gris et le dingo, chien domestique retourn&eacute; &agrave; l\'&eacute;tat sauvage.</p>\r\n<p><img class=\"\" src=\"static/source/petite%20image.jpg\" alt=\"\" width=\"245\" height=\"232\" /></p>\r\n<p>Le Loup est la premi&egrave;re esp&egrave;ce animale &agrave; avoir &eacute;t&eacute; domestiqu&eacute;e par l\'Homme pour l\'usage de la chasse dans une soci&eacute;t&eacute; humaine pal&eacute;olithique qui ne ma&icirc;trise alors ni l\'agriculture ni l\'&eacute;levage. La lign&eacute;e du chien s\'est diff&eacute;renci&eacute;e g&eacute;n&eacute;tiquement de celle du Loup gris il y a environ 100 000 ans1, et les plus anciens restes confirm&eacute;s de canid&eacute; diff&eacute;renci&eacute; de la lign&eacute;e du Loup sont vieux, selon les sources, de 33 000 ans2,3 ou de 12 000 ans4 ; le boeuf5 (voir Domestication de Bos taurus) et la ch&egrave;vre seront domestiqu&eacute;es vers &minus;10 000. Depuis la Pr&eacute;histoire, le chien a accompagn&eacute; l\'&ecirc;tre humain durant toute sa phase de s&eacute;dentarisation, marqu&eacute;e par l\'apparition des premi&egrave;res civilisations agricoles. C\'est &agrave; ce moment qu\'il a acquis la capacit&eacute; de dig&eacute;rer l\'amidon6, et que ses fonctions d\'auxiliaire d\'Homo sapiens se sont &eacute;tendues. Ces nouvelles fonctions ont entra&icirc;n&eacute; une diff&eacute;renciation accrue de la sous-esp&egrave;ce et l\'apparition progressive de races canines identifiables. Le chien est aujourd\'hui utilis&eacute; &agrave; la fois comme animal de travail et comme animal de compagnie. Son instinct de meute, sa domestication pr&eacute;coce et les caract&eacute;ristiques comportementales qui en d&eacute;coulent lui valent famili&egrave;rement le surnom de &laquo; meilleur ami de l\'Homme &raquo;7.</p>', 'chien.jpg', '2018-02-07 13:41:04');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(120) NOT NULL,
  `password` char(60) NOT NULL,
  `admin` int(11) DEFAULT NULL,
  `pseudo` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `admin`, `pseudo`) VALUES
(8, 'hassirahou@gmail.com', '21e57080434c1cb6c2fb4753c4f8a28f', 0, 'el_azhar'),
(14, 'tom@gmail.com', '21e57080434c1cb6c2fb4753c4f8a28f', NULL, 'Tom'),
(16, 'example@gmail.com', '21e57080434c1cb6c2fb4753c4f8a28f', NULL, 'elazhar');

-- --------------------------------------------------------

--
-- Structure de la table `votes`
--

DROP TABLE IF EXISTS `votes`;
CREATE TABLE IF NOT EXISTS `votes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_id` int(11) NOT NULL,
  `user_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `post_id` int(11) NOT NULL,
  `vote` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=136 DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
