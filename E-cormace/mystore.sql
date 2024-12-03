-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2024 at 12:22 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mystore`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`, `created_at`) VALUES
(1, 'adam', '$2y$10$WJHh2AviLRHVzFKmH9CYTuRQkmkel.mup0FfVlyiiMAD.cQ6Gqk5e', '2024-11-10 20:28:55');

-- --------------------------------------------------------

--
-- Table structure for table `cart_details`
--

CREATE TABLE `cart_details` (
  `id` int(11) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `added_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart_details`
--

INSERT INTO `cart_details` (`id`, `ip_address`, `product_id`, `quantity`, `added_at`) VALUES
(44, '::1', 7, 10, '2024-12-03 06:28:40');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(100) NOT NULL,
  `category_title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_title`) VALUES
(0, 'friuts'),
(1, 'Snacks'),
(2, 'drinks'),
(3, 'juice '),
(4, 'foods '),
(6, ''),
(7, 'snaks');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `message`, `created_at`) VALUES
(1, 'Adam Safiyanu', 'adamsafiaynuabubakar2@gmail.com', 'hello! \r\nhow are you doing today', '2024-08-01 23:12:38'),
(2, 'Adam Safiyanu', 'adamsafiaynuabubakar2@gmail.com', 'hi', '2024-08-02 01:17:25'),
(3, 'Abdullahi Ali Gezawa', 'aliabdullahigezawa@gmail.com', 'hello!\r\nim Abdullahi Ali Gezawa', '2024-08-02 02:56:33'),
(4, 'Adam Safiyanu', 'adamsafiaynuabubakar2@gmail.com', 'dsfd', '2024-08-02 06:43:58'),
(5, 'Adam Safiyanu', 'salihusafiyanu@hotmail.com', 'fine', '2024-08-11 23:39:49'),
(6, 'zakariyya abdurrahman', 'darecter@gmail.com', 'hello\r\nwant to know more about you', '2024-10-07 18:17:11'),
(7, 'Adam Adam', 'adamadam2@gmail.com', 'adam is waiting\r\n', '2024-10-22 16:02:28'),
(8, 'Adam Safiyanu', 'adamsafiaynuabubakar2@gmail.com', 'yjugnu', '2024-10-22 16:05:43');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `order_status` varchar(255) NOT NULL,
  `total_price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `order_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `order_status` varchar(50) DEFAULT 'Pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`order_id`, `name`, `email`, `phone`, `address`, `ip_address`, `total_price`, `payment_method`, `order_status`, `created_at`, `user_id`) VALUES
(2, 'zakariyya abdurrahman', 'darecter@gmail.com', '07011268345', 'Lincoln unversity college room 10', '::1', 0.00, 'Delivery', 'Accepted', '2024-10-12 18:22:29', NULL),
(3, 'Adam Safiyanu', 'adamsafiyanu19@gmail.com', '07011268345', 'Police housing estate kurudu fct', '::1', 0.00, 'Delivery', 'Accepted', '2024-10-12 19:02:31', NULL),
(5, 'Adam Safiyanu', 'adamsafiaynuabubakar2@gmail.com', '07011268346', 'Gaida fulani, kano,Nigeria', '::1', 0.00, 'Delivery', 'Accepted', '2024-10-16 16:01:44', NULL),
(6, 'Adam Safiyanu abubakar', 'adamsafiaynuabubakar2@gmail.com', '07011268346', 'Gaida fulani, kano,Nigeria', '::1', 0.00, 'Delivery', 'Accepted', '2024-11-05 22:04:22', NULL),
(7, 'Adam Safiyanu', 'adamsafiaynuabubakar2@gmail.com', '07011268346', 'Gaida fulani, kano,Nigeria', '::1', 0.00, 'Delivery', 'Pending', '2024-11-11 06:54:30', NULL),
(8, 'umar adam', 'umaradam@gmail.com', '09048852089', 'Room 9', '::1', 0.00, 'Delivery', 'Pending', '2024-11-14 13:55:53', NULL),
(9, 'umar adam', 'umaradam@gmail.com', '07011268346', 'Gaida fulani, kano,Nigeria', '::1', 0.00, 'Delivery', 'Pending', '2024-11-14 14:04:59', NULL),
(11, 'Adam Safiyanu', 'adamsafiaynuabubakar2@gmail.com', '07011268346', 'Gaida fulani, kano,Nigeria', '::1', 0.00, 'Delivery', 'pending', '2024-11-16 13:59:53', 4),
(12, 'ibrahim safiyanu', 'ibrahimsafiyanu@gmail.com', '09122338933', 'kano sate', '::1', 0.00, 'Delivery', 'pending', '2024-11-16 14:30:59', 4),
(13, 'Abubakar Safiyanu', 'abubakarsafiyanu@gmail.com', '09022338933', 'kumbotso', '::1', 0.00, 'Delivery', 'pending', '2024-11-16 16:30:57', 4),
(14, 'khalid', 'khalidsamin193@gmail.com', '80128425767', ' 110 yahaya galadima road rigasa kaduna', '::1', 0.00, 'Delivery', 'Accepted', '2024-11-17 20:15:30', 10),
(15, 'Adam Safiyanu', 'adamsafiaynuabubakar2@gmail.com', '07011268346', 'Gaida fulani, kano,Nigeria', '::1', 0.00, 'Delivery', 'pending', '2024-11-27 10:25:49', 4);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_description` varchar(255) NOT NULL,
  `product_keywords` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_price` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_title`, `product_description`, `product_keywords`, `category_id`, `product_image`, `product_price`, `date`, `status`) VALUES
(1, 'Coca-Cola', 'The Coca‑Cola Company\'s purpose is to refresh the world and make a difference and we have remained true', 'Coca-Cola,drinks', 2, 'cocacola.jpg', '550', '2024-11-05 21:29:38', 'true'),
(5, 'Egg roll', 'The egg roll is a variety of deep-fried appetizer served in American Chinese restaurants. It is a cylindrical, ', 'Egg roll,snacks', 1, 'egg roll.jpg', '400', '2024-07-31 14:10:51', 'true'),
(6, 'Buger', 'Buger is a classic and refined last with a modern touch. Squared on the toe and featuring a standard instep', 'Buger,snacks', 1, 'buger.png', '2500', '2024-10-16 16:00:40', 'true'),
(7, 'Maltina', 'Maltina Glass Bottle contains a smooth, nourishing malt drink with complete richness. L wvitamins', 'maltina,drinks', 2, 'multina 1.jpg', '800', '2024-10-16 15:37:55', 'true'),
(8, 'Meat pie', 'This meat pie features beef, pork, and potato with herbs and warm spices for a super-comforting meal. ', 'Meat pie,snacks', 1, 'meat pie.png', '200', '2024-07-31 14:11:31', 'true'),
(9, 'Donut', 'A doughnut or donut is a type of pastry made from leavened fried dough. It is popular in many countries ', 'donut,snacks', 1, 'donut.jpg', '600', '2024-07-31 14:11:55', 'true'),
(10, 'Coca-Cola', 'Coca-Cola, or Coke, is a carbonated soft drink with a cola flavor manufactured by the Coca-Cola. ', 'Coca-Cola,drinks', 2, 'cocacola 1.jpg', '700', '2024-08-02 02:54:10', 'true'),
(11, 'Fanta', 'Fanta is an American-owned brand of fruit-flavored carbonated soft drink created by Coca-Cola.', 'fanta,drinks ', 2, 'fanta.jpg', '700', '2024-08-04 04:48:27', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `user_table`
--

CREATE TABLE `user_table` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `user_email` varchar(200) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_ip` varchar(100) NOT NULL,
  `user_address` varchar(255) NOT NULL,
  `user_mobile` varchar(20) NOT NULL,
  `user_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_table`
--

INSERT INTO `user_table` (`user_id`, `username`, `user_email`, `user_password`, `user_ip`, `user_address`, `user_mobile`, `user_image`) VALUES
(3, 'asisadam', 'adamsafiaynuabubakar2@gmail.com', '$2y$10$H6naZBdOabyIud.vhkHPxuKPyqdGWW.MCGeQIEwVBuVdZIn3mmvo2', '::1', 'Nasarawa qrts,kano sate,Nigeria', '708086860', 'profile.jpeg'),
(4, 'Adamsafi', 'adamsafiaynuabubakar22@gmail.com', '$2y$10$FqThbu.RR2cTMFkNwLkLveYMmlW1kr5t/5EOI55iHIpvWQN8.GX3W', '::1', 'Nasarawa qrts,kano sate,Nigeria', '70808687', '1731774856_profile 1.jpg'),
(5, 'salihu', 'salihusafiyanu@gmail.com', '$2y$10$urR.20.V4dSw4XSGrz3i1O024AO0BdTfFjW3VMdxnytRJNJZnIOx2', '::1', 'naibawa', '07048852089', 'admin.PNG'),
(6, 'salihu', 'adamsafiaynuabubakar26@gmail.com', '$2y$10$hvbL88zxmdiyMrY5kLhvOejRqTP52XOmcyuaT0FNTXEyFJ2N.WuTK', '::1', 'kano', '8086868110', 'sammple.PNG'),
(9, 'salihu', 'khalidsamin193@gmail.com', '$2y$10$2KISPVia53mAW/smG0Dw0ucsK0NVrXkDXpBPc2VrHPmTq0hQO5Ar6', '::1', '110 kaya road rigasa kuduna', '08128425767', 'profile 6.jpg'),
(10, 'khalid', 'khalidsamin193@gma', '$2y$10$OAMqa8z7DfJF.XkdkNUatO0l79yEkRAPOfMcGQj6FfIA6Z0mzT0tC', '::1', '110 yahaya galadima road rigasa kaduna', '08128425767', 'profile.jpeg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `cart_details`
--
ALTER TABLE `cart_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cart_details`
--
ALTER TABLE `cart_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user_table`
--
ALTER TABLE `user_table`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart_details`
--
ALTER TABLE `cart_details`
  ADD CONSTRAINT `cart_details_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_table` (`user_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
