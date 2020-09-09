-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 09, 2020 at 02:52 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tvseries`
--

-- --------------------------------------------------------

--
-- Table structure for table `awards`
--

CREATE TABLE `awards` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `gg` int(11) NOT NULL,
  `emmy` int(11) NOT NULL,
  `info` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `awards`
--

INSERT INTO `awards` (`id`, `name`, `gg`, `emmy`, `info`) VALUES
(1, 'Breaking Bad', 2, 16, 'Won 2 Golden Globes. Another 151 wins & 235 nominations.'),
(2, 'Game of Thrones', 1, 38, 'Won 1 Golden Globe. Another 374 wins & 607 nominations.'),
(3, 'Brooklyn Nine-Nine', 2, 2, 'Won 2 Golden Globes. Another 12 wins & 101 nominations.'),
(4, 'Friends', 1, 6, 'Won 1 Golden Globe. Another 76 wins & 214 nominations.'),
(5, 'How I Met Your Mother', 0, 18, 'Nominated for 2 Golden Globes. Another 25 wins & 91 nominations.'),
(6, 'The Office', 1, 5, 'Won 1 Golden Globe. Another 47 wins & 186 nominations.'),
(7, 'Greys\'s Anatomy', 2, 4, 'Won 2 Golden Globes. Another 74 wins & 223 nominations.');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(1, 'Sitcom', 'sitcom'),
(2, 'Crime', 'crime'),
(3, 'Disney', 'disney'),
(4, 'Cooking', 'cooking'),
(5, 'Legal Drama', 'legal-drama'),
(6, 'Sci-fi', 'sci-fi'),
(7, 'Historical Fiction', 'historical-fiction'),
(8, 'Fantasy', 'fantasy'),
(9, 'Horror', 'horror'),
(10, 'Medical Drama', 'medical-drama'),
(11, 'Thriller', 'thriller'),
(12, 'Mystery', 'mystery');

-- --------------------------------------------------------

--
-- Table structure for table `ott`
--

CREATE TABLE `ott` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` int(11) NOT NULL,
  `info` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `ott`
--

INSERT INTO `ott` (`id`, `name`, `price`, `info`) VALUES
(1, 'Amazon Prime Video', 999, 'Amazon Prime Video is a very popular video streaming service or OTT service in India. Amazon Prime Video was launched in 2016 in India. Besides English, Prime Video is available in six Indian languages as of December 2018. Amazon India launched Amazon Prime Music in February 2018. You can join Prime to watch the latest movies as well as award-winning Amazon Originals at Rs 129/month or Rs 999/year. Prime subscription presently also includes free Amazon music alongside unlimited free, quick delivery.'),
(2, 'Netflix', 9600, 'Netflix is one of the popular streaming services in India. The OTT platform offers three subscription plans including Basic, Standard HD and Premium Ultra HD. The Basic plan comes with a price tag of Rs 500, while the Standard HD pack is priced at Rs 650 and the Premium Ultra HD plan is available for Rs 800 per month.\r\n\r\n\r\nNetflix faces tough competition with other OTT platforms in India such as Amazon Prime, Hotstar, Voot and Eros Now, each of which charge lower subscription rates than Netflix.'),
(3, 'Disney+ Hotstar', 1499, 'Disney+ Hotstar is an Indian over-the-top streaming service owned by Novi Digital Entertainment, a subsidiary of Disney\'s Star India. It features two paid subscription plans— \"VIP\", which focuses on domestic programmes and sports content (including Indian Premier League cricket), and \"Premium\" featuring premium international films and television series (including HBO, Showtime and other American original series).\r\n\r\nAs of July 2020, VIP Plan costs Rs 399 for a year and Premium Plan costs Rs 1,499 per year or Rs 299 for a monthly plan. As of March 2020, Disney+ Hotstar has at least 300 million active users'),
(4, 'Voot', 499, 'Voot is an Indian subscription video on demand (SVOD) service. Launched in March 2016, it forms the online arm of Viacom 18. It is Viacom 18\'s advertising-led video-on-demand platform that is available as an app for iOS, KaiOS (JioPhone) and Android users, and a website for desktop consumption. Voot Select  will cost Rs. 99 a month after a three-day free trial, or Rs. 499 for the full year after a 14-day free trial.\r\n\r\nVoot is available only in India, and hosts over 40,000 hours of video content that includes shows from channels like MTV, Nickelodeon and Colors. Content is also available in multiple languages like Kannada, Marathi, Bengali, Gujarati, Telugu and Tamil. Voot has content from Colors TV, MTV India, Nickelodeon India and other Viacom 18 owned television channels. It also hosts many Bollywood films for streaming. It has produced several \'Voot Original\' shows for streaming as well.\r\n\r\nIn February 2020, Voot introduced paid subscription service called Voot Select. Voot Original series are made available only to paid subscribers. Some TV shows are being streamed a day before TV for its paid subscribers.'),
(5, 'ZEE5', 365, 'ZEE5 is an Indian video on demand service run by Essel Group via its subsidiary Zee Entertainment Enterprises.[2] It was launched in India on 14 February 2018 with content in 12 languages. ZEE5 recently announced the launch of ‘ZEE5 Club’ at Rs 365 per year. ZEE5 Club will enable its consumers to have exclusive access to most popular shows before telecast on TV, apart from select ZEE5 and Alt Balaji shows, - 1000+ blockbuster movies, ZEE Zindagi shows and over 90+ Live TV channels.\r\n\r\nWith ZEE5 Club, subscribers will be able to enjoy entertainment content without any intrusive ads and across devices. Some of Zee’s popular TV shows like Kumum Bhagya and Kundali Bhagya in Hindi, Sembaruthi in Tamil, Jothe Jotheyali in Kannada and Mazya Navryachi Bayko in Marathi and many more would be now available on ZEE5 Club before telecast on Television.'),
(6, 'Sony LIV', 999, 'Sony Liv (marketed as SONY LIV and formerly as SonyLIV) is an Indian general entertainment, video on-demand service that is owned by Sony Pictures Networks India Pvt. Ltd., based in Mumbai, Maharashtra, India. Sony Liv\'s Library consists of 18 years of content from the Sony Entertainment Network channels in India: Sony TV, Sony SAB, Sony Ten, Sony Max, Sony MAX 2, Sony PIX and Sony Six.\r\n\r\n \r\n\r\nSony Liv is the first Indian Over-the-top media service platform to produce music content for a Hollywood feature film - producing music for the Hindi version of the blockbuster titled Passengers, starring Chris Pratt and Jennifer Lawrence.\r\n\r\n \r\n\r\nSony Liv Premium subscription costs you Rs. 299 per month, Rs. 699 for six months, and Rs. 999 per year.');

-- --------------------------------------------------------

--
-- Table structure for table `series`
--

CREATE TABLE `series` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `ott_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `rating` double NOT NULL,
  `photo` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `series`
--

INSERT INTO `series` (`id`, `category_id`, `ott_id`, `name`, `description`, `slug`, `rating`, `photo`) VALUES
(1, 1, 2, 'Friends', '<p><em><strong>Friends</strong></em>&nbsp;is an American situation comedy about six 20-30s-year old friends living in the New York City borough of Manhattan. It was created by&nbsp;<a href=\"https://friends.fandom.com/wiki/David_Crane\">David Crane</a>&nbsp;and&nbsp;<a href=\"https://friends.fandom.com/wiki/Marta_Kauffman\">Marta Kauffman</a>, which premiered on&nbsp;<a href=\"https://friends.fandom.com/wiki/NBC\">NBC</a>&nbsp;on September 22, 1994.</p>\r\n\r\n<p><em>Friends</em>&nbsp;received positive reviews throughout its run, and became one of the most popular sitcoms of its time. The series won many awards and was nominated for 63 Primetime Emmy Awards. The series was also very successful in the ratings, consistently ranking in the top ten in the final primetime ratings.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Starring</h3>\r\n\r\n<p><a href=\"https://friends.fandom.com/wiki/Jennifer_Aniston\">Jennifer Aniston</a></p>\r\n\r\n<p><a href=\"https://friends.fandom.com/wiki/Courteney_Cox\">Courteney Cox</a><br />\r\n<a href=\"https://friends.fandom.com/wiki/Lisa_Kudrow\">Lisa Kudrow</a><br />\r\n<a href=\"https://friends.fandom.com/wiki/Matt_LeBlanc\">Matt LeBlanc</a><br />\r\n<a href=\"https://friends.fandom.com/wiki/Matthew_Perry\">Matthew Perry</a><br />\r\n<a href=\"https://friends.fandom.com/wiki/David_Schwimmer\">David Schwimmer</a></p>\r\n', 'friends', 8.9, 'friends_1599483677.jpg'),
(2, 1, 3, 'How I Met Your Mother', '<p><em><strong>How I Met Your Mother</strong></em>&nbsp;is an American Sitcom that premiered on CBS on September 19, 2005. The show was created by&nbsp;<a href=\"https://how-i-met-your-mother.fandom.com/wiki/Craig_Thomas\">Craig Thomas</a>&nbsp;and&nbsp;<a href=\"https://how-i-met-your-mother.fandom.com/wiki/Carter_Bays\">Carter Bays</a>. The season nine finale aired on March 31st, 2014 on CBS.</p>\r\n\r\n<p>The series revolves around&nbsp;Ted Mosby&nbsp;(Josh Radnor) who in the year of 2030 tells the story to his&nbsp;son and daughter&nbsp;how he met their mother (hence the title). While living in New York City and working as an architect, the narrative deals with his best friends, including the long-lasting couple&nbsp;Marshall Eriksen&nbsp;(Jason Segel) and&nbsp;Lily Aldrin&nbsp;(Alyson Hannigan); the eccentric, womanizer-playboy&nbsp;Barney Stinson&nbsp;(Neil Patrick Harris); and news anchor&nbsp;Robin Scherbatsky&nbsp;(Cobie Smulders). The series explores many storylines, including a love triangle between Robin, Ted, and Barney; Marshall and Lily&#39;s relationship; as well as the careers of the characters and so much more.</p>\r\n', 'how-i-met-your-mother', 8.3, 'how-i-met-your-mother_1599483906.jpg'),
(3, 1, 2, 'Brooklyn Nine-Nine', '<p>The series revolves around Jake Peralta (Andy Samberg), an immature but talented NYPD detective in&nbsp;<strong>Brooklyn</strong>&#39;s fictional 99th Precinct, who often comes into conflict with his new commanding officer, the serious and stern Captain Raymond Holt (Andre Braugher).</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://en.wikipedia.org/wiki/Andy_Samberg\">Andy Samberg</a>&nbsp;as&nbsp;<a href=\"https://en.wikipedia.org/wiki/List_of_Brooklyn_Nine-Nine_characters#Jake_Peralta\">Jake Peralta</a></li>\r\n	<li><a href=\"https://en.wikipedia.org/wiki/Stephanie_Beatriz\">Stephanie Beatriz</a>&nbsp;as&nbsp;<a href=\"https://en.wikipedia.org/wiki/List_of_Brooklyn_Nine-Nine_characters#Rosa_Diaz\">Rosa Diaz</a></li>\r\n	<li><a href=\"https://en.wikipedia.org/wiki/Terry_Crews\">Terry Crews</a>&nbsp;as&nbsp;<a href=\"https://en.wikipedia.org/wiki/List_of_Brooklyn_Nine-Nine_characters#Terry_Jeffords\">Terry Jeffords</a></li>\r\n	<li><a href=\"https://en.wikipedia.org/wiki/Melissa_Fumero\">Melissa Fumero</a>&nbsp;as&nbsp;<a href=\"https://en.wikipedia.org/wiki/List_of_Brooklyn_Nine-Nine_characters#Amy_Santiago\">Amy Santiago</a></li>\r\n	<li><a href=\"https://en.wikipedia.org/wiki/Joe_Lo_Truglio\">Joe Lo Truglio</a>&nbsp;as&nbsp;<a href=\"https://en.wikipedia.org/wiki/List_of_Brooklyn_Nine-Nine_characters#Charles_Boyle\">Charles Boyle</a></li>\r\n	<li><a href=\"https://en.wikipedia.org/wiki/Chelsea_Peretti\">Chelsea Peretti</a>&nbsp;as&nbsp;<a href=\"https://en.wikipedia.org/wiki/List_of_Brooklyn_Nine-Nine_characters#Gina_Linetti\">Gina Linetti</a>&nbsp;(main season 1&ndash;6, special guest star in episode 15, season 6)</li>\r\n	<li><a href=\"https://en.wikipedia.org/wiki/Andre_Braugher\">Andre Braugher</a>&nbsp;as&nbsp;<a href=\"https://en.wikipedia.org/wiki/List_of_Brooklyn_Nine-Nine_characters#Raymond_Holt\">Raymond Holt</a></li>\r\n	<li><a href=\"https://en.wikipedia.org/wiki/Dirk_Blocker\">Dirk Blocker</a>&nbsp;as&nbsp;<a href=\"https://en.wikipedia.org/wiki/List_of_Brooklyn_Nine-Nine_characters#Michael_Hitchcock\">Michael Hitchcock</a>&nbsp;(main season 6&ndash;present, starring season 2&ndash;5, recurring season 1)</li>\r\n	<li><a href=\"https://en.wikipedia.org/wiki/Joel_McKinnon_Miller\">Joel McKinnon Miller</a>&nbsp;as&nbsp;<a href=\"https://en.wikipedia.org/wiki/List_of_Brooklyn_Nine-Nine_characters#Norm_Scully\">Norm Scully</a>&nbsp;(main season 6&ndash;present, starring season 2&ndash;5, recurring season 1)</li>\r\n</ul>\r\n', 'brooklyn-nine-nine', 8.4, 'brooklyn-nine-nine_1599483919.jpg'),
(4, 2, 2, 'Narcos', '<p><em><strong>Narcos</strong></em>&nbsp;is an American&nbsp;crime&nbsp;drama&nbsp;television series&nbsp;created and&nbsp;produced&nbsp;by&nbsp;<a href=\"https://en.wikipedia.org/wiki/Chris_Brancato\">Chris Brancato</a>, Carlo Bernard, and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Doug_Miro\">Doug Miro</a>.</p>\r\n\r\n<p>Set and filmed in&nbsp;Colombia, seasons 1 and 2 are based on the story of&nbsp;drug kingpin&nbsp;Pablo Escobar, who became a billionaire through the production and distribution of&nbsp;cocaine. The series also focuses on Escobar&#39;s interactions with drug lords,&nbsp;Drug Enforcement<a href=\"https://en.wikipedia.org/wiki/Drug_Enforcement_Administration\"> </a>Administration&nbsp;(DEA) agents, and various opposition entities.</p>\r\n\r\n<p>Starring:</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<ul>\r\n				<li>Wagner Moura</li>\r\n				<li>Boyd Holbrook</li>\r\n				<li>Pedro Pascal</li>\r\n				<li>Joanna Christie</li>\r\n				<li>Maurice Compte</li>\r\n				<li>Andr&eacute; Mattos</li>\r\n				<li>Roberto Urbina</li>\r\n				<li>Diego Cata&ntilde;o</li>\r\n				<li>Jorge A. Jimenez</li>\r\n				<li>Paulina Gait&aacute;n</li>\r\n				<li>Paulina Garc&iacute;a</li>\r\n				<li>Stephanie Sigman</li>\r\n				<li>Bruno Bichir</li>\r\n				<li>Ra&uacute;l M&eacute;ndez</li>\r\n				<li>Manolo Cardona</li>\r\n				<li>Cristina Uma&ntilde;a</li>\r\n				<li>Eric Lange</li>\r\n				<li>Florencia Lozano</li>\r\n				<li>Dami&aacute;n Alc&aacute;zar</li>\r\n				<li>Alberto Ammann</li>\r\n				<li>Francisco Denis</li>\r\n				<li>P&ecirc;p&ecirc; Rapazote</li>\r\n				<li>Matias Varela</li>\r\n				<li>Javier C&aacute;mara</li>\r\n				<li>Arturo Castro</li>\r\n				<li>Andrea Londo</li>\r\n				<li>Kerry Bish&eacute;</li>\r\n				<li>Michael Stahl-David</li>\r\n				<li>Matt Whelan</li>\r\n				<li>Jos&eacute; Mar&iacute;a Yazpik</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'narcos', 8.8, 'narcos_1599483955.jpg'),
(5, 2, 2, 'Mind Hunter', '<p>Catching a criminal often requires the authorities to get inside the villain&#39;s mind to figure out how he thinks. That&#39;s the job of FBI agents Holden Ford and Bill Tench. They attempt to understand and catch serial killers by studying their damaged psyches. Along the way, the agents pioneer the development of modern serial-killer profiling.</p>\r\n\r\n<p>The crime drama has a strong pedigree behind the camera, with Oscar-nominated director David Fincher and Oscar-winning actress Charlize Theron among the show&#39;s executive producers.</p>\r\n\r\n<p>Starring:</p>\r\n\r\n<p>Jonathan Groff,&nbsp;Holt McCallany,&nbsp;Anna Torv</p>\r\n', 'mind-hunter', 8.6, 'mind-hunter_1599484175.jpg'),
(6, 2, 0, 'FBI', '<p><em><strong>FBI</strong></em>&nbsp;is an American&nbsp;crime drama&nbsp;television series&nbsp;created by&nbsp;Dick Wolf&nbsp;and Craig Turk that airs on&nbsp;CBS, where it premiered on September 25, 2018.&nbsp;The series is produced by&nbsp;CBS Television Studios&nbsp;and&nbsp;Universal Television, with Wolf, Arthur W. Forney,&nbsp;Peter Jankowski, and Turk serving as executive producers.</p>\r\n\r\n<p>Starring:</p>\r\n\r\n<p>&nbsp;Missy Peregrym,&nbsp;Zeeko Zaki,&nbsp;Ebonee Noel&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'fbi', 6.7, 'fbi_1599484215.jpg'),
(7, 4, 3, 'Master Chef', '<p>MASTERCHEF, the new series that takes amateur chefs - many of whom simply cook as a hobby - and attempt to turn one of them into a culinary master. Contestants on MASTERCHEF will be put through the paces with various challenges as they compete head-to-head to create delicious dishes. The series will serve as a unique platform for people from all walks of life who want to follow their dream of working as a professional chef. These contestants will have the once-in-a-lifetime opportunity to show their passion and excitement for food as their skills and palate are tested with the hopes of becoming the winner of MASTERCHEF.</p>\r\n', 'master-chef', 7.3, 'master-chef_1599484250.jpg'),
(8, 4, 0, 'Hell’s Kitchen', '<p>World renowned chef Gordon Ramsay puts aspiring young chefs through rigorous cooking challenges and dinner services at his restaurant in Hollywood, &quot;<strong>Hell&#39;s Kitchen</strong>&quot;, to determine which one of them will win the head chef position at one of his restaurants or a restaurant located worldwide.</p>\r\n\r\n<p><em>Hell&#39;s Kitchen</em>&nbsp;is a reality television show that uses a progressive elimination format to narrow down a field of 12 to 20 aspiring chefs to a single winner over the course of one season. The U.S. version of&nbsp;<em>Hell&#39;s Kitchen</em>&nbsp;follows the same format of the UK version, although the show is aired on tape delay and not performed live, nor is there audience participation in the elimination of chefs, who are also not celebrities as they are in the UK version. The show is produced at Hell&#39;s Kitchen, a modified warehouse in Los Angeles that includes the restaurant, dual kitchen facilities and a dormitory where the chefs reside while on the show. They are also given knife sets that they get to keep, regardless of their progress</p>\r\n\r\n<p>Starring:</p>\r\n\r\n<p>Gordon Ramsay</p>\r\n', 'hell-s-kitchen', 7.1, 'hell-s-kitchen_1599484290.jpg'),
(9, 4, 2, 'Top chef', '<p><em><strong>Top Chef</strong></em>&nbsp;is an American&nbsp;<a href=\"https://en.wikipedia.org/wiki/Reality_competition\">reality competition</a>&nbsp;television series that premiered March 8, 2006, on&nbsp;<a href=\"https://en.wikipedia.org/wiki/Bravo_(American_TV_network)\">Bravo</a>. The show features chefs competing against each other in culinary challenges. They are judged by a panel of professional chefs and other notables from the food and wine industry with one or more contestants eliminated in each episode</p>\r\n\r\n<p><em>Top Chef</em>&nbsp;is a cooking show that uses a progressive elimination format. The beginning of each season starts with twelve to nineteen professional chefs selected through auditions. The chefs are brought to the season&#39;s host city or state, which typically inspires themes throughout the season. The chefs live in a provided apartment or house during the course of the season, with limited access to outside communication.</p>\r\n\r\n<p>Starring:</p>\r\n\r\n<p>Tom Colicchio.</p>\r\n', 'top-chef', 7.6, 'top-chef_1599484334.jpg'),
(10, 3, 3, 'The Mandalorian', '<p>After the stories of Jango and Boba Fett, another warrior emerges in the Star Wars universe.&nbsp;<strong>The Mandalorian</strong>&nbsp;is set after the fall of the Empire and before the emergence of the First Order. The series depicts Din Djarin, a lone bounty hunter in the outer reaches of the galaxy far from the authority of the New Republic.</p>\r\n\r\n<p>Starring:</p>\r\n\r\n<p>&nbsp;Pedro Pascal,&nbsp;Gina Carano,&nbsp;Carl Weathers,&nbsp;Werner Herzog</p>\r\n', 'mandalorian', 8.7, 'mandalorian_1599484382.jpg'),
(11, 3, 0, 'Wizards of Waverly Place', '<p>&quot;<strong>Wizards of Waverly Place</strong>&quot; focuses on the Russos. A typical family, which includes a mom, Theresa Russo; a dad, Jerry Russo; a son, Justin Russo; a daughter, Alex Russo; and another son, Max Russo. ... They inherit their magical abilities from their dad, Jerry Russo who is also their magic teacher and a former&nbsp;<strong>wizard</strong>.</p>\r\n\r\n<p>Starring:</p>\r\n\r\n<p>David Henrie,&nbsp;Selena Gomez,&nbsp;Jake T. Austin,&nbsp;Jennifer Stone</p>\r\n', 'wizards-of-waverly-place', 6.8, 'wizards-of-waverly-place_1599484458.jpg'),
(12, 3, 3, 'Phineas and Ferb', '<p>The show follows the adventures of stepbrothers&nbsp;<strong>Phineas</strong>&nbsp;Flynn (Vincent Martella) and&nbsp;<strong>Ferb</strong>&nbsp;Fletcher (Thomas Sangster), who live in the fictional city of Danville, in a (never specified) tri-state area, as they seek ways to occupy their time during their summer vacation.</p>\r\n\r\n<p>Starring:</p>\r\n\r\n<p>Vincent Martella</p>\r\n\r\n<p>Thomas Sangster</p>\r\n\r\n<p>Ashley Tisdale</p>\r\n\r\n<p>Dee Bradley Baker</p>\r\n\r\n<p>Dan Povenmire</p>\r\n', 'phineas-and-ferb', 7.9, 'phineas-and-ferb_1599484434.jpg'),
(13, 5, 2, 'Suits', '<p><strong>Suits</strong>&nbsp;is set at a fictional New York City law firm and follows talented college dropout Mike Ross (Patrick J. Adams), who starts working as a law associate for Harvey Specter (Gabriel Macht) despite never having attended law school. The show focuses on Harvey and Mike closing cases, while maintaining Mike&#39;s secret.</p>\r\n\r\n<p>Starring:</p>\r\n\r\n<ul>\r\n	<li>Gabriel Macht as Harvey Specter.</li>\r\n	<li>Patrick J. Adams as Mike Ross.</li>\r\n	<li>Rick Hoffman as Louis Litt.</li>\r\n	<li>Meghan Markle as Rachel Zane.</li>\r\n	<li>Sarah Rafferty as Donna Paulsen.</li>\r\n	<li>Gina Torres as Jessica Pearson</li>\r\n</ul>\r\n', 'suits', 8.5, 'suits_1599484559.jpg'),
(14, 5, 0, 'Law and Order', '<p><em><strong>Law &amp; Order</strong></em>&nbsp;is a&nbsp;media franchise&nbsp;composed of a number of related American television series created by&nbsp;Dick Wolf. They were originally broadcast on&nbsp;NBC, and all of them deal with some aspect of the criminal justice system. Together, the original series, its various spin-offs, the TV film, and crossover episodes from other shows constitute over 1,000 hours of programming</p>\r\n\r\n<p>Starring:</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<ul>\r\n				<li>Christopher Meloni</li>\r\n				<li>Mariska Hargitay</li>\r\n				<li>Richard Belzer</li>\r\n				<li>Dann Florek</li>\r\n				<li>Michelle Hurd</li>\r\n				<li>Stephanie March</li>\r\n				<li>Ice-T</li>\r\n				<li>BD Wong</li>\r\n				<li>Diane Neal</li>\r\n				<li>Tamara Tunie</li>\r\n				<li>Adam Beach</li>\r\n				<li>Michaela McManus</li>\r\n				<li>Danny Pino</li>\r\n				<li>Kelli Giddish</li>\r\n				<li>Ra&uacute;l Esparza</li>\r\n				<li>Peter Scanavino</li>\r\n				<li>Philip Winchester</li>\r\n				<li>Jamie Gray Hyder</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'law-and-order', 7.7, 'law-and-order_1599484573.jpg'),
(15, 5, 2, 'Daredevil', '<p>A blind lawyer by day, vigilante by night. Matt Murdock fights the crime of New York as&nbsp;<strong>Daredevil</strong>. As a child Matt Murdock was blinded by a chemical spill in a freak accident. Instead of limiting him it gave him superhuman senses that enabled him to see the world in a unique and powerful way.</p>\r\n\r\n<p>Starring:</p>\r\n\r\n<p>&nbsp;Charlie Cox,&nbsp;Deborah Ann Woll,&nbsp;Vincent D&#39;Onofrio</p>\r\n', 'daredevil', 8.6, 'daredevil_1599484743.jpg'),
(16, 6, 1, 'Expanse', '<p>A thriller set two hundred years in the future, The&nbsp;<strong>Expanse</strong>&nbsp;follows the case of a missing young woman who brings a hardened detective and a rogue ship&#39;s captain together in a race across the solar system to expose the greatest conspiracy in human history.</p>\r\n\r\n<p>Starring:</p>\r\n\r\n<p>&nbsp;Steven Strait,&nbsp;Dominique Tipper,&nbsp;Cas Anvar</p>\r\n', 'expanse', 8.5, 'expanse_1599484764.jpg'),
(17, 6, 2, 'Black Mirror', '<p><strong>Summaries</strong>. An anthology series exploring a twisted, high-tech multiverse where humanity&#39;s greatest innovations and darkest instincts collide. ...&nbsp;<strong>Black Mirror</strong>&nbsp;is a contemporary British anthology series with stories that tap into the collective unease about our modern world.</p>\r\n\r\n<p>The show looks inwards, at the darker aspects of humanity and society. This is done through the theme of technology, hence the second meaning. The black mirror is the screen that rules our lives. Taking contemporary phenomena (ranging from the wild popularity of talent shows on TV to the impact of social media and smartphones on our lives) as a starting point and speculate how such phenomena could/would evolve in the future. Each episode tells a different story with different protagonists and focuses on a different theme.</p>\r\n', 'black-mirror', 8.8, 'black-mirror_1599484780.jpg'),
(18, 6, 2, 'Stranger Things', '<p>A young boy, Will Byers, goes missing near a top-secret government laboratory. ... As friends, family and local police search for answers, they are drawn into an extraordinary mystery involving top-secret government experiments, terrifying supernatural forces and one very strange little girl.</p>\r\n\r\n<p>Starring:</p>\r\n\r\n<p>&nbsp;Millie Bobby Brown,&nbsp;Finn Wolfhard,&nbsp;Noah Schnapp</p>\r\n', 'stranger-things', 8.8, 'stranger-things_1599484816.jpg'),
(19, 7, 2, 'Peaky Blinders', '<p>Peaky Blinders is an English television crime drama set in 1920s Birmingham, England in the aftermath of World War I. The series, which was created by Steven Knight and produced by Caryn Mandabach Productions, Screen Yorkshire and Tiger Aspect Productions, follows the exploits of the Shelby crime family. Screen Yorkshire provided funding for the production through the Yorkshire Content Fund. It was the first production to receive funding from the Yorkshire Content Fund, which in turn made certain the majority of the show was filmed in Yorkshire as part of the deal.</p>\r\n\r\n<p>Starring:</p>\r\n\r\n<ul>\r\n	<li>Cillian Murphy&nbsp;as Thomas &quot;Tommy&quot; Shelby, the leader of the Peaky Blinders.</li>\r\n	<li>Sam Neill&nbsp;as Chief Inspector/Major Chester Campbell (series 1-2), an&nbsp;Ulster Protestant&nbsp;Irish policeman drafted from Belfast.</li>\r\n	<li>Helen McCrory&nbsp;as Elizabeth &quot;Polly&quot; Gray, n&eacute;e Shelby, the aunt of Tommy and his siblings, and treasurer of the Peaky Blinders.</li>\r\n	<li>Paul Anderson&nbsp;as Arthur Shelby, Jr., the oldest Shelby sibling.</li>\r\n	<li>Annabelle Wallis&nbsp;as Grace Burgess (series 1-3, 5), later Shelby, a former undercover agent and Irish Protestant who marries Tommy.</li>\r\n	<li>Iddo Goldberg&nbsp;as Freddie Thorne (series 1), a known&nbsp;communist&nbsp;who fought in the Great War; Ada&#39;s husband.</li>\r\n	<li>Sophie Rundle&nbsp;as Ada Thorne, n&eacute;e Shelby, the Shelby brothers&#39; only sister.</li>\r\n	<li>Joe Cole&nbsp;as John Shelby (series 1-4), the third-youngest Shelby brother.</li>\r\n	<li>Ned Dennehy&nbsp;as Charlie Strong, owner of a boatyard and an uncle figure to Tommy.</li>\r\n	<li>Charlie Creed-Miles&nbsp;as&nbsp;Billy Kimber&nbsp;(series 1), a local kingpin who runs the local races.</li>\r\n</ul>\r\n', 'peaky-blinders', 8.8, 'peaky-blinders_1599484830.jpg'),
(20, 7, 2, 'Vikings', '<p>The show portrays Ragnar as a farmer who rises to fame by successful raids into England, and eventually becomes a Scandinavian King, with the support of his family and fellow warriorsThe series broadly follows the exploits of the legendary&nbsp;<strong>Viking</strong>&nbsp;chieftain Ragnar Lothbrok and his crew, and later those of his sons.</p>\r\n\r\n<p>Starring:</p>\r\n\r\n<ul>\r\n	<li>Travis Fimmel&nbsp;as&nbsp;Ragnar Lothbrok&nbsp;(seasons 1&ndash;4)</li>\r\n	<li>Katheryn Winnick&nbsp;as&nbsp;Lagertha</li>\r\n	<li>Clive Standen&nbsp;as&nbsp;Rollo&nbsp;(seasons 1&ndash;4; special appearances season 5)</li>\r\n	<li>Jessalyn Gilsig&nbsp;as&nbsp;Siggy&nbsp;(seasons 1&ndash;3)</li>\r\n	<li>Gustaf Skarsg&aring;rd&nbsp;as&nbsp;Floki</li>\r\n	<li>Gabriel Byrne&nbsp;as&nbsp;Earl Haraldson&nbsp;(season 1)</li>\r\n	<li>George Blagden&nbsp;as&nbsp;Athelstan&nbsp;(seasons 1&ndash;3; recurring season 4)</li>\r\n	<li>Donal Logue&nbsp;as&nbsp;Horik of Denmark&nbsp;(seasons 1&ndash;2)</li>\r\n	<li>Alyssa Sutherland&nbsp;as&nbsp;Aslaug&nbsp;(seasons 1&ndash;4)</li>\r\n</ul>\r\n', 'vikings', 8.5, 'vikings_1599484845.jpg'),
(27, 7, 2, 'The Last Kingdom', '<p>Premise. In 866, England is divided into the Heptarchy (seven kingdoms). The Vikings conquer York, and other Anglo-Saxon lands are gradually attacked, plundered and ruled by Viking Danes. Finally, only the&nbsp;<strong>Kingdom</strong>&nbsp;of Wessex is left.</p>\r\n\r\n<p>The&nbsp;<strong>Last Kingdom</strong>&nbsp;TV series is&nbsp;based&nbsp;on The Saxon&nbsp;<strong>Stories</strong>&nbsp;historical novels by Bernard Cornwell, which so far includes 12 books. Although there is no firm historical basis for Uhtred&#39;s exploits, his character is inspired by the author&#39;s family link to the ruling lords of Bebbanburg, modern-day Bamburgh Castle.</p>\r\n\r\n<p>Starring:</p>\r\n\r\n<ul>\r\n	<li>Alexander Dreymon. as Uhtred of Bebbanburg.</li>\r\n	<li>Matthew MacFadyen. as Lord Uhtred.</li>\r\n	<li>Rutger Hauer. as Ravn.</li>\r\n	<li>David Dawson. as King Alfred the Great.</li>\r\n	<li>Jason Flemyng. as King Edmund.</li>\r\n	<li>Alec Newman. as King Aethelred.</li>\r\n	<li>Emily McKenna Cox. as Brida.</li>\r\n	<li>Ian Hart. as Beocca.</li>\r\n</ul>\r\n', 'last-kingdom', 8.4, 'last-kingdom_1599485042.png'),
(28, 8, 3, 'Game of Thrones', '<p><strong>Game of Thrones</strong>&nbsp;is an HBO series that tells the story of a medieval country&#39;s civil war. ... When the story begins, a decade-long summer is ending, and winter looms as characters battle to claim the &quot;Iron Throne,&quot; the seat of the king of the Seven Kingdoms, the regime that rules all but the northern tip of Westeros.</p>\r\n\r\n<p>Set on the fictional continents of&nbsp;Westeros and Essos,&nbsp;<em>Game of Thrones</em>&nbsp;has a large&nbsp;ensemble cast&nbsp;and follows several&nbsp;story arcs. One arc is about the&nbsp;Iron Throne&nbsp;of the&nbsp;Seven Kingdoms&nbsp;of Westeros and follows a web of alliances and conflicts among the noble dynasties, either vying to claim the throne or fighting for independence from it. Another focuses on the last descendant of the realm&#39;s deposed ruling dynasty, who has been exiled to Essos and is plotting a return to the throne. A third story arc follows the Night&#39;s Watch, a brotherhood defending the realm against the fierce peoples and legendary creatures of the North.</p>\r\n\r\n<p>Starring:</p>\r\n\r\n<ul>\r\n	<li>Sean Bean&nbsp;as&nbsp;Eddard &quot;Ned&quot; Stark</li>\r\n	<li>Mark Addy&nbsp;as&nbsp;Robert Baratheon</li>\r\n	<li>Nikolaj Coster-Waldau&nbsp;as&nbsp;Jaime Lannister</li>\r\n	<li>Michelle Fairley&nbsp;as&nbsp;Catelyn Stark</li>\r\n	<li>Lena Headey&nbsp;as&nbsp;Cersei Lannister</li>\r\n	<li>Emilia Clarke&nbsp;as&nbsp;Daenerys Targaryen</li>\r\n	<li>Iain Glen&nbsp;as&nbsp;Jorah Mormont</li>\r\n	<li>Harry Lloyd&nbsp;as&nbsp;Viserys Targaryen</li>\r\n	<li>Kit Harington&nbsp;as&nbsp;Jon Snow</li>\r\n	<li>Sophie Turner&nbsp;as&nbsp;Sansa Stark[</li>\r\n</ul>\r\n', 'game-of-thrones', 9.3, 'game-of-thrones_1599484801.jpg'),
(29, 8, 2, 'The Witcher', '<p><em><strong>The Witcher</strong></em>&nbsp;is a&nbsp;Polish-American&nbsp;fantasy&nbsp;drama&nbsp;web television&nbsp;series produced by&nbsp;Lauren Schmidt Hissrich. It is based on the&nbsp;book series of the same name&nbsp;by Polish writer&nbsp;Andrzej Sapkowski.</p>\r\n\r\n<p>Set on a fictional,&nbsp;medieval-inspired landmass known as &quot;the Continent&quot;,&nbsp;<em>The Witcher</em>&nbsp;explores the legend of&nbsp;Geralt of Rivia&nbsp;and princess Ciri, who are linked to each other by destiny.&nbsp;It stars&nbsp;Henry Cavill,&nbsp;Freya Allan&nbsp;and&nbsp;Anya Chalotra.</p>\r\n', 'witcher', 8.2, 'witcher_1599485059.jpg'),
(30, 8, 0, 'Supernatural', '<p>The story revolves around 2 brothers, Sam and Dean Winchester as they follow their father&#39;s footsteps, hunting down evil&nbsp;<strong>supernatural</strong>&nbsp;creatures such as monsters, demons and even fallen gods while trying to save innocent people along the way.</p>\r\n\r\n<p>Starring:</p>\r\n\r\n<p>The series originally focuses primarily on the brothers&nbsp;Dean Winchester&nbsp;and&nbsp;Sam Winchester, played by&nbsp;Jensen Ackles&nbsp;and&nbsp;Jared Padalecki, as they travel throughout the country hunting down evil supernatural creatures</p>\r\n', 'supernatural', 8.4, 'supernatural_1599485097.jpg'),
(31, 9, 2, 'The Walking Dead', '<p><strong>The Walking Dead</strong>&nbsp;tells the story of the months and years that follow after a zombie apocalypse. It follows a group of survivors, led by former police officer Rick Grimes, who travel in search of a safe and secure home.</p>\r\n\r\n<p><em>The Walking Dead</em>&nbsp;takes place after the onset of a worldwide&nbsp;<a href=\"https://en.wikipedia.org/wiki/Zombie_apocalypse\">zombie apocalypse</a>. The zombies, colloquially referred to as &quot;walkers&quot;, shamble towards living humans and other creatures to eat them; they are attracted to noise, such as gunshots, and to different scents, e.g. humans. Although it initially seems that only humans that are bitten or scratched by walkers can turn into other walkers, it is revealed early in the series that all living humans carry the pathogen responsible for the mutation. The mutation is activated after the death of the pathogen&#39;s host, and the only way to permanently kill a walker is to damage its brain or destroy the body, such as by cremating it.</p>\r\n\r\n<p>Starring:</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<ul>\r\n				<li>Andrew Lincoln</li>\r\n				<li>Jon Bernthal</li>\r\n				<li>Sarah Wayne Callies</li>\r\n				<li>Laurie Holden</li>\r\n				<li>Jeffrey DeMunn</li>\r\n				<li>Steven Yeun</li>\r\n				<li>Chandler Riggs</li>\r\n				<li>Norman Reedus</li>\r\n				<li>Lauren Cohan</li>\r\n				<li>Danai Gurira</li>\r\n				<li>Michael Rooker</li>\r\n				<li>David Morrissey</li>\r\n				<li>Melissa McBride</li>\r\n				<li>Scott Wilson</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'walking-dead', 8.2, 'walking-dead_1599485114.jpg'),
(32, 9, 0, 'The Exorcist', '<p><strong>The Exorcist</strong>&nbsp;is a propulsive psychological thriller following two very different priests tackling one family&#39;s case of horrifying demonic possession. Father Tomas Ortega is the new face of the Catholic Church: progressive, ambitious and compassionate. He runs a small, but loyal, parish in the suburbs of Chicago.</p>\r\n\r\n<p>Starring</p>\r\n\r\n<p>:Alfonso Herrera&nbsp;as Father Tomas Ortega.&nbsp;Ben Daniels&nbsp;as Father Marcus Keane.</p>\r\n\r\n<p>Hannah Kasulka as Casey Rance (season 1; guest season 2)</p>\r\n\r\n<p>Brianne Howey as Katherine &quot;Kat&quot; Rance (season 1)</p>\r\n\r\n<p>&nbsp;Kurt Egyiawan&nbsp;as Father Devon Bennett.</p>\r\n\r\n<p>Alan Ruck as Henry Rance (season 1)</p>\r\n\r\n<p>Geena Davis as Angela Rance / Regan MacNeil (season 1)</p>\r\n', 'exorcist', 8.1, 'exorcist_1599485128.jpg'),
(33, 9, 2, 'The Order', '<p><em><strong>The Order</strong></em>&nbsp;is a Canadian-American&nbsp;horror&nbsp;drama&nbsp;web television&nbsp;series created by&nbsp;Dennis Heaton&nbsp;and written by Heaton, Shelley Eriksen, Rachel Langer, Jennica Harper, Penny Gummerson, and Jason Filiatrault. The series premiered on&nbsp;Netflix&nbsp;on March 7, 2019.&nbsp;The series stars&nbsp;Jake Manley,&nbsp;Sarah Grey,&nbsp;Matt Frewer,&nbsp;Sam Trammell,&nbsp;Katharine Isabelle, and&nbsp;Max Martini. The first season received positive reviews upon its release.</p>\r\n\r\n<p>Starring:</p>\r\n\r\n<ul>\r\n	<li>Jake Manley&nbsp;as Jack Morton, a freshman college student at Belgrave University and a new recruit who joins the Hermetic Order of the Blue Rose and the Knights of Saint Christopher</li>\r\n	<li>Sarah Grey&nbsp;as Alyssa Drake, a college student and university tour guide and a medicum of the Hermetic Order of the Blue Rose</li>\r\n	<li>Matt Frewer&nbsp;as Pete &quot;Pops&quot; Morton (season 1), Jack&#39;s grandfather who is obsessed with taking down Edward Coventry</li>\r\n	<li>Max Martini&nbsp;as Edward Coventry (season 1), Jack&#39;s estranged father and the grand magus of the Hermetic Order of the Blue Rose</li>\r\n	<li>Louriza Tronco&nbsp;as Gabrielle Dupres (season 2, recurring season 1), an acolyte in the Hermetic Order of the Blue Rose</li>\r\n</ul>\r\n', 'order', 6.8, 'order_1599485143.jpg'),
(34, 10, 1, 'Grey\'s Anatomy', '<p><em><strong>Grey&#39;s Anatomy</strong></em>&nbsp;is an American&nbsp;medical drama&nbsp;television series that premiered on March 27, 2005, on the&nbsp;American Broadcasting Company&nbsp;(ABC) as a&nbsp;mid-season replacement. The fictional series focuses on the lives of surgical&nbsp;interns,&nbsp;residents, and&nbsp;attendings&nbsp;as they develop into seasoned doctors while balancing personal and professional relationships</p>\r\n\r\n<p>Starring:</p>\r\n\r\n<p>Ellen pompeo</p>\r\n\r\n<p>Chandra Wilson</p>\r\n\r\n<p>James Pickens Jr</p>\r\n\r\n<p>Justin Chambers</p>\r\n\r\n<p>Keven McKidd</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'grey-s-anatomy', 7.6, 'grey-s-anatomy_1599484476.jpg'),
(35, 10, 0, 'E.R', '<p>Michael Crichton has created a medical drama that chronicles life and death in a Chicago hospital emergency room. Each episode tells the tale of another day in the ER, from the exciting to the mundane, and the joyous to the heart-rending. Frenetic pacing, interwoven plot lines, and emotional rollercoastering is used to attempt to accurately depict the stressful environment found there. This show even portrays the plight of medical students in their quest to become physicians.</p>\r\n\r\n<p>Starring:</p>\r\n\r\n<p>The original starring cast consisted of&nbsp;Anthony Edwards&nbsp;as&nbsp;Dr. Mark Greene,&nbsp;George Clooney&nbsp;as&nbsp;Dr. Douglas &quot;Doug&quot; Ross,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Sherry_Stringfield\">S</a>herry Stringfield&nbsp;as&nbsp;Dr. Susan Lewis,&nbsp;Noah Wyle&nbsp;as medical student (later Dr.)&nbsp;John Carter, and&nbsp;Eriq La Salle&nbsp;as&nbsp;Dr. Peter Benton.&nbsp;Juliann<a href=\"https://en.wikipedia.org/wiki/Julianna_Margulies\">a </a>Margulies&nbsp;guest starred in the pilot as&nbsp;Nurse Carol Hathaway&nbsp;before becoming part of the regular cast.</p>\r\n', 'e-r', 7.7, 'e-r_1599484725.jpg'),
(36, 10, 1, 'House', '<p>Gregory&nbsp;<strong>House</strong>, M.D., often construed as a misanthropic medical genius, heads a team of diagnosticians at the Princeton&ndash;Plainsboro Teaching Hospital in New Jersey. The&nbsp;<strong>series</strong>&nbsp;is structured around a central plot with some supporting secondary stories and narratives that cross over seasons.</p>\r\n\r\n<p>Most episodes revolve around the diagnosis of a primary patient and start with a&nbsp;cold open&nbsp;set outside the hospital, showing events ending with the onset of the patient&#39;s symptoms.The typical episode follows the team in their attempts to diagnose and treat the patient&#39;s illness,&nbsp;which often fail until the patient&#39;s condition is critical&nbsp;They usually treat only patients whom other doctors have not accurately diagnosed.</p>\r\n\r\n<p>Starring:</p>\r\n\r\n<p>Hugh&nbsp; Laurine</p>\r\n\r\n<p>Lisa Edelstein</p>\r\n\r\n<p>Robert Sean Leonard</p>\r\n\r\n<p>Jesse Spencer</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'house', 8.7, 'house_1599484711.jpg'),
(37, 11, 2, 'Breaking Bad', '<p>Set in Albuquerque, New Mexico, between 2008 and 2010,&nbsp;<strong>Breaking Bad</strong>&nbsp;follows Walter White, a meek high school chemistry teacher who transforms into a ruthless player in the local methamphetamine drug trade, driven by a desire to provide for his family after being diagnosed with terminal lung cancer.</p>\r\n\r\n<p>Breaking Bad follows protagonist Walter White, a chemistry teacher who lives in New Mexico with his wife and teenage son who has cerebral palsy. White is diagnosed with Stage III cancer and given a prognosis of two years left to live. With a new sense of fearlessness based on his medical prognosis, and a desire to secure his family&#39;s financial security, White chooses to enter a dangerous world of drugs and crime and ascends to power in this world. The series explores how a fatal diagnosis such as White&#39;s releases a typical man from the daily concerns and constraints of normal society and follows his transformation from mild family man to a kingpin of the drug trade.</p>\r\n\r\n<p>Starring:</p>\r\n\r\n<p>&nbsp;Bryan Cranston,&nbsp;Aaron Paul,&nbsp;Anna Gunn,&nbsp;Dean Norris.</p>\r\n', 'breaking-bad', 9.5, 'breaking-bad_1599484693.jpg'),
(38, 11, 0, 'Money Heist', '<p><em><strong>Money Heist</strong></em>&nbsp;(Spanish:&nbsp;<em><strong>La casa de papel</strong></em>, &quot;The House of Paper&quot;) is a Spanish&nbsp;heist&nbsp;crime drama&nbsp;television series created by&nbsp;&Aacute;lex Pina. The series traces two long-prepared heists led by&nbsp;the Professor&nbsp;(&Aacute;lvaro Morte), one on the&nbsp;Royal Mint of Spain, and one on the&nbsp;Bank of Spain.</p>\r\n\r\n<p>Set in&nbsp;Madrid, a mysterious man known as &quot;The Professor&quot; recruits a group of eight people, who choose cities for code-names, to carry out an ambitious plan that involves entering the&nbsp;Royal Mint of Spain, and escaping with &euro;2.4 billion. After taking 67 people hostage inside the Mint, the team plans to remain inside for 11 days to print the money as they deal with elite police forces. In the events succeeding the initial heist, the group are forced out of hiding and find themselves preparing for a second heist, this time on the&nbsp;Bank of Spain, as they again deal with hostages and police forces.</p>\r\n\r\n<p>Starring:</p>\r\n\r\n<ul>\r\n	<li>&Uacute;rsula Corber&oacute;&nbsp;as&nbsp;Silene Oliveira (Tokyo): a runaway robber who is scouted by the Professor to participate in his plan; she also acts as an unreliable narrator.</li>\r\n	<li>&Aacute;lvaro Morte&nbsp;as&nbsp;Sergio Marquina (The Professor) / Salvador &quot;Salva&quot; Mart&iacute;n: the mastermind of the heist who assembled the group, and Berlin&#39;s younger brother.</li>\r\n	<li>Itziar Itu&ntilde;o&nbsp;as&nbsp;Raquel Murillo (Lisbon): an inspector of the&nbsp;National Police Corps&nbsp;who is put in charge of the case until she joins the group in part 3.</li>\r\n	<li>Pedro Alonso&nbsp;as&nbsp;Andr&eacute;s de Fonollosa (Berlin): a terminally ill jewel thief and the Professor&#39;s second-in-command and older brother.</li>\r\n	<li>Paco Tous&nbsp;as Agust&iacute;n Ramos (Moscow; parts 1&ndash;2; featured parts 3&ndash;4): a former miner turned criminal and Denver&#39;s father.</li>\r\n	<li>Alba Flores&nbsp;as&nbsp;&Aacute;gata Jim&eacute;nez (Nairobi): an expert in counterfeiting and forgery, in charge of printing the money and oversaw the melting the gold.</li>\r\n	<li>Miguel Herr&aacute;n&nbsp;as&nbsp;An&iacute;bal Cort&eacute;s (Rio): a young hacker.</li>\r\n	<li>Jaime Lorente&nbsp;as Ricardo / Daniel[b]&nbsp;Ramos (Denver): Moscow&#39;s son who joins him in the heist.</li>\r\n	<li>Esther Acebo&nbsp;as M&oacute;nica Gaztambide (Stockholm): one of the hostages who is Arturo Rom&aacute;n&#39;s secretary and mistress, carrying his child out of wedlock. During the robbery, she falls in love with Denver and becomes an accomplice to the group.</li>\r\n	<li>Enrique Arce&nbsp;as&nbsp;Arturo Rom&aacute;n: a hostage and the former Director of the&nbsp;Royal Mint of Spain.</li>\r\n	<li>Mar&iacute;a Pedraza&nbsp;as Alison Parker (parts 1&ndash;2): a hostage and daughter of the&nbsp;British ambassador to Spain.</li>\r\n	<li>Darko Peri?&nbsp;as Mirko Dragic (Helsinki): a veteran Serbian soldier and Oslo&#39;s cousin.</li>\r\n	<li>Kiti M&aacute;nver&nbsp;as Mariv&iacute; Fuentes (parts 1&ndash;2; featured parts 3&ndash;4): Raquel&#39;s mother.</li>\r\n	<li>Hovik Keuchkerian&nbsp;as Bogot&aacute; (parts 3&ndash;4): an expert in metallurgy who joins the robbery of the&nbsp;Bank of Spain.</li>\r\n</ul>\r\n', 'money-heist', 8.4, 'money-heist_1599484673.jpg'),
(39, 11, 2, 'How to get away with a murder', '<p>The brilliant, charismatic and seductive Professor Annalise Keating gets entangled with four law students from her class,&nbsp;<strong>How to Get Away</strong>&nbsp;with&nbsp;<strong>Murder</strong>. Little do they know that they will have to apply what they learned to real life, in this masterful, sexy, suspense-driven legal thriller.</p>\r\n\r\n<p>Starring:</p>\r\n\r\n<ol>\r\n	<li>Viola Davis.</li>\r\n	<li>Billy Brown.</li>\r\n	<li>Alfred Enoch.</li>\r\n	<li>Jack Falahee.</li>\r\n	<li>Katie Findlay.</li>\r\n	<li>Aja Naomi King.</li>\r\n	<li>Matt McGorry.</li>\r\n	<li>Karla Souza.</li>\r\n</ol>\r\n', 'how-get-away-murder', 8.1, 'how-get-away-murder_1599484656.jpg'),
(40, 12, 2, 'Sherlock', '<p>A modernised&nbsp;<strong>series</strong>&nbsp;of adaptations of the&nbsp;<strong>Sherlock Holmes</strong>&nbsp;novels by Sir Arthur Conan Doyle. ... Back in London his search for a place to stay leads him to share a flat with&nbsp;<strong>Sherlock Holmes</strong>&nbsp;(Benedict Cumberbatch), a brilliant but eccentric private detective. Together they solve baffling, and often bizarre, murder mysteries.</p>\r\n\r\n<p>Starring:</p>\r\n\r\n<ul>\r\n	<li>Benedict Cumberbatch.</li>\r\n	<li>&nbsp;Martin Freeman.&nbsp;</li>\r\n	<li>Rupert Graves</li>\r\n	<li>.&nbsp;Una Stubbs.</li>\r\n	<li>&nbsp;Mark Gatiss.&nbsp;</li>\r\n	<li>Louise Brealey.</li>\r\n</ul>\r\n', 'sherlock', 9.1, 'sherlock_1599484639.jpg'),
(41, 12, 1, 'The Mentalist', '<p><strong>The Mentalist</strong>&nbsp;tells the&nbsp;<strong>story</strong>&nbsp;of Patrick Jane, an independent consultant with the California Bureau of Investigation (CBI), who has a remarkable track record for solving serious crimes by using his razor sharp skills of observation.</p>\r\n\r\n<p>Starring:</p>\r\n\r\n<p>&nbsp;Simon Baker, Robin Tunney, Tim Kang, Owain Yeoman, Amanda Righetti, Rockmond Dunbar, Josie Loren, Emily Swallow.</p>\r\n', 'mentalist', 8.1, 'mentalist_1599484622.jpg'),
(42, 12, 0, 'Criminal Minds', '<p>&quot;<strong>Criminal Minds</strong>&quot; revolves around an elite team of FBI profilers who analyze the country&#39;s most twisted&nbsp;<strong>criminal minds</strong>, anticipating their next moves before they strike again. ... The team is led by Special Agent Aaron Hotchner (Thomas Gibson), a family man who is able to gain people&#39;s trust and unlock their secrets.</p>\r\n\r\n<p>Starring:</p>\r\n\r\n<p>Matthew Gray Gubler. Dr. Spencer Reid.&nbsp;Kirsten Vangsness. Penelope Garcia. (321 episodes, 2005-2020)&nbsp;A.J. Cook. Jennifer Jareau. (302 episodes, 2005-2020)&nbsp;Joe Mantegna. David Rossi. (273 episodes, 2007-2020)&nbsp;Thomas Gibson. Aaron Hotchner. Shemar Moore. Derek Morgan. Paget Brewster</p>\r\n', 'criminal-minds', 8.1, 'criminal-minds_1599484591.jpg'),
(43, 1, 2, 'Majorkickass', '<p>LEGEN-wait for it-DARY!!!!!!</p>\r\n\r\n<p>LEGANDARY&nbsp;</p>\r\n\r\n<p>NOICE NOICE NOICE</p>\r\n', 'majorkickass', 10, 'ojas_1599509343.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`) VALUES
(1, 'admin@admin.com', '$2y$10$0SHFfoWzz8WZpdu9Qw//E.tWamILbiNCX7bqhy3od0gvK5.kSJ8N2', 1, 'Watch', 'Next'),
(18, 'ojas.madan06@gmail.com', '$2y$10$UKi5IlJbMnoTe.lldNQuMe0M3d5UMh5dqMtHa1KXCR9izchjKYUKS', 0, 'Ojas', 'Madan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `awards`
--
ALTER TABLE `awards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ott`
--
ALTER TABLE `ott`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `series`
--
ALTER TABLE `series`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `awards`
--
ALTER TABLE `awards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `ott`
--
ALTER TABLE `ott`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `series`
--
ALTER TABLE `series`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
