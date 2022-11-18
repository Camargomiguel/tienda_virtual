-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-11-2022 a las 19:47:17
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `shopping`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2022-10-21 16:21:18', '16-11-2022 07:35:51 AM');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(3, 'collares', 'collares', '2022-11-10 19:17:37', '08-11-2022 06:22:01 AM'),
(4, 'comida para mascota', 'comida para mascota', '2022-11-10 19:19:32', '08-11-2022 06:22:39 AM'),
(5, 'camas', 'camas', '2022-11-10 19:19:54', '08-11-2022 06:23:04 AM'),
(6, 'varios', 'varios', '2022-11-10 19:18:52', '08-11-2022 06:23:19 AM');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(1, 1, '3', 1, '2022-11-11 19:32:57', 'COD', NULL),
(3, 1, '4', 1, '2022-11-11 19:43:04', 'Debit / Credit card', 'Delivered'),
(4, 1, '17', 1, '2022-11-11 16:14:17', 'COD', 'in Process'),
(5, 1, '3', 1, '2022-11-11 19:21:38', 'COD', NULL),
(6, 1, '4', 1, '2022-11-11 19:21:38', 'COD', NULL),
(7, 1, '2', 1, '2022-11-12 13:58:56', 'Internet Banking', NULL),
(8, 1, '1', 1, '2022-11-12 14:06:25', 'COD', NULL),
(9, 1, '12', 1, '2022-11-12 14:06:25', 'COD', NULL),
(10, 4, '2', 3, '2022-11-13 00:58:37', 'Debit / Credit card', NULL),
(11, 4, '18', 1, '2022-11-13 01:54:11', 'Internet Banking', NULL),
(12, 4, '20', 1, '2022-11-13 03:02:41', 'Internet Banking', NULL),
(13, 4, '15', 1, '2022-11-14 03:04:45', 'COD', NULL),
(14, 4, '12', 1, '2022-11-14 03:07:50', NULL, NULL),
(15, 4, '15', 1, '2022-11-14 03:07:50', NULL, NULL),
(16, 4, '2', 1, '2022-11-14 03:23:40', NULL, NULL),
(17, 5, '1', 1, '2022-11-13 15:31:14', 'COD', NULL),
(18, 8, '1', 1, '2022-11-16 12:46:54', 'COD', NULL),
(19, 8, '15', 1, '2022-11-16 12:46:54', 'COD', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(1, 3, 'En proceso...', 'Su pedido ha sido registrado.', '2022-11-10 11:36:45'),
(2, 1, 'Entregado', 'Su orden ha sido entragada\r\n', '2022-03-10 14:37:31'),
(3, 3, 'Entregado', 'Producto entregado satisfactoriamente\r\n', '2022-06-10 12:43:04'),
(4, 4, 'En proceso..', 'Su pedido esta listo para entregar', '2022-07-15 14:50:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(2, 3, 4, 5, 5, 'maria teresa', 'BEST PRODUCT FOR ME :)', 'BEST PRODUCT FOR ME :)', '2022-11-26 12:43:57'),
(3, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2022-09-26 12:52:46'),
(4, 3, 3, 4, 3, 'gloria hernandez', 'Nice Product', 'Value for money', '2022-09-12 09:59:19'),
(5, 1, 0, 0, 0, 'patricia prieto', 'exelente producto', 'muy bueno', '2022-11-15 14:02:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(1, 4, 3, 'max professional line', 'max', 213000, 0, 'Max - Professional Line Vitality Adulto Frango & Vegetais, es ideal para tu mejor amigo, ademas de todo el carino y atencion, tambien le ofreces la mejor nutricion. Adicionalmente tu perro esta muy bien alimentado, lleno de energia para disfrutar contigo de los mejores momentos, de una forma que solo Max sabe ofrecer.', 'max-1.jpeg', 'max-2.jpeg', 'max-3.jpeg', 1200, 'En Stock', '2017-01-30 16:54:35', ''),
(2, 4, 4, 'Hills', 'Science diet small paws light', 94200, 0, 'Hills - Science Diet Small Paws Light Adult 1-6 Dog, es una receta de harina de pollo y cebada es nutricion clinicamente comprobada y disenada para perros de razas pequenas y miniatura que necesitan un estilo de vida ligero y sano. Este alimento seco para razas pequenas contiene 19% menos calorias para ayudar a evitar el aumento excesivo de peso y contribuir a un estilo de vida mas sano. Tambien proporciona una mezcla de antioxidantes clinicamente comprobada con vitaminas C y E para ayudar a favorecer un sistema inmunologico sano.', 'comida-1.jpeg', 'comida-2.jpeg', 'comida-3.jpeg', 0, 'En Stock', '2017-01-30 16:59:00', ''),
(3, 4, 4, 'max-cat adulto pollo y arroz', 'max', 22320, 0, 'Max - Cat Adulto Pollo Y Arroz, no cuenta con adicion de colorantes, el alimento max cat adultos pollo & arroz trae ingredientes seleccionados por especialistas para proporcionarle una alimentacion rica y balanceada a tu gatito.', 'cat-1.jpeg', 'cat-2.jpeg', 'cat-3.jpeg', 0, 'En Stock', '2017-02-04 04:03:15', ''),
(4, 4, 4, 'Hills-Science Diet Adult Hairball Control Cat ', 'HILLS', 96030, 0, 'Hills - Science Diet Adult Hairball Control Cat, es un alimento seco para gatos esta elaborado con una mezcla de fibras naturales que permiten a su gato deshacerse comodamente de las bolas de pelo a la vez que reduce la formacion de otras nuevas. Sin colores, sabores o conservadores artificiales.', 'gato-1.jpeg', 'gato-2.jpeg', 'gato-3.jpeg', 45, 'En Stock', '2017-02-04 04:04:43', ''),
(5, 4, 4, 'Hills-Science Diet Kitten', 'hills', 87750, 0, 'Hills - Science Diet Kitten, es un alimento premium seco para gatitos esta especialmente formulado para satisfacer las necesidades nutricionales de los gatitos. Proporciona DHA natural, un importante elemento constitutivo para el desarrollo del cerebro y los ojos, ademas de una mezcla de vitaminas y otros antioxidantes clinicamente comprobada para un sistema inmunologico sano.', 'gato-1.jpeg', 'gato-2.jpeg', 'gato-3.jpeg', 0, 'In Stock', '2017-02-04 04:06:17', ''),
(6, 4, 4, 'Renalforz', 'Renalforz', 38880, 0, 'Bocados palatables con el balance adecuado de ingredientes naturales y vitaminas para apoyar la funcion renal de los gatos.', 'estomago-1.jpeg', 'estomago-2.jpeg', 'estomago-3.jpeg', 35, 'En Stock', '2017-02-04 04:08:07', ''),
(7, 4, 4, 'C Naturalis-Adulto Frango y Peru Frutas', 'Naturalis', 52700, 0, 'Naturalis - Pollo Y Pavo Adulto, es el concentrado para perros adultos de razas pequenas naturalis es un alimento que proporcionara una nutricion y dieta adecuada a perros adultos de razas pequenas. su fórmula esta especialmente elaborada pensando en las necesidades nutricionales de los mas pequenos, ya que tienen requerimientos diferentes. es una formula 100% natural que contiene vitaminas e ingredientes seleccionados con un alto valor nutricional.', 'comida-1.jpeg', 'comida-2.jpeg', 'comida-3.jpeg', 20, 'En Stock', '2017-02-04 04:10:17', ''),
(8, 4, 4, 'Hills-Prescription Diet Gastrobiome Cat', 'Hills', 138240, 0, 'Hills - Prescription Diet Gastrobiome Cat, es un alimento prescrito que ayuda a la regulacion de la microbiota intestinal, mejorando la salud digestiva ante enfermedades fibro-responsivas. Tecnologia ActivBome+ que favorece la salud y bienestar del tracto digestivo. Contiene acidos grasos omega 3 que ayudan a reducir los procesos inflamatorios de la enfermedad intestinal.', 'cat-1.jpeg', 'cat-2.jpeg', 'cat-3.jpeg', 0, 'En Stock', '2017-02-04 04:11:54', ''),
(9, 4, 5, 'Pedigree-Alimento Humedo Cachorros', 'Pedigree', 3100, 0, 'Pedigree - Alimento Humedo Para Perro Cachorro Carne Sobre, contiene ingredientes de alta calidad que mantienen a tu perro sano y lleno de energia. Balance de fibra ideal para heces firmes y fáciles de limpiar. Sin conservantes, ni colorantes, ni sabores artificiales. Incluye el alimento humedo al menos una vez al dia para mantener a tu perro siempre saludable.', 'comida-1.jpeg', 'comida-2.jpeg', 'comida-3.jpeg', 10, 'En Stock', '2017-02-04 04:17:03', ''),
(11, 4, 6, 'Safari-Cepillo completo', 'Safari', 53200, 0, 'Safari para perro cepillo completo, disenado especificamente para perros de pelo corto, nuestro cepillo de perro safari con recubrimiento de nylon proporciona los beneficios combinados de un cepillo de cerda firme y cerdas suaves, combina cepillo de cerdas y pines.', 'peine-1.jpeg', 'peine-2.jpeg', 'peine-3.jpeg', 0, 'En Stock', '2017-02-04 04:26:17', ''),
(12, 4, 6, 'Gel Fresh Breath-Cachorros', 'Fresh Breath', 88700, 0, 'Gel Fresh Breath comienza a trabajar inmediatamente para eliminar la placa y el sarro antes de que comience, sin necesidad de cepillo de dientes. La enfermedad periodontal es la enfermedad numero uno entre los perros y afecta a casi el 80% de perros a los tres años. Desarrollar buenos hábitos de cuidado bucal a una edad temprana es clave para promover el bienestar completo de las mascotas durante toda la vida de su perro. Este gel efectivo incluye una mezcla de ingredientes suaves y seguros para promover un ambiente oral saludable.', 'cuidado-1.jpeg', 'cuidado-2.jpeg', 'cuidado-3.jpeg', 0, 'En Stock', '2017-02-04 04:28:17', ''),
(13, 4, 6, 'Dinky-Locion Canina Hembra', 'Dinky', 23700, 0, 'Locion canina dinky hembra, Agradable fragancia para perros hembras de todas las razas, inspirada en aromas de la mas exquisita perfumería francesa, delicada y sutil fragancia.', 'perfume-1.jpeg', 'perfume-2.jpeg', 'perfume-3.jpeg', 0, 'En Stock', '2017-02-04 04:30:24', ''),
(14, 4, 6, 'Dental Fresh-Enjuague Bucal Para Perros', 'Dental Fres', 46950, 0, 'El enjuague bucal de Dental Fresh, para mantener los dientes blancos y el aliento fresco en los perros. Su formula anti-microbiana activa, libera y destruye los germenes que causan el mal aliento y bacterias que producen la placa.', 'enjuague-1.jpeg', 'enjuague-2.jpeg', 'enjuague-3.jpeg', 0, 'En Stock', '2017-02-04 04:32:15', ''),
(15, 3, 8, 'Obi Pet Supplies-Bicombo COllar Frutti', 'Obi Pet Supplies', 49800, 250, 'Este bicombo de collar y correa esta elaborado en poliester, sublimado con diversos y coloridos disenos. Herrajes de zamak. Es suave con el pelaje, brinda confort y seguridad.', 'collar-1.jpeg', 'collar-2.jpeg', 'collar-3.jpeg', 50, 'En Stock', '2017-02-04 04:35:13', ''),
(16, 3, 8, 'Obi Pet Supplies-Bicombo Collar Caribe', 'Obi Pet SUpplies', 56500, 0, 'Este bicombo de collar y correa esta elaborado en poliester sublimado inspirado en el tradicional Carnaval de Barranquilla, en las marimondas y las mariposas amarillas representativas de la region Caribe. Tiene herrajesde zamak. Es suave con el pelaje, brinda confort y seguridad.', 'collar-1.jpeg', 'collar-2.jpeg', 'collar-3.jpeg', 30, 'En Stock', '2017-02-04 04:36:23', ''),
(17, 5, 9, 'Guamba-Cama Mascota Donut Grande', 'Gumba', 159900, 0, 'Tipo de mascota: perros. Capacidad recomendada: Una (1) hasta 80 cm Tamaño para perros: Razas grandes de más de 75 kilos. Edad: Todas las edades.', 'cama-1.jpeg', 'cama-2.jpeg', 'cama-3.jpeg', 0, 'En Stock', '2017-02-04 04:40:37', ''),
(18, 5, 10, 'Dobaz-Cama Calabaza Halloween', 'DOBAZ', 130900, 0, 'Cama rectangular de Calabaza super comoda y suave', 'cama-1.jpeg', 'cama-2.jpeg', 'cama-3.jpeg', 0, 'En Stock', '2017-02-04 04:42:27', ''),
(19, 6, 12, 'Calabaza Pets-Arena Para Gatos Carbon Activo', 'Calabaza Pets', 19800, 0, 'Arena Calabaza Pets Bentonita, carbón activado.', 'arena-1.jpeg', 'arena-2.jpeg', 'arena-3.jpeg', 45, 'En Stock', '2017-03-10 20:16:03', ''),
(20, 6, 12, 'Total fULL LC- Perros De Hasta 10 kg', 'Total Full', 24100, 5000, 'Total Full LC es un antiparasitario para perros interno de amplio espectro que esta formulado para el control y tratamiento de cestodes, nematodes y giardias que pueden afectar a nuestros perros. Esta elaborado a partir de Fenbendazol, Pirantel y Prazicuantel, Fuertes compuestos que trabajaran en conjunto para generar disminucion de energia y muerte al parasito. Recomendado para perros de hasta 10 Kg.', 'desparasitante-1.jpeg', 'desparasitante2.jpeg', 'desparasitante-3.jpeg', 0, 'En Stock', '2017-03-10 20:19:22', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(2, 4, 'Comida para gato', '2022-10-12 15:24:52', '26-01-2022 11:03:40 PM'),
(3, 4, 'Comida para perro', '2022-10-13 15:29:09', '2022-10-15 20:00:00'),
(4, 4, 'varios', '2022-07-20 15:55:48', '2022-11-10 17:00:08'),
(5, 4, 'Servicios', '2022-06-04 03:12:40', '2022-08-02 05:45:00'),
(6, 4, 'Vacunacion', '2022-11-04 04:13:00', '2022-11-06 05:13:00'),
(9, 5, 'Camas', '2022-09-04 03:36:45', '2022-10-04 02:00:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(39, 'pdairusp@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-16 12:20:35', '16-11-2022 07:22:34 AM', 1),
(40, 'pdairusp@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-16 12:46:32', '16-11-2022 08:07:14 AM', 1),
(41, 'pdairusp@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-16 13:14:35', '16-11-2022 08:14:53 AM', 1),
(42, 'pdairusp@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-16 13:15:07', '16-11-2022 08:18:51 AM', 1),
(43, 'pdairusp@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-16 13:35:49', '16-11-2022 08:35:57 AM', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(8, 'miguel angel camargo rodriguez', 'pdairusp@gmail.com', 3172302533, 'fd3472d13e75f804a291ebddbf68dcf1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-16 12:20:20', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(2, 4, 12, '2020-06-23 03:05:43');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
