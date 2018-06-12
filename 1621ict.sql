-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2018-05-26 04:37:21
-- 服务器版本： 5.7.21-0ubuntu0.16.04.1
-- PHP Version: 7.0.28-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `1621ict`
--

-- --------------------------------------------------------

--
-- 表的结构 `CUSTOMERS`
--

CREATE TABLE `CUSTOMERS` (
  `CUSTID` int(11) NOT NULL,
  `FIRSTNAME` varchar(64) DEFAULT NULL,
  `LASTNAME` varchar(64) DEFAULT NULL,
  `ADDRESS` varchar(255) DEFAULT NULL,
  `PHONE` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `CUSTOMERS`
--

INSERT INTO `CUSTOMERS` (`CUSTID`, `FIRSTNAME`, `LASTNAME`, `ADDRESS`, `PHONE`) VALUES
(1, 'John', 'Smith', '5 Fictitious Street, Springfield', '(07) 1122 3344'),
(2, 'Fred', 'Jones', '12 Some Place, Gotham', '(02) 9988 7766'),
(3, 'Bob', 'Bee', '50 Fifty Court, Brisbane', '(07) 1111 2222');

-- --------------------------------------------------------

--
-- 表的结构 `EVENTS`
--

CREATE TABLE `EVENTS` (
  `EVENTID` int(11) NOT NULL,
  `EVENTNAME` varchar(64) DEFAULT NULL,
  `LOCATION` varchar(64) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `DATE` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `EVENTS`
--

INSERT INTO `EVENTS` (`EVENTID`, `EVENTNAME`, `LOCATION`, `DESCRIPTION`, `DATE`) VALUES
(1, 'Park Run', 'Stones Corner', 'Saturday morning fun run.', '25/06/2016'),
(2, 'Meet & Greet BBQ', 'Brisbane CBD', 'Meet and Greet in Queen Street Mall', '26/06/2016'),
(3, 'Clearance Sale', 'Griffith Store', 'Clearance Sale for all items', '11/07/2016');

-- --------------------------------------------------------

--
-- 表的结构 `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `present_price` float NOT NULL,
  `original_price` float NOT NULL,
  `details` text NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `product`
--

INSERT INTO `product` (`id`, `name`, `type`, `present_price`, `original_price`, `details`, `url`) VALUES
(1, 'Nespresso VertuoPlus Coffee and Espresso Maker by De\'Longhi', 'maker', 179.99, 199.99, 'SINGLE SERVE COFFEE MACHINE: The Nespresso VertuoPlus offers freshly brewed coffee with crema as well as delicious, authentic espresso. Designed for use with Nespresso Vertuo capsules only/*/\r\nSMART COFFEE MAKER: Brew a perfect single serve coffee or espresso cup time after time, thanks to Nespresso\'s Centrifusion technology using barcode reading to deliver the optimal in-cup results for each blend/*/\r\nCOMPLIMENTARY GIFT: Each machine includes a Nespresso Vertuo capsule welcome kit with a range of capsules with unique aroma profiles/*/\r\nBARISTA GRADE: Brew different single serve coffee cup sizes at the touch of a button depending on your coffee needs - espresso (1.35 oz.), double espresso (2.7 oz.), gran lungo (5 oz.), coffee (7.7 oz.) and alto (14 oz.)/*/\r\nFEATURES: The VertuoPlus has a motorized head and moveable 40 oz. water tank. The water tank can swivel out or stay behind the machine based on the configuration of your counter space', 'image/coffee-maker1.jpg'),
(2, 'Mr. Coffee 4-Cup Programmable Coffee Maker', 'maker', 17.49, 19.99, 'On/off indicator light lets you know when your coffeemaker is on or off/*/\r\nRemovable filter basket lifts out for fast and easy filling and cleaning/*/\r\nBrewing pause \'n serve lets you pour a cup of coffee while the coffeemaker is still brewing/*/\r\nDual water window shows the amount of water in the reservoir for accurate filling/*/\r\nCord storage safely stores excesscord to keep your counter neat.Dimensions 9.64 H x 7.12 W x 6.14 D inches/*/\r\nPlease refer to the user manual for trouble shooting steps', 'image/coffee-maker2.jpg'),
(3, 'De\'Longhi ECAM23260SB Magnifica Smart Espresso & Cappuccino Maker', 'maker', 745.99, 899.99, 'The double shot feature makes your preferred drink, just taller! It doubles the amount of coffee and milk/*/\r\nIntegrated stainless steel burr grinder with 13 adjustable settings for whole beans and second chamber for pre-ground coffee/*/\r\nConveniently clean the milk carafe by selecting the auto clean function to perform a rinse cycle/*/\r\n8.8oz whole bean container with flavor saving bean container lid/*/\r\n60oz water tank with water level indicator and filtration system/*/\r\nUtilize De\'Longhi\'s specialized call center for help in setting up and maintaining your machine at 866-528-8323 (LatteBest)', 'image/coffee-maker3.jpg'),
(4, 'Kenmore 40706 12-Cup Programmable Aroma Control Coffee Maker in Stainless Steel', 'maker', 49.99, 59.99, '12-cup glass carafe and an outer water gauge lets you fill the right amount of water for a large party or a party of 1/*/\r\nProgrammable timer lets you set it for the exact time you want it ready/*/\r\nPause and serve feature lets you pour your first cup before the entire pot is brewed. Non-stick coated plate keeps coffee warm./*/\r\nState-of-the-art brewing technology steeps the grounds before releasing the coffee into the carafe for a richer, more satisfying cup/*/\r\nIncludes gold tone filter and carbon filter that help eliminate impurities from unfiltered water', 'image/coffee-maker4.jpg'),
(5, 'AmazonFresh Colombia Whole Bean Coffee, Medium Roast', 'bean', 14.72, 15.49, 'Balanced, full-bodied medium roast coffee with a smooth finish/*/\r\nOne 32-ounce bag of whole bean coffee/*/\r\n100% Arabica coffee grown in Colombia/*/\r\nRoasted and packed in the U.S.A./*/\r\nShown as a serving suggestion', 'image/coffee-bean1.jpg'),
(6, 'Koffee Kult Dark Roast Coffee Beans - Highest Quality Gourmet - Whole Bean Coffee - Fresh Roasted Coffee Beans', 'bean', 25.99, 29.99, 'Dark roast whole coffee beans, Fresh without oil on beans not stale with oil from sitting on the shelf. This is the same gourmet whole bean coffee that we serve in our retail locations. Cupping Notes: big body, balanced medium acidity. with a crisp sweet finish. No oil on beans. Cupping Notes: Heavy Body, Smooth, Cinnamon, Bright with a long finish/*/\r\nVoted #1 for Strong Bold flavor but smooth. Not bitter with low acidity. Best choice of quality gourmet coffees./*/\r\nThis is a 100% arabica speciality grade coffee blend with beans from Colombia, Guatemala, and Sumatra./*/\r\nKoffee Kult is a family owned and operated artisan coffee roaster not a distributor, we roast our coffee, on our machines. You can visit our state of the art roasters that are environmentally friendly in person/*/\r\nWe want you to completely satisfied, if not we will happily refund your order. supremo coffee', 'image/coffee-bean2.jpg'),
(7, 'Starbucks Espresso Dark Roast Whole Bean Coffee', 'bean', 11.38, 11.98, 'Espresso Roast is intense, caramelly sweet and perfect with steamed milk/*/\r\nDarker-roasted coffees have fuller body with robust, bold taste/*/\r\nEnjoy the Starbucks coffee you love without leaving the house/*/\r\nFor finest taste, always use clean, filtered water; clean your machine before using; and grind beans just before brewing/*/\r\nEach pack includes a 20-ounce bag of whole-bean Starbucks coffee', 'image/coffee-bean3.jpg'),
(8, 'Stone Street Coffee Tanzania Peaberry Fresh Roasted Coffee Whole Bean Coffee', 'bean', 14.24, 14.99, 'TANZANIAN PEABERRY: These 100% Arabica whole coffee beans are grown on the slopes of Mount Kilimanjaro with rich volcanic soils & perfect climate conditions./*/\r\nTASTING NOTES: This gourmet African coffee displays many characteristics of Kenyan coffee, though much lighter in acidity. Wonderfully smooth and full-bodied this coffee is fairly rich in flavor but not overpowering. The taste is clean and crisp./*/\r\nWHAT IS A PEABERRY? This coffee is rare; only 10% of all coffee beans are considered peaberry. The beans are small & round with a cleft in the middle; they have a richer flavor than their oval- shaped counterparts, often rendering a livelier cup with a full body and distinguished aroma/*/\r\nNO SLEEP \'TIL BROOKLYN: We\'re a \'Micro-Roasterie\' roaster located in the heart of Brooklyn, NYC and we\'ve been roasting delicious coffee since 2009./*/\r\nFRESH SPECIALTY MICRO-ROASTED COFFEE: We are dedicated to the fine art of handcrafted coffees. We only roast in small batches using state-of-the-art equipment so that we are able to expertly develop the flavor profile & unique characteristics of each coffee bean.', 'image/coffee-bean4.jpg'),
(9, 'KeepCup Brew Glass Reusable Coffee Cup(Mug), 12 oz/Medium', 'cup', 22.99, 32, 'BPA free; non toxic; lid manufactured from polypropylene/*/\r\nTough; durable; fully-tempered soda-lime glass; recyclable/*/\r\nNew improved lid with larger drinking hole and inner seal. Meets OSHA (occupational safety and health) standards/*/\r\nMicrowave safe; lightweight and hard-wearing materials/*/\r\nFor Keep Cup Brew we estimate breakeven to be as low as 10 uses', 'image/coffee-cup1.jpg'),
(10, 'Ember Temperature Control Ceramic Mug', 'cup', 65.99, 75.85, 'Remotely adjust to your ideal temperature/*/\r\nSelect your personalized LED color/*/\r\nChoose and save your presets for different drinks/*/\r\nSwitch between Celsius and Fahrenheit', 'image/coffee-cup2.jpg'),
(11, 'Camp Casual CC-004W Mug ', 'cup', 16.27, 19.99, '15 oz. Sturdy Ceramic Green Speckled Mug/*/\r\nDishwasher & Microwave Safe/*/\r\nFDA Approved/*/\r\nGreat for RVing, camping, picnics, tailgating and outdoor activities', 'image/coffee-cup3.jpg'),
(12, 'Oh For Fox Sake 11 oz. Mug, Funny Coffee Cup, Humor', 'cup', 14.95, 19.95, 'Our premium 11 oz mug is printed on both sides in our Indiana workshop using a heavy duty dye sublimation technique that uses extreme heat and pressure. Dye sublimation gives a great depth of color and is very wear and scratch resistant./*/ \r\nThey are made of Ceramic, UV Protected, FDA Compliant, Microwave and Dishwasher Safe.', 'image/coffee-cup4.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `PRODUCTS`
--

CREATE TABLE `PRODUCTS` (
  `PRODID` int(11) NOT NULL,
  `PRODUCTNAME` varchar(64) DEFAULT NULL,
  `MANUFACTURER` varchar(64) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `PRICE` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `PRODUCTS`
--

INSERT INTO `PRODUCTS` (`PRODID`, `PRODUCTNAME`, `MANUFACTURER`, `DESCRIPTION`, `PRICE`) VALUES
(1, 'Blender', 'Breville', 'A fantastic wand blender', 99.99),
(2, 'Coffee Master', 'Sunbeam', 'Single boiler machine with grinder attachment', 699.99),
(3, 'Teapot', 'TeeeeeStore', 'China teapot', 19.99);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `CUSTOMERS`
--
ALTER TABLE `CUSTOMERS`
  ADD PRIMARY KEY (`CUSTID`);

--
-- Indexes for table `EVENTS`
--
ALTER TABLE `EVENTS`
  ADD PRIMARY KEY (`EVENTID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `PRODUCTS`
--
ALTER TABLE `PRODUCTS`
  ADD PRIMARY KEY (`PRODID`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `CUSTOMERS`
--
ALTER TABLE `CUSTOMERS`
  MODIFY `CUSTID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 使用表AUTO_INCREMENT `EVENTS`
--
ALTER TABLE `EVENTS`
  MODIFY `EVENTID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 使用表AUTO_INCREMENT `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- 使用表AUTO_INCREMENT `PRODUCTS`
--
ALTER TABLE `PRODUCTS`
  MODIFY `PRODID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
