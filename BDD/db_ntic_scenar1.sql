-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Ven 20 Janvier 2017 à 13:54
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
  `texte` varchar(500) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `bouton`
--

INSERT INTO `bouton` (`id_bouton`, `id_page`, `go_to_page`, `texte`) VALUES
(36, 33, 2, 'Continuer'),
(37, 34, 3, 'Continuer'),
(38, 35, 4, 'Vous demandez un rendez-vous Ã  la mairie'),
(39, 35, 5, 'Vous insistez auprÃ¨s d\'Emma'),
(40, 35, 6, 'Vous laissez Emma le faire quand elle le voudra'),
(41, 36, 7, 'Vous prenez les devants et prÃ©parez les dossiers'),
(42, 36, 8, 'Vous dites Ã  Emma de penser Ã  faire son dossier'),
(43, 37, 7, 'Vous prenez les devants et prÃ©parez les dossiers'),
(44, 37, 8, 'Vous dites Ã  Emma de penser Ã  faire son dossier'),
(45, 38, 7, 'Vous prenez les devants et prÃ©parez les dossiers'),
(46, 38, 8, 'Vous dites Ã  Emma de penser Ã  faire son dossier'),
(47, 39, 9, 'Passer Ã  la suite'),
(48, 40, 9, 'Passer Ã  la suite'),
(49, 41, 10, 'Vous essayez de nÃ©gocier'),
(50, 41, 11, 'Vous acceptez de l\'accompagner'),
(51, 42, 12, 'Vous essayez de la rassurer'),
(52, 42, 13, 'Vous lui demandez ce qui lui arrive'),
(53, 42, 14, 'Vous la motivez Ã  avancer'),
(54, 43, 12, 'Vous essayez de la rassurer'),
(55, 43, 13, 'Vous lui demandez ce qui lui arrive'),
(56, 43, 14, 'Vous la motivez Ã  avancer'),
(57, 44, 15, 'Suite'),
(58, 45, 15, 'Suite'),
(59, 46, 15, 'Suite'),
(60, 47, 16, 'Vous allez la chercher dehors'),
(61, 47, 17, 'Vous lui envoyez un texto'),
(62, 47, 18, 'Vous attendez qu\'elle revienne dans la file'),
(63, 48, 19, 'Suite'),
(64, 49, 19, 'Suite'),
(65, 50, 19, 'Suite'),
(66, 51, 21, 'Expliquer Ã  sa place'),
(67, 51, 22, 'Expliquer que Emma est atteinte de PTSD'),
(68, 51, 23, 'Demander Ã  Emma de se concentrer'),
(69, 52, 21, 'Expliquer Ã  sa place'),
(70, 52, 22, 'Expliquer que Emma est atteinte de PTSD'),
(71, 52, 23, 'Demander Ã  Emma de se concentrer'),
(72, 53, 1, 'Recommencer ?'),
(73, 54, 1, 'Recommencer ?'),
(74, 55, 1, 'Recommencer ?');

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
  `titre` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `page`
--

INSERT INTO `page` (`id_page`, `id_scenario`, `numero`, `texte`, `image`, `titre`) VALUES
(33, 12, 1, 'Il y a quelques mois, Emma, militaire de profession, est rentrÃ©e dâ€™une mission sur le terrain. Malheureusement, alors quâ€™elle Ã©tait de garde Ã  lâ€™ambassade franÃ§aise en Lybie, une explosion a eu lieu, entraÃ®nant la mort de plusieurs victimes. Depuis son retour en France, elle vit chez son compagnon Mohammed. Depuis, Emma est en proie Ã  des crises dâ€™angoisse et des insomnies causÃ©s par des cauchemars. Elle semble plus distante, irritable et sursaute au moindre bruit inattendu. AprÃ¨s consultation dâ€™un psychiatre, Emma a Ã©tÃ© diagnostiquÃ©e comme ayant un syndrome de stress post-traumatique (ou SPT). ', NULL, 'Introduction'),
(34, 12, 2, 'Vous incarnez Mohammed, le compagnon dâ€™Emma. Au vu de son diagnostic, votre rÃ´le est dÃ©sormais de lui apporter un soutien quotidien pour lâ€™aider Ã  vivre avec sa maladie.', NULL, 'Etape 1'),
(35, 12, 3, 'Pour vous changer les idÃ©es, vous dÃ©cidez de partir au BrÃ©sil. Pour cela, il va falloir quâ€™Emma renouvelle son passeport Ã  la mairie.\r\n\r\n\r\nNÃ©anmoins, malgrÃ© une semaine que vous rÃ©pÃ©tez Ã  Emma de dÃ©buter les dÃ©marches administrative, elle nâ€™a pour lâ€™instant rien fait. La date du dÃ©part approche, et il va bien falloir faire ces dÃ©marches. Que faites-vous ?\r\n', NULL, 'Etape 2'),
(36, 12, 4, 'Vous vous chargez dâ€™appeler la mairie pour prÃ©parer un rendez-vous et savoir quelles piÃ¨ces amener. Pendant lâ€™appel, vous pouvez clairement voir lâ€™irritation dâ€™Emma devant votre initiative\r\n\r\nLes personnes en situation de SPT peuvent Ãªtre irritables ou rÃ©agir de maniÃ¨re imprÃ©vue Ã  cause dâ€™une altÃ©ration de lâ€™humeur et / ou de la rationalitÃ©.\r\n\r\nMalgrÃ© la rÃ©action dâ€™Emma, vous avez planifiÃ© un rendez-vous avec la mairie, qui nÃ©cessitera des piÃ¨ces pour constituer un dossier. Au vu de ce qui sâ€™est passÃ© pour prendre le rendez-vous, vous hÃ©sitez Ã  laisser Emma sâ€™en charger seule. Que faites-vous ?', NULL, 'Etape 2 - a'),
(37, 12, 5, 'Vous dites Ã  Emma quâ€™il faut le faire dÃ¨s que possible. Elle sâ€™Ã©nerve soudainement contre vous, arguant que Ã§a ne vous regarde pas et que Ã§a nâ€™en vaut pas la peine de toute faÃ§on.\r\nCela vous Ã©tonne, elle voulait ce voyage ! Vous appelez alors la mairie malgrÃ© ses protestations et obtenez un rendez-vous.\r\n\r\nLes personnes en situation de SPT peuvent Ãªtre irritables ou rÃ©agir de maniÃ¨re imprÃ©vue Ã  cause dâ€™une altÃ©ration de lâ€™humeur et / ou de la rationalitÃ©.\r\n\r\nMalgrÃ© la rÃ©action dâ€™Emma, vous avez planifiÃ© un rendez-vous avec la mairie, qui nÃ©cessitera des piÃ¨ces pour constituer un dossier. Au vu de ce qui sâ€™est passÃ© pour prendre le rendez-vous, vous hÃ©sitez Ã  laisser Emma sâ€™en charger seule. Que faites-vous ?', NULL, 'Etape 2 - b'),
(38, 12, 6, 'Le temps passe et vous nâ€™avez aucune nouvelle du rendez-vousâ€¦ A chaque fois que vous en parlez Ã  Emma, elle dit quâ€™elle a oubliÃ©. Au bout dâ€™un moment, vous dÃ©cidez de prendre les choses en main en composant vous mÃªme le numÃ©ro pour donner le tÃ©lÃ©phone Ã  Emma. Celle-ci vous lance un regard noir pendant quâ€™elle prend le rendez-vous, en rudoyant sensiblement son interlocuteur.\r\n\r\nLes personnes en situation de SPT peuvent Ãªtre irritables ou rÃ©agir de maniÃ¨re imprÃ©vue Ã  cause dâ€™une altÃ©ration de lâ€™humeur et / ou de la rationalitÃ©.\r\n\r\nMalgrÃ© la rÃ©action dâ€™Emma, vous avez planifiÃ© un rendez-vous avec la mairie, qui nÃ©cessitera des piÃ¨ces pour constituer un dossier. Au vu de ce qui sâ€™est passÃ© pour prendre le rendez-vous, vous hÃ©sitez Ã  laisser Emma sâ€™en charger seule. Que faites-vous ?', NULL, 'Etape 2 - c'),
(39, 12, 7, 'DÃ©jÃ  que cela a Ã©tÃ© compliquÃ© dâ€™appeler la mairieâ€¦ Vous ne prenez pas de risque et vous cherchez les piÃ¨ces nÃ©cessaires au dossier. Au dÃ©part vexÃ©e, Emma finit par complÃ©ter le dossier avec vous.\r\n\r\nLes personnes atteintes de SPT ont des difficultÃ©s Ã  sâ€™impliquer dans des activitÃ©s importantes.\r\n\r\nLe dossier est prÃªt, et câ€™est le jour pour Emma dâ€™aller Ã  la mairie.', NULL, 'Etape 3 - a'),
(40, 12, 8, 'Emma vous rÃ©pond quâ€™elle pense pouvoir sâ€™en sortir toute seule. Vous doutez un peu Ã  cause de ce qui sâ€™est passÃ© pour le rendez-vous, mais vous voyez bien que Ã§a lui tient Ã  coeur.\r\n\r\nLe dossier est prÃªt, et câ€™est le jour pour Emma dâ€™aller Ã  la mairie.', NULL, 'Etape 3 - b'),
(41, 12, 9, 'Le matin au petit-dÃ©jeuner, Emma vous demande si vous voulez bien lâ€™accompagner Ã  la mairie. Vous voyez quâ€™elle ne semble pas rassurÃ©e, comme souvent quand il sâ€™agit dâ€™une sortie.\r\n\r\nLes personnes atteintes de SPT tentent dâ€™Ã©viter au maximum les lieux ou les situations qui peuvent ressembler Ã  l\'Ã©vÃ©nement traumatisant. Elles peuvent faire beaucoup dâ€™efforts pour se rassurer et se protÃ©ger. De plus, elles peuvent ressentir de nombreuses Ã©motions nÃ©gatives et peuvent chercher le soutien de leur proche.\r\n\r\nDommage pour vous, vous aviez prÃ©vu de ne rien faire de la matinÃ©e. Emma compte beaucoup pour vous, mais vous aimeriez pouvoir vous reposer aprÃ¨s une semaine trÃ¨s fatigante. Que dÃ©cidez-vous ?', NULL, 'Etape 4'),
(42, 12, 10, 'Vous essayez dâ€™expliquer Ã  Emma que vous Ãªtes fatiguÃ© mais avant dâ€™aller plus loin, elle vous interrompt, dâ€™une voix tremblante. Elle vous dit quâ€™elle a vraiment besoin de vous pour aller Ã  la mairie, car elle ne sent pas trÃ¨s bien et quâ€™elle a peur dâ€™oublier des informations. Vous voyez clairement quâ€™il y a un vrai sentiment de peur derriÃ¨re Ã§a, et vous dÃ©cidez de lâ€™accompagner pour la rassurer.\r\n\r\nSur le chemin pour la mairie, vous bavardez tranquillement lorsque soudainement, Emma se fige. Vous regardez alors devant elle et vous ne voyez que la mairie. Devant lâ€™aspect officiel du bÃ¢timent et le drapeau franÃ§ais, vous comprenez Ã  alors ce qui arrive Ã  Emma.', NULL, 'Etape 4 - a'),
(43, 12, 11, 'Emma semble rassurer que vous ayez dÃ©cidÃ© de lâ€™accompagner. Vous partez donc avec Emma en direction de la mairie aprÃ¨s avoir finis votre petit dÃ©jeuner.\r\n\r\nSur le chemin pour la mairie, vous bavardez tranquillement lorsque soudainement, Emma se fige. Vous regardez alors devant elle et vous ne voyez que la mairie. Devant lâ€™aspect officiel du bÃ¢timent et le drapeau franÃ§ais, vous comprenez Ã  alors ce qui arrive Ã  Emma.', NULL, 'Etape 4 - b'),
(44, 12, 12, 'Vous la serrez contre vous pour la rassurer en disant des paroles de rÃ©confort. Vous voyez quâ€™elle tremble et quâ€™elle respire difficilement et vous espÃ©rez lâ€™apaiser.\r\n\r\nLe SPT peut causer des hallucinations ou des rÃªves. Les personnes atteintes peuvent alors revivre la situation traumatisante ce qui est trÃ¨s angoissant pour eux.\r\n\r\nAu bout dâ€™un moment vous la sentez se calmer et reprendre une respiration plus reposÃ©e. Elle ne vous dit rien, mais reprend le chemin vers la mairie.', NULL, 'Etape 5 - a'),
(45, 12, 13, 'AprÃ¨s un long silence, elle reprend ses esprits. Puis elle vous dit dâ€™une voix faible quâ€™en voyant la mairie, elle a revu lâ€™attaque de lâ€™ambassade pendant sa mission. \r\n\r\nLe SPT peut causer des hallucinations ou des rÃªves. Les personnes atteintes peuvent alors revivre la situation traumatisante ce qui est trÃ¨s angoissant pour eux.\r\n\r\nCâ€™Ã©tait donc ce que vous pensiez, mais vous ne vous doutiez que Ã§a aurait pu arriver pour un moment aussi banal. Pourtant, câ€™est le cas, et il faut quand mÃªme bien aller Ã  la mairie mÃªme sâ€™il faut mÃ©nager Emma, qui a lâ€™air Ã©branlÃ©e.', NULL, 'Etape 5 - b'),
(46, 12, 14, 'Vous lui expliquez posÃ©ment quâ€™elle est en sÃ©curitÃ© et quâ€™il nâ€™y a pas de raison dâ€™avoir peur car elle est loin de tout Ã§a. Elle vous Ã©coute sans rien dire dans un premier temps.\r\n\r\nLe SPT peut causer des hallucinations ou des rÃªves. Les personnes atteintes peuvent alors revivre la situation traumatisante ce qui est trÃ¨s angoissant pour eux.\r\n\r\nElle vous suit sans rÃ©agir, en se laissant faire. ', NULL, 'Etape 5 - c'),
(47, 12, 15, 'Aller Ã  la mairie aujourdâ€™hui nâ€™Ã©tait peut-Ãªtre pas la meilleure idÃ©eâ€¦ Il semblerait que tout votre quartier ait dÃ©cidÃ© dâ€™aller Ã  la mairie aujourdâ€™hui. Vous allez devoir patienter dans la file dâ€™attente.\r\n\r\nAu bout dâ€™une dizaine de minutes, Emma vous dit quâ€™elle en a marre et va prendre lâ€™air un moment. Vous auriez bien aimÃ© pouvoir lâ€™accompagner, mais lâ€™un de vous doit rester, et elle avait lâ€™air dâ€™en avoir besoin.\r\nAlors que la file avance, Emma ne semble pas revenir. Vous avez pourtant besoin dâ€™elle pour aller au rendez-vous.', NULL, 'Etape 6'),
(48, 12, 16, 'Vous allez la voir dehors pour lui demander si tout va bien. Elle vous rÃ©pond quâ€™au vu de la situation, elle avait besoin dâ€™air mais que Ã§a va mieux. NÃ©anmoins, le temps que vous discutiez, vous avez perdu votre place dans la file dâ€™attente et vous allez devoir recommencer. AprÃ¨s ce qui vous semble une heure, vous arrivez au guichet.\r\n\r\nLes personnes atteintes de SPT ont un tendance Ã  Ãªtre sensible au monde qui les entourent, on appelle cela lâ€™hypervigilance.  Une foule ou une fille dâ€™attente peut alors reprÃ©senter une situation de stress importante.\r\n\r\nVous et Emma dÃ©taillez alors les raisons de votre venue. La guichetiÃ¨re vous redirige alors vers le bureau oÃ¹ il vous faut aller. LÃ , une fonctionnaire vous accueille et vous demande les piÃ¨ces nÃ©cessaires.', NULL, 'Etape 6 - a'),
(49, 12, 17, 'â€œCa va ? Tu es oÃ¹ ?â€. 2 minutes aprÃ¨s votre texto, vous voyez Emma revenir. Elle nâ€™a pas lâ€™air dâ€™Ãªtre au mieux de sa forme, mais cela va un peu mieux. Surtout, il Ã©tait temps car câ€™est bientÃ´t Ã  vous dâ€™aller au guichet.\r\n\r\nLes personnes atteintes de SPT ont un tendance Ã  Ãªtre sensible au monde qui les entourent, on appelle cela lâ€™hypervigilance.  Une foule ou une fille dâ€™attente peut alors reprÃ©senter une situation de stress importante.\r\n\r\nVous et Emma dÃ©taillez alors les raisons de votre venue. La guichetiÃ¨re vous redirige alors vers le bureau oÃ¹ il vous faut aller. LÃ , une fonctionnaire vous accueille et vous demande les piÃ¨ces nÃ©cessaires.', NULL, 'Etape 6 - b'),
(50, 12, 18, 'Le temps passe, et Emma ne montre pas de signe. Lorsque câ€™est votre tour, vous expliquez Ã  la guichetiÃ¨re que câ€™est pour vous et votre partenaire, qui va bientÃ´t arriver. AprÃ¨s deux longues minutes oÃ¹ vous essayez de convaincre la guichetiÃ¨re quâ€™elle va arriver dâ€™une minute Ã  lâ€™autre, Emma revient enfin, plus sereine.\r\n\r\nLes personnes atteintes de SPT ont un tendance Ã  Ãªtre sensible au monde qui les entourent, on appelle cela lâ€™hypervigilance.  Une foule ou une fille dâ€™attente peut alors reprÃ©senter une situation de stress importante.\r\n\r\nVous et Emma dÃ©taillez alors les raisons de votre venue. La guichetiÃ¨re vous redirige alors vers le bureau oÃ¹ il vous faut aller. LÃ , une fonctionnaire vous accueille et vous demande les piÃ¨ces nÃ©cessaires.', NULL, 'Etape 6 - c'),
(51, 12, 19, 'Vous prenez les piÃ¨ces que Emma et vous avez prÃ©parÃ©. Tout y est, et vous pouvez commencer Ã  remplir les papiers nÃ©cessaires. La fonctionnaire vous pose des questions pour pouvoir faire vos passeports.\r\n\r\nIl est possible que les personnes atteintes de SPT dÃ©veloppe des problÃ¨mes de concentration. Il devient alors plus difficile pour eux de rÃ©aliser une tÃ¢che du dÃ©but Ã  la fin.\r\n\r\nAu bout de 5 minutes de questions, Emma commence Ã  montrer des signes dâ€™impatience et de dÃ©concentration. Elle met plus de temps Ã  rÃ©pondre, et sâ€™y reprend Ã  plusieurs fois pour expliquer sa situation. La fonctionnaire semble perdre patience. Vous dÃ©cidez alors de...', NULL, 'Etape 7 - a'),
(52, 12, 20, 'Vous prenez les piÃ¨ces que Emma et vous avez prÃ©parÃ©. Pendant que vous faites le point, vous vous rendez compte quâ€™il manque le formulaire que Emma devait remplir. La fonctionnaire, bien que agacÃ©e, vous permet de faire cela sur place. Cela prend du temps mais vous y arrivez.\r\n\r\nIl est possible que les personnes atteintes de SPT dÃ©veloppe des problÃ¨mes de concentration. Il devient alors plus difficile pour eux de rÃ©aliser une tÃ¢che du dÃ©but Ã  la fin.\r\n\r\nAu bout de 5 minutes de questions, Emma commence Ã  montrer des signes dâ€™impatience et de dÃ©concentration. Elle met plus de temps Ã  rÃ©pondre, et sâ€™y reprend Ã  plusieurs fois pour expliquer sa situation. La fonctionnaire semble perdre patience. Vous dÃ©cidez alors de...', NULL, 'Etape 7 - b'),
(53, 12, 21, 'Ce ne fut pas toujours facile, mais vous avez rÃ©ussi Ã  avoir tout ce quâ€™il vous faut pour partir Ã  Rio de Janeiro, au BrÃ©sil. Ce fut une semaine extraordinaire, oÃ¹ Emma et vous avez pu entiÃ¨rement profiter des merveilles du BrÃ©sil.\r\n\r\nOn peut donc voir quâ€™il nâ€™est pas Ã©vident de prendre soin dâ€™un proche qui est atteint dâ€™un syndrome post-traumatique. Cela implique de prendre des dÃ©cisions et de trouver un Ã©quilibre pour Ã  la fois soutenir mais aussi laisser de la libertÃ©. Le rÃ´le dâ€™un aidant nâ€™est pas simple et reprÃ©sente un dÃ©fi permanent.', NULL, 'Fin'),
(54, 12, 22, 'Votre insistance Ã  tout prendre en main a fortement contrariÃ© Emma qui vous le fait clairement savoir. Elle vous dit que ce nâ€™est pas parce quâ€™elle est atteinte dâ€™un syndrome quâ€™elle est totalement incapable de prendre sa propre vie en main, et quâ€™elle aimerait pouvoir respirer.\r\n\r\nVous vous disputez sur ce sujet, puis sur dâ€™autres et Ã  force, vous vous rendez compte quâ€™il vaudrait mieux Ã©viter dâ€™aller au BrÃ©sil dans ces conditions. Vous dÃ©cidez ensemble de reporter le voyage Ã  une date ultÃ©rieure.', NULL, 'Dommage... Il va falloir rÃ©essayer !'),
(55, 12, 23, 'Emma vous reproche dâ€™Ãªtre trop dur avec elle et de ne pas prendre en compte ses difficultÃ©s. MÃªme sâ€™il veut pouvoir Ãªtre indÃ©pendante, elle sait quâ€™elle a besoin de votre aide et souhaite pouvoir compter sur vous quand elle en a besoinâ€¦ Ce qui nâ€™a pas lâ€™air dâ€™Ãªtre le cas vu votre attitude.\r\n\r\nVous vous disputez sur ce sujet, puis sur dâ€™autres et Ã  force, vous vous rendez compte quâ€™il vaudrait mieux Ã©viter dâ€™aller au BrÃ©sil dans ces conditions. Vous dÃ©cidez ensemble de reporter le voyage Ã  une date ultÃ©rieure.', NULL, 'Dommage... Il va falloir rÃ©essayer !');

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
(12, 'Stress Post Traumatique - DÃ©marches administratives', 'Vous allez jouer Ã  un jeu sur le modÃ¨le du jeu dont vous Ãªtes le hÃ©ros. Vous incarnez un proche dâ€™une personne en situation de handicap psychique. Dans le handicap psychique, les capacitÃ©s intellectuelles (raisonnement, calcul etc.) sont indemnes et peuvent Ã©voluer de maniÃ¨re satisfaisante. Câ€™est la possibilitÃ© de les utiliser qui est dÃ©ficiente. Les symptÃ´mes sont instables, imprÃ©visibles. De plus, la personne a du mal Ã  sâ€™intÃ©grer en sociÃ©tÃ© et Ã  faire face Ã  des situations variables. \r\nLa personne a nÃ©anmoins les capacitÃ©s dâ€™effectuer des tÃ¢ches, des activitÃ©s et de participer Ã  la vie en sociÃ©tÃ©, mais avec des difficultÃ©s et pourra avoir besoin dâ€™une aide.\r\nVous allez donc avoir le rÃ´le dâ€™un proche de la personne. Votre rÃ´le est donc dâ€™accomplir une tÃ¢che avec elle, tout en rÃ©agissant aux diffÃ©rents symptÃ´mes et consÃ©quences de son handicap. Il nâ€™y a pas de bonnes ou de mauvaises rÃ©ponses, mais simplement des rÃ©actions qui peuvent Ãªtre adaptÃ©es ou non Ã  la situation.');

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
  MODIFY `id_bouton` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT pour la table `page`
--
ALTER TABLE `page`
  MODIFY `id_page` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT pour la table `scenario`
--
ALTER TABLE `scenario`
  MODIFY `id_scenario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
