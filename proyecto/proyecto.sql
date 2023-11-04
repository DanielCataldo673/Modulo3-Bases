-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-08-2023 a las 00:58:51
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customers`
--

CREATE TABLE `customers` (
  `customers_id` int(11) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `address` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `administrador (si o no)` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `customers`
--

INSERT INTO `customers` (`customers_id`, `first_name`, `last_name`, `address`, `city`, `country`, `email`, `phone`, `administrador (si o no)`) VALUES
(1, 'Fernando', 'Reza', 'Las Palmas 123', 'Valencia', 'España', 'fernandoreza@gmail.com', '1128455584', 'si'),
(2, 'Lucas', 'Ocampos', 'Palo Santo2566', 'Sevilla', 'España', 'lucasocampos@gmail.com', '1566884574', 'no'),
(3, 'Julia', 'Nieves', 'La Mayor 778', 'Mallorca', 'España', 'marianieves@gmail.com', '1466997451', 'no'),
(4, 'Luis', 'Butragueño', 'Avenida Costanera 447', 'Madrid', 'España', 'luisbutragueño@gmail.com', '1156974582', 'si'),
(5, 'Sandra', 'Segovia', 'Avenida Flores 1472', 'Cordoba', 'Argentina', 'sandrasegovia@gmail.com', '1598455587', 'si'),
(6, 'Juana', 'Beltran', 'Avenida Costanera 4478', 'Madrid', 'España', 'juanabeltran@gmail.com', '1112574582', 'no'),
(7, 'Fernando', 'Alonzo', 'Los Pinos 4412', 'Barcelona', 'España', 'fernandoalonzo@gmail.com', '1598455587', 'no'),
(8, 'Pablo', 'Perez', 'cramer 6542', 'Zaragoza', 'España', 'pabloperez@gmail.com', '1169852341', 'no'),
(9, 'Carmen', 'Olivera', 'Tala 673', 'Osasuna', 'España', 'carmenolivera@gmail.com', '1167356738', 'si'),
(10, 'Juan', 'Damiani', '18 de Julio  1985', 'Sevilla', 'España', 'juandamiani@gmail.com', '1548952123', 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vinos`
--

CREATE TABLE `vinos` (
  `vinos_id` int(11) NOT NULL,
  `titulon` varchar(50) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `marca` varchar(50) NOT NULL,
  `cosecha` varchar(50) NOT NULL,
  `caracteristicas` text NOT NULL,
  `variedad` varchar(50) NOT NULL,
  `alcohol` varchar(50) NOT NULL,
  `acidez_total` varchar(50) NOT NULL,
  `azucar_residual` varchar(50) NOT NULL,
  `imagen` varchar(50) NOT NULL,
  `precio` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `vinos`
--

INSERT INTO `vinos` (`vinos_id`, `titulon`, `titulo`, `marca`, `cosecha`, `caracteristicas`, `variedad`, `alcohol`, `acidez_total`, `azucar_residual`, `imagen`, `precio`) VALUES
(1, 'vinos_de_region', 'Vnos_de_Region', 'ZUCCARDI SERIE A MALBEC', 'Manual, en bines de plástico durante la primer y s', 'Vinificación : Las uvas fueron despalilladas y estrujadas. Maceración en frio durante 5-7 días antes\r\n        de la vinificación clásica con levaduras nativas y fermentado a 77° F (25277 CI).\r\n        Posteriormente se macera durante 20 días con remontados y desestabilizados\r\n        periódicos. Parte del vino fue envejecido en barricas de roble francés', '100% Malbec', '14,2', '2,1', '5,63', 'ZUCC-SERIEA-malbec_1.jpg', 2700),
(2, 'vinos_de_region', 'Vinos_de_Region', 'ZUCCARDI SERIE A CABERNET SAUVIGNON 2021', 'Manual durante la primera y segunda semana de abri', 'Vinificación : Las uvas fueron descobajadas y molidas, luego se realizó una maceración\r\n        prefermentativa fría a 7%C durante 5- 7 días, para seguir con una vinificación\r\n        clásica en tinto, y fermentación con levaduras indígenas a 25-27°C.\r\n        Maceración de 20 días sobre los orujos, con remontajes y delestage periódicos.\r\n        Parte del vino fue madurado en barricas de roble francés durante 10 meses. De gran cuerpo, tiene intensos aromas a cassis, grosellas rojas con un toque de\r\n        pimienta verde. En boca muestra una buena integración de los taninos y\r\n        sabores con un final suave y fresco', '100% Cabernet Sauvignon', '14,5', '5,32', '3,65', 'serieA-cs.jpg', 2900),
(3, 'vinos_de_region', 'Vinos_de_Region', 'ZUCCARDI SERIE A CHARDONNAY VIOGNIER 2019', 'Cosecha manual durante la última semana de marzo d', 'Vinificación : Selección manual de racimos antes del despalillado y prensado.\r\n        Fermentación con levaduras nativas. Crianza con sus lías durante 6 meses', '70 % Chardonnay y 30 % Viognier', '13,5', '6,6', '1,58', 'serieA-chard-viognier.jpg', 3000),
(4, 'vinos_de_region', 'Vinos_de_Region', 'ZUCCARDI SERIE A SYRAH 2019', 'Manual durante la segunda semana de abril del 2019', 'Vinificación : Las uvas fueron despalilladas y estrujadas. Se sometió a una maceración en frío durante 5-7 dias antes de la vinificación clásica con levaduras nativas.\r\n        Luego se maceraron durante 20 días con remontaje periódico y delestage.\r\n        Parte del vino fue cada en barricas de roble francés', '100% SYRAH', '14,5', '5,3', '5,7', 'serieA-syrah.jpg', 2800),
(5, 'vinos_de_pueblo', 'Vinos_de_Pueblo', 'POLÍGONOS DEL VALLE DE UCO PARAJE ALTAMIRA CABERNE', 'En el Paraje de Altamira, Valle de Uco. Altitud, 1', 'Vinificación : Fermentado y criado en depósitos de hormigón (sin epoxi) con levaduras autóctonas. Maceración de 20 días. Envejecido en hormigón', '100% Cabernet Franc', '14', '5,12', '1,8', 'zuccardi-poligonos-valle-uco-cabernet-franc-PA.jpg', 18000);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customers_id`);

--
-- Indices de la tabla `vinos`
--
ALTER TABLE `vinos`
  ADD PRIMARY KEY (`vinos_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `customers`
--
ALTER TABLE `customers`
  MODIFY `customers_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `vinos`
--
ALTER TABLE `vinos`
  MODIFY `vinos_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
