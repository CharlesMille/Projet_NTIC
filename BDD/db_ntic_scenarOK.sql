-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Sam 21 Janvier 2017 à 11:14
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `db_ntic`
--
CREATE DATABASE IF NOT EXISTS `db_ntic` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `db_ntic`;

-- --------------------------------------------------------

--
-- Structure de la table `bouton`
--

CREATE TABLE `bouton` (
  `id_bouton` int(11) NOT NULL,
  `id_page` int(11) NOT NULL,
  `go_to_page` int(11) NOT NULL,
  `texte` varchar(500) CHARACTER SET latin1 NOT NULL,
  `flag` varchar(100) DEFAULT NULL,
  `score` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `bouton`
--

INSERT INTO `bouton` (`id_bouton`, `id_page`, `go_to_page`, `texte`, `flag`, `score`) VALUES
(36, 33, 2, 'Continuer', NULL, 0),
(37, 34, 3, 'Continuer', NULL, 0),
(38, 35, 4, 'Vous demandez un rendez-vous Ã  la mairie', NULL, 2),
(39, 35, 5, 'Vous insistez auprÃ¨s d\'Emma', NULL, 1),
(40, 35, 6, 'Vous laissez Emma le faire quand elle le voudra', NULL, -2),
(41, 36, 7, 'Vous prenez les devants et prÃ©parez les dossiers', NULL, 2),
(42, 36, 8, 'Vous dites Ã  Emma de penser Ã  faire son dossier', NULL, -2),
(43, 37, 7, 'Vous prenez les devants et prÃ©parez les dossiers', NULL, 2),
(44, 37, 8, 'Vous dites Ã  Emma de penser Ã  faire son dossier', NULL, -2),
(45, 38, 7, 'Vous prenez les devants et prÃ©parez les dossiers', NULL, 2),
(46, 38, 8, 'Vous dites Ã  Emma de penser Ã  faire son dossier', NULL, -2),
(47, 39, 9, 'Passer Ã  la suite', 'formOK', 0),
(48, 40, 9, 'Passer Ã  la suite', 'formNOK', 0),
(49, 41, 10, 'Vous essayez de nÃ©gocier', NULL, -2),
(50, 41, 11, 'Vous acceptez de l\'accompagner', NULL, 0),
(51, 42, 12, 'Vous essayez de la rassurer', NULL, 1),
(52, 42, 13, 'Vous lui demandez ce qui lui arrive', NULL, 2),
(53, 42, 14, 'Vous la motivez Ã  avancer', NULL, -3),
(54, 43, 12, 'Vous essayez de la rassurer', NULL, 1),
(55, 43, 13, 'Vous lui demandez ce qui lui arrive', NULL, 2),
(56, 43, 14, 'Vous la motivez Ã  avancer', NULL, -3),
(57, 44, 15, 'Suite', NULL, 0),
(58, 45, 15, 'Suite', NULL, 0),
(59, 46, 15, 'Suite', NULL, 0),
(60, 47, 16, 'Vous allez la chercher dehors', NULL, 2),
(61, 47, 17, 'Vous lui envoyez un texto', NULL, 1),
(62, 47, 18, 'Vous attendez qu\'elle revienne dans la file', NULL, -2),
(63, 48, 19, 'Suite', NULL, 0),
(64, 49, 19, 'Suite', NULL, 0),
(65, 50, 19, 'Suite', NULL, 0),
(66, 51, 21, 'Expliquer Ã  sa place', NULL, 2),
(67, 51, 22, 'Expliquer que Emma est atteinte de PTSD', NULL, 1),
(68, 51, 23, 'Demander Ã  Emma de se concentrer', NULL, -3),
(69, 52, 21, 'Expliquer Ã  sa place', NULL, 2),
(70, 52, 22, 'Expliquer que Emma est atteinte de PTSD', NULL, 1),
(71, 52, 23, 'Demander Ã  Emma de se concentrer', NULL, -3),
(72, 53, 0, 'Recommencer ?', NULL, 0),
(73, 54, 0, 'Recommencer ?', NULL, 0),
(74, 55, 0, 'Recommencer ?', NULL, 0),
(96, 67, 1, 'OK', '', 0),
(97, 68, 24, 'Suite', '', 0),
(98, 69, 24, 'Suite', '', 0),
(99, 70, 24, 'Suite', '', 0),
(101, 72, 2, 'Continuer', '', 0),
(102, 73, 3, 'Continuer', '', 0),
(103, 74, 4, 'Vous rappelez Ã  Marco qu\'il doit regarder les horaires de bus', NULL, 1),
(104, 74, 5, 'Vous vÃ©rifiez vous-mÃªme les horaires de bus', NULL, 2),
(105, 74, 6, 'Vous faites confiance Ã  Marco', NULL, -2),
(106, 75, 7, 'Passer Ã  la suite', '', 0),
(107, 76, 7, 'Passer Ã  la suite', '', 0),
(108, 77, 7, 'Passer Ã  la suite', '', 0),
(109, 78, 8, 'Vous tentez de le rassurer', NULL, 1),
(110, 78, 9, 'Vous ignorez le comportement de Marco', NULL, -2),
(111, 78, 10, 'Vous dites Ã  Marco de garder son calme', NULL, -1),
(112, 79, 11, 'Passer Ã  la suite', '', 0),
(113, 80, 11, 'Passer Ã  la suite', '', 0),
(114, 81, 11, 'Passer Ã  la suite', '', 0),
(115, 82, 12, 'Vous invitez Marco Ã  se joindre Ã  une conversation', NULL, 2),
(116, 82, 13, 'Vous le laissez', NULL, -2),
(117, 83, 14, 'Passer Ã  la suite', '', 0),
(118, 84, 14, 'Passer Ã  la suite', '', 0),
(119, 85, 15, 'Vous l\'aidez Ã  rÃ©aliser l\'exercice', NULL, 2),
(120, 85, 16, 'Vous ignorez Marco', NULL, -2),
(121, 85, 17, 'Vous l\'encouragez Ã  faire l\'exercice', NULL, 1),
(122, 86, 18, 'Suite', '', 0),
(123, 87, 18, 'Suite', '', 0),
(124, 88, 18, 'Suite', '', 0),
(125, 89, 19, 'Vous l\'interpellez pour qu\'il soit plus rÃ©actif', NULL, 2),
(126, 89, 20, 'Vous continuez l\'improvisation en essayant d\'inclure Marco', NULL, -2),
(127, 89, 21, 'Vous continuez l\'improvisation en ignorant Marco', NULL, -1),
(128, 90, 22, 'Suite', '', 0),
(129, 91, 22, 'Suite', '', 0),
(130, 92, 22, 'Suite', '', 0),
(131, 93, 23, 'Lui soufflez la rÃ©ponse', NULL, 1),
(132, 93, 24, 'ExagÃ©rez pour l\'aider', NULL, 2),
(133, 93, 25, 'Continuer l\'exercice sans exagÃ©rer', NULL, -2),
(134, 94, 26, 'Suite', '', 0),
(135, 95, 26, 'Suite', '', 0),
(136, 96, 26, 'Suite', '', 0),
(137, 97, 27, 'Attendre que la crise de Marco passe', NULL, -2),
(138, 97, 28, 'Lui dire que tout va bien et qu\'il est en sÃ©curitÃ©', NULL, 2),
(139, 98, 29, 'Suite', '', 0),
(140, 99, 29, 'Suite', '', 0),
(141, 100, 1, 'Recommencer ?', '', 0),
(142, 101, 1, 'Recommencer ?', '', 0),
(143, 102, 1, 'Recommencer ?', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `page`
--

CREATE TABLE `page` (
  `id_page` int(11) NOT NULL,
  `id_scenario` int(11) NOT NULL,
  `numero` int(11) NOT NULL,
  `texte` varchar(5000) NOT NULL,
  `image` varchar(500) DEFAULT NULL,
  `titre` varchar(100) CHARACTER SET utf8 NOT NULL,
  `requis` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `page`
--

INSERT INTO `page` (`id_page`, `id_scenario`, `numero`, `texte`, `image`, `titre`, `requis`) VALUES
(33, 12, 1, 'Il y a quelques mois, Emma, militaire de profession, est rentrÃ©e dâ€™une mission sur le terrain. Malheureusement, alors quâ€™elle Ã©tait de garde Ã  lâ€™ambassade franÃ§aise en Lybie, une explosion a eu lieu, entraÃ®nant la mort de plusieurs victimes. Depuis son retour en France, elle vit chez son compagnon Mohammed. Depuis, Emma est en proie Ã  des crises dâ€™angoisse et des insomnies causÃ©s par des cauchemars. Elle semble plus distante, irritable et sursaute au moindre bruit inattendu. AprÃ¨s consultation dâ€™un psychiatre, Emma a Ã©tÃ© diagnostiquÃ©e comme ayant un syndrome de stress post-traumatique (ou SPT). ', 'ressources/a1dd4d84a1ccddad744012d3bf77fc0c.PNG', 'Introduction', NULL),
(34, 12, 2, 'Vous incarnez Mohammed, le compagnon dâ€™Emma. Au vu de son diagnostic, votre rÃ´le est dÃ©sormais de lui apporter un soutien quotidien pour lâ€™aider Ã  vivre avec sa maladie.', 'ressources/490105a584724833a64bbc72db535740.PNG', 'Etape 1', NULL),
(35, 12, 3, 'Pour vous changer les idÃ©es, vous dÃ©cidez de partir au BrÃ©sil. Pour cela, il va falloir quâ€™Emma renouvelle son passeport Ã  la mairie.\r\n\r\n\r\nNÃ©anmoins, malgrÃ© une semaine que vous rÃ©pÃ©tez Ã  Emma de dÃ©buter les dÃ©marches administrative, elle nâ€™a pour lâ€™instant rien fait. La date du dÃ©part approche, et il va bien falloir faire ces dÃ©marches. Que faites-vous ?\r\n', 'ressources/94a7493b65919ac17906ee9757dc59af.PNG', 'Etape 2', NULL),
(36, 12, 4, 'Vous vous chargez dâ€™appeler la mairie pour prÃ©parer un rendez-vous et savoir quelles piÃ¨ces amener. Pendant lâ€™appel, vous pouvez clairement voir lâ€™irritation dâ€™Emma devant votre initiative\r\n\r\nLes personnes en situation de SPT peuvent Ãªtre irritables ou rÃ©agir de maniÃ¨re imprÃ©vue Ã  cause dâ€™une altÃ©ration de lâ€™humeur et / ou de la rationalitÃ©.\r\n\r\nMalgrÃ© la rÃ©action dâ€™Emma, vous avez planifiÃ© un rendez-vous avec la mairie, qui nÃ©cessitera des piÃ¨ces pour constituer un dossier. Au vu de ce qui sâ€™est passÃ© pour prendre le rendez-vous, vous hÃ©sitez Ã  laisser Emma sâ€™en charger seule. Que faites-vous ?', 'ressources/5a9bffbb27f05b17bc0326ae1797f657.PNG', 'Etape 2 - a', NULL),
(37, 12, 5, 'Vous dites Ã  Emma quâ€™il faut le faire dÃ¨s que possible. Elle sâ€™Ã©nerve soudainement contre vous, arguant que Ã§a ne vous regarde pas et que Ã§a nâ€™en vaut pas la peine de toute faÃ§on.\r\nCela vous Ã©tonne, elle voulait ce voyage ! Vous appelez alors la mairie malgrÃ© ses protestations et obtenez un rendez-vous.\r\n\r\nLes personnes en situation de SPT peuvent Ãªtre irritables ou rÃ©agir de maniÃ¨re imprÃ©vue Ã  cause dâ€™une altÃ©ration de lâ€™humeur et / ou de la rationalitÃ©.\r\n\r\nMalgrÃ© la rÃ©action dâ€™Emma, vous avez planifiÃ© un rendez-vous avec la mairie, qui nÃ©cessitera des piÃ¨ces pour constituer un dossier. Au vu de ce qui sâ€™est passÃ© pour prendre le rendez-vous, vous hÃ©sitez Ã  laisser Emma sâ€™en charger seule. Que faites-vous ?', 'ressources/09b16b2bb3465c7add737767bca91f61.PNG', 'Etape 2 - b', NULL),
(38, 12, 6, 'Le temps passe et vous nâ€™avez aucune nouvelle du rendez-vousâ€¦ A chaque fois que vous en parlez Ã  Emma, elle dit quâ€™elle a oubliÃ©. Au bout dâ€™un moment, vous dÃ©cidez de prendre les choses en main en composant vous mÃªme le numÃ©ro pour donner le tÃ©lÃ©phone Ã  Emma. Celle-ci vous lance un regard noir pendant quâ€™elle prend le rendez-vous, en rudoyant sensiblement son interlocuteur.\r\n\r\nLes personnes en situation de SPT peuvent Ãªtre irritables ou rÃ©agir de maniÃ¨re imprÃ©vue Ã  cause dâ€™une altÃ©ration de lâ€™humeur et / ou de la rationalitÃ©.\r\n\r\nMalgrÃ© la rÃ©action dâ€™Emma, vous avez planifiÃ© un rendez-vous avec la mairie, qui nÃ©cessitera des piÃ¨ces pour constituer un dossier. Au vu de ce qui sâ€™est passÃ© pour prendre le rendez-vous, vous hÃ©sitez Ã  laisser Emma sâ€™en charger seule. Que faites-vous ?', 'ressources/19d6e96c75bd6c9a726e7164bd8a7afd.PNG', 'Etape 2 - c', NULL),
(39, 12, 7, 'DÃ©jÃ  que cela a Ã©tÃ© compliquÃ© dâ€™appeler la mairieâ€¦ Vous ne prenez pas de risque et vous cherchez les piÃ¨ces nÃ©cessaires au dossier. Au dÃ©part vexÃ©e, Emma finit par complÃ©ter le dossier avec vous.\r\n\r\nLes personnes atteintes de SPT ont des difficultÃ©s Ã  sâ€™impliquer dans des activitÃ©s importantes.\r\n\r\nLe dossier est prÃªt, et câ€™est le jour pour Emma dâ€™aller Ã  la mairie.', 'ressources/7bb9d99df8f6959431f1cd69e47bf813.PNG', 'Etape 3 - a', NULL),
(40, 12, 8, 'Emma vous rÃ©pond quâ€™elle pense pouvoir sâ€™en sortir toute seule. Vous doutez un peu Ã  cause de ce qui sâ€™est passÃ© pour le rendez-vous, mais vous voyez bien que Ã§a lui tient Ã  coeur.\r\n\r\nLe dossier est prÃªt, et câ€™est le jour pour Emma dâ€™aller Ã  la mairie.', 'ressources/d2759e5f806feb79b9705aaf06e15dbd.PNG', 'Etape 3 - b', NULL),
(41, 12, 9, 'Le matin au petit-dÃ©jeuner, Emma vous demande si vous voulez bien lâ€™accompagner Ã  la mairie. Vous voyez quâ€™elle ne semble pas rassurÃ©e, comme souvent quand il sâ€™agit dâ€™une sortie.\r\n\r\nLes personnes atteintes de SPT tentent dâ€™Ã©viter au maximum les lieux ou les situations qui peuvent ressembler Ã  l\'Ã©vÃ©nement traumatisant. Elles peuvent faire beaucoup dâ€™efforts pour se rassurer et se protÃ©ger. De plus, elles peuvent ressentir de nombreuses Ã©motions nÃ©gatives et peuvent chercher le soutien de leur proche.\r\n\r\nDommage pour vous, vous aviez prÃ©vu de ne rien faire de la matinÃ©e. Emma compte beaucoup pour vous, mais vous aimeriez pouvoir vous reposer aprÃ¨s une semaine trÃ¨s fatigante. Que dÃ©cidez-vous ?', 'ressources/020dcaa2a7060de5c1b3908068327e0c.PNG', 'Etape 4', NULL),
(42, 12, 10, 'Vous essayez dâ€™expliquer Ã  Emma que vous Ãªtes fatiguÃ© mais avant dâ€™aller plus loin, elle vous interrompt, dâ€™une voix tremblante. Elle vous dit quâ€™elle a vraiment besoin de vous pour aller Ã  la mairie, car elle ne sent pas trÃ¨s bien et quâ€™elle a peur dâ€™oublier des informations. Vous voyez clairement quâ€™il y a un vrai sentiment de peur derriÃ¨re Ã§a, et vous dÃ©cidez de lâ€™accompagner pour la rassurer.\r\n\r\nSur le chemin pour la mairie, vous bavardez tranquillement lorsque soudainement, Emma se fige. Vous regardez alors devant elle et vous ne voyez que la mairie. Devant lâ€™aspect officiel du bÃ¢timent et le drapeau franÃ§ais, vous comprenez Ã  alors ce qui arrive Ã  Emma.', 'ressources/51921a40f939302644d2ccae80e73a81.PNG', 'Etape 4 - a', NULL),
(43, 12, 11, 'Emma semble rassurer que vous ayez dÃ©cidÃ© de lâ€™accompagner. Vous partez donc avec Emma en direction de la mairie aprÃ¨s avoir finis votre petit dÃ©jeuner.\r\n\r\nSur le chemin pour la mairie, vous bavardez tranquillement lorsque soudainement, Emma se fige. Vous regardez alors devant elle et vous ne voyez que la mairie. Devant lâ€™aspect officiel du bÃ¢timent et le drapeau franÃ§ais, vous comprenez Ã  alors ce qui arrive Ã  Emma.', 'ressources/43ae0ce7dbfd7a4691d946e8da407ead.PNG', 'Etape 4 - b', NULL),
(44, 12, 12, 'Vous la serrez contre vous pour la rassurer en disant des paroles de rÃ©confort. Vous voyez quâ€™elle tremble et quâ€™elle respire difficilement et vous espÃ©rez lâ€™apaiser.\r\n\r\nLe SPT peut causer des hallucinations ou des rÃªves. Les personnes atteintes peuvent alors revivre la situation traumatisante ce qui est trÃ¨s angoissant pour eux.\r\n\r\nAu bout dâ€™un moment vous la sentez se calmer et reprendre une respiration plus reposÃ©e. Elle ne vous dit rien, mais reprend le chemin vers la mairie.', 'ressources/94d28774eef9525d4980ce57adb800ce.PNG', 'Etape 5 - a', NULL),
(45, 12, 13, 'AprÃ¨s un long silence, elle reprend ses esprits. Puis elle vous dit dâ€™une voix faible quâ€™en voyant la mairie, elle a revu lâ€™attaque de lâ€™ambassade pendant sa mission. \r\n\r\nLe SPT peut causer des hallucinations ou des rÃªves. Les personnes atteintes peuvent alors revivre la situation traumatisante ce qui est trÃ¨s angoissant pour eux.\r\n\r\nCâ€™Ã©tait donc ce que vous pensiez, mais vous ne vous doutiez que Ã§a aurait pu arriver pour un moment aussi banal. Pourtant, câ€™est le cas, et il faut quand mÃªme bien aller Ã  la mairie mÃªme sâ€™il faut mÃ©nager Emma, qui a lâ€™air Ã©branlÃ©e.', 'ressources/ea50b2a0af67b3d9b6523471f5a4694f.PNG', 'Etape 5 - b', NULL),
(46, 12, 14, 'Vous lui expliquez posÃ©ment quâ€™elle est en sÃ©curitÃ© et quâ€™il nâ€™y a pas de raison dâ€™avoir peur car elle est loin de tout Ã§a. Elle vous Ã©coute sans rien dire dans un premier temps.\r\n\r\nLe SPT peut causer des hallucinations ou des rÃªves. Les personnes atteintes peuvent alors revivre la situation traumatisante ce qui est trÃ¨s angoissant pour eux.\r\n\r\nElle vous suit sans rÃ©agir, en se laissant faire. ', 'ressources/e81c1db447eab0ff19b15ecbf0103689.PNG', 'Etape 5 - c', NULL),
(47, 12, 15, 'Aller Ã  la mairie aujourdâ€™hui nâ€™Ã©tait peut-Ãªtre pas la meilleure idÃ©eâ€¦ Il semblerait que tout votre quartier ait dÃ©cidÃ© dâ€™aller Ã  la mairie aujourdâ€™hui. Vous allez devoir patienter dans la file dâ€™attente.\r\n\r\nAu bout dâ€™une dizaine de minutes, Emma vous dit quâ€™elle en a marre et va prendre lâ€™air un moment. Vous auriez bien aimÃ© pouvoir lâ€™accompagner, mais lâ€™un de vous doit rester, et elle avait lâ€™air dâ€™en avoir besoin.\r\nAlors que la file avance, Emma ne semble pas revenir. Vous avez pourtant besoin dâ€™elle pour aller au rendez-vous.', 'ressources/9a9febcffc5c60d110bd2bc0afb08f61.PNG', 'Etape 6', NULL),
(48, 12, 16, 'Vous allez la voir dehors pour lui demander si tout va bien. Elle vous rÃ©pond quâ€™au vu de la situation, elle avait besoin dâ€™air mais que Ã§a va mieux. NÃ©anmoins, le temps que vous discutiez, vous avez perdu votre place dans la file dâ€™attente et vous allez devoir recommencer. AprÃ¨s ce qui vous semble une heure, vous arrivez au guichet.\r\n\r\nLes personnes atteintes de SPT ont un tendance Ã  Ãªtre sensible au monde qui les entourent, on appelle cela lâ€™hypervigilance.  Une foule ou une fille dâ€™attente peut alors reprÃ©senter une situation de stress importante.\r\n\r\nVous et Emma dÃ©taillez alors les raisons de votre venue. La guichetiÃ¨re vous redirige alors vers le bureau oÃ¹ il vous faut aller. LÃ , une fonctionnaire vous accueille et vous demande les piÃ¨ces nÃ©cessaires.', 'ressources/eab61e25faa9aa309f3b770a50e23002.PNG', 'Etape 6 - a', NULL),
(49, 12, 17, 'â€œCa va ? Tu es oÃ¹ ?â€. 2 minutes aprÃ¨s votre texto, vous voyez Emma revenir. Elle nâ€™a pas lâ€™air dâ€™Ãªtre au mieux de sa forme, mais cela va un peu mieux. Surtout, il Ã©tait temps car câ€™est bientÃ´t Ã  vous dâ€™aller au guichet.\r\n\r\nLes personnes atteintes de SPT ont un tendance Ã  Ãªtre sensible au monde qui les entourent, on appelle cela lâ€™hypervigilance.  Une foule ou une fille dâ€™attente peut alors reprÃ©senter une situation de stress importante.\r\n\r\nVous et Emma dÃ©taillez alors les raisons de votre venue. La guichetiÃ¨re vous redirige alors vers le bureau oÃ¹ il vous faut aller. LÃ , une fonctionnaire vous accueille et vous demande les piÃ¨ces nÃ©cessaires.', 'ressources/f131ac928dc781a040144b394b985624.PNG', 'Etape 6 - b', NULL),
(50, 12, 18, 'Le temps passe, et Emma ne montre pas de signe. Lorsque câ€™est votre tour, vous expliquez Ã  la guichetiÃ¨re que câ€™est pour vous et votre partenaire, qui va bientÃ´t arriver. AprÃ¨s deux longues minutes oÃ¹ vous essayez de convaincre la guichetiÃ¨re quâ€™elle va arriver dâ€™une minute Ã  lâ€™autre, Emma revient enfin, plus sereine.\r\n\r\nLes personnes atteintes de SPT ont un tendance Ã  Ãªtre sensible au monde qui les entourent, on appelle cela lâ€™hypervigilance.  Une foule ou une fille dâ€™attente peut alors reprÃ©senter une situation de stress importante.\r\n\r\nVous et Emma dÃ©taillez alors les raisons de votre venue. La guichetiÃ¨re vous redirige alors vers le bureau oÃ¹ il vous faut aller. LÃ , une fonctionnaire vous accueille et vous demande les piÃ¨ces nÃ©cessaires.', 'ressources/203b09a1b65ec8733de4dbaa14dc3012.PNG', 'Etape 6 - c', NULL),
(51, 12, 19, 'Vous prenez les piÃ¨ces que Emma et vous avez prÃ©parÃ©. Tout y est, et vous pouvez commencer Ã  remplir les papiers nÃ©cessaires. La fonctionnaire vous pose des questions pour pouvoir faire vos passeports.\r\n\r\nIl est possible que les personnes atteintes de SPT dÃ©veloppe des problÃ¨mes de concentration. Il devient alors plus difficile pour eux de rÃ©aliser une tÃ¢che du dÃ©but Ã  la fin.\r\n\r\nAu bout de 5 minutes de questions, Emma commence Ã  montrer des signes dâ€™impatience et de dÃ©concentration. Elle met plus de temps Ã  rÃ©pondre, et sâ€™y reprend Ã  plusieurs fois pour expliquer sa situation. La fonctionnaire semble perdre patience. Vous dÃ©cidez alors de...', 'ressources/3b3182761df0dd32af96c92c614692df.PNG', 'Etape 7 - a', 'formOK'),
(52, 12, 19, 'Vous prenez les piÃ¨ces que Emma et vous avez prÃ©parÃ©. Pendant que vous faites le point, vous vous rendez compte quâ€™il manque le formulaire que Emma devait remplir. La fonctionnaire, bien que agacÃ©e, vous permet de faire cela sur place. Cela prend du temps mais vous y arrivez.\r\n\r\nIl est possible que les personnes atteintes de SPT dÃ©veloppe des problÃ¨mes de concentration. Il devient alors plus difficile pour eux de rÃ©aliser une tÃ¢che du dÃ©but Ã  la fin.\r\n\r\nAu bout de 5 minutes de questions, Emma commence Ã  montrer des signes dâ€™impatience et de dÃ©concentration. Elle met plus de temps Ã  rÃ©pondre, et sâ€™y reprend Ã  plusieurs fois pour expliquer sa situation. La fonctionnaire semble perdre patience. Vous dÃ©cidez alors de...', 'ressources/26d25ae7e9396d8b9272e515a7b370a7.PNG', 'Etape 7 - b', 'formNOK'),
(53, 12, 24, 'Ce ne fut pas toujours facile, mais vous avez rÃ©ussi Ã  avoir tout ce quâ€™il vous faut pour partir Ã  Rio de Janeiro, au BrÃ©sil. Ce fut une semaine extraordinaire, oÃ¹ Emma et vous avez pu entiÃ¨rement profiter des merveilles du BrÃ©sil.\r\n\r\nOn peut donc voir quâ€™il nâ€™est pas Ã©vident de prendre soin dâ€™un proche qui est atteint dâ€™un syndrome post-traumatique. Cela implique de prendre des dÃ©cisions et de trouver un Ã©quilibre pour Ã  la fois soutenir mais aussi laisser de la libertÃ©. Le rÃ´le dâ€™un aidant nâ€™est pas simple et reprÃ©sente un dÃ©fi permanent.', 'ressources/cc2aaddb377018f4f34816ecfd00c707.PNG', 'Fin', NULL),
(54, 12, 24, 'Votre insistance Ã  tout prendre en main a fortement contrariÃ© Emma qui vous le fait clairement savoir. Elle vous dit que ce nâ€™est pas parce quâ€™elle est atteinte dâ€™un syndrome quâ€™elle est totalement incapable de prendre sa propre vie en main, et quâ€™elle aimerait pouvoir respirer.\r\n\r\nVous vous disputez sur ce sujet, puis sur dâ€™autres et Ã  force, vous vous rendez compte quâ€™il vaudrait mieux Ã©viter dâ€™aller au BrÃ©sil dans ces conditions. Vous dÃ©cidez ensemble de reporter le voyage Ã  une date ultÃ©rieure.', 'ressources/ba0a2dc9571870b990a4474614aff68b.PNG', 'Dommage... Il va falloir rÃ©essayer !', 'score:>10'),
(55, 12, 24, 'Emma vous reproche dâ€™Ãªtre trop dur avec elle et de ne pas prendre en compte ses difficultÃ©s. MÃªme sâ€™il veut pouvoir Ãªtre indÃ©pendante, elle sait quâ€™elle a besoin de votre aide et souhaite pouvoir compter sur vous quand elle en a besoinâ€¦ Ce qui nâ€™a pas lâ€™air dâ€™Ãªtre le cas vu votre attitude.\r\n\r\nVous vous disputez sur ce sujet, puis sur dâ€™autres et Ã  force, vous vous rendez compte quâ€™il vaudrait mieux Ã©viter dâ€™aller au BrÃ©sil dans ces conditions. Vous dÃ©cidez ensemble de reporter le voyage Ã  une date ultÃ©rieure.', 'ressources/2e44b98fb716e19d9eb1f7f8d692fb8b.PNG', 'Dommage... Il va falloir rÃ©essayer !', 'score:<-7'),
(67, 12, 0, 'Vous allez jouer Ã  un jeu sur le modÃ¨le du jeu dont vous Ãªtes le hÃ©ros. Vous incarnez un proche dâ€™une personne en situation de handicap psychique. Dans le handicap psychique, les capacitÃ©s intellectuelles (raisonnement, calcul etc.) sont indemnes et peuvent Ã©voluer de maniÃ¨re satisfaisante. Câ€™est la possibilitÃ© de les utiliser qui est dÃ©ficiente. Les symptÃ´mes sont instables, imprÃ©visibles. De plus, la personne a du mal Ã  sâ€™intÃ©grer en sociÃ©tÃ© et Ã  faire face Ã  des situations variables. \r\nLa personne a nÃ©anmoins les capacitÃ©s dâ€™effectuer des tÃ¢ches, des activitÃ©s et de participer Ã  la vie en sociÃ©tÃ©, mais avec des difficultÃ©s et pourra avoir besoin dâ€™une aide.\r\nVous allez donc avoir le rÃ´le dâ€™un proche de la personne. Votre rÃ´le est donc dâ€™accomplir une tÃ¢che avec elle, tout en rÃ©agissant aux diffÃ©rents symptÃ´mes et consÃ©quences de son handicap. Il nâ€™y a pas de bonnes ou de mauvaises rÃ©ponses, mais simplement des rÃ©actions qui peuvent Ãªtre adaptÃ©es ou non Ã  la situation.', NULL, 'Avant-Propos', ''),
(68, 12, 21, 'Etant donnÃ© que vous savez les papiers devant vous, vous prenez le relais dâ€™Emma pour rÃ©pondre aux questions qui la concernent. La fonctionnaire semble surprise par votre initiative qui met de cÃ´tÃ© une Emma irritÃ©e par votre comportement paternaliste.\r\n\r\nUne fois les questions terminÃ©es, la fonctionnaire vous dit avec en souriant que câ€™est bon, et que vous recevrez vos passeports sous peu. Vous quittez la mairie, soulagÃ©s dâ€™avoir enfin obtenu ce quâ€™il vous fallait.', 'ressources/3e7258643790e447940a72b35fe09065.PNG', 'Etape 8 - a', ''),
(69, 12, 22, 'Vous expliquez Ã  la fonctionnaire, quâ€™Emma Ã  des difficultÃ©es Ã  rester attentive Ã  cause de son trouble psychique. La fonctionnaire comprend et  ne pose pas plus de questions sur ce sujet. Emma ne dit plus un mot, elle regarde dans le vide et nâ€™intervient plus pendant la procÃ©dure, elle est mal Ã  lâ€™aise. Vous terminez donc lâ€™entretien.\r\n\r\nUne fois les questions terminÃ©es, la fonctionnaire vous dit avec en souriant que câ€™est bon, et que vous recevrez vos passeports sous peu. Vous quittez la mairie, soulagÃ©s dâ€™avoir enfin obtenu ce quâ€™il vous fallait.', 'ressources/2d5f8ec589e7a288dccbfde8173f8e2d.PNG', 'Etape 8 - b', ''),
(70, 12, 23, 'Emma essaye de reprendre ses esprits suite Ã  votre rÃ©action. Elle continue de rÃ©pondre aux questions mais continue de sâ€™embrouiller dans ses propos, au grand dam de la fonctionnaire. Lâ€™entretien se prolonge plus longtemps que ce que vous aviez prÃ©vu.\r\n\r\nUne fois les questions terminÃ©es, la fonctionnaire vous dit avec en souriant que câ€™est bon, et que vous recevrez vos passeports sous peu. Vous quittez la mairie, soulagÃ©s dâ€™avoir enfin obtenu ce quâ€™il vous fallait.', 'ressources/4456280bf162677f8bc98085e19831bc.PNG', 'Etape 8 - c', ''),
(72, 19, 1, 'DiagnostiquÃ© schizophrÃ¨ne Ã  la fin de son adolescence, Marco vit depuis avec sa maladie. AprÃ¨s des moments difficiles, il a pu Ãªtre suivi pour stabiliser sa maladie. Maintenant, grÃ¢ce Ã  sa motivation et lâ€™aide de ses proches, il tente de reprendre pied et de profiter de sa vie.\r\nPar exemple, il a dÃ©cidÃ©, avec son frÃ¨re Adrien, de prendre des cours de thÃ©Ã¢tre dâ€™improvisation dans une troupe de thÃ©Ã¢tre de sa ville. Il peut voir du monde et prend beaucoup de plaisir Ã  ces sÃ©ances.', NULL, 'Introduction', ''),
(73, 19, 2, 'Vous incarnez Adrien, le petit frÃ¨re de Marco. Cela nâ€™a pas toujours facile de vivre avec votre frÃ¨re, surtout quand vous ne saviez pas ce quâ€™il avait. Depuis que vous et votre famille sachent de quoi Marco est atteint, vous pouvez mieux vous organiser. Vous vivez maintenant votre vie, mais vous continuez de voir rÃ©guliÃ¨rement votre frÃ¨re.', NULL, 'Etape 1', ''),
(74, 19, 3, 'Tous les mardi soir, vous accompagnez votre frÃ¨re Ã  une sÃ©ance de thÃ©Ã¢tre. Aujourdâ€™hui, le cours est dÃ©calÃ© par rapport Ã  d\'habitude.  \r\n\r\nVous dÃ©sirez connaitre les horaires du bus qui vous emmÃ¨nera Ã  la salle de thÃ©Ã¢tre. Vous savez que votre frÃ¨re Ã  parfois des difficultÃ©s Ã  sâ€™organiser dans sa vie de tous les jours. Mais vous dÃ©sirez tout de mÃªme quâ€™il soit indÃ©pendant et quâ€™il gÃ¨re son emploi du temps tout seul.', NULL, 'Etape 2', ''),
(75, 19, 4, 'Vous demandez Ã  Marco sâ€™il peut vÃ©rifier les horaires de bus sur Internet pour Ãªtre Ã  lâ€™heure. Marco semble surpris de votre demande, mais se rappelle que le dÃ©but du cours de thÃ©Ã¢tre a Ã©tÃ© dÃ©calÃ©.\r\n\r\nLes personnes schizophrÃ¨nes ont parfois des troubles de mÃ©moires qui les font oublier certaines activitÃ©s du quotidien comme aller Ã  des rendez-vous.\r\n\r\nVous vous demandez si il va bien se souvenir de la nouvelle horaire de dÃ©part. Mais il prend l\'initiative de partir au bon moment.', NULL, 'Etape 2 - a', ''),
(76, 19, 5, 'Vous dites Ã  Marco que vous avez regardÃ© les horaires pour ce soir. Il semble surpris mais se rappelle que le dÃ©but du cours de thÃ©Ã¢tre ait Ã©tÃ© dÃ©calÃ©. Il fronce les sourcils et nâ€™a pas lâ€™air dâ€™apprÃ©cier que vous ayez regardÃ© les horaires Ã  sa place.                    \r\n\r\nLes personnes schizophrÃ¨nes ont parfois des troubles de mÃ©moires qui les font oublier certaines activitÃ©s du quotidien comme aller Ã  des rendez-vous.\r\n\r\nVous vous demandez si il va bien se souvenir de la nouvelle horaire de dÃ©part. Mais il prend l\'initiative de partir au bon moment.', NULL, 'Etape 2 - b', ''),
(77, 19, 6, 'Vous nâ€™avez pas demandÃ© Ã  Marco de vÃ©rifier les horaires. Vous le voyez se prÃ©parer Ã  partir vers le thÃ©Ã¢tre bien plus tÃ´t que nÃ©cessaire. Vous venez le voir pour lui rappeler que la sÃ©ance a Ã©tÃ© dÃ©calÃ©. Il va alors de lui mÃªme vÃ©rifier les horaires de bus.\r\n\r\nLes personnes schizophrÃ¨nes ont parfois des troubles de mÃ©moires qui les font oublier certaines activitÃ©s du quotidien comme aller Ã  des rendez-vous.\r\n\r\nVous vous demandez si il va bien se souvenir de la nouvelle horaire de dÃ©part. Mais il prend l\'initiative de partir au bon moment.', NULL, 'Etape 2 - c', ''),
(78, 19, 7, 'Vous finissez par atteindre lâ€™arrÃªt de bus. AprÃ¨s quelques minutes le transport vient vous rÃ©cupÃ©rer. Vous trouvez des places cÃ´te Ã  cÃ´te au milieu du bus.\r\n\r\nAlors que le dÃ©but du trajet se dÃ©roule paisiblement. Marco commence a devenir agitÃ© au bout dâ€™un moment, quelques chose le perturbe et commence Ã  regarder bizarrement les autres passagers. ', NULL, 'Etape 3', ''),
(79, 19, 8, 'Marco nâ€™a pas lâ€™air de comprendre ce que vous lui dites. Il est sur la dÃ©fensive et a lâ€™air traquÃ©. Mais petit Ã  petit, il reprend le contrÃ´le et vous remercie de lâ€™avoir soutenu.\r\n\r\nLes personnes schizophrÃ¨nes peuvent subir des dÃ©lires hallucinatoires. Lors de ces moments, elles peuvent se sentir persÃ©cutÃ©es et agressÃ©es par le monde extÃ©rieur et percevoir les autres comme des menaces personnelles. Ils sont alors trÃ¨s angoissÃ©es.\r\n\r\nAu moment oÃ¹ Marco reprend son calme, vous atteignez votre arrÃªt. Vous sortez alors du bus et rejoignez la salle de thÃ©Ã¢tre. ', NULL, 'Etape 3 - a', ''),
(80, 19, 9, 'Marco a lâ€™air de se sentir agressÃ© et marmonnent des choses. Les autres passagers du bus le regardent avec mÃ©fiance. NÃ©anmoins, la crise finit par passer.\r\n\r\nLes personnes schizophrÃ¨nes peuvent subir des dÃ©lires hallucinatoires. Lors de ces moments, elles peuvent se sentir persÃ©cutÃ©es et agressÃ©es par le monde extÃ©rieur et percevoir les autres comme des menaces personnelles. Ils sont alors trÃ¨s angoissÃ©es.\r\n\r\nAu moment oÃ¹ Marco reprend son calme, vous atteignez votre arrÃªt. Vous sortez alors du bus et rejoignez la salle de thÃ©Ã¢tre. ', NULL, 'Etape 3 - b', ''),
(81, 19, 10, 'Marco ne prend pas compte de ce que vous lui dites. Il a lâ€™air de lutter pour garder le contrÃ´le. Certains passagers vous regarde, vous et votre frÃ¨re, dâ€™un air mÃ©fiant. Au final, Marco reprend ses esprits, mais a lâ€™air Ã©prouvÃ©.\r\n\r\nLes personnes schizophrÃ¨nes peuvent subir des dÃ©lires hallucinatoires. Lors de ces moments, elles peuvent se sentir persÃ©cutÃ©es et agressÃ©es par le monde extÃ©rieur et percevoir les autres comme des menaces personnelles. Ils sont alors trÃ¨s angoissÃ©es.\r\n\r\nAu moment oÃ¹ Marco reprend son calme, vous atteignez votre arrÃªt. Vous sortez alors du bus et rejoignez la salle de thÃ©Ã¢tre. ', NULL, 'Etape 3 - c', ''),
(82, 19, 11, 'AprÃ¨s avoir marchÃ© quelques minutes, vous atteignez le thÃ©Ã¢tre. Plusieurs autres membres du groupe sont dÃ©jÃ  arrivÃ©.\r\n\r\nVous engagez alors la conversation avec certains dâ€™entre eux. Mais Marco reste dans son coin.', NULL, 'Etape 4', ''),
(83, 19, 12, 'Vous faites signe Ã  Marco de se joindre Ã  vous dans votre conversation avec dâ€™autres membres. Il sâ€™avance vers le groupe lâ€™air un peu gÃªnÃ© et ne place que quelques mots dans la conversation.\r\n\r\nLes personnes schizophrÃ¨nes prÃ©sentent des difficultÃ©s sociales. Ils ont du mal Ã  interagir avec les autres personnes, mÃªme si la maladie est stabilisÃ©e. Le regard des autres sur leur maladie peut leur peser. \r\n\r\nAu bout dâ€™une dizaine de minutes, lâ€™animatrice du thÃ©Ã¢tre finit par arriver dans la salle pour commencer la sÃ©ance.', NULL, 'Etape 4 - a', ''),
(84, 19, 13, 'EngagÃ© dans votre conversation, vous ne prÃªtez pas Ã  Marco, qui reste seul dans son coin. Il attend patiemment le dÃ©but de la sÃ©ance sans se prÃ©occuper des autres membres de la troupe qui lui jettent par moment des regards hÃ©sitants.\r\n\r\nLes personnes schizophrÃ¨nes prÃ©sentent des difficultÃ©s sociales. Ils ont du mal Ã  interagir avec les autres personnes, mÃªme si la maladie est stabilisÃ©e. Le regard des autres sur leur maladie peut leur peser. \r\n\r\nAu bout dâ€™une dizaine de minutes, lâ€™animatrice du thÃ©Ã¢tre finit par arriver dans la salle pour commencer la sÃ©ance.', NULL, 'Etape 4 - b', ''),
(85, 19, 14, 'Comme dâ€™habitude, la sÃ©ance commence par un Ã©chauffement. Lâ€™animatrice explique au groupe les diffÃ©rences exercices Ã  rÃ©aliser en montrant elle-mÃªme lâ€™exemple. \r\n\r\nAprÃ¨s vous avoir montrÃ© quoi faire, chacun commence son Ã©chauffement. Mais Marco vous regarde lâ€™air un peu perdu, comme sâ€™il ne savait pas quoi faire. Il connaÃ®t pourtant les exercices.', NULL, 'Etape 5', ''),
(86, 19, 15, 'Vous vous rapprochez de Marco pour lui remontrer lâ€™exercice Ã  rÃ©aliser en prenant votre temps. Il hÃ©site au dÃ©but, mais comprend rapidement la suite d\'enchaÃ®nements Ã  rÃ©aliser. Il vous explique quâ€™il nâ€™avait pas vu le dÃ©but de lâ€™exemple prÃ©sentÃ© par lâ€™animatrice et quâ€™il nâ€™a pas rÃ©ussi Ã  reprendre le fil de lâ€™exercice.\r\n\r\nLes personnes schizophrÃ¨nes ont parfois des difficultÃ©s Ã  commencer des actions par eux-mÃªmes. Elles peuvent alors avoir besoin dâ€™une aide extÃ©rieure pour passer Ã  lâ€™action.\r\n\r\nLâ€™Ã©chauffement prend fin au bout de 5 minutes. Lâ€™animatrice propose alors de continuer la sÃ©ance avec une premiÃ¨re improvisation. ', NULL, 'Etape 5 - a', ''),
(87, 19, 16, 'Vous continuez votre exercice, Marco arrivera Ã  se dÃ©brouiller. mais rapidement, vous voyez lâ€™animatrice se diriger vers Marco qui nâ€™arrivait pas Ã  commencer lâ€™exercice. AprÃ¨s son passage, Marco semble plus sÃ»r de ce quâ€™il fait durant lâ€™exercice suivant.\r\n\r\nLes personnes schizophrÃ¨nes ont parfois des difficultÃ©s Ã  commencer des actions par eux-mÃªmes. Elles peuvent alors avoir besoin dâ€™une aide extÃ©rieure pour passer Ã  lâ€™action.\r\n\r\nLâ€™Ã©chauffement prend fin au bout de 5 minutes. Lâ€™animatrice propose alors de continuer la sÃ©ance avec une premiÃ¨re improvisation. ', NULL, 'Etape 5 - b', ''),
(88, 19, 17, 'Vous vous rapprochez de Marco et lui dites quâ€™il peut y arriver : il lâ€™a dÃ©jÃ  fait plein de fois ! AprÃ¨s quelques autres essais ratÃ©s, Marco arrive finalement Ã  rÃ©ussir lâ€™enchaÃ®nement, et vous dit quâ€™il avait pas rÃ©ussi Ã  reprendre le fil de lâ€™exercice.\r\n\r\nLes personnes schizophrÃ¨nes ont parfois des difficultÃ©s Ã  commencer des actions par eux-mÃªmes. Elles peuvent alors avoir besoin dâ€™une aide extÃ©rieure pour passer Ã  lâ€™action.\r\n\r\nLâ€™Ã©chauffement prend fin au bout de 5 minutes. Lâ€™animatrice propose alors de continuer la sÃ©ance avec une premiÃ¨re improvisation.  ', NULL, 'Etape 5 - c', ''),
(89, 19, 18, 'Lâ€™animatrice explique les rÃ¨gles de lâ€™improvisation. Par groupes de trois ou quatre, vous devrez improviser une discussion Ã  propos dâ€™un thÃ¨me tirÃ© au hasard. Vous Ãªtes dans le mÃªme groupe que votre frÃ¨re avec deux autres personnes. Vous obtenez le thÃ¨me : â€œanimaux domestiquesâ€\r\n\r\nUn des participants dÃ©marre en se prÃ©sentant comme un vendeur dâ€™animaux. Vous vous impliquez dans la discussion, tout comme les autres participants. Mais Ã  chaque fois que câ€™est le tour de Marco, il rÃ©pond Ã  peine et ne relance pas la discussion. Les autres participants finissent par ne plus le solliciter.', NULL, 'Etape 6', ''),
(90, 19, 19, 'MalgrÃ© la pauvretÃ© des rÃ©ponses de Marco, vous continuez de le faire participer. Ses relances restent courtes, mais progressent nÃ©anmoins et sont de plus en plus intÃ©ressantes. Petit Ã  petit, les autres participants recommencent Ã  inclure Ã  Marco.\r\n\r\nLes personnes schizophrÃ¨nes peuvent avoir du mal Ã  entretenir les conversations. Cela signifie que leur discours peut Ãªtre rÃ©duit, imprÃ©cis, avec de longs silences ou une prononciation difficile.\r\n\r\nCe jeu continue encore pendant quelques minutes. Lâ€™animatrice rassemble alors la troupe pour une nouvelle activitÃ©.', NULL, 'Etape 6 - a', ''),
(91, 19, 20, 'Votre groupe de 4 devient effectivement un groupe de 3, et vous Ãªtes particuliÃ¨rement inspirÃ©. AprÃ¨s un petit moment, Marco va sâ€™asseoir un peu Ã  lâ€™Ã©cart le temps que lâ€™exercice se termine.\r\n\r\nLes personnes schizophrÃ¨nes peuvent avoir du mal Ã  entretenir les conversations. Cela signifie que leur discours peut Ãªtre rÃ©duit, imprÃ©cis, avec de longs silences ou une prononciation difficile.\r\n\r\nCe jeu continue encore pendant quelques minutes. Lâ€™animatrice rassemble alors la troupe pour une nouvelle activitÃ©.', NULL, 'Etape 6 - b', ''),
(92, 19, 21, 'Vous Ãªtes dÃ©Ã§us des rÃ©ponses de Marco, vous lui faites remarquer discrÃ¨tement pendant que les autres participants improvisent entre eux. Vous continuez alors lâ€™exercice mais vous ne notez pas dâ€™amÃ©lioration de la part de Marco.\r\n\r\nLes personnes schizophrÃ¨nes peuvent avoir du mal Ã  entretenir les conversations. Cela signifie que leur discours peut Ãªtre rÃ©duit, imprÃ©cis, avec de longs silences ou une prononciation difficile.\r\n\r\nCe jeu continue encore pendant quelques minutes. Lâ€™animatrice rassemble alors la troupe pour une nouvelle activitÃ©.', NULL, 'Etape 6 - c', ''),
(93, 19, 22, 'Lâ€™animatrice propose un nouvel exercice. Cette fois, les participants passeront par deux Ã  leur tour devant les autres. Lâ€™un des participants doit mimer une Ã©motion et lâ€™autre doit reconnaÃ®tre cette Ã©motion et la reproduire au plus proche de lâ€™identique.\r\n\r\nLorsque vient votre tour avec Marco, vous nâ€™avez pas de problÃ¨me Ã  lâ€™imiter, Ã  lâ€™amusement de tout le monde. Quand câ€™est Ã  lui de vous imiter, vous dÃ©cidez de faire la colÃ¨re. Rapidement, un petit blanc sâ€™installe. Marco ne semble pas savoir ce que vous faites...', NULL, 'Etape 7', ''),
(94, 19, 23, 'Vous essayez discrÃ¨tement de dire Ã  Marco que vous jouez la colÃ¨re. Les autres ne semblent pas vous avoir entendu, mais lâ€™animatrice nâ€™a pas lâ€™air content de ce que vous faites. Marco finit par dire â€œColÃ¨reâ€ mais le ton nâ€™est pas vraiment convaincant.\r\n\r\nLes Ã©motions peuvent affecter diffÃ©remment les personnes schizophrÃ¨nes. Elles peuvent avoir du mal Ã  les ressentir, Ã  les exprimer ou bien avoir des Ã©motions tout Ã  fait inappropriÃ©es Ã  la situation. Enfin, elles peuvent aussi avoir du mal Ã  reconnaÃ®tre les Ã©motions des autres.\r\n\r\nVous retournez avec les autres et une nouvelle paire prend votre place. Tous les groupes passent, et vient le moment de lâ€™exercice final.', NULL, 'Etape 7 - a', ''),
(95, 19, 24, 'Vous exagÃ©rez les Ã©motions que vous jouez ce qui provoque lâ€™hilaritÃ© du public. En revanche, Marco Ã  lâ€™air de mieux saisir ce que vous exprimer. Il parvient alors Ã  imiter quelques unes des Ã©motions que vous lui avez montrÃ©.\r\n\r\nLes Ã©motions peuvent affecter diffÃ©remment les personnes schizophrÃ¨nes. Elles peuvent avoir du mal Ã  les ressentir, Ã  les exprimer ou bien avoir des Ã©motions tout Ã  fait inappropriÃ©es Ã  la situation. Enfin, elles peuvent aussi avoir du mal Ã  reconnaÃ®tre les Ã©motions des autres.\r\n\r\nVous retournez avec les autres et une nouvelle paire prend votre place. Tous les groupes passent, et vient le moment de lâ€™exercice final.', NULL, 'Etape 7 - b', ''),
(96, 19, 25, 'Un malaise sâ€™installe tandis que Marco peine Ã  trouver et reste perplexe face Ã  vous. Au moment oÃ¹ vous craignez quâ€™il se dÃ©courage, il dit â€œDe laâ€¦ colÃ¨re ?â€ et fait une grimace trÃ¨s exagÃ©rÃ©e de la colÃ¨re. Cela vous fait rire tous les deux et vous reprenez votre place.\r\n\r\nLes Ã©motions peuvent affecter diffÃ©remment les personnes schizophrÃ¨nes. Elles peuvent avoir du mal Ã  les ressentir, Ã  les exprimer ou bien avoir des Ã©motions tout Ã  fait inappropriÃ©es Ã  la situation. Enfin, elles peuvent aussi avoir du mal Ã  reconnaÃ®tre les Ã©motions des autres.\r\n\r\nVous retournez avec les autres et une nouvelle paire prend votre place. Tous les groupes passent, et vient le moment de lâ€™exercice final.', NULL, 'Etape 7 - c', ''),
(97, 19, 26, 'Pendant quâ€™elle explique la prochaine improvisation, quelques personnes entrent dans la salle. Il sâ€™agit dâ€™une autre troupe de thÃ©Ã¢tre. Ils expliquent quâ€™ils nâ€™ont pas reÃ§u les nouvelles horaires. Lâ€™animatrice leur propose de rester et dâ€™assister aux prochaines improvisations.  \r\n\r\nVous vous mettez tous en position pour dÃ©marrer lâ€™improvisation. Mais vous voyez Marco en pleine crise de panique, quitter la scÃ¨ne et sâ€™enfuir derriÃ¨re lâ€™estrade. Vous le suivez pour voir ce qui se passe. Il crie quâ€™il a peur de se faire attraper et quâ€™ils sont lÃ  pour le surveiller.', NULL, 'Etape 8', ''),
(98, 19, 27, 'Vous veillez quâ€™il ne se fasse pas mal pendant quâ€™il dÃ©lire en restant Ã  lâ€™Ã©cart. Marco met un petit moment pour se calmer. Lorsque lâ€™animatrice vient vous rejoindre pour vÃ©rifier que tout va bien. Vous expliquer que la crise est passÃ©e. Vous retournez alors sur scÃ¨ne avec votre frÃ¨re pour finir lâ€™exercice.\r\n\r\nLes personnes schizophrÃ¨nes sont vulnÃ©rables face Ã  lâ€™imprÃ©vu et prÃ©fÃ¨rent les routines. Le changement peut facilement les inquiÃ©ter et renforcer des sentiments de peur ou crÃ©er des dÃ©lires de persÃ©cution.\r\n\r\nLa fin de la sÃ©ance se passe sans encombre, et Marco participe pleinement Ã  la sÃ©ance. Des petits signes montrent quâ€™il nâ€™est pas entiÃ¨rement rassurÃ©, mais cela ne lâ€™empÃªche de jouer avec la troupe. La sÃ©ance se termine et les acteurs se sÃ©parent.', NULL, 'Etape 8 - a', ''),
(99, 19, 28, 'Marco met un petit moment pour retrouver ses esprits. Mais vous le calmez en lui rÃ©pÃ©tant quâ€™il est en sÃ©curitÃ© et que tout va bien. Lâ€™animatrice vient vous rejoindre pour vÃ©rifier que tout va bien. Vous expliquer que la crise est passÃ©e. Vous retournez alors sur scÃ¨ne avec votre frÃ¨re pour finir lâ€™exercice.\r\n\r\nLes personnes schizophrÃ¨nes sont vulnÃ©rables face Ã  lâ€™imprÃ©vu et prÃ©fÃ¨rent les routines. Le changement peut facilement les inquiÃ©ter et renforcer des sentiments de peur ou crÃ©er des dÃ©lires de persÃ©cution.\r\n\r\nLa fin de la sÃ©ance se passe sans encombre, et Marco participe pleinement Ã  la sÃ©ance. Des petits signes montrent quâ€™il nâ€™est pas entiÃ¨rement rassurÃ©, mais cela ne lâ€™empÃªche de jouer avec la troupe. La sÃ©ance se termine et les acteurs se sÃ©parent.', NULL, 'Etape 8 - b', ''),
(100, 19, 29, 'Marco vous dit quâ€™il a vraiment apprÃ©ciÃ© la sÃ©ance. Le thÃ©Ã¢tre en gÃ©nÃ©ral semble vraiment lâ€™aider Ã  sâ€™ouvrir et Ã  combattre la schizophrÃ©nie. Entre cela et ses rendez-vous avec un psychiatre, Marco de moins en moins de sa maladie.\r\n\r\nOn peut donc voir quâ€™il nâ€™est pas Ã©vident de prendre soin dâ€™un proche qui est atteint de schizophrÃ©nie. Cela implique de prendre des dÃ©cisions et de trouver un Ã©quilibre pour Ã  la fois soutenir mais aussi laisser de la libertÃ©. Le rÃ´le dâ€™un aidant nâ€™est pas simple et reprÃ©sente un dÃ©fi permanent.', NULL, 'Fin', ''),
(101, 19, 29, 'Votre insistance Ã  tout prendre en main a fortement contrariÃ© Marco qui vous le fait clairement savoir. Il vous dit que ce nâ€™est pas parce quâ€™il est atteinte de schizophrÃ©nie  quâ€™il est totalement incapable de prendre sa propre vie en main, et quâ€™il aimerait pouvoir respirer.\r\n\r\nVous vous disputez sur ce sujet. Marco refuse dâ€™aller Ã  dâ€™autres sÃ©ances de thÃ©Ã¢tre avec vous tant que vous aurez ce comportement avec lui qui lâ€™empÃªche de profiter du thÃ©Ã¢tre.', NULL, 'Dommage... Il va falloir rÃ©essayer', 'score:>7'),
(102, 19, 29, 'Marco vous reproche dâ€™Ãªtre trop dur avec lui et de ne pas prendre en compte ses difficultÃ©s. MÃªme sâ€™il veut pouvoir Ãªtre indÃ©pendante, elle sait quâ€™il a besoin de votre aide et souhaite pouvoir compter sur vous quand il en a besoinâ€¦ Ce qui nâ€™a pas lâ€™air dâ€™Ãªtre le cas vu votre attitude.\r\n\r\nVous vous disputez sur ce sujet. Marco refuse dâ€™aller Ã  dâ€™autres sÃ©ances de thÃ©Ã¢tre avec vous tant que vous aurez ce comportement avec lui qui lâ€™empÃªche de profiter du thÃ©Ã¢tre.', NULL, 'Dommage... Il va falloir rÃ©essayer !', 'score:<-7');

-- --------------------------------------------------------

--
-- Structure de la table `scenario`
--

CREATE TABLE `scenario` (
  `id_scenario` int(11) NOT NULL,
  `nom` varchar(500) CHARACTER SET utf8 NOT NULL,
  `resume` varchar(5000) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `scenario`
--

INSERT INTO `scenario` (`id_scenario`, `nom`, `resume`) VALUES
(12, 'Stress Post Traumatique - DÃ©marches administratives', 'Vous allez jouer Ã  un jeu sur le modÃ¨le du jeu dont vous Ãªtes le hÃ©ros. Vous incarnez un proche dâ€™une personne en situation de handicap psychique. Dans le handicap psychique, les capacitÃ©s intellectuelles (raisonnement, calcul etc.) sont indemnes et peuvent Ã©voluer de maniÃ¨re satisfaisante. Câ€™est la possibilitÃ© de les utiliser qui est dÃ©ficiente. Les symptÃ´mes sont instables, imprÃ©visibles. De plus, la personne a du mal Ã  sâ€™intÃ©grer en sociÃ©tÃ© et Ã  faire face Ã  des situations variables. \r\nLa personne a nÃ©anmoins les capacitÃ©s dâ€™effectuer des tÃ¢ches, des activitÃ©s et de participer Ã  la vie en sociÃ©tÃ©, mais avec des difficultÃ©s et pourra avoir besoin dâ€™une aide.\r\nVous allez donc avoir le rÃ´le dâ€™un proche de la personne. Votre rÃ´le est donc dâ€™accomplir une tÃ¢che avec elle, tout en rÃ©agissant aux diffÃ©rents symptÃ´mes et consÃ©quences de son handicap. Il nâ€™y a pas de bonnes ou de mauvaises rÃ©ponses, mais simplement des rÃ©actions qui peuvent Ãªtre adaptÃ©es ou non Ã  la situation.'),
(19, 'SchizophrÃ©nie - Cours de ThÃ©Ã¢tre', '');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `bouton`
--
ALTER TABLE `bouton`
  ADD PRIMARY KEY (`id_bouton`);

--
-- Index pour la table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id_page`);

--
-- Index pour la table `scenario`
--
ALTER TABLE `scenario`
  ADD PRIMARY KEY (`id_scenario`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `bouton`
--
ALTER TABLE `bouton`
  MODIFY `id_bouton` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;
--
-- AUTO_INCREMENT pour la table `page`
--
ALTER TABLE `page`
  MODIFY `id_page` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
--
-- AUTO_INCREMENT pour la table `scenario`
--
ALTER TABLE `scenario`
  MODIFY `id_scenario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
