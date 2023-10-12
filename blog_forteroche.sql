-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 27 fév. 2023 à 17:57
-- Version du serveur :  5.7.36
-- Version de PHP : 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `blog_forteroche`
--

-- --------------------------------------------------------

--
-- Structure de la table `commentaires`
--

DROP TABLE IF EXISTS `commentaires`;
CREATE TABLE IF NOT EXISTS `commentaires` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `auteur` varchar(45) NOT NULL,
  `message` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `signalement` tinyint(4) DEFAULT '0',
  `posts_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`,`posts_id`),
  KEY `fk_commentaires_posts1_idx` (`posts_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `commentaires`
--

INSERT INTO `commentaires` (`id`, `auteur`, `message`, `date`, `signalement`, `posts_id`) VALUES
(1, 'Joseph', 'C\'est un bon début, celà dit un peu court à mon goût !', '2023-02-21', 0, 30),
(2, 'Joseph', 'Beaucoup trop court, on reste sur notre faim, l\'intrigue se dévelloppe a peine !', '2023-02-21', 0, 31),
(4, 'Joseph', 'Enfin un peu de longueur! Plaisant a lire, enfin un peu d\'intrigue !', '2023-02-21', 0, 33);

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`id`, `titre`, `message`, `date`) VALUES
(30, 'Chapitre Premier : Un nom Bizzarre', '&lt;p style=&quot;text-align: center;&quot;&gt;&lt;span style=&quot;text-decoration: underline;&quot;&gt;&lt;span style=&quot;font-size: 18pt;&quot;&gt;&lt;strong&gt;&lt;em&gt;Chapitre Premier : Un nom Bizzarre&lt;/em&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;em&gt;Il nageait dans un plasma sombre et visqueux qui lui donnait l&#039;impression de flotter au fin fond d&#039;un pot de cr&amp;egrave;me de pruneaux.&lt;/em&gt;&lt;br&gt;&lt;em&gt;Il se sentait si l&amp;eacute;ger qu&#039;il n&#039;&amp;eacute;prouvait plus le poids de son corps, d&#039;ordinaire si las et courbatur&amp;eacute;. Cette pens&amp;eacute;e cingla son esprit, qui s&#039;&amp;eacute;veilla de ses songes sucr&amp;eacute;s. Il continuait de flotter dans cette atmosph&amp;egrave;re p&amp;acirc;teuse et t&amp;eacute;n&amp;eacute;breuse, qui lui &amp;eacute;voquait &amp;agrave; pr&amp;eacute;sent l&#039;estomac d&#039;une b&amp;ecirc;te lucif&amp;eacute;rienne.&lt;/em&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;&quot;Euh... All&amp;ocirc; ?&quot;&lt;/strong&gt; &lt;em&gt;b&amp;eacute;gaya Manou&amp;euml;l. Sa question resta un moment suspendue dans le vide, puis se d&amp;eacute;sint&amp;eacute;gra en un essaim de particules.&lt;/em&gt;&lt;br&gt;&lt;strong&gt;&quot;Y&#039;&amp;agrave;... y&#039;&amp;agrave; quelqu&#039;un ?&quot; &lt;/strong&gt;&lt;em&gt;Sa voix sonda les contours de l&#039;endroit, emplit l&#039;espace vacant, puis se fit happ&amp;eacute;e par un souffle, comme si une silhouette tapie dans l&#039;ombre l&#039;observait.&lt;/em&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;em&gt;Pendant une minute il ne se passa rien, &amp;agrave; l&#039;exception des craintifs balayements du regard qui animaient le visage tendu de Manou&amp;euml;l. Soudain se mat&amp;eacute;rialisa devant lui une immense silhouette, et il tomba &amp;agrave; la renverse. Compte tenu des caract&amp;eacute;ristiques physiques de l&#039;endroit, le corps de Manou&amp;euml;l se tenait &amp;agrave; l&#039;horizontale, allong&amp;eacute; &amp;agrave; un nombre ind&amp;eacute;fini de centim&amp;egrave;tres au-dessus du n&amp;eacute;ant, lorsque la silhouette parla :&lt;/em&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;&quot;Oui ?&quot;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;em&gt;La voix &amp;eacute;tait une voix de stentor, caverneuse et p&amp;eacute;n&amp;eacute;trante. C&#039;&amp;eacute;tait la voix d&#039;un colosse, mais d&#039;un colosse qui se taille les ongles et qui lit de la po&amp;eacute;sie grecque. C&#039;&amp;eacute;tait une voix &amp;agrave; la fois effrayante et envoutante. Manou&amp;euml;l bascula en avant, et leva la t&amp;ecirc;te. Devant lui se tenait une cr&amp;eacute;ature &amp;eacute;l&amp;eacute;phantesque affubl&amp;eacute;e de dizaines de tentacules, &amp;agrave; moins que ce n&#039;&amp;eacute;tait une cr&amp;eacute;ature c&amp;eacute;phalopode munie d&#039;une trompe. L&#039;un dans l&#039;autre, le r&amp;eacute;sultat faisait penser &amp;agrave; une exp&amp;eacute;rimentation de mauvais go&amp;ucirc;t.&lt;/em&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;&lt;em&gt;&quot;Euh... bah, hum, bonjour.&lt;/em&gt;&lt;/strong&gt;&lt;br&gt;&lt;strong&gt;&lt;em&gt;- Bonjour.&lt;/em&gt;&lt;/strong&gt;&lt;br&gt;&lt;strong&gt;&lt;em&gt;- Euh.. hum... C&#039;estquoivotrenomqu&#039;estcequejefaisiciestcequesuismort ?&lt;/em&gt;&lt;/strong&gt;&lt;br&gt;&lt;strong&gt;&lt;em&gt;- Oui.&lt;/em&gt;&lt;/strong&gt;&lt;br&gt;&lt;strong&gt;&lt;em&gt;- Comment &amp;ccedil;a, oui ?&lt;/em&gt;&lt;/strong&gt;&lt;br&gt;&lt;strong&gt;&lt;em&gt;- Vous avez juste.&lt;/em&gt;&lt;/strong&gt;&lt;br&gt;&lt;strong&gt;&lt;em&gt;- Mais juste sur quoi, au juste ?&lt;/em&gt;&lt;/strong&gt;&lt;br&gt;&lt;strong&gt;&lt;em&gt;- Vous avez juste sur mon nom, mon juste.&lt;/em&gt;&lt;/strong&gt;&lt;br&gt;&lt;strong&gt;&lt;em&gt;- Uh ?&lt;/em&gt;&lt;/strong&gt;&lt;br&gt;&lt;strong&gt;&lt;em&gt;- Je m&amp;rsquo;appelle S&#039;kouavo&#039;non&#039;esfouiciesj&#039;uimor, mais tu peux m&amp;rsquo;appeler Gustave.&lt;/em&gt;&lt;/strong&gt;&lt;br&gt;&lt;strong&gt;&lt;em&gt;- Ah. Bon. Tr&amp;egrave;s bien. Et pour... euh... les autres questions ?&lt;/em&gt;&lt;/strong&gt;&lt;br&gt;&lt;strong&gt;&lt;em&gt;- De la margarine de cheval et, euh, Meurthe-et-Moselle.&lt;/em&gt;&lt;/strong&gt;&lt;br&gt;&lt;strong&gt;&lt;em&gt;- Uh ?&lt;/em&gt;&lt;/strong&gt;&lt;br&gt;&lt;em&gt;&lt;strong&gt;- Ah non, d&amp;eacute;sol&amp;eacute;,&lt;/strong&gt; &lt;strong&gt;fit Gustave en se tapotant le front d&#039;un bras de tentacules.&lt;/strong&gt; &lt;strong&gt;C&#039;&amp;eacute;tait pour un autre patient.&quot;&lt;/strong&gt;&lt;/em&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;em&gt;Gustave s&amp;rsquo;absorba dans une r&amp;eacute;flexion profonde, puis demanda :&lt;/em&gt;&lt;br&gt;&lt;strong&gt;&quot;Quel est votre nom, mon brave ?&lt;/strong&gt;&lt;br&gt;&lt;strong&gt;- Manou&amp;euml;l.&lt;/strong&gt;&lt;br&gt;&lt;strong&gt;- Manou&amp;euml;l, fit Gustave en agitant ses tentacules, qui d&amp;eacute;crivirent des petits moulinets, Manou&amp;euml;l quoi ?&lt;/strong&gt;&lt;br&gt;&lt;strong&gt;- Manou&amp;euml;l Planchard.&lt;/strong&gt;&lt;br&gt;&lt;strong&gt;- Ah, c&#039;est toi. J&#039;ai un autre patient au bout de la ligne qui arr&amp;ecirc;te pas de me demander si t&#039;es vivant.&quot;&lt;/strong&gt;&lt;/p&gt;', '2023-02-13'),
(31, 'Chapitre Second : Un voyage sans fin', '&lt;p style=&quot;text-align: center;&quot;&gt;&lt;span style=&quot;text-decoration: underline; font-size: 18pt;&quot;&gt;&lt;strong&gt;&lt;em&gt;Chapitre Second : Un voyage sans fin&lt;/em&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;&lt;em&gt;Il se doutait bien que l&#039;Alaska n&#039;&amp;eacute;tait pas la porte d&#039;&amp;agrave; c&amp;ocirc;t&amp;eacute;, mais le pressentiment qui trottait dans son esprit lui rappelait avec insistance que le trajet &amp;eacute;tait anormalement long. Ce pressentiment ressemblait &amp;agrave; un jeune retrait&amp;eacute; bedonnant, affubl&amp;eacute; d&#039;un bob vert kaki et chauss&amp;eacute; de sandales Geox. Il brandissait une pancarte sur lequel il &amp;eacute;tait &amp;eacute;crit : &quot;Je m&#039;doute bien qu&#039;l&#039;Alaska c&#039;est pas la porte d&#039;&amp;agrave; c&amp;ocirc;t&amp;eacute;, mais bon.&quot; Dans l&#039;esprit de Manou&amp;euml;l, le vers du doute commen&amp;ccedil;a &amp;agrave; grignoter la pomme de la paresse.&lt;/em&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;&lt;em&gt;C&#039;est donc l&#039;esprit cribl&amp;eacute; d&#039;incertitudes qu&#039;il ouvrit lentement ses paupi&amp;egrave;res, pour les refermer aussit&amp;ocirc;t. Son c&amp;oelig;ur s&#039;&amp;eacute;veilla en sursaut, puis se mit &amp;agrave; b&amp;eacute;gayer. Les paupi&amp;egrave;res de Manou&amp;euml;l se lev&amp;egrave;rent lentement, d&amp;eacute;voilant des prunelles saisies d&#039;effroi. La main tremblante, il retira les bouchons de ses oreilles, et le silence se fit pi&amp;eacute;tiner par un brouhaha assourdissant. Une sc&amp;egrave;ne de chaos se refl&amp;eacute;tait dans ses pupilles. Des h&amp;ocirc;tesses arpentaient les couloirs, le front suant et le regard affol&amp;eacute;, tentant de calmer les passagers en proie &amp;agrave; ce qui ressemblait &amp;agrave; une crise d&#039;hyst&amp;eacute;rie. Deux rang&amp;eacute;es devant lui, une m&amp;egrave;re &amp;eacute;plor&amp;eacute;e enla&amp;ccedil;ait sa fille, l&#039;abreuvant de belles paroles et de mots d&#039;espoir. Un prompt coup d&amp;rsquo;&amp;oelig;il sur la droite lui indiqua que Ka&amp;euml;zar &amp;eacute;tait &amp;eacute;veill&amp;eacute;. Et c&#039;est &amp;agrave; cet instant que Manou&amp;euml;l remarqua le masque &amp;agrave; oxyg&amp;egrave;ne qui se balan&amp;ccedil;ait devant ses yeux. Il jeta un &amp;oelig;il sur le hublot, et comprit. Une nu&amp;eacute;e gris&amp;acirc;tre obstruait le d&amp;eacute;cor et enveloppait peu &amp;agrave; peu l&#039;habitacle de sa silhouette insidieuse.&lt;/em&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;&lt;em&gt;L&#039;avion fut pris de convulsion, et les cris redoubl&amp;egrave;rent d&#039;intensit&amp;eacute;. Les passagers entendirent alors une &amp;eacute;norme explosion. L&#039;avion parut descendre d&#039;un &amp;eacute;tage, chavira, puis tomba en piqu&amp;eacute;.&lt;/em&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;&lt;em&gt;Manou&amp;euml;l et Ka&amp;euml;zar se d&amp;eacute;visag&amp;egrave;rent, le souffle coup&amp;eacute; par la violence qui se d&amp;eacute;cha&amp;icirc;nait devant leurs yeux. Ils ne purent &amp;eacute;changer un mot, mais dans leurs regards se lisait les affres d&#039;une peur insoutenable, et dans l&#039;arri&amp;egrave;re fond, une petite flamme, qui soufflait : &quot;Merci. Merci d&#039;avoir &amp;eacute;gay&amp;eacute; ma vie.&quot;&lt;/em&gt;&lt;/p&gt;', '2023-02-13'),
(33, 'Quatrième Chapitre : En route pour L\'Alaska', '&lt;p style=&quot;text-align: center;&quot;&gt;&lt;span style=&quot;text-decoration: underline; font-size: 18pt;&quot;&gt;&lt;strong&gt;&lt;em&gt;Quatri&amp;egrave;me Chapitre : En route pour L&#039;Alaska&lt;/em&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;&lt;em&gt;Ils se regardaient tous deux, la mine d&amp;eacute;confite et l&#039;air abattu de ceux qui s&#039;&amp;eacute;lancent avec enthousiasme sur la route des vacances et qui tombent sur un bouchon de cinquante kilom&amp;egrave;tres. &quot;Alaska&quot;, r&amp;eacute;p&amp;eacute;ta Ka&amp;euml;zar en &amp;eacute;cho, le regard fix&amp;eacute; sur le doigt de son comp&amp;egrave;re, nich&amp;eacute; sur le sommet d&#039;un globe terrestre. &quot;&amp;Agrave; en juger ta tronche, c&#039;est pas bon signe.&quot; souffla une voix corpulente et adipeuse. Elle appartenait &amp;agrave; Manou&amp;euml;l, qui &amp;agrave; cet instant aurait tout donn&amp;eacute; pour renier la paternit&amp;eacute; de ce doigt qui allait les envoyer pour les deux semaines &amp;agrave; venir sur un endroit que jadis plusieurs individus sous influence psychotrope avaient nomm&amp;eacute; la Terre du Soleil de Minuit.&lt;/em&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;&lt;strong&gt;&quot;On peut r&#039;tenter une deuxi&amp;egrave;me fois, s&#039;tu veux.&lt;/strong&gt;&lt;br&gt;&lt;strong&gt;- Non non, c&#039;est bon. Le mal est fait.&lt;/strong&gt;&lt;br&gt;&lt;strong&gt;- Mais on peut r&#039;tenter hein, moi &amp;ccedil;a m&#039;g&amp;ecirc;ne pas.&lt;/strong&gt;&lt;br&gt;&lt;strong&gt;- Non mais c&#039;est pas &amp;ccedil;a, c&#039;est que... On a dit qu&#039;on accepterait le r&amp;eacute;sultat, quel que soit le r&amp;eacute;sultat, alors on l&#039;accepte. Point barre.&lt;/strong&gt;&lt;br&gt;&lt;strong&gt;- Mais moi, tu sais, y&#039;&amp;agrave; pas d&#039;soucis...&lt;/strong&gt;&lt;br&gt;&lt;strong&gt;- Rah, la barbe ! s&#039;emporta Ka&amp;euml;zar. Tu pouvais pas faire attention o&amp;ugrave; tu posais ton doigt ? C&#039;est pas des doigts que t&#039;as, c&#039;est des saucisses de Francfort ! Avec &amp;ccedil;a tu peux couler un continent !&lt;/strong&gt;&lt;br&gt;&lt;strong&gt;- Ah bah tu vois qu&#039;tu veux r&#039;commencer !&lt;/strong&gt;&lt;br&gt;&lt;strong&gt;- Oui, et non. Non. On a dit qu&#039;on se tiendrait au r&amp;eacute;sultat. Sinon on se sera jamais d&#039;accord, et dans dix ans on sera toujours l&amp;agrave; &amp;agrave; fixer le globe en attendant que l&#039;un de nous deux choisisse Ibiza.&lt;/strong&gt;&lt;br&gt;&lt;strong&gt;- Ibiza ? r&amp;eacute;p&amp;eacute;ta Manou&amp;euml;l d&#039;une grimace &amp;eacute;loquente.&lt;/strong&gt;&lt;br&gt;&lt;strong&gt;- Quoi, Ibiza ?&lt;/strong&gt;&lt;br&gt;&lt;strong&gt;- Bah &amp;ccedil;a m&#039;fait pas r&amp;ecirc;ver des masses Ibiza...&lt;/strong&gt;&lt;br&gt;&lt;strong&gt;- Comment &amp;ccedil;a, &amp;ccedil;a te... Bon, bref, on a choisi l&#039;Alaska et on s&#039;y tient !&quot;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;&lt;em&gt;Manou&amp;euml;l tapota son index sur la l&amp;egrave;vre inf&amp;eacute;rieure, l&#039;attention absorb&amp;eacute;e par une soudaine r&amp;eacute;alisation.&lt;/em&gt;&lt;br&gt;&lt;strong&gt;&quot; Il fait froid en Alaska ?&lt;/strong&gt;&lt;br&gt;&lt;strong&gt;- Comment &amp;ccedil;a, il fait... L&#039;Alaska,&amp;nbsp;&lt;em&gt;c&#039;est&lt;/em&gt;&amp;nbsp;le froid !&lt;/strong&gt;&lt;br&gt;&lt;strong&gt;- Ah, bah merde alors. C&#039;est qu&#039;j&#039;avais pari&amp;eacute; sur une destination un peu plus exotique.&quot;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;&lt;em&gt;Ka&amp;euml;zar d&amp;eacute;visagea son comp&amp;egrave;re avec l&#039;&amp;eacute;tonnement admiratif d&#039;un explorateur tentant de d&amp;eacute;chiffrer le langage des autochtones.&lt;/em&gt;&lt;br&gt;&lt;strong&gt;&quot;Comment &amp;ccedil;a, t&#039;as pari&amp;eacute; sur une destination exotique ? Pourquoi t&#039;as mis ton gros doigt sur le sommet de la sph&amp;egrave;re alors ?&lt;/strong&gt;&lt;br&gt;&lt;strong&gt;- Bah j&#039;sais pas moi, j&#039;ai fait tourner l&#039;machin l&amp;agrave;, et pis j&#039;ai pri&amp;eacute; pour une destination exotique.&lt;/strong&gt;&lt;br&gt;&lt;strong&gt;- Tu sais, j&#039;&amp;eacute;tais &amp;agrave; deux doigts de te parler de m&amp;eacute;ridiens, d&#039;h&amp;eacute;misph&amp;egrave;res, de l&#039;&amp;eacute;quateur, de latitude et de tout le tsouin-tsouin, puis j&#039;ai r&amp;eacute;alis&amp;eacute; que c&#039;&amp;eacute;tait peine perdue.&lt;/strong&gt;&lt;br&gt;&lt;strong&gt;- Ah !&quot;&lt;/strong&gt; &lt;em&gt;s&#039;exclama Manou&amp;euml;l, avec la m&amp;ecirc;me ferveur que celui qui ne comprend pas la blague mais qui s&#039;efforce de ne pas ternir sa r&amp;eacute;putation.&lt;/em&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;&lt;strong&gt;&quot; En route pour l&#039;Alaska ? &lt;/strong&gt;&lt;em&gt;reprit Ka&amp;euml;sar apr&amp;egrave;s un long silence m&amp;eacute;ditatif.&lt;/em&gt;&lt;br&gt;&lt;strong&gt;- Quoi ?&lt;/strong&gt;&lt;br&gt;&lt;strong&gt;- L&amp;agrave;, par exemple, t&#039;aurais d&amp;ucirc; r&amp;eacute;pondre : &quot;En route pour l&#039;Alaska.&quot;.&lt;/strong&gt;&lt;br&gt;&lt;strong&gt;- Mais t&#039;es s&amp;ucirc;r qu&#039;tu veux pas recommencer ?&lt;/strong&gt; &lt;em&gt;demanda Manou&amp;euml;l en consid&amp;eacute;rant d&#039;un regard craintif le sommet de la sph&amp;egrave;re. &lt;/em&gt;&lt;strong&gt;Moi &amp;ccedil;a m&#039;d&amp;eacute;range pas du tout d&#039;recommencer&lt;/strong&gt;.&quot;&lt;/p&gt;', '2023-02-13'),
(34, 'Troisième Chapitre: Les Roubaixsiens', '&lt;p style=&quot;text-align: center;&quot;&gt;&lt;span style=&quot;text-decoration: underline; font-size: 18pt;&quot;&gt;&lt;strong&gt;&lt;em&gt;Troisi&amp;egrave;me Chapitre: Les Roubaixsiens&lt;/em&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;&lt;em&gt;De l&amp;agrave; o&amp;ugrave; il se tenait, la gravit&amp;eacute; avait rel&amp;acirc;ch&amp;eacute; son &amp;eacute;treinte et le sol n&#039;&amp;eacute;tait plus qu&#039;un lointain souvenir. Il voguait, vers une destination inconnue, le torse bomb&amp;eacute; d&#039;assurance, l&#039;attention &amp;agrave; peine troubl&amp;eacute;e par l&#039;assourdissant vrombissement qui chatouillait ses oreilles et qui lui donnait l&#039;impression de voler sur le dos d&#039;un aigle majestueux carburant au diesel.&lt;/em&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;&lt;strong&gt;&quot;Oulah, on est d&amp;eacute;j&amp;agrave; arriv&amp;eacute;s ? fit Manou&amp;euml;l en sursautant, comme si une aiguille venait de lui b&amp;eacute;coter le dos.&lt;/strong&gt;&lt;br&gt;&lt;strong&gt;- Hmm ?&lt;/strong&gt;&lt;br&gt;&lt;strong&gt;- Brrr, c&#039;est qu&#039;je sens d&amp;eacute;j&amp;agrave; le froid m&#039;envahir les doigts d&#039;pieds. Pas toi ?&lt;/strong&gt;&lt;br&gt;&lt;strong&gt;- Euh...&lt;/strong&gt;&lt;br&gt;&lt;strong&gt;- Alors c&#039;est &amp;ccedil;a l&#039;Alaska ? s&#039;&amp;eacute;cria Manou&amp;euml;l en jetant un regard fougueux par-dessus l&#039;&amp;eacute;paule de Ka&amp;euml;zar, en direction du hublot qui la prolongeait.&lt;/strong&gt;&lt;br&gt;&lt;strong&gt;- Bah...&lt;/strong&gt;&lt;br&gt;&lt;strong&gt;- Quoi ?&lt;/strong&gt;&lt;br&gt;&lt;strong&gt;- Bah, c&#039;est... c&#039;est Roubaix.&lt;/strong&gt;&lt;br&gt;-t Ah. Roubaix. C&#039;est moins loin. Roubaix, Roubaix, Roubaix.&quot; &lt;em&gt;marmonna Manou&amp;euml;l, avant de soudainement piquer du nez. Les Roubaix d&amp;eacute;fil&amp;egrave;rent dans son esprit, la silhouette c&amp;ocirc;tonneuse et l&#039;intonation b&amp;ecirc;lante, puis bient&amp;ocirc;t les ombres n&amp;eacute;buleuses fondirent dans l&#039;obscurit&amp;eacute; de la nuit.&lt;/em&gt;&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;&lt;em&gt;Un silence de mort r&amp;eacute;gnait dans la carlingue lorsqu&#039;il s&#039;&amp;eacute;veilla &amp;agrave; nouveau. La lumi&amp;egrave;re n&amp;eacute;onis&amp;eacute;e qui se d&amp;eacute;versait du plafond manqua d&#039;aveugler Manou&amp;euml;l, qui cacha d&#039;un r&amp;eacute;flexe salvateur son visage derri&amp;egrave;re sa main, &amp;agrave; la mani&amp;egrave;re d&#039;un vampire surpris par la lumi&amp;egrave;re corrosive du jour.&lt;/em&gt;&lt;br&gt;&lt;em&gt;Il jeta un regard sur sa droite. Ka&amp;euml;zar s&#039;&amp;eacute;tait assoupi sur le magazine qu&#039;il avait pioch&amp;eacute; nonchalamment dans le filet de rangement, la joue pos&amp;eacute;e sur un questionnaire qui d&amp;eacute;voilait en toute fin d&#039;exercice la marque de produit vaisselle qui se rapprochait le plus de sa personnalit&amp;eacute;.&lt;/em&gt;&lt;br&gt;&lt;em&gt;Manou&amp;euml;l consid&amp;eacute;ra le hublot, et fut saisi par le spectacle magnifique qui s&#039;y refl&amp;eacute;tait. Un blanc pur et majestueux nappait le d&amp;eacute;cor, tel un &amp;eacute;ternel oc&amp;eacute;an de glace. C&#039;est beau, songea Manou&amp;euml;l, avant de souffler &amp;agrave; lui-m&amp;ecirc;me : &quot;C&#039;est blanc comme un p&#039;tit suisse.&quot; Puis, comme irr&amp;eacute;sistiblement happ&amp;eacute; par tant de beaut&amp;eacute;, il tendit sa main en direction du hublot, avant que celle-ci n&#039;effleure une saillie dans le contre-bas de la fen&amp;ecirc;tre. Manou&amp;euml;l l&#039;empoigna, puis la leva f&amp;eacute;brilement, d&amp;eacute;voilant peu &amp;agrave; peu le d&amp;eacute;cor t&amp;eacute;n&amp;eacute;breux qui se cachait derri&amp;egrave;re le hublot. Accabl&amp;eacute; de honte et de d&amp;eacute;sillusion, Manou&amp;euml;l se laissa choir dans son si&amp;egrave;ge en se jurant de ne plus solliciter aucun de ses muscles avant que l&#039;atterrissage ne lui soit officiellement confirm&amp;eacute;.&lt;/em&gt;&lt;/p&gt;', '2023-02-22');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `email`, `password`) VALUES
(1, 'admintestmail@gmail.com', '$2y$10$KuB6ZZpoo4ehYkkllqsYreslQfAayaok.90jASj0ImWHeqqBUnr.6');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `commentaires`
--
ALTER TABLE `commentaires`
  ADD CONSTRAINT `fk_commentaires_posts1` FOREIGN KEY (`posts_id`) REFERENCES `posts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
