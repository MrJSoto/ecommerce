-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-06-2022 a las 12:23:47
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ecomm`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `quantity`) VALUES
(9, 9, 11, 1),
(10, 9, 10, 1),
(11, 14, 2, 1),
(12, 14, 5, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(1, 'Literature', 'laptops'),
(2, 'Science Fiction', 'desktop-pc'),
(3, 'Terror', 'tablets'),
(4, 'Drama', ''),
(5, 'Business and professionals', ''),
(6, 'Novels', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(14, 9, 11, 2),
(15, 9, 13, 5),
(16, 9, 3, 2),
(17, 9, 1, 3),
(18, 10, 13, 3),
(19, 10, 2, 4),
(20, 10, 19, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(9, 5, '100 YEARS OF RADIO 90 IN COLOMBIA', '<p>What would it be like to travel 100 years in time via Hertzian waves? Find out in this reference book. Experience in the present time the emergence of radio stations and radio networks. Learn anecdotes, achievements, failures and journalistic feats, stories of great radio men and women who have left their mark on humanity. Explore in 280 milestones the human side of the force that connects the world.&nbsp;</p>\r\n\r\n<p>Edition: 1<br />\r\nLanguage: Spanish<br />\r\nNumber of pages: 559<br />\r\nNumber of chapters: Not specified</p>\r\n', '100-years-of-radio-90-colombia', 89.5, '100-years-of-radio-90-colombia_1654000636.webp', '0000-00-00', 0),
(15, 1, 'Cien Años de Soledad', '<p>In 2007, coinciding with Gabriel Garc&iacute;a M&aacute;rquez&#39;s eightieth birthday, the Royal Spanish Academy and the Association of Spanish Language Academies prepared this commemorative edition of One Hundred Years of Solitude published by Alfaguara. Today, a decade later and after several years away from bookstores, the edition is once again available to readers to celebrate the fiftieth anniversary of its publication. In this edition, Garc&iacute;a M&aacute;rquez&#39;s work is accompanied by splendid critical texts by authors of the stature of Mario Vargas Llosa, &Aacute;lvaro Mutis, Carlos Fuentes, V&iacute;ctor Garc&iacute;a de la Concha, Claudio Guill&eacute;n and Sergio Ram&iacute;rez, among others. ------------ Commemorative editions of the Royal Spanish Academy and the Association of Spanish Language AcademiesIn 2004, coinciding with the celebration of the fourth centenary of the publication of the first part of Don Quixote de la Mancha, the Royal Spanish Academy and the Association of Spanish Language Academies launched a project to publish major works of literature in Spanish. Conceived as a line of occasional, limited-circulation commemorative editions of the great Hispanic classics of all time, these works are published and distributed throughout the Spanish-speaking world as part of the collection Borges Esencial; Rub&eacute;n Dar&iacute;o. Del s&iacute;mbolo a la realidad; Don Quijote de la Macha, by Miguel de Cervantes, reissued in 2015 on the occasion of the IV centenary of Cervantes; Cien a&ntilde;os de soledad by Gabriel Garc&iacute;a M&aacute;rquez; La regi&oacute;n m&aacute;s transparente, by Carlos Fuentes; Antolog&iacute;a general, by Pablo Neruda; Gabriela Mistral en verso y prosa, an anthology by the author; La ciudad y los perros by Mario Vargas Llosa and La colmena, by Camilo Jos&eacute; Cela.------------Reviews: &quot;The absolute consecration. It is the ultra-homage. &quot;Nicol&aacute;s Pernett, historian &quot;It is as if it were a long-awaited best seller and just released, I have never seen such an enormous impact, nor such great enthusiasm from people, it is like a record of magical realism. &quot;Felipe Ossa, National Bookstore of Colombia</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'cien-nos-de-soledad', 71, 'cien-nos-de-soledad_1654000770.jpg', '2018-07-09', 1),
(16, 5, 'R & D RESEARCH AND DEVELOPMENT', '<p>It provides operational keys and tips for success in achieving the area&#39;s objectives: making use of specific know-how beyond its essence and articulating it to propose a new product or service that is more adapted to the needs of the company and the market.</p>\r\n\r\n<p>Edition: 1<br />\r\nLanguage: Spanish<br />\r\nNumber of pages: 186<br />\r\nNumber of chapters: Not specified<br />\r\n&nbsp;</p>\r\n', 'r-d-research-and-development', 49, 'r-d-research-and-development_1654000424.jpg', '2018-05-10', 2),
(29, 3, 'The Zorro', '<h2>The legendary Frederick Forsyth, &quot;the true master of international suspense&quot; according to the Los Angeles Times, surprises us with a timely new thriller . Most guns do what you ask them to do. Most weapons are controllable. What if the most dangerous weapon in the world were not a smart missile, a stealthy submarine or a computer virus? What if, in fact, it were a seventeen-year-old boy with a prodigious mind, capable of bypassing the most sophisticated security systems and manipulating any weapon and turning it against the most powerful? What wouldn&#39;t any intelligence agency be willing to do to get him on their side? He must be found and captured. Or protect him and save him. Whatever happens, he is capable of tipping the balance of world power and must not fall into the wrong hands, because what could happen next is unthinkable? And best of all, if he has been able to break our security systems he can do the same to our enemies. Reviews: &quot;One of the world&#39;s best thriller authors.&quot; The Wall Street Journal &quot;A superb writer.&quot; The Daily Telegraph &quot;Experience and research lend authenticity to everything he writes, plus Forsyth certainly has an almost hypnotic ability to push the reader to read on.&quot; The Spectator &quot;Zorro doesn&#39;t revel in language, preferring instead to leave room for action, which are Forsyth&#39;s trademark. The chilling scenarios are somehow comforting. What else to think of a team made up of a boy with special gifts and an elderly Englishman who remains silent to fight the story&#39;s bad guys.&quot; The Wall Street Journal &quot;This timely, well-written thriller has it all. A good plot riddled with twists, interesting characters, riveting intrigue..... An amazingly entertaining and fast-paced read. Ever since Jackal, Forsyth has been considered the giant of the political and espionage thriller. Here the giant exceeds his limits.&quot; The Washington Times &quot;Forsyth at his most dazzling.&quot; The Daily Mail &quot;The world is made up of predators and prey and only the strong survive. The novels he wrote in the 1970s are often considered his best work but here he again demonstrates his mastery.&quot; Read Makes Grow &quot;He couldn&#39;t have found two more exciting protagonists, total opposites; the veteran representative of the old world order and the young crack that dominates the new technologies, a character that could give play in new novels.&quot; Book Review</h2>\r\n', 'zorro', 27.9, 'zorro_1654000910.jpg', '2018-07-09', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`) VALUES
(9, 9, 'PAY-1RT494832H294925RLLZ7TZA', '2018-05-10'),
(10, 9, 'PAY-21700797GV667562HLLZ7ZVY', '2018-05-10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'admin@admin.com', '$2y$10$0SHFfoWzz8WZpdu9Qw//E.tWamILbiNCX7bqhy3od0gvK5.kSJ8N2', 1, 'Juan', 'Soto', '', '3205698832', 'profileJuan.jpg', 1, '', '', '2022-04-01'),
(15, 'juanigato24@gmail.com', '$2y$10$hkrzFLSgIRozzKwvJlegd.7OkMYfnmpFnaXS9TtBeo3zTiWkq806q', 0, 'Juan Ignacio', 'Soto Ramirez', 'CR 5 16 A 08', '3205698832', 'PXL_20211105_034405936.jpg', 1, '', '', '2022-05-31');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
