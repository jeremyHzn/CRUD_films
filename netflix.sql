-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 13 déc. 2022 à 20:15
-- Version du serveur : 5.7.36
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `netflix`
--

-- --------------------------------------------------------

--
-- Structure de la table `age_categorie`
--

DROP TABLE IF EXISTS `age_categorie`;
CREATE TABLE IF NOT EXISTS `age_categorie` (
  `age_id` int(11) NOT NULL AUTO_INCREMENT,
  `age_minimum` varchar(4) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`age_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `age_categorie`
--

INSERT INTO `age_categorie` (`age_id`, `age_minimum`) VALUES
(1, 'TOUT'),
(2, '7+'),
(3, '13+'),
(4, '16+'),
(5, '18+');

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
CREATE TABLE IF NOT EXISTS `categorie` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_nom` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`cat_id`, `cat_nom`) VALUES
(1, 'Action'),
(2, 'Anime'),
(3, 'Comedies'),
(4, 'Courts-Metrages'),
(5, 'Documentaires'),
(6, 'Drames'),
(7, 'Européen'),
(8, 'Fantastique'),
(9, 'Français'),
(10, 'Horreur'),
(11, 'Indépendants'),
(12, 'International'),
(13, 'Jeunesse et famille'),
(14, 'Musique et comédies musicales'),
(15, 'Noël'),
(16, 'Policier'),
(17, 'Primés'),
(18, 'Romance'),
(19, 'SF'),
(20, 'Thriller'),
(21, 'Audiodescription');

-- --------------------------------------------------------

--
-- Structure de la table `film`
--

DROP TABLE IF EXISTS `film`;
CREATE TABLE IF NOT EXISTS `film` (
  `film_id` int(11) NOT NULL AUTO_INCREMENT,
  `film_titre` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `film_description` text COLLATE utf8mb4_bin,
  `film_date` mediumint(9) DEFAULT NULL,
  `film_realisateur_id` int(11) DEFAULT NULL,
  `film_age_id` int(11) DEFAULT NULL,
  `film_image` tinytext COLLATE utf8mb4_bin,
  PRIMARY KEY (`film_id`)
) ENGINE=MyISAM AUTO_INCREMENT=289 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `film`
--

INSERT INTO `film` (`film_id`, `film_titre`, `film_description`, `film_date`, `film_realisateur_id`, `film_age_id`, `film_image`) VALUES
(1, 'Enola Holmes', 'Chargée, pour sa première affaire officielle, de percer le mystère d\'une jeune disparue, la détective Enola doit solliciter l\'aide de ses amis… et de son frère Sherlock.', 2022, 1, 3, NULL),
(2, 'Adam à travers le temps', 'Après un atterrissage forcé en 2022, le pilote de chasse et voyageur dans le temps Adam Reed fait équipe avec une version de lui-même âgée de 12 ans pour sauver le futur.', 2022, 47, 3, NULL),
(3, 'Balle perdue', 'Trahison. Corruption. Vengeance. Le parcours effréné de Lino pour faire justice à son mentor et à son petit frère assassinés promet d\'être sanglant.', 2022, 2, 3, NULL),
(4, 'Medieval', 'L\'honnête chef d\'une bande de mercenaires accomplit sa destinée en livrant bataille aux armées de l\'ordre Teutonique et du Saint-Empire romain germanique.', 2022, 6, 5, NULL),
(5, 'Minority report', 'Dans un futur proche où il est possible de voir les meurtres avant qu\'ils soient commis, le chef de la Précrime prend la fuite quand il est accusé d\'un homicide imminent.', 2022, 48, 3, NULL),
(6, 'Spider-Man', 'Même les super-héros ont parfois besoin de vacances, mais une nouvelle menace oblige Peter Parker à passer à l\'action lors d\'un voyage scolaire en Europe.', 2019, 49, 3, NULL),
(7, 'Aquaman', 'Le super-héros amphibie Arthur Curry apprend ce qu\'il en coûte d\'être Aquaman quand il doit empêcher le roi de l\'Atlantide de déclarer la guerre au monde de la surface.', 2018, 24, 3, NULL),
(8, 'Shazam!', 'Ayant montré de quoi il était capable, un ado placé en famille d\'accueil parvient à se transformer en superhéros adulte pour défendre sa ville contre les méchants.', 2019, 50, 3, NULL),
(9, 'Naruto The Last : Le Film', 'Deux ans après la Quatrième Grande Guerre Shinobi, alors que la Lune menace d\'entrer en collision avec la Terre, Naruto se voit confier le destin de l\'humanité.', 2014, 37, 3, NULL),
(10, 'Made In Black : Internationnal', 'Lorsque des aliens métamorphes menacent la Terre, une nouvelle recrue et un ancien agent des MiB entreprennent de sauver leur propre organisation... et le monde.', 2019, 26, 3, NULL),
(11, 'Les murs vagabons', 'Au cours d\'un été fatidique, des écoliers à la dérive dans un immeuble abandonné doivent puiser dans leurs ressources pour trouver un moyen de rentrer chez eux.', 2022, 9, 3, NULL),
(12, 'Altered Carbon: resleeved', 'Sur la planète Latimar, Takeshi Kovacs doit protéger une précieuse tatoueuse tout en enquêtant sur la mort d\'un chef yakuza au côté d\'une C-TAC qui ne plaisante pas.', 2020, 51, 4, NULL),
(13, 'Violet Evergarden : Le Film', 'Alors que le monde tourne la page de la guerre et que les progrès technologiques bouleversent sa vie, Violet espère toujours revoir son commandant disparu.', 2020, 28, 3, NULL),
(14, 'Le Château ambulant', 'L\'adolescente Sophie mène un quotidien monotone dans la boutique de chapeaux de son père décédé, jusqu\'au jour où elle est transformée en vieille femme par un sortilège.', 2004, 27, 3, NULL),
(15, 'Fairy Tail, Le film : Dragon Cry', 'Alors qu\'ils tentent de récupérer le redoutable Dragon Cry, les membres de Fairy Tail obligent un chasseur de dragon à opérer une dangereuse transformation.', 2017, 52, 3, NULL),
(30, 'NinoKuni', 'Déterminés à sauver la vie de leur amie, deux adolescents se retrouvent plongés dans un autre monde magique. Mais l’amour va compliquer leur voyage...', 2019, 36, 3, NULL),
(31, 'Ghost in the Shell', 'En 2045, Motoko Kusanagi et la Section 9 affrontent une nouvelle menace redoutable dans cette version long-métrage de la première saison de \'SAC_2045\'', 2021, 19, 4, NULL),
(32, 'GANTZ:0', 'Des équipes de défunts revenus à la vie et armés d\'un arsenal high-tech doivent coopérer pour vaincre une armée de monstres à Tokyo et Osaka.', 2016, 42, 5, NULL),
(33, 'GODZILLA La planête des monstres', 'Un groupe de réfugiés tente de recoloniser la Terre 20 000 ans après sa conquête par Godzilla. Mais un jeune homme est bien déterminé à prendre sa revanche.', 2017, 43, 3, NULL),
(34, 'Le Château dans le ciel', 'Dans cette aventure animée japonaise pour enfants, un jeune mineur et une mystérieuse jeune fille cherchent une île disparue réputée abriter de grandes richesses.', 1986, 27, 2, NULL),
(35, 'Berserk : L\'âge d\'or - Partie 1 : l\'Œuf du roi conquérant', 'Le solitaire Guts est recruté par Griffith et son groupe de mercenaires, mais le succès de leur armée pourrait mener à un terrible destin.', 2012, 40, 4, NULL),
(36, 'Devilman Crybaby', 'Alors que les démons se sont réveillés et que l\'humanité est dans la tourmente, un jeune démon sensible est poussé dans une guerre brutale contre le mal par son ami Ryo.', 2018, 53, 4, NULL),
(37, 'Première Vavances', 'Après leur rencontre sur Tinder, un homme et une femme que tout oppose mettent rapidement leur relation à l\'épreuve en s\'embarquant dans un voyage inconsidéré.', 2018, 55, 3, NULL),
(38, 'Paul', 'Deux fanas de science-fiction déterminés à découvrir ce que cache la mystérieuse zone 51 au milieu du désert du Nevada croisent la route d\'un extraterrestre en cavale.', 2011, 46, 4, NULL),
(39, 'ted', 'Un ours en peluche grossier et fêtard refusant de voir son meilleur ami grandir tente de s\'interposer dans sa vie amoureuse en sabotant ses projets de mariage.', 2012, 56, 4, NULL),
(213, 'Baby Driver', 'Accro à la musique, Baby voudrait se libérer du joug du truand qui l\'emploie comme chauffeur. Il lui reste encore une mission… mais tout risque de déraper.', 2017, 57, 4, NULL),
(214, 'Day Shift', 'À Los Angeles, un chasseur de vampires a une semaine afin de réunir l\'argent nécessaire pour payer l\'école et l\'appareil dentaire de sa fille. Il va devoir se saigner…', 2022, 58, 4, NULL),
(215, 'La vie scolaire', 'Dans un quartier sensible de Saint-Denis, une jeune CPE tout juste débarquée du Sud et à la situation personnelle compliquée se démène pour ses élèves défavorisés.', 2019, 59, 3, NULL),
(216, 'Pokemon : Détective Pikachu', 'Dans un monde où humains et Pokémon coexistent, un détective fait équipe avec le fils de son partenaire introuvable pour élucider le mystère de sa disparition.', 2019, 60, 2, NULL),
(217, 'Heroin(e)', 'Ce film nommé aux Oscars suit trois Américaines, une chef des pompiers, une juge et une chef de mission caritative, qui combattent l\'épidémie d\'opiacés dans leur ville.', 2017, 61, 4, NULL),
(218, 'Vers la surface', 'Un vétéran suicidaire rencontre d\'autres âmes brisées dans le cadre d\'une thérapie à base de surf qui aide les soldats traumatisés par la guerre à guérir sur les vagues.', 2017, 62, 3, NULL),
(219, 'The Room', 'Une femme reçoit un appel inattendu et part récupérer les biens de son père décédé auquel elle ne parlait plus et dont elle était la seule parente.', 2019, 63, 1, NULL),
(220, 'Les casques blancs', 'En Syrie, les frappes aériennes quotidiennes enfouissent les civils sous les décombres. Mais un groupe irréductible de premiers intervenants risque tout pour les sauver.', 2016, 64, 3, NULL),
(221, 'Notre langue aux chats', 'Dans ce documentaire captivant et attendrissant, des experts analysent le comportement des chats pour dévoiler les véritables capacités de ces félins toujours à l\'affût.', 2022, 65, 2, NULL),
(222, 'Voyage vers l\'infini', 'D\'éminents mathématiciens, physiciens quantiques et cosmologistes se penchent sur l\'infini et ses mystérieuses implications pour l\'univers.', 2022, 66, 2, NULL),
(223, 'Derière nos écrans de fumée', 'Entre documentaire et drame, ce film donne la parole à des experts qui nous mettent en garde contre leurs inventions et décrient l\'impact dangereux des réseaux sociaux.', 2020, 67, 2, NULL),
(224, 'Life in Outer Space', 'Ce documentaire explore les futures missions sur Mars et les découvertes récentes qui suggèrent que la vie pourrait exister dans notre système solaire et au-delà.', 2015, 68, 1, NULL),
(225, 'La liste de Schindler', 'Grâce à sa fortune, l\'industriel Oskar Schindler a réussi à sauver 1 100 juifs du camp d\'extermination d\'Auschwitz pendant la Deuxième Guerre mondiale.', 1993, 48, 4, NULL),
(226, 'Un papa hors pair', 'Devenu veuf, un jeune père affronte doutes, angoisses, chagrin, couches et biberons alors qu\'il élève sa fille seul. Inspiré d\'une histoire vraie.', 2021, 69, 2, NULL),
(227, 'Largué', 'Lorsque sa petite amie rompt brutalement avec lui, Semih part en quête de réponse sur leur relation et doit faire face à ce qu\'il a longtemps préféré ignorer.', 2022, 70, 4, NULL),
(228, 'Brain on Fire', 'Crises épileptiques, psychoses et pertes de mémoire affectent une jeune journaliste qui consulte une série de médecins dont aucun n\'arrive à poser un diagnostic valable.', 2016, 71, 3, NULL),
(229, 'Les sept de Chicago', 'Quand la manifestation pacifique a dégénéré en affrontement violent avec la police, elle a donné lieu à l\'un des procès les plus retentissants de l\'histoire du pays.', 2020, 72, 4, NULL),
(230, 'Budapest', 'Deux meilleurs potes mettent carrière et mariage à l\'épreuve lorsqu\'ils décident d\'organiser des enterrements de vie de garçon hors du commun à Budapest.', 2018, 73, 4, NULL),
(231, 'Bright', 'À L.A. où les tensions entre espèces font rage, un flic humain et son partenaire orque tombent sur un objet puissant et se retrouvent mêlés à une guerre de territoires.', 2017, 74, 4, NULL),
(232, 'Super Me', 'Un scénariste fauché découvre le pouvoir lucratif qu\'il a de ramener des antiquités de ses rêves dans le monde réel. Mais cette nouvelle vie ne tarde pas à se désagréger.', 2021, 75, 3, NULL),
(233, 'I\'m (Endless Like The Space)', 'Entre fiction et réalité, la jeune Jessica est confrontée à un déferlement d\'émotions et d\'événements dans sa ville scandinave, sur fond de conflits familiaux et lycéens.', 2017, 76, 4, NULL),
(234, 'Les Aventurier de l\'univers perdu', 'Transportés dans un univers peuplé d\'êtres mythiques et redoutables, trois individus doivent user d\'intelligence et de la technologie des années 80 pour rentrer chez eux.', 1983, 77, 3, NULL),
(235, 'Animal World', 'Un ado malchanceux croulant sous les dettes est contraint de participer à un tournoi mortel animé par un être diabolique où ses aptitudes en maths lui seront très utiles.', 2018, 78, 3, NULL),
(236, 'Ares', 'Dans une France futuriste accablée par une pauvreté écrasante, un violent concours télévisé tente de distraire la population pour éviter le désespoir et la révolte.', 2016, 79, 4, NULL),
(237, 'La French', 'Dans le Marseille des années 70, un juge en croisade s\'attaque à l\'empire de l\'héroïne dirigé par un caïd dont le réseau influe sur chaque aspect de la société.', 2014, 80, 4, NULL),
(238, 'Le Jouet', 'Autorisé à choisir ce qu\'il veut dans un magasin, le fils d\'un homme d\'affaires choisit comme \'jouet\' un journaliste qui aide l\'enfant à donner une leçon à son père.', 1976, 81, 1, NULL),
(239, 'Oxygen', 'Enfermée dans une unité cryogénique, Liz tente désespérément de se souvenir de son identité et de s\'échapper avant d\'être à court d\'oxygène.', 2021, 82, 3, NULL),
(240, 'Le rituel', 'Quatre amis de longue date dont les relations se sont peu à peu tendues s\'aventurent dans la nature sauvage de Suède au risque de ne jamais en revenir.', 2018, 83, 4, NULL),
(241, '#Alive', 'Comme un terrifiant virus ravage sa ville, un homme seul se retrouve coincé dans son appartement, sans aucun moyen d\'appeler à l\'aide, mais prêt à tout pour s\'en sortir.', 2020, 84, 4, NULL),
(242, 'Death Note', 'Quand Light Turner utilise son carnet surnaturel pour faire justice lui-même, il attire l\'attention d\'un détective, d\'un démon et d\'une fille de sa classe.', 2017, 85, 5, NULL),
(243, 'Le Cas 39', 'Une assistante sociale naïve accueille chez elle une enfant de 10 ans, la croyant maltraitée par ses parents. Mais les apparences sont bien souvent trompeuses.', 2009, 91, 4, NULL),
(244, 'Les phénomènes', 'Informée par un mystérieux vagabond, une jeune employée de fast-food se découvre des super-pouvoirs... et met au jour une conspiration écœurante.', 2020, 87, 3, NULL),
(245, 'Le bout du monde', 'Une attaque extraterrestre frappe en pleine colonie de vacances. Pour sauver le monde, quatre adolescents qui n\'ont rien en commun doivent remplir une mission périlleuse.', 2019, 88, 3, NULL),
(246, 'Voyage vers la Lune', 'Animée par le souvenir de sa mère, l\'ingénieuse Fei Fei construit une fusée à destination de la Lune pour prouver l\'existence d\'une déesse légendaire qui y habiterait.', 2020, 89, 1, NULL),
(247, 'Un noël eXtra', 'Un jeune lutin prend un petit extraterrestre pour un jouet de Noël, ignorant qu\'il a l\'intention de supprimer la gravité de la Terre et de voler tous les cadeaux !', 2020, 90, 1, NULL),
(288, 'titre nouveau', 'description nouvelle', 2020, 12, 3, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `filmxcategorie`
--

DROP TABLE IF EXISTS `filmxcategorie`;
CREATE TABLE IF NOT EXISTS `filmxcategorie` (
  `film_x_categorie_id` int(11) NOT NULL AUTO_INCREMENT,
  `film_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  PRIMARY KEY (`film_x_categorie_id`)
) ENGINE=MyISAM AUTO_INCREMENT=150 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `filmxcategorie`
--

INSERT INTO `filmxcategorie` (`film_x_categorie_id`, `film_id`, `cat_id`) VALUES
(1, 1, 6),
(2, 2, 1),
(3, 2, 19),
(4, 2, 3),
(5, 3, 9),
(6, 3, 1),
(7, 3, 16),
(8, 4, 1),
(9, 4, 11),
(10, 5, 19),
(11, 5, 1),
(12, 5, 16),
(13, 6, 1),
(14, 6, 19),
(15, 7, 1),
(16, 7, 19),
(17, 8, 13),
(18, 8, 1),
(19, 8, 3),
(20, 9, 2),
(21, 9, 1),
(22, 9, 18),
(23, 9, 13),
(24, 10, 19),
(25, 10, 1),
(26, 10, 3),
(27, 11, 2),
(28, 11, 13),
(29, 11, 19),
(30, 11, 8),
(31, 11, 6),
(32, 12, 1),
(33, 12, 2),
(34, 12, 19),
(35, 12, 8),
(36, 12, 20),
(37, 13, 2),
(38, 13, 19),
(39, 13, 8),
(40, 13, 18),
(41, 13, 6),
(42, 14, 2),
(43, 14, 13),
(44, 15, 2),
(45, 15, 1),
(46, 15, 19),
(47, 15, 8),
(48, 30, 2),
(49, 30, 14),
(50, 30, 19),
(51, 30, 8),
(52, 31, 16),
(53, 31, 2),
(54, 31, 1),
(55, 31, 8),
(56, 31, 19),
(57, 32, 2),
(58, 32, 19),
(59, 32, 10),
(60, 32, 1),
(61, 32, 8),
(62, 33, 1),
(63, 33, 2),
(64, 33, 19),
(65, 33, 8),
(66, 34, 13),
(67, 34, 2),
(68, 35, 2),
(69, 35, 19),
(70, 35, 8),
(71, 35, 1),
(72, 36, 2),
(73, 36, 10),
(74, 37, 3),
(75, 37, 9),
(76, 37, 18),
(77, 38, 19),
(78, 38, 3),
(79, 39, 3),
(80, 213, 1),
(81, 213, 16),
(82, 213, 3),
(83, 214, 3),
(84, 214, 10),
(85, 215, 9),
(86, 215, 6),
(87, 215, 3),
(88, 216, 13),
(89, 216, 3),
(90, 217, 5),
(91, 218, 5),
(92, 219, 9),
(93, 219, 6),
(94, 220, 5),
(95, 221, 5),
(96, 222, 5),
(97, 223, 5),
(98, 224, 5),
(99, 225, 6),
(100, 226, 6),
(101, 227, 6),
(102, 227, 18),
(103, 228, 6),
(104, 228, 11),
(105, 229, 6),
(106, 229, 17),
(107, 229, 16),
(108, 230, 9),
(109, 230, 3),
(110, 231, 16),
(111, 231, 1),
(112, 232, 19),
(113, 232, 12),
(114, 232, 1),
(115, 233, 12),
(116, 234, 19),
(117, 234, 12),
(118, 235, 1),
(119, 235, 12),
(120, 236, 10),
(121, 237, 9),
(122, 237, 1),
(123, 237, 16),
(124, 238, 9),
(125, 238, 6),
(126, 238, 3),
(127, 239, 19),
(128, 239, 8),
(129, 239, 20),
(130, 240, 10),
(131, 240, 12),
(132, 241, 12),
(133, 241, 10),
(134, 242, 10),
(135, 243, 10),
(136, 244, 6),
(137, 244, 19),
(138, 244, 11),
(139, 244, 7),
(140, 245, 19),
(141, 245, 1),
(142, 245, 11),
(143, 246, 3),
(144, 246, 2),
(145, 246, 13),
(146, 246, 14),
(147, 247, 2),
(148, 247, 15),
(149, 247, 13);

-- --------------------------------------------------------

--
-- Structure de la table `realisateur`
--

DROP TABLE IF EXISTS `realisateur`;
CREATE TABLE IF NOT EXISTS `realisateur` (
  `realisateur_id` int(11) NOT NULL AUTO_INCREMENT,
  `realisateur_nom` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `realisateur_prenom` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`realisateur_id`)
) ENGINE=MyISAM AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `realisateur`
--

INSERT INTO `realisateur` (`realisateur_id`, `realisateur_nom`, `realisateur_prenom`) VALUES
(1, 'Bradbeer', 'Harry'),
(2, 'Pierret', 'Guillaume'),
(3, 'Russo', 'Anthony '),
(4, 'Russo', 'Joe'),
(5, 'Levy', 'Shawn'),
(6, 'Jákl', 'Petr'),
(7, 'Perry', 'JJ'),
(8, 'van de Mond', 'Annemarie'),
(9, 'Ishida', 'Hiroyasu'),
(10, 'Foerster', 'Anna'),
(11, 'Berg', 'Adam'),
(12, 'Sori', 'Fumihiko'),
(13, 'Reilly', 'Matthew'),
(14, 'Gavras', 'Romain'),
(15, 'Hughes', 'Patrick'),
(16, 'Ruiz Caldera', 'Javier'),
(17, 'De Toro', 'Alberto'),
(18, 'Hyun', 'Na'),
(19, 'Kamiyama', 'Kenji'),
(20, 'Leterrier', 'Louis'),
(21, 'Reiné', 'Roel'),
(22, 'Macaroni', 'Sam '),
(23, 'Kosinski', 'Joseph'),
(24, 'Wan', 'James'),
(25, 'Sung-hee', 'Jo'),
(26, 'Gray', 'F. Gary'),
(31, 'Sato', 'Junichi'),
(30, 'Miyazaki', 'Goro'),
(29, 'Takahata', 'Isao'),
(28, 'Ishidate', 'Taichi'),
(27, 'Miyazaki', 'Hayao'),
(32, 'Seshita', 'Hiroyuki'),
(33, 'Hamana', 'Takayuki'),
(34, 'Yamazaki', 'Takashi'),
(35, 'Hanafusa', 'Makoto'),
(36, 'Momose', 'Yoshiyuki'),
(37, 'Kobayashi', 'Tsuneo'),
(38, 'Morita', 'Hiroyuki'),
(39, 'Yuyama', 'Kunihiko'),
(40, 'Kubooka', 'Toshiyuki'),
(41, 'Otomo', 'Katsuhiro'),
(42, 'Kawamura', 'Yasushi'),
(43, 'Shizuno', 'Kobun'),
(44, 'Yamamoto', 'Steven'),
(45, 'Fujimori', 'Masaya'),
(46, 'Mottola', 'Greg'),
(47, 'Levy', 'Shawn'),
(48, 'Spielberg', 'Steven'),
(49, 'Watts', 'Jon'),
(50, 'F. Sandberg', 'David '),
(51, 'Okada', 'Yoshiyuki'),
(52, 'Minamikawa', 'Tatsuma'),
(53, 'Yuasa', 'Masaaki'),
(55, 'Cassir', 'Patrick'),
(56, 'MacFarlane', 'Seth'),
(57, 'Wright', 'Edgar'),
(58, 'JJ', 'Perry'),
(59, 'Idir', 'Mehdi'),
(60, 'Letterman', 'Rob'),
(61, 'McMillion Sheldon', 'Elaine'),
(62, 'Izenberg', 'Josh'),
(63, 'Saïd', 'Latifa'),
(64, 'von Einsiedel', 'Orlando'),
(65, 'Mitchell', 'Andy'),
(66, 'Halperin', 'Jon'),
(67, 'Orlowski', 'Jeff'),
(68, 'Chao', 'Ruth'),
(69, 'Weitz', 'Paul'),
(70, 'Açıktan', 'Ozan'),
(71, 'Barrett', 'Gerard'),
(72, 'Sorkin', 'Aaron'),
(73, 'Gens', 'Xavier'),
(74, 'Ayer', 'David'),
(75, 'Chong', 'Zhang'),
(76, 'Ciccone', 'Anne-Riitta'),
(77, 'Marcel', 'Terry'),
(78, 'Yan', 'Han'),
(79, 'Benes', 'Jean-Patrick'),
(80, 'Jimenez', 'Cédric'),
(81, 'Veber', 'Francis'),
(82, 'Aja', 'Alexandre'),
(83, 'Bruckner', 'David'),
(84, 'Il', 'Cho'),
(85, 'Araki', 'Tetsurō'),
(86, 'Alvart', 'Christian'),
(87, 'Binder', 'Felix'),
(88, 'McGinty Nichol', 'Joseph'),
(89, 'Keane', 'Glen'),
(90, 'Chiodo', 'Stephen'),
(91, 'Alvart', 'Christian');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
