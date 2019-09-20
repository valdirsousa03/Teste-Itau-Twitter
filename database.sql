-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.6-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for apitwitter
DROP DATABASE IF EXISTS `apitwitter`;
CREATE DATABASE IF NOT EXISTS `apitwitter` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `apitwitter`;

-- Dumping structure for table apitwitter.tweets
DROP TABLE IF EXISTS `tweets`;
CREATE TABLE IF NOT EXISTS `tweets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hashtag` varchar(150) DEFAULT NULL,
  `usuario` varchar(255) DEFAULT NULL,
  `idioma` varchar(255) DEFAULT NULL,
  `pais` varchar(255) DEFAULT NULL,
  `seguidores` int(11) DEFAULT NULL,
  `mensagem` text DEFAULT NULL,
  `dtpostagem` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=849 DEFAULT CHARSET=latin1;

-- Dumping data for table apitwitter.tweets: ~79 rows (approximately)
/*!40000 ALTER TABLE `tweets` DISABLE KEYS */;
INSERT INTO `tweets` (`id`, `hashtag`, `usuario`, `idioma`, `pais`, `seguidores`, `mensagem`, `dtpostagem`) VALUES
	(770, '#openapis', 'matt_hollo_90', 'en', '', 9, 'Hey @Vanguard_Group, I use @emma_finance to save and manage my money. It would be great to see you joining the party! ?? #OpenAPIs https://t.co/BKWhcEHC0G', '2019-09-19 17:25:20'),
	(771, '#openapis', 'michelhanouch', 'en', 'Johannesburg', 104, 'RT @CGAP: What’s the most effective way for #digitalfinance providers to drive usage of #openAPIs? In this short video experts from @SilaMo…', '2019-09-19 15:40:16'),
	(772, '#openapis', 'chidambara09', 'no', 'Mysore  and  BERLIN ', 5243, 'RT @Nicolas2Pinto: [#Innovation] Digital era banking systems\n\nhttps://t.co/A3V7gseIwx\n\n#Disruption #Fintech #Banking #DigitalBanking #OpenB…', '2019-09-19 12:31:23'),
	(773, '#openapis', 'Nicolas2Pinto', 'no', 'Paris, France', 6137, '[#Innovation] Digital era banking systems\n\nhttps://t.co/A3V7gseIwx\n\n#Disruption #Fintech #Banking #DigitalBanking #OpenBanking #APIs #OpenAPIs #FinancialServices #TPPs #Payments #AI #BigData #DataAnalytics #Cloud #OpenData #DigitalEconomy #UX #CX https://t.co/xUsj9X66rE', '2019-09-19 12:30:00'),
	(774, '#openapis', 'bmlyon', 'en', '?', 2717, 'RT @CGAP: What’s the most effective way for #digitalfinance providers to drive usage of #openAPIs? In this short video experts from @SilaMo…', '2019-09-19 10:33:10'),
	(775, '#openapis', 'usehover', 'en', '127.0.0.1', 650, 'RT @CGAP: What’s the most effective way for #digitalfinance providers to drive usage of #openAPIs? In this short video experts from @SilaMo…', '2019-09-19 10:32:56'),
	(776, '#openapis', 'CGAP', 'en', 'Washington, DC', 30094, 'What’s the most effective way for #digitalfinance providers to drive usage of #openAPIs? In this short video experts from @SilaMoney , @usehover & @mtnug give their input. https://t.co/CYLuledZ2C', '2019-09-19 09:25:06'),
	(777, '#openapis', 'labordeolivier', 'fr', 'Paris, France', 9083, 'RT @Nicolas2Pinto: [#Article] « Super Apps »: L’avenir des #Banques et de la #Fintech ?\n\nhttps://t.co/gcJMYjU0K4\n\n#Innovation #Ecommerce #R…', '2019-09-19 07:36:59'),
	(778, '#openapis', 'fcoste_', 'fr', 'France', 462, 'RT @Nicolas2Pinto: [#Article] « Super Apps »: L’avenir des #Banques et de la #Fintech ?\n\nhttps://t.co/gcJMYjU0K4\n\n#Innovation #Ecommerce #R…', '2019-09-19 05:16:38'),
	(779, '#openapis', 'AVerdaillant', 'fr', 'Paris - Londres', 1496, 'RT @Nicolas2Pinto: [#Article] « Super Apps »: L’avenir des #Banques et de la #Fintech ?\n\nhttps://t.co/gcJMYjU0K4\n\n#Innovation #Ecommerce #R…', '2019-09-19 05:10:58'),
	(780, '#openapis', '_marielaurent_', 'fr', 'Paris, France', 341, 'RT @Nicolas2Pinto: [#Article] « Super Apps »: L’avenir des #Banques et de la #Fintech ?\n\nhttps://t.co/gcJMYjU0K4\n\n#Innovation #Ecommerce #R…', '2019-09-19 05:10:21'),
	(781, '#openapis', 'Julez_Norton', 'fr', 'New Zealand', 24599, 'RT @Nicolas2Pinto: [#Article] « Super Apps »: L’avenir des #Banques et de la #Fintech ?\n\nhttps://t.co/gcJMYjU0K4\n\n#Innovation #Ecommerce #R…', '2019-09-19 05:07:29'),
	(782, '#openapis', 'shivgrewal09', 'fr', 'India', 346, 'RT @Nicolas2Pinto: [#Article] « Super Apps »: L’avenir des #Banques et de la #Fintech ?\n\nhttps://t.co/gcJMYjU0K4\n\n#Innovation #Ecommerce #R…', '2019-09-19 04:47:37'),
	(783, '#openapis', 'jblefevre60', 'fr', 'Personnal tweets Paris', 54703, 'RT @Nicolas2Pinto: [#Article] « Super Apps »: L’avenir des #Banques et de la #Fintech ?\n\nhttps://t.co/gcJMYjU0K4\n\n#Innovation #Ecommerce #R…', '2019-09-19 04:01:48'),
	(784, '#openapis', 'mallys_', 'fr', 'France', 16131, 'RT @Nicolas2Pinto: [#Article] « Super Apps »: L’avenir des #Banques et de la #Fintech ?\n\nhttps://t.co/gcJMYjU0K4\n\n#Innovation #Ecommerce #R…', '2019-09-19 03:59:11'),
	(785, '#openapis', 'kalydeoo', 'fr', 'Paris', 9126, 'RT @Nicolas2Pinto: [#Article] « Super Apps »: L’avenir des #Banques et de la #Fintech ?\n\nhttps://t.co/gcJMYjU0K4\n\n#Innovation #Ecommerce #R…', '2019-09-19 03:56:20'),
	(786, '#openapis', 'Nicolas2Pinto', 'fr', 'Paris, France', 6137, '[#Article] « Super Apps »: L’avenir des #Banques et de la #Fintech ?\n\nhttps://t.co/gcJMYjU0K4\n\n#Innovation #Ecommerce #Retail #OpenBanking #APIs #OpenAPIs #Paiement #Mobile #Digital #Data #UX #CX\n\n@jblefevre60 @kalydeoo @mallys_ @labordeolivier \n@SvetBnov @cestpasmonidee https://t.co/CwblU7tfHP', '2019-09-19 03:50:00'),
	(787, '#openapis', 'KineticPRLLC', 'en', 'Silicon Valley, CA', 130, 'RT @wso2: .@dimuthmanikgama gives you an introduction to the basics of #TransactionRiskAnalysis & how it affects strong customer authentica…', '2019-09-18 15:37:15'),
	(788, '#openapis', 'wso2', 'en', 'Mountain View, CA', 9321, '.@dimuthmanikgama gives you an introduction to the basics of #TransactionRiskAnalysis & how it affects strong customer authentication in #PSD2 accounts & payments flows. \nRead article ?? https://t.co/jP0UQffLbO\n#OpenBanking #OpenAPIs #FinTech #Authentication', '2019-09-18 12:30:08'),
	(789, '#openapis', 'InvestAvenir', 'fr', 'Mougins, France', 4875, 'RT @Nicolas2Pinto: [#Disruption] API DSP2 : où en sont les banques européennes ?\n\nhttps://t.co/2bB0cyJKFf\n\n#Innovation #Fintech #Banque #DS…', '2019-09-18 08:18:58'),
	(790, '#openapis', 'AlexandreJean37', 'fr', 'Tours, France', 1237, 'RT @Nicolas2Pinto: [#Disruption] API DSP2 : où en sont les banques européennes ?\n\nhttps://t.co/2bB0cyJKFf\n\n#Innovation #Fintech #Banque #DS…', '2019-09-18 08:16:50'),
	(791, '#openapis', 'ilceruttino', 'en', 'Brussels', 2174, 'RT @Nicolas2Pinto: [#Tech] Better connecting customers to their bank with the cloud\n\nhttps://t.co/JgzhFYWpM1\n\n#Innovation #Fintech #Banking…', '2019-09-18 07:42:08'),
	(792, '#openapis', 'Nicolas2Pinto', 'en', 'Paris, France', 6137, '[#Infographic] Emerging markets are powering the growth of non-cash payments\n\nhttps://t.co/qOZSV2eHKl\n\n#Innovation #Fintech #Banking #Retail #BigTech #OpenBanking #APIs #OpenAPIs #FinancialServices #Payments #MobilePayments #DigitalPayments #Wallets #Cashless #UX #CX https://t.co/l5peGIFVON', '2019-09-18 06:40:00'),
	(793, '#openapis', 'chidambara09', 'en', 'Mysore  and  BERLIN ', 5243, 'RT @Nicolas2Pinto: [#Tech] Better connecting customers to their bank with the cloud\n\nhttps://t.co/JgzhFYWpM1\n\n#Innovation #Fintech #Banking…', '2019-09-18 05:56:03'),
	(794, '#openapis', 'machine_ml', 'en', '', 6611, 'RT @FranceDevOps: RT @Nicolas2Pinto: [#Tech] Better connecting customers to their bank with the cloud\n\nhttps://t.co/rbmCt0Vvvp\n\n#Innovation #Fintech #Banking #DigitalBanking #OpenBanking #APIs #OpenAPIs #FinancialServices #Payments #AI #MachineLearning … https://t.co/SCcd8A0uj2', '2019-09-18 05:55:19'),
	(795, '#openapis', 'machine_ml', 'en', '', 6611, 'RT @TheCloudSumo: RT @Nicolas2Pinto: [#Tech] Better connecting customers to their bank with the cloud\n\nhttps://t.co/rbmCt0Vvvp\n\n#Innovation #Fintech #Banking #DigitalBanking #OpenBanking #APIs #OpenAPIs #FinancialServices #Payments #AI #MachineLearning … https://t.co/SCcd8A0uj2', '2019-09-18 05:55:15'),
	(796, '#openapis', 'FranceDevOps', 'en', 'Nantes, France', 602, 'RT @Nicolas2Pinto: [#Tech] Better connecting customers to their bank with the cloud\n\nhttps://t.co/JgzhFYWpM1\n\n#Innovation #Fintech #Banking…', '2019-09-18 05:51:43'),
	(797, '#openapis', 'TheCloudSumo', 'en', 'Palo Alto, CA', 1078, 'RT @Nicolas2Pinto: [#Tech] Better connecting customers to their bank with the cloud\n\nhttps://t.co/JgzhFYWpM1\n\n#Innovation #Fintech #Banking…', '2019-09-18 05:50:41'),
	(798, '#openapis', 'Nicolas2Pinto', 'en', 'Paris, France', 6137, '[#Tech] Better connecting customers to their bank with the cloud\n\nhttps://t.co/JgzhFYWpM1\n\n#Innovation #Fintech #Banking #DigitalBanking #OpenBanking #APIs #OpenAPIs #FinancialServices #Payments #AI #MachineLearning #BigData #DataAnalytics #Cloud #DevOps #RPA #KYC #IoT #UX #CX https://t.co/dUWyJjeg2f', '2019-09-18 05:50:00'),
	(799, '#openapis', 'kotaknaren', 'en', 'Mumbai', 1926, 'RT @FranceInsurtech: RT @OPINinitiative: We just published Key lessons for the insurance industry from Open Banking.\n#insurtech #insurance #openAPIs #openbanking\nhttps://t.co/UY1AKzdMPv', '2019-09-18 04:29:18'),
	(800, '#openapis', 'FranceInsurtech', 'en', 'France', 135, 'RT @OPINinitiative: We just published Key lessons for the insurance industry from Open Banking.\n#insurtech #insurance #openAPIs #openbankin…', '2019-09-18 04:23:59'),
	(801, '#openapis', 'tmforumorg', 'en', 'USA', 10884, 'My API Story: Sreeraj Sivadasan of @BTGroup shares how they achieved agility & quicker time-to-market using #OpenAPIs for inventory management in their Single Resource Inventory Management Systems (WS SRIMS) transformation program. Read the full story: https://t.co/rw2tMH1Lf2 https://t.co/8QchaZ8Ycw', '2019-09-18 03:30:14'),
	(802, '#openapis', 'FIMEnews', 'en', 'Americas, EMEA, India, Asia', 1400, 'Today our experts are at the @MobeyForum member meeting in Stockholm discussing #digitalpayments. Find out how banks can remain competitive in the age of #PSD2 on our blog: https://t.co/Kd8VpDYsPt #openbanking #openAPIs #SCA https://t.co/rWeXWxPpMN', '2019-09-18 03:20:00'),
	(803, '#openapis', 'hypo_ai', 'fr', 'France', 676, 'RT @Nicolas2Pinto: [#Disruption] API DSP2 : où en sont les banques européennes ?\n\nhttps://t.co/2bB0cyJKFf\n\n#Innovation #Fintech #Banque #DS…', '2019-09-18 03:18:23'),
	(804, '#openapis', 'Nicolas2Pinto', 'en', 'Paris, France', 6137, '[#Tech] All Open Banking and PSD2 APIs\n\nhttps://t.co/zxgcBnvr9t\n\n#Innovation #Fintech #Banking #PSD2 #OpenBanking #APIs #OpenAPIs #FinancialServices #TPPs #AISP #PISP #Payments #MobilePayments #Data #DataAnalytics #KYC #SCA #RTS #UX #CX https://t.co/x6FtwRoOPo', '2019-09-17 13:40:00'),
	(805, '#openapis', 'CharleneDigital', 'fr', 'Paris, France', 443, 'RT @Nicolas2Pinto: [#Disruption] API DSP2 : où en sont les banques européennes ?\n\nhttps://t.co/2bB0cyJKFf\n\n#Innovation #Fintech #Banque #DS…', '2019-09-17 07:19:18'),
	(806, '#openapis', 'Ollyj123', 'en', 'City of London, London', 8, 'Hey @HLInvest, I use @emma_finance to save and manage my money. It would be great to see you joining the party! ?? #OpenAPIs https://t.co/mzygL2M1rC', '2019-09-17 05:17:25'),
	(807, '#openapis', 'CarrierThibault', 'fr', 'Viry-Châtillon', 188, 'RT @Nicolas2Pinto: [#Disruption] API DSP2 : où en sont les banques européennes ?\n\nhttps://t.co/2bB0cyJKFf\n\n#Innovation #Fintech #Banque #DS…', '2019-09-17 05:16:06'),
	(808, '#openapis', 'World_isTweetly', 'fr', 'Clermont-ferrand ', 2871, 'RT @Nicolas2Pinto: [#Disruption] API DSP2 : où en sont les banques européennes ?\n\nhttps://t.co/2bB0cyJKFf\n\n#Innovation #Fintech #Banque #DS…', '2019-09-17 04:30:08'),
	(809, '#openapis', '_gwydr', 'fr', '', 242, 'RT @Nicolas2Pinto: [#Disruption] API DSP2 : où en sont les banques européennes ?\n\nhttps://t.co/2bB0cyJKFf\n\n#Innovation #Fintech #Banque #DS…', '2019-09-17 04:11:39'),
	(810, '#openapis', 'AnanaLatour', 'fr', '', 140, 'RT @Nicolas2Pinto: [#Disruption] API DSP2 : où en sont les banques européennes ?\n\nhttps://t.co/2bB0cyJKFf\n\n#Innovation #Fintech #Banque #DS…', '2019-09-17 04:09:00'),
	(811, '#openapis', 'Nicolas2Pinto', 'fr', 'Paris, France', 6137, '[#Opinion] Comment l’open banking repense les services de paiement et l’expérience client\n\nhttps://t.co/hcy04ZXRvq\n\n#Innovation #Fintech #Banque #DSP2 #OpenBanking #APIs #OpenAPIs #Paiement #Mobile #IA #MachineLearning #DataAnalytics #OpenData #SCA #Biometrie #ExperienceClient https://t.co/pyyuiQd7oZ', '2019-09-17 04:01:00'),
	(812, '#openapis', 'friendsurance', 'fr', 'Berlin', 3671, 'RT @Nicolas2Pinto: [#Disruption] API DSP2 : où en sont les banques européennes ?\n\nhttps://t.co/2bB0cyJKFf\n\n#Innovation #Fintech #Banque #DS…', '2019-09-17 03:55:23'),
	(813, '#openapis', 'danibascon', 'en', 'España', 315, 'RT @wso2: ? #Webinar: October 1, 2019\nWe\'ll explore how you can use #WSO2 #OpenBanking to enhance the security of banking #APIs through #PS…', '2019-09-17 03:52:41'),
	(814, '#openapis', 'Nicolas2Pinto', 'fr', 'Paris, France', 6137, '[#Disruption] API DSP2 : où en sont les banques européennes ?\n\nhttps://t.co/2bB0cyJKFf\n\n#Innovation #Fintech #Banque #DSP2 #OpenBanking #APIs #OpenAPIs #Paiement #Data #DataAnalytics #KYC #SCA #UX #CX https://t.co/LnIdEC9LsP', '2019-09-17 03:37:00'),
	(815, '#openapis', 'shavanthaw', 'en', 'Colombo Sri Lanka', 59, 'RT @wso2: ? Are you ready for #openbanking?\n\nBy 2020, even more banks & financial service providers around the world will be opening their…', '2019-09-17 02:34:36'),
	(816, '#openapis', 'GrahamGlasgow2', 'en', 'Glasgow ', 231, 'Hey @moneyboxteam, I use @emma_finance to save and manage my money. It would be great to see you joining the party! ?? #OpenAPIs https://t.co/1SluXSvF5I', '2019-09-16 22:11:23'),
	(817, '#openapis', 'bobfindlay', 'en', '', 71, 'Hey @freetrade, I use @emma_finance to save and manage my money. It would be great to see you joining the party! ?? #OpenAPIs https://t.co/Y3racKVLJE', '2019-09-16 18:25:00'),
	(818, '#openapis', '_aarongleeson', 'en', 'England, United Kingdom', 163, 'Hey @freetrade, I use @emma_finance to save and manage my money. It would be great to see you joining the party! ?? #OpenAPIs https://t.co/QOOGMsZUw4', '2019-09-16 18:14:37'),
	(819, '#openapis', 'KineticPRLLC', 'en', 'Silicon Valley, CA', 130, 'RT @wso2: #OpenBanking has become a critical business driver for banks & financial services providers around the world. Here\'s your introdu…', '2019-09-16 12:35:01'),
	(820, '#openapis', 'KineticPRLLC', 'en', 'Silicon Valley, CA', 130, 'RT @wso2: ? #Webinar: October 1, 2019\nWe\'ll explore how you can use #WSO2 #OpenBanking to enhance the security of banking #APIs through #PS…', '2019-09-16 12:34:54'),
	(821, '#openapis', 'wso2', 'en', 'Mountain View, CA', 9321, '? #Webinar: October 1, 2019\nWe\'ll explore how you can use #WSO2 #OpenBanking to enhance the security of banking #APIs through #PSD2 eIDAS certificates.\nDetails: https://t.co/VsQWPY2KVa\n#RegulatoryCompliance #OpenAPIs', '2019-09-16 12:30:06'),
	(822, '#openapis', 'wso2', 'en', 'Mountain View, CA', 9321, '#OpenBanking has become a critical business driver for banks & financial services providers around the world. Here\'s your introduction to open banking & what it means for your bank. https://t.co/2F5LHujG68\n#OpenAPIs #RegulatoryCompliance #FinTech #DigitalTransformation', '2019-09-16 08:54:32'),
	(823, '#openapis', 'Chrisjb808', 'en', 'London', 48, 'Hey @moneyboxteam, I use @emma_finance to save and manage my money. It would be great to see you joining the party! ?? #OpenAPIs https://t.co/mDvpmWmN51', '2019-09-16 08:48:05'),
	(824, '#openapis', 'michelhanouch', 'en', 'Johannesburg', 104, 'RT @CGAP: This video series highlights #openAPIs from a variety of perspectives. Experts from  @SilaMoney, @mtnug, @ilovezoona, @usehover,…', '2019-09-16 07:42:57'),
	(825, '#openapis', 'FIMEnews', 'en', 'Americas, EMEA, India, Asia', 1400, 'FIME experts will be at the @MobeyForum member meeting in Stockholm on Sep 18-19  to explore the future of #digital #financialservices. To learn how FIME is supporting #banks & #TPPs with their #digitaltransformation projects, visit our website: https://t.co/Kd8VpDYsPt #openAPIs https://t.co/tPmRWb4AUV', '2019-09-16 05:19:00'),
	(826, '#openapis', 'anna_blyablina', 'en', 'Nordics', 133, 'Why is it important to discuss the e-currency now? And why Sweden is taking a lead in these debates in Europe?\n\nhttps://t.co/cwyzUrND0O\n#fintech #digitalcurrency #ekrona #ecurrency #centralbank #facebooklibra #telegramgram #digitalyuan #sthlmfintech #openAPIs #cashless #payments', '2019-09-16 03:44:51'),
	(827, '#openapis', 'dandrewstmforum', 'en', 'Woodstock, GA', 20, 'RT @tmforumorg: Sreeraj Sivadasan of @BTGroup shares how they use #OpenAPIs for inventory management in their Single Resource Inventory Man…', '2019-09-15 11:33:57'),
	(828, '#openapis', 'Dedds15', 'en', '', 0, 'Hey @wealthify_com, I use @emma_finance to save and manage my money. It would be great to see you joining the party! ?? #OpenAPIs https://t.co/bcUVidnaTW', '2019-09-14 12:32:37'),
	(829, '#openapis', 'Meontn20021', 'en', '', 0, 'Hey @moneyboxteam, I use @emma_finance to save and manage my money. It would be great to see you joining the party! ?? #OpenAPIs https://t.co/FyS6ctnPOO', '2019-09-14 10:22:36'),
	(830, '#openapis', 'Nicolas2Pinto', 'en', 'Paris, France', 6137, '[#Innovation] 5 Things Banks Need to Keep in Mind While Leveraging APIs for Their Payments System\n\nhttps://t.co/qwHIVw0RhE\n\n#Disruption #DigitalTransformation #Fintech #Banking #PSD2 #OpenBanking #APIs #OpenAPIs #FinancialServices #TPPs #Payments #Data #UX #CX https://t.co/YdGovm88hL', '2019-09-14 09:00:00'),
	(831, '#openapis', 'lmirabal', 'en', 'London, UK', 236, 'Hey @Vanguard_Group, I use @emma_finance to save and manage my money. It would be great to see you joining the party! ?? #OpenAPIs https://t.co/B7NIlD4cf7', '2019-09-14 05:54:01'),
	(832, '#openapis', 'Lastru9Lorenzo', 'en', 'England, United Kingdom', 17, 'Hey @moneyboxteam, I use @emma_finance to save and manage my money. It would be great to see you joining the party! ?? #OpenAPIs https://t.co/CflM0kzXfJ', '2019-09-13 19:41:02'),
	(833, '#openapis', 'tmforumorg', 'en', 'USA', 10884, 'Sreeraj Sivadasan of @BTGroup shares how they use #OpenAPIs for inventory management in their Single Resource Inventory Management Systems (WS SRIMS) model transformation program. The benefits include agility & quicker time-to market. Read the full story: https://t.co/qYVB1WcQ6n https://t.co/jivmCQBLh5', '2019-09-13 15:10:05'),
	(834, '#openapis', 'aTRinzler', 'en', 'colombo', 83, 'RT @wso2: ? Are you ready for #openbanking?\n\nBy 2020, even more banks & financial service providers around the world will be opening their…', '2019-09-13 01:24:45'),
	(835, '#openapis', 'flummixed07', 'en', 'Still Part of #FBPE community', 629, 'Hey @moneyboxteam, I use @emma_finance to save and manage my money. It would be great to see you joining the party! ?? #OpenAPIs https://t.co/OWwsLW5jID', '2019-09-12 17:47:20'),
	(836, '#openapis', 'KineticPRLLC', 'en', 'Silicon Valley, CA', 130, 'RT @wso2: ? Are you ready for #openbanking?\n\nBy 2020, even more banks & financial service providers around the world will be opening their…', '2019-09-12 16:09:48'),
	(837, '#openapis', 'afkham_azeez', 'en', 'Dehiwela, Sri Lanka', 1335, 'RT @wso2: ? Are you ready for #openbanking?\n\nBy 2020, even more banks & financial service providers around the world will be opening their…', '2019-09-12 08:18:23'),
	(838, '#openapis', 'vimukthi_perera', 'en', 'Colombo. Sri Lanka', 92, 'RT @wso2: ? Are you ready for #openbanking?\n\nBy 2020, even more banks & financial service providers around the world will be opening their…', '2019-09-12 07:31:03'),
	(839, '#openapis', 'wso2', 'en', 'Mountain View, CA', 9321, '? Are you ready for #openbanking?\n\nBy 2020, even more banks & financial service providers around the world will be opening their #APIs. @kushlani_ds tells us why an open banking strategy is needed: https://t.co/2IjJYgVUzz\n#OpenAPIs #FinTech #RegulatoryCompliance', '2019-09-12 07:30:03'),
	(840, '#openapis', 'UrsusMari', 'en', 'Glasgow, Scotland', 23, 'Hey @Vanguard_Group, I use @emma_finance to save and manage my money. It would be great to see you joining the party! ?? #OpenAPIs https://t.co/W2yGquPAM6', '2019-09-12 05:16:22'),
	(841, '#openapis', 'raincitycn', 'en', '', 2, 'Hey @HLInvest, I use @emma_finance to save and manage my money. It would be great to see you joining the party! ?? #OpenAPIs https://t.co/OgpSYHfqER', '2019-09-11 15:35:03'),
	(842, '#openapis', 'anandraman', 'en', 'Bombay', 627, 'RT @CGAP: This video series highlights #openAPIs from a variety of perspectives. Experts from  @SilaMoney, @mtnug, @ilovezoona, @usehover,…', '2019-09-11 12:58:40'),
	(843, '#openapis', 'habitronic', 'en', 'London, UK', 2, 'Hey @freetrade, I use @emma_finance to save and manage my money. It would be great to see you joining the party! ?? #OpenAPIs https://t.co/vQuwCVDnd1', '2019-09-11 12:28:29'),
	(844, '#openapis', 'PaulDamalie', 'en', 'Accra', 1820, 'RT @CGAP: This video series highlights #openAPIs from a variety of perspectives. Experts from  @SilaMoney, @mtnug, @ilovezoona, @usehover,…', '2019-09-11 12:16:36'),
	(845, '#openapis', 'usehover', 'en', '127.0.0.1', 650, 'RT @CGAP: This video series highlights #openAPIs from a variety of perspectives. Experts from  @SilaMoney, @mtnug, @ilovezoona, @usehover,…', '2019-09-11 12:16:00'),
	(846, '#openapis', 'CGAP', 'en', 'Washington, DC', 30094, 'This video series highlights #openAPIs from a variety of perspectives. Experts from  @SilaMoney, @mtnug, @ilovezoona, @usehover, @ekospeaks and more weigh in: \nhttps://t.co/2jbkFMroUL https://t.co/OtVEtMWXJJ', '2019-09-11 12:15:15'),
	(847, '#openapis', 't30334023', 'en', '', 0, 'Hey @HLInvest, I use @emma_finance to save and manage my money. It would be great to see you joining the party! ?? #OpenAPIs https://t.co/Fb6a1hqEMF', '2019-09-11 10:57:48'),
	(848, '#openapis', 'unfazed_puma', 'en', '', 20, 'With #FHIR4, #OpenAPIs, #Carequality and #CommonWell reaching a milestone of sorts and the finalised information blocking rule from Health and Human Services, the table is set for notable advancements in health information exchange.\n@smartDataIncLtd \nhttps://t.co/335UfSgTo9', '2019-09-11 01:28:50');
/*!40000 ALTER TABLE `tweets` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
