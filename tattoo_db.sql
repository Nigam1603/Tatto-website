-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 14, 2020 at 10:14 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tattoo_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `appointment_id` int(10) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `tattoo_id` int(11) NOT NULL,
  `piercing_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `appointment_date` datetime NOT NULL,
  `appointment_time` varchar(10) NOT NULL,
  `app_status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`appointment_id`, `shop_id`, `tattoo_id`, `piercing_id`, `user_id`, `appointment_date`, `appointment_time`, `app_status`) VALUES
(1, 1, 3, 0, 1, '2020-09-18 00:00:00', '18:35', 'Completed'),
(2, 3, 5, 0, 1, '2020-09-23 00:00:00', '20:36', 'Completed'),
(3, 1, 4, 0, 1, '2020-10-02 00:00:00', '19:55', 'Pending'),
(6, 1, 0, 2, 1, '2020-09-16 00:00:00', '14:25', 'Pending'),
(7, 5, 9, 0, 1, '2020-09-01 00:00:00', '12:39', 'Pending'),
(8, 1, 4, 0, 1, '2020-09-11 00:00:00', '13:41', 'Pending'),
(9, 1, 6, 0, 1, '0000-00-00 00:00:00', '', 'Pending'),
(10, 1, 0, 2, 0, '0000-00-00 00:00:00', '', 'Pending'),
(11, 1, 0, 2, 0, '2020-09-25 00:00:00', '14:01', 'Pending'),
(12, 1, 0, 2, 0, '2020-09-25 00:00:00', '14:01', 'Pending'),
(13, 1, 0, 4, 1, '2020-09-10 00:00:00', '14:02', 'Pending'),
(19, 1, 4, 0, 3, '2020-09-20 00:00:00', '19:15', 'Completed'),
(20, 1, 0, 2, 3, '2020-08-20 00:00:00', '18:24', 'Pending'),
(21, 1, 0, 4, 3, '2020-09-30 00:00:00', '17:30', 'Completed'),
(26, 5, 9, 0, 3, '2020-09-29 00:00:00', '02:45', 'Completed'),
(27, 1, 4, 0, 3, '2020-09-29 00:00:00', '15:35', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE `area` (
  `area_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `area_name` varchar(30) NOT NULL,
  `area_status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `area`
--

INSERT INTO `area` (`area_id`, `country_id`, `city_id`, `area_name`, `area_status`) VALUES
(1, 1, 1, 'NSW', 'Active'),
(4, 1, 3, 'dhamasana', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `catagories`
--

CREATE TABLE `catagories` (
  `cat_id` int(10) NOT NULL,
  `cat_name` varchar(20) NOT NULL,
  `cat_description` text NOT NULL,
  `cat_image` varchar(50) NOT NULL,
  `cat_status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `catagories`
--

INSERT INTO `catagories` (`cat_id`, `cat_name`, `cat_description`, `cat_image`, `cat_status`) VALUES
(29, 'tattoo1', 'demo1', 'IMG_E1451.JPG', 'Active'),
(30, '', '', '', 'none');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_id` int(10) NOT NULL,
  `country_id` int(11) NOT NULL,
  `city_name` varchar(20) NOT NULL,
  `city_status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `country_id`, `city_name`, `city_status`) VALUES
(1, 1, 'Kalol', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `user_id` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `subject` varchar(20) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`user_id`, `email`, `subject`, `message`) VALUES
(3, 'np@gmail.com', 'tattoo', 'hii');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `country_id` int(10) NOT NULL,
  `country_name` varchar(20) NOT NULL,
  `country_status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `country_name`, `country_status`) VALUES
(1, 'India', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feed_id` int(11) NOT NULL,
  `user_id` int(30) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `feedback` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `inquiry`
--

CREATE TABLE `inquiry` (
  `inq_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `inq_msg` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inquiry`
--

INSERT INTO `inquiry` (`inq_id`, `user_id`, `shop_id`, `inq_msg`) VALUES
(1, 1, 1, 'hweijijij');

-- --------------------------------------------------------

--
-- Table structure for table `order_list`
--

CREATE TABLE `order_list` (
  `order_id` int(10) NOT NULL,
  `user_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `user_phone` varchar(15) NOT NULL,
  `inch` varchar(10) NOT NULL,
  `price` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_list`
--

INSERT INTO `order_list` (`order_id`, `user_id`, `shop_id`, `username`, `user_phone`, `inch`, `price`, `status`) VALUES
(1, 3, 1, 'akshat', '8128282422', '2', '300', 'Active'),
(2, 3, 1, 'akshat', '8128282422', '2', '300', 'Deactive');

-- --------------------------------------------------------

--
-- Table structure for table `piercing`
--

CREATE TABLE `piercing` (
  `piercing_id` int(10) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `style` varchar(50) NOT NULL,
  `pie_disc` varchar(200) NOT NULL,
  `price` varchar(15) NOT NULL,
  `pie_image` varchar(50) NOT NULL,
  `pie_status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `piercing`
--

INSERT INTO `piercing` (`piercing_id`, `shop_id`, `style`, `pie_disc`, `price`, `pie_image`, `pie_status`) VALUES
(2, 1, 'piercing', 'dxhfjhcg', '300', '14.jpg', 'Active'),
(3, 0, 'piercing', 'dxhfjhcg', '600', '16.jpg', 'Active'),
(4, 1, 'piercing', 'dxhfjhcg', '800', '17.jpg', 'Active'),
(5, 3, 'piercing', 'faertgeh', '300', '17.jpg', 'Active'),
(6, 5, 'piercing', 'faertgeh', '400', '16.jpg', 'Active'),
(7, 10, 'piercing', 'nfdb sdfsaf bwaergf defvawe', '600', '16.jpg', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `ser_id` int(11) NOT NULL,
  `style` varchar(20) NOT NULL,
  `ser_status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`ser_id`, `style`, `ser_status`) VALUES
(16, 'Hand tattoo', 'Active'),
(17, 'piercing', 'Active'),
(18, 'real tattoo', 'Active'),
(19, 'water tattoo', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `shop_id` int(10) NOT NULL,
  `shop_name` varchar(20) NOT NULL,
  `owner_name` varchar(20) NOT NULL,
  `owner_email` varchar(30) NOT NULL,
  `owner_contact` varchar(15) NOT NULL,
  `owner_password` varchar(10) NOT NULL,
  `owner_image` varchar(30) NOT NULL,
  `services` varchar(100) NOT NULL,
  `city_id` int(10) NOT NULL,
  `otp` int(11) NOT NULL,
  `otp_used` int(11) NOT NULL,
  `create_at` datetime NOT NULL,
  `shop_address` varchar(200) NOT NULL,
  `shop_image` varchar(30) NOT NULL,
  `shop_disc` varchar(1000) NOT NULL,
  `shop_location` varchar(1000) NOT NULL,
  `status` varchar(10) NOT NULL,
  `monday` varchar(15) NOT NULL,
  `tuesday` varchar(15) NOT NULL,
  `wednesday` varchar(15) NOT NULL,
  `thursday` varchar(15) NOT NULL,
  `friday` varchar(15) NOT NULL,
  `saturday` varchar(15) NOT NULL,
  `sunday` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shops`
--

INSERT INTO `shops` (`shop_id`, `shop_name`, `owner_name`, `owner_email`, `owner_contact`, `owner_password`, `owner_image`, `services`, `city_id`, `otp`, `otp_used`, `create_at`, `shop_address`, `shop_image`, `shop_disc`, `shop_location`, `status`, `monday`, `tuesday`, `wednesday`, `thursday`, `friday`, `saturday`, `sunday`) VALUES
(1, 'Naughty Devil Tattoo', 'Dipen Patel', 'dipen@gmail.com', ' 095102 66422', '1234', '7.jfif', 'piercing', 1, 0, 1, '2020-09-08 17:39:16', 'F 52 First Floor City Mall 1, Navjivan Mill Compound, Kalol, Gandhinagar-Gujarat - 382721, Opposite Mafia Western Outfit', '1.jpg', 'A tattoo is a form of body modification where a design is made by inserting ink, dyes and pigments, either indelible or temporary, into the dermis layer of the skin to change the pigment. The art of making tattoos is tattooing.  Tattoos fall into three broad categories: purely decorative (with no specific meaning); symbolic (with a specific meaning pertinent to the wearer); and pictorial (a depiction of a specific person or item). In addition, tattoos can be used for identification such as ear tattoos on livestock as a form of branding.[1]', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3666.0661692369454!2d72.50022771409887!3d23.240679084843023!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x395c25e18c65dc79%3A0x19c0751bc068e0d1!2sNaughty%20Devil%20Tattoos%20%26%20Piercings!5e0!3m2!1sen!2sin!4v1599737033011!5m2!1sen!2sin', 'Active', '9AM-6PM', '9AM-6PM', '9AM-6PM', '9AM-6PM', '9AM-6PM', '9AM-6PM', 'close'),
(3, 'the tattooz', 'Akshat Patel', 'ap@gmail.com', '', '123', '7.jfif', '', 0, 0, 0, '0000-00-00 00:00:00', 'kalol', '2.jpg', 'The word tattoo, or tattow in the 18th century, is a loanword from the Samoan word tatau, meaning \"to strike\".[2][3] The Oxford English Dictionary gives the etymology of tattoo as \"In 18th c. tattaow, tattow. From Polynesian (Samoan, Tahitian, Tongan, etc.) tatau. In Marquesan, tatu.\" Before the importation of the Polynesian word, the practice of tattooing had been described in the West as painting, scarring or staining.[4]  The etymology of the body modification term is not to be confused with the origins of the word for the military drumbeat or performance — see military tattoo. In this case, the English word tattoo is derived from the Dutch word taptoe.[5]  Copyrighted tattoo designs that are mass-produced and sent to tattoo artists are known as \"flash\", a notable instance of industrial design.[6] Flash sheets are prominently displayed in many tattoo parlors for the purpose of providing both inspiration and ready-made tattoo images to customers', '', 'Active', '', '', '', '', '', '', ''),
(5, 'tattooda', 'Dipen Patel', 'nk1@gmail.com', '', '1234', 'IMG_E1452.JPG', '', 1, 0, 0, '0000-00-00 00:00:00', 'kalol', '3.jpg', 'A traumatic tattoo occurs when a substance such as asphalt or gunpowder is rubbed into a wound as the result of some kind of accident or trauma.[11] Coal miners could develop characteristic tattoos owing to coal dust getting into wounds.[12] These are particularly difficult to remove as they tend to be spread across several layers of skin, and scarring or permanent discoloration is almost unavoidable depending on the location. An amalgam tattoo is when amalgam particles are implanted in to the soft tissues of the mouth, usually the gums, during dental filling placement or removal.[13] Another example of such accidental tattoos is the result of a deliberate or accidental stabbing with a pencil or pen, leaving graphite or ink beneath the skin.', '', 'Active', '', '', '', '', '', '', ''),
(8, 'fiesta tattoo studio', 'nigam', 'nigam1@gmail.com', '', 'cdv', 'IMG_E1450.JPG', 'Hand tattoo', 1, 998053, 0, '2020-09-08 16:33:10', 'ef', '6.jpg', 'cdcsdv cvdfbsdth bnrdtyj hhbdx srgret', '', 'Active', '', '', '', '', '', '', ''),
(10, 'Your Tattoo', 'Akshat Patel', 'nigam@gmail.com', '', '123', 'IMG_E1450.JPG', 'Real Tattoo', 1, 0, 0, '0000-00-00 00:00:00', 'kalol', '7.jpg', 'Professional Tattoo & Piercing Studio since 2014', '', 'Active', '10AM-5PM', '10AM-5PM', '10AM-5PM', '10AM-5PM', '10AM-5PM', '10AM-5PM', 'Closed');

-- --------------------------------------------------------

--
-- Table structure for table `superadmin`
--

CREATE TABLE `superadmin` (
  `sup_admin_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  `profile_picture` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `superadmin`
--

INSERT INTO `superadmin` (`sup_admin_id`, `email`, `password`, `profile_picture`) VALUES
(1, 'admin@gmail.com', '1234', 'IMG_E1445.JPG');

-- --------------------------------------------------------

--
-- Table structure for table `tattoo`
--

CREATE TABLE `tattoo` (
  `tattoo_id` int(10) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `style` varchar(50) NOT NULL,
  `tattoo_disc` varchar(200) NOT NULL,
  `price` varchar(10) NOT NULL,
  `tat_image` varchar(50) NOT NULL,
  `tat_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tattoo`
--

INSERT INTO `tattoo` (`tattoo_id`, `shop_id`, `style`, `tattoo_disc`, `price`, `tat_image`, `tat_status`) VALUES
(4, 1, 'hand tattoo', 'wdawd', '500/inch', '4.jpg', 'Active'),
(5, 1, 'body tattoo', 'cdvdsVDSv', '600/inch', '12.jpg', 'Active'),
(6, 1, 'hand tattoo', 'lorem ipsum  csakjj ncsaSd mdkfll fkqlawsdj', '700/inch', '1.jpg', 'Active'),
(7, 3, 'hand tattoo', 'lorem ipsum  csakjj ncsaSd mdkfll fkqlawsdj', '600/inch', '13.jpg', 'Active'),
(8, 5, 'hand tattoo', 'lorem ipsum  csakjj ncsaSd mdkfll fkqlawsdj', '800/inch', '5.jpg', 'Active'),
(9, 5, 'hand tattoo', 'cdvdsVDSv', '500/inch', '6.jpg', 'Active'),
(10, 5, 'body tattoo', 'wdawd', '500/inch', '7.jpg', 'Active'),
(11, 3, 'body tattoo', 'lorem ipsum  csakjj ncsaSd mdkfll fkqlawsdj', '700/inch', '10.jpg', 'Active'),
(12, 10, 'hand tattoo', 'lorem ipsum  csakjj ncsaSd mdkfll fkqlawsdj', '500/inch', 'hand.jpg', 'Active'),
(14, 10, 'body tattoo', 'wdawd', '800/inch', '11.jpg', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `user_register`
--

CREATE TABLE `user_register` (
  `user_id` int(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `image` varchar(30) NOT NULL,
  `phonenumber` varchar(15) NOT NULL,
  `password` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `city_id` int(11) NOT NULL,
  `otp` int(11) NOT NULL,
  `otp_used` int(11) NOT NULL,
  `create_at` datetime NOT NULL,
  `pincode` varchar(6) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_register`
--

INSERT INTO `user_register` (`user_id`, `username`, `email`, `image`, `phonenumber`, `password`, `gender`, `city_id`, `otp`, `otp_used`, `create_at`, `pincode`, `status`) VALUES
(3, 'shival mehta', 'sm@gmail.com', 'IMG_E1445.JPG', '9876543210', '1234', 'Female', 1, 0, 0, '0000-00-00 00:00:00', '382740', 'Active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`appointment_id`);

--
-- Indexes for table `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`area_id`);

--
-- Indexes for table `catagories`
--
ALTER TABLE `catagories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feed_id`);

--
-- Indexes for table `inquiry`
--
ALTER TABLE `inquiry`
  ADD PRIMARY KEY (`inq_id`);

--
-- Indexes for table `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `piercing`
--
ALTER TABLE `piercing`
  ADD PRIMARY KEY (`piercing_id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`ser_id`);

--
-- Indexes for table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`shop_id`);

--
-- Indexes for table `superadmin`
--
ALTER TABLE `superadmin`
  ADD PRIMARY KEY (`sup_admin_id`);

--
-- Indexes for table `tattoo`
--
ALTER TABLE `tattoo`
  ADD PRIMARY KEY (`tattoo_id`);

--
-- Indexes for table `user_register`
--
ALTER TABLE `user_register`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `appointment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `area`
--
ALTER TABLE `area`
  MODIFY `area_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `catagories`
--
ALTER TABLE `catagories`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `country_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feed_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `inquiry`
--
ALTER TABLE `inquiry`
  MODIFY `inq_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_list`
--
ALTER TABLE `order_list`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `piercing`
--
ALTER TABLE `piercing`
  MODIFY `piercing_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `ser_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `shops`
--
ALTER TABLE `shops`
  MODIFY `shop_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `superadmin`
--
ALTER TABLE `superadmin`
  MODIFY `sup_admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tattoo`
--
ALTER TABLE `tattoo`
  MODIFY `tattoo_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user_register`
--
ALTER TABLE `user_register`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
