-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 28, 2025 at 12:56 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce-api`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) DEFAULT NULL,
  `phone` varchar(30) NOT NULL,
  `street_address` varchar(100) NOT NULL,
  `postal_code` varchar(30) NOT NULL,
  `city` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `firstname`, `lastname`, `email`, `password`, `phone`, `street_address`, `postal_code`, `city`, `country`, `created_at`) VALUES
(1, 'Alice', 'Johnson', 'alice.johnson@example.com', 'hashed_password_1', '123-456-7890', '123 Main St', '10001', 'Washington', 'CANADA', '2025-03-10 11:05:37'),
(2, 'Boby', 'Smith', 'bob.smith@example.com', 'hashed_password_2', '987-654-3210', '456 Elm St', '20002', 'Los Angeles', 'USA', '2025-03-10 11:05:37'),
(3, 'Charlie', 'Brown', 'charlie.brown@example.com', 'hashed_password_3', '555-555-5555', '789 Oak St', '30003', 'Chicago', 'USA', '2025-03-10 11:05:37'),
(5, 'Simon', 'Olsson', 'simon.olsson@gmail.com', 'simon123', '07011223344', 'tjärnstigen 14', '13562', 'Tyresö', 'Sverige', '2025-03-15 06:23:59'),
(52, 'Elin', 'Sabel', 'e@live.se', NULL, '0760868601', 'Ankargatan 25', '723 48', 'Vasteras', 'Sweden', '2025-03-26 09:22:10'),
(53, 'Elin', 'Sabel', 'elin.olsson@gmail.com', NULL, '0760868601', 'Ankargatan 25', '723 48', 'Vasteras', 'Sweden', '2025-03-26 10:16:22'),
(54, 'Elin', 'Sabel', 'elin.sabel@live.se', NULL, '0760868601', 'Ankargatan 25', '723 48', 'Vasteras', 'Sweden', '2025-03-26 15:00:49'),
(55, 'elin', 'sabel', 'test', 'test', 'test', 'test', 'test', 'test', 'Albania', '2025-03-26 15:52:06'),
(56, 'elin', 'sabel', 'test@gmail.com', '', 'test', 'test', 'test', 'test', 'Albania', '2025-03-26 15:52:31'),
(57, 'test', 'test', 'test@gmal.com', NULL, 'test', 'trdt', '1232tt', 'twttw', 'Central African Republic', '2025-03-26 15:57:10'),
(58, 'Jenny', 'Gillmore', 'j.g@hotmail.com', NULL, '0102229992', 'tad', '12344', 'CTY', 'Azerbaijan', '2025-03-27 13:55:27');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `total_price` int(5) NOT NULL,
  `payment_status` varchar(30) NOT NULL,
  `payment_id` varchar(200) DEFAULT NULL,
  `order_status` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `total_price`, `payment_status`, `payment_id`, `order_status`, `created_at`) VALUES
(137421, 54, 200, 'Paid', 'cs_test_a1ClRm0lqOU0jFzzxWOVKHaW8FOx3ncu9UrPA6pLNOgav8vIrFGjGG5eKd', 'Received', '2025-03-26 16:53:49'),
(137422, 54, 2086, 'Paid', 'cs_test_b1AT20NDnDAOW9xIHmBDzvNeNioumU78wNE8lEGuNyJq0ZWxDT48AIwdk5', 'Received', '2025-03-26 17:04:08'),
(137451, 54, 1191, 'Paid', 'cs_test_a1i1wzvlqtrOyuYEp70roZBk6zbF3ZhCs8QVCsuHDtGWTJfPxioZ6EzSPV', 'Received', '2025-03-27 13:38:08'),
(137452, 54, 137, 'Paid', 'cs_test_b1QJ59uNTmJuD01fncwFIYjtv2yyrGISvbaggpOVVeWovdoLJMloCD272F', 'Received', '2025-03-27 13:48:13'),
(137453, 5, 459, 'Paid', 'cs_test_b1nugFwVwYE5JcWiwpw67LAUaxfd74mEZKJ7UeinxDZuU3B1IuZweecKSo', 'Received', '2025-03-27 13:52:46'),
(137455, 58, 20, 'Paid', 'cs_test_a1MUQcUVdWeHHcuLMPwz6gStNCPf03WlsMLkgfjneHICCmHoBO407KEv5Q', 'Received', '2025-03-27 13:55:27'),
(137457, 54, 1500, 'Paid', 'cs_test_a16jXCBVmbBgeWN1i7Foj4FP3kUVtW9BzMrQVhICExQPATEQ3hW5V61K0N', 'Received', '2025-03-28 08:34:21');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(10) NOT NULL,
  `order_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_image` varchar(200) NOT NULL,
  `quantity` int(5) NOT NULL,
  `unit_price` int(5) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `product_name`, `product_image`, `quantity`, `unit_price`, `created_at`) VALUES
(274814, 137421, 26, 'Cookies', 'https://t4.ftcdn.net/jpg/06/76/66/39/360_F_676663959_jcE1oIYNF9qgx7FTSSMy6DHxsRkFHTyO.jpg', 1, 200, '2025-03-26 16:53:49'),
(274815, 137422, 13, 'Horse Toy', 'https://m.media-amazon.com/images/I/617KS+4yduL._AC_UF894,1000_QL80_.jpg', 1, 1191, '2025-03-26 17:04:08'),
(274816, 137422, 16, 'Ballons', 'https://www.partyhallen.se/cache/71/600x600-b_chrome-mirror-ballonger-treasures-mix-1.jpg', 1, 20, '2025-03-26 17:04:08'),
(274817, 137422, 26, 'Cookies', 'https://t4.ftcdn.net/jpg/06/76/66/39/360_F_676663959_jcE1oIYNF9qgx7FTSSMy6DHxsRkFHTyO.jpg', 1, 200, '2025-03-26 17:04:08'),
(274818, 137422, 28, 'Nail Polish', 'https://m.media-amazon.com/images/I/61u0jJEo1QL.__AC_SX300_SY300_QL70_ML2_.jpg', 2, 259, '2025-03-26 17:04:08'),
(274819, 137422, 32, 'Yoda Toy', 'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcQfqnbqzuNz2e9x5KXGDJXtEKz4nc-tZUMFt4RXZO-2kiiZl04rLPgJ6rnpn3avtkJ1GF58QfK2htaBdwj2DyjXeaIR9StaB4DjMhyQSCg&usqp=CAc', 1, 58, '2025-03-26 17:04:08'),
(274820, 137422, 35, 'Tire', 'https://www.valoroffroad.com/cdn/shop/files/Valor-Alpha-32x10R15-1.png?v=1706642978&width=1000', 1, 99, '2025-03-26 17:04:08'),
(274849, 137451, 13, 'Horse Toy', 'https://m.media-amazon.com/images/I/617KS+4yduL._AC_UF894,1000_QL80_.jpg', 1, 1191, '2025-03-27 13:38:08'),
(274850, 137452, 32, 'Yoda Toy', 'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcQfqnbqzuNz2e9x5KXGDJXtEKz4nc-tZUMFt4RXZO-2kiiZl04rLPgJ6rnpn3avtkJ1GF58QfK2htaBdwj2DyjXeaIR9StaB4DjMhyQSCg&usqp=CAc', 1, 58, '2025-03-27 13:48:13'),
(274851, 137452, 31, 'Girl Bike', 'https://m.media-amazon.com/images/I/81teHSjB89L._AC_SX679_.jpg', 1, 79, '2025-03-27 13:48:13'),
(274852, 137453, 28, 'Nail Polish', 'https://m.media-amazon.com/images/I/61u0jJEo1QL.__AC_SX300_SY300_QL70_ML2_.jpg', 1, 259, '2025-03-27 13:52:46'),
(274853, 137453, 26, 'Cookies', 'https://t4.ftcdn.net/jpg/06/76/66/39/360_F_676663959_jcE1oIYNF9qgx7FTSSMy6DHxsRkFHTyO.jpg', 1, 200, '2025-03-27 13:52:46'),
(274856, 137455, 16, 'Ballons', 'https://www.partyhallen.se/cache/71/600x600-b_chrome-mirror-ballonger-treasures-mix-1.jpg', 1, 20, '2025-03-27 13:55:27'),
(274859, 137457, 33, 'Diamond Necklace', 'https://pngimg.com/d/necklace_PNG43.png', 1, 1500, '2025-03-28 08:34:21');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` int(5) NOT NULL,
  `stock` int(4) NOT NULL,
  `category` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `stock`, `category`, `image`, `created_at`) VALUES
(13, 'Horse Toy', 'Brown Horse', 1191, 1, 'Live Animal', 'https://m.media-amazon.com/images/I/617KS+4yduL._AC_UF894,1000_QL80_.jpg', '2025-03-11 12:49:13'),
(16, 'Ballons', 'Colorful Ballons', 20, 2, 'Party', 'https://www.partyhallen.se/cache/71/600x600-b_chrome-mirror-ballonger-treasures-mix-1.jpg', '2025-03-11 14:29:52'),
(26, 'Cookies', 'Chocolate Chip Cookies', 200, 19, 'Baked Goods', 'https://t4.ftcdn.net/jpg/06/76/66/39/360_F_676663959_jcE1oIYNF9qgx7FTSSMy6DHxsRkFHTyO.jpg', '2025-03-13 14:53:54'),
(28, 'Nail Polish', 'Blue Nail Polish', 259, 39, 'Make-up', 'https://m.media-amazon.com/images/I/61u0jJEo1QL.__AC_SX300_SY300_QL70_ML2_.jpg', '2025-03-15 05:47:12'),
(29, 'Chocolate Cake', 'Chocolate Cake, Whipped Cream', 369, 56, 'Cakes and desserts', 'https://static.vecteezy.com/system/resources/previews/047/842/674/non_2x/black-forest-cake-with-chocolate-sponge-cake-cherries-and-whipped-cream-png.png', '2025-03-15 06:58:53'),
(30, 'Apple Headphones', 'Headphone With Banger Sound', 205, 50, 'Music', 'https://media.power-cdn.net/images/h-713c0b13159e61335c8c0909b3b55a60/products/3614402/3614402_12_1200x1200_t_g.webp', '2025-03-17 09:28:15'),
(31, 'Girl Bike', 'Supercool Unicorn Bike', 79, 9, 'Outdoor Sport', 'https://m.media-amazon.com/images/I/81teHSjB89L._AC_SX679_.jpg', '2025-03-17 09:32:25'),
(32, 'Yoda Toy', 'Yoda ', 58, 19, 'Toys', 'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcQfqnbqzuNz2e9x5KXGDJXtEKz4nc-tZUMFt4RXZO-2kiiZl04rLPgJ6rnpn3avtkJ1GF58QfK2htaBdwj2DyjXeaIR9StaB4DjMhyQSCg&usqp=CAc', '2025-03-17 14:26:30'),
(33, 'Diamond Necklace', '18Karat Diamond Neklace', 1500, 1, 'Jewellry', 'https://pngimg.com/d/necklace_PNG43.png', '2025-03-19 07:24:27'),
(34, 'Laptop ', '2025 Model Laptop', 759, 5, 'Computers', 'https://pngimg.com/d/laptop_PNG101811.png', '2025-03-19 07:53:42'),
(35, 'Tire', 'Black Tire', 99, 5, 'Car Parts', 'https://www.valoroffroad.com/cdn/shop/files/Valor-Alpha-32x10R15-1.png?v=1706642978&width=1000', '2025-03-21 06:23:18'),
(36, 'Candy Neklace', 'Candy Necklace, tuttii frutti flavord', 23, 10, 'Candy ', 'https://jackscandy.com/cdn/shop/products/11096.jpg?v=1654800454', '2025-03-24 06:39:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_orderItems_orders` (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137459;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=274861;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `fk_orderItems_orders` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
