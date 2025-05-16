-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2022 at 11:57 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `softmart`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(25) NOT NULL,
  `login_id` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `login_id`, `password`, `status`) VALUES
(6, 'admin', 'admin', 'adminadminadmin', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(10) NOT NULL,
  `category` varchar(25) NOT NULL,
  `description` text NOT NULL,
  `img` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category`, `description`, `img`, `status`) VALUES
(28, 'Gaming Software', 'Game engines are the software systems that help create, design, code and get a game up and running. A few popular 3D game engines include CryEngine, Gamebryo and Gamemaker. ... It is a commonly used tool in game sound design...', '1039680094logitech_gaming_software.jpg', 'Active'),
(29, 'ERP Products', 'ERP stands for Enterprise Resource Planning and refers to software and systems used to plan and manage all the core supply chain, manufacturing, services, financial and other processes of an organization.', '579073396erp.jpg', 'Active'),
(30, 'Office Tools', 'Accounting practice management software that handles time and billing, tax workflow automation, project tracking, invoicing and more. ', '88013766Office Tools.jpg', 'Active'),
(31, 'Security Software', 'Security software is any type of software that secures and protects a computer, network or any computing-enabled device. It manages access control, provides data protection, secures the system against viruses and network/Internet based intrusions, and defends against other system-level security risks.', '1119049233Security Software.jpg', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `commentid` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `software_product_id` int(11) NOT NULL,
  `comment_date` datetime NOT NULL,
  `ratings` double NOT NULL,
  `comment_note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`commentid`, `customer_id`, `software_product_id`, `comment_date`, `ratings`, `comment_note`) VALUES
(10, 10, 25, '2020-06-05 02:00:34', 3, 'Great application for playing any video and music. Every one should try it. No ads . Yes This app have no ads. It have a cool feature pop up play. That is very interesting. Really this app have no ads . Simple interface. No need to be an expert. Giving 5 star.'),
(11, 10, 26, '2020-06-03 02:01:03', 5, 'I have been using this player for about five years now, I have not had any major issues with it. I have downloaded it to different devices and it has worked well on ALL of them. I first come acrossed it as a portable app downloadable and usable from a flashdrive. People need to learn the apps they d...'),
(12, 11, 26, '2020-06-04 02:02:06', 4, 'This is definitely the best video player on android. It\'s simple to use and it can play most video formats. Its colour science is weirdly amazing. It has this ability to bring out amazing colours in videos and that on it\'s own is fantastic. A job well done to the developers.'),
(13, 9, 26, '2020-06-05 02:02:06', 4, 'Very nice. SOme more updates required.'),
(14, 9, 28, '2022-05-11 23:15:04', 5, 'Highly recommended!'),
(15, 10, 24, '2022-05-11 23:15:37', 4, 'Best service, value for money, customer oriented, specialized in softwares.'),
(16, 11, 22, '2022-05-11 23:16:06', 5, 'Best company'),
(19, 9, 19, '2022-05-11 23:16:59', 5, 'Very fantastic game. I am playing it from last 3 years. This is my favourite'),
(20, 10, 14, '2022-05-11 23:17:20', 1, 'Best pay role application in the market.'),
(21, 11, 6, '2022-05-11 23:17:37', 5, 'Makes the technology difference for your business'),
(22, 9, 4, '2022-05-11 23:18:07', 5, 'Customer support is excellent'),
(23, 10, 5, '2022-05-11 23:18:21', 5, 'excellent product quality and service!!'),
(24, 11, 2, '2022-05-11 23:18:52', 3, 'I am not satisfied with this because every trial package doesn\'t have full feaures'),
(25, 14, 28, '2022-05-11 23:28:21', 4, 'Best Software. I spent decade in using this software'),
(26, 15, 28, '2022-05-11 23:43:02', 4, 'It is the best office tool. It offers a variety of options, enables you to work online, and gives you access to all of Microsofts premium applications');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(25) NOT NULL,
  `address` text NOT NULL,
  `mobile_no` varchar(15) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `password` varchar(25) NOT NULL,
  `profile_img` varchar(300) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `address`, `mobile_no`, `email_id`, `password`, `profile_img`, `status`) VALUES
(9, 'Rakish', '3rd floor', '7894561230', 'rakish@gmail.com', '123456789', '229863306Raj-Raguneethan.jpg', 'Active'),
(10, 'Ajay kumar', '3rd floor, icty light buld', '789456130', 'ajaykumar@gmail.com', 'q1w2e3r4', '830107446Raj-Raguneethan.jpg', 'Active'),
(11, 'Aravinda M V', '3rd floor, city light building, Kazana Jewellers, Mangalore', '9874636321', 'mvaravinda@gmail.com', '111222333', '495570034Raj-Raguneethan.jpg', 'Active'),
(14, 'Shiva prasad', '3rd floor,\r\ncity light', '7894561230', 'studentprojects.live@gmail.com', 'Q1w2e3r4/', '1588982687df.jpg', 'Active'),
(15, 'Vinyas Kumar', 'Axil Gate,\r\nFire max road,\r\nBangalore', '8967452130', 'vinyaskumar1999@gmail.com', 'Q1w2e3r4/', '1354118970d7loklzfrirz4tfm_1609988642.webp', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `software_download_record`
--

CREATE TABLE `software_download_record` (
  `software_download_record_id` int(10) NOT NULL,
  `software_product_id` int(11) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `download_dt_tim` datetime NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `software_download_record`
--

INSERT INTO `software_download_record` (`software_download_record_id`, `software_product_id`, `customer_id`, `download_dt_tim`, `status`) VALUES
(86, 26, 11, '2020-06-05 00:19:47', 'Active'),
(87, 26, 9, '2020-06-05 03:51:16', 'Active'),
(88, 12, 9, '2020-06-05 03:53:26', 'Active'),
(89, 13, 9, '2020-06-05 03:54:41', 'Active'),
(90, 12, 11, '2020-06-05 07:15:07', 'Active'),
(91, 28, 14, '2022-05-12 02:44:50', 'Active'),
(92, 24, 14, '2022-05-12 02:45:18', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `software_product`
--

CREATE TABLE `software_product` (
  `software_product_id` int(10) NOT NULL,
  `category_id` int(10) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_description` text NOT NULL,
  `product_img1` varchar(255) NOT NULL,
  `product_img2` varchar(255) NOT NULL,
  `product_img3` varchar(255) NOT NULL,
  `product_img4` varchar(255) NOT NULL,
  `product_img5` varchar(255) NOT NULL,
  `software_type` varchar(50) NOT NULL,
  `download_link` varchar(255) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `software_product`
--

INSERT INTO `software_product` (`software_product_id`, `category_id`, `product_name`, `product_description`, `product_img1`, `product_img2`, `product_img3`, `product_img4`, `product_img5`, `software_type`, `download_link`, `status`) VALUES
(1, 29, 'Income Expense Manager', 'Income Expense Manager makes managing personal finances as easy as pie! Now easily record your personal and business financial transactions, generate spending reports, review your daily, weekly and monthly financial data and manage your assets with Money Manager\'s spending tracker and budget planner.', '1691023895expense_manager.webp', '585603892unnamed.png', '1709061853Capture.webp', '1257018539Good-Budjet-Expense-Tracker.png', '1334751384expense_manager.webp', 'Software', '2045016686Income Expense- Daily Expenses_128_apkcombo.com.apk', 'Active'),
(2, 31, 'CCleaner', 'CCleaner, developed by Piriform, is a utility used to clean potentially unwanted files and invalid Windows Registry entries from a computer. It is one of the longest-established system cleaners, first launched in 2004. It was originally developed for Microsoft Windows only, but in 2012, a macOS version was released', '1132079600unnamed.png', '1443955218002ZgXjZM1hBqPGso7sUnea-7.webp', '139292880ccleaner2_1.webp', '1303833433CCleaner-Cover.png', '2046232695webpc-passthru.webp', 'Software', '1177240016ccleaner.exe', 'Active'),
(3, 30, 'WPS Office', 'WPS Office is an office suite for Microsoft Windows, macOS, Linux, iOS, Android, and HarmonyOS developed by Zhuhai-based Chinese software developer Kingsoft. It also comes pre-installed on Fire tablets. WPS Office is made up of three primary components: WPS Writer, WPS Presentation, and WPS Spreadsheet. ', '1238151209unnamed.png', '1449137831Guide-Download-WPS-Office-APK-for-Android-Ios-latest-version-free_Paid.jpg', '1843549127unnamed (1).png', '1036890811unnamed.jpg', '1107094688WPS-Office-premium-apk-cover.webp', 'Mobile App', '1287522095', 'Active'),
(4, 30, 'Adobe PDF reader', 'The best PDF viewer just got better. On desktop or mobile.\r\nView, sign, and collaborate on PDF files with our free Acrobat Reader software for desktop or mobile. And to easily edit and convert your PDFs into file formats like Excel and Word, try out PDF editor and converter Acrobat Pro. Scan the QR code to get the free Reader app on mobile.', '1205020136download.png', '306619733unnamed.png', '382304075maxresdefault.jpg', '1769878211', '1689122338', 'Software', '718070530readerdc64_en_ka_cra_goca_install.exe', 'Active'),
(5, 29, 'Marg ERP', 'Marg provides advanced POS solution to manage billing, inventory, and accounting in your supermarket, hypermarket, or convenience retail store business. It ensures easy monitoring and control over stocks, reduces pilferage, best deals from suppliers with smart purchases.', '1405227785maxresdefault.jpg', '1927971732download.png', '109023092Marg ERP.jpg', '512725855Marg ERP1.jpg', '2142489903maxresdefault.jpg', 'Software', '592045929erpsoftware.exe', 'Active'),
(6, 29, 'Vyapar app', 'The Vyapar app helps automate most processes, making the quotes and estimates error-free. Additionally, you can set up a due date for tracking and converting ...', '470734612download (1).png', '891491067158011-vyapar.webp', '275667220G-thumbnail.jpg', '1012221192How-Does-Vyapar-Simplifies-Invoicing-GST-and-Compliance-for-SMBs-_-Feature-1200x500.jpg', '826563031unnamed.jpg', 'Mobile App', '660287574vyapaar (2).apk', 'Active'),
(7, 30, 'Notepad Plus Plus', 'Notepad++ is a text and source code editor for use with Microsoft Windows. It supports tabbed editing, which allows working with multiple open files in a single window. The product\'s name comes from the C increment operator. Notepad++ is distributed as free software.', '1029856300Notepad++_Logo.svg.png', '3116865140.jpg', '2071997524images.jpg', '2004709653notepadscreenshot1_0.webp', '721636891NPP.png', 'Software', '1501338548npp.8.4.1.Installer.x64.exe', 'Active'),
(12, 31, 'Kaspersky', 'Global leader in cyber security solutions and services built to protect your home and business.', '1774938825Kaspersky-712x604.png', '720032446', '1303098355', '573716095', '31105203', 'Software', '2091551065Candy Crush Saga_v1.177.1.3_apkpure.com.apk', 'Active'),
(13, 28, 'PUBG MOBILE', 'PUBG is a survival combat title; the definitive battle royale. Players fight for weapons and gear on massive islands for a chance to be the lone survivor.', '5667059_0.jpg', 'image-5-1499x625.jpg', '_Steam_Logo.jpg', 'pubg.0.jpg', 'PUBG-Mobile-1-750x369.jpg', 'Mobile App', '2091551065Candy Crush Saga_v1.177.1.3_apkpure.com.apk', 'Active'),
(14, 28, 'Mortal Kombat X', 'Take control of Earthrealm’s protectors in the game’s TWO critically acclaimed, time-bending Story Campaigns as they race to stop Kronika from rewinding time and rebooting history. Friendships are tested, and new alliances forged, in the battle to save all of existence.', '803408260capsule_616x353.jpg', '1567933038download.jpg', '1898284078maxresdefault (1).jpg', '567563053maxresdefault.jpg', '1196127379ss_0f4f568f3a4ee49061484b5ea916d634f443b8a9.1920x1080.jpg', 'Software', '1107556646DownloadLink.txt', 'Active'),
(19, 28, 'Grand Theft Auto V', 'Grand Theft Auto V is a 2013 action-adventure game developed by Rockstar North and published by Rockstar Games. It is the seventh main entry in the Grand Theft Auto series, following 2008\'s Grand Theft Auto IV, and the fifteenth instalment overall.', '1977686440main.webp', '1678207273download.jpg', '465171836gta-5-cheats-pc-scaled (1).jpg', '2058750462gta-5-cheats-pc-scaled.jpg', '8918238maxresdefault.jpg', 'Software', '2091551065Candy Crush Saga_v1.177.1.3_apkpure.com.apk', 'Active'),
(21, 31, 'Norton Antivirus', 'Norton AntiVirus is an anti-virus or anti-malware software product, developed and distributed by NortonLifeLock since 1991 as part of its Norton family of computer security products. It uses signatures and heuristics to identify viruses. Other features included in it are e-mail spam filtering and phishing protection.', '1226692121711lRaZffjL._AC_SL1500_.jpg', '2835362768cbda9452551faae44ae5cd14bd8a420.png', '1620691471download.jpg', '1167400094maxresdefault.jpg', '1373917339Ehza8SsLnNim5gXqW7Cv5W.jpg', 'Software', '1307789669norton.exe', 'Active'),
(22, 31, 'McAfee', 'McAfee Corp., formerly known as McAfee Associates, Inc. from 1987 to 1997 and 2004 to 2014, Network Associates Inc. from 1997 to 2004, and Intel Security Group from 2014 to 2017, is an American global computer security software company headquartered in San Jose, California', '1102030092download.jpg', '221228631AsrtrUzAJHYtQ332YcTbUB.jpg', '1535836224download (1).jpg', '1639531881McAfee_SecurityCenter_2021.png', '855035312unnamed.png', 'Software', '1385164052mcafee.exe', 'Active'),
(24, 29, 'Tally Solutions', 'Tally Solutions Pvt. Ltd. is an Indian multinational technology company, that provides enterprise resource planning software. It is headquartered in Bangalore, Karnataka. The company reports that its software is used by more than 1.8 million customers.', '454910203Tally_-_Logo.png', '2107190474tally-software-service-500x500.jpg', '1178506771Clipboard01.png', '2073069132images.jpg', '568032570tally-erp-9-software-services-500x500.png', 'Software', '2091551065Candy Crush Saga_v1.177.1.3_apkpure.com.apk', 'Active'),
(26, 28, 'Candy crush', 'Candy Crush Saga is a free-to-play match-three puzzle video game released by King on April 12, 2012, for Facebook; other versions for iOS, Android, Windows Phone, and Windows 10 followed. It is a variation of their browser game Candy Crush.', '1667895489download.jpg', '335407421candy-crush-revenue-2018.jpg', '16481001090_q1UEcs04MOOdpH4_.jpg', '903013051_tl8KgaUnNJskt2ImzYu7jg.jpeg', '1273452255hqdefault.jpg', 'Mobile App', '2091551065Candy Crush Saga_v1.177.1.3_apkpure.com.apk', 'Active'),
(28, 30, 'MS Office', 'Microsoft Office, or simply Office, is a family of client software, server software, and services developed by Microsoft. It was first announced by Bill Gates on August 1, 1988, at COMDEX in Las Vegas', '204878971office-logos-500x500.jpg', '181958532862a64b83-19d9-451f-8bbd-a2f44a2c268c.png', '1341180367microsoft-office-2016-2-large.jpg', '841744680Office-2019-3.jpg', '732630692office-online.webp', 'Software', '1479051688office.exe', 'Active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`commentid`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `email_id` (`email_id`);

--
-- Indexes for table `software_download_record`
--
ALTER TABLE `software_download_record`
  ADD PRIMARY KEY (`software_download_record_id`);

--
-- Indexes for table `software_product`
--
ALTER TABLE `software_product`
  ADD PRIMARY KEY (`software_product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `commentid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `software_download_record`
--
ALTER TABLE `software_download_record`
  MODIFY `software_download_record_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `software_product`
--
ALTER TABLE `software_product`
  MODIFY `software_product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
