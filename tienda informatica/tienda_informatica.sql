-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-08-2023 a las 21:22:06
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
-- Base de datos: `tienda_informatica`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fabricante`
--

CREATE TABLE `fabricante` (
  `id_fabricante` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `telefono` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `fabricante`
--

INSERT INTO `fabricante` (`id_fabricante`, `nombre`, `direccion`, `telefono`, `correo`) VALUES
(1, 'Lenovo', 'soreda 1234', '1123456789', 'lenovo@gmail.com'),
(2, 'Samsung', 'soreda435', '1132457890', 'samsung@gmail.com'),
(3, 'Adata', 'soreda 12345', '1123456778', 'adata@gmail.com'),
(4, 'Markvision', 'soreda 4350', '1132457834', 'markvision@gmail.com'),
(5, 'Hikvision ', 'soreda 675', '1123542354', 'hikvision@gmail.com'),
(6, 'HP', 'soreda 6789', '1123098754', 'hp@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_productos` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` text NOT NULL,
  `precio` decimal(10,3) NOT NULL,
  `id_fabricante` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_productos`, `nombre`, `descripcion`, `precio`, `id_fabricante`) VALUES
(1, 'NOTEBOOK HP PAVILION X36014-DY0508LA i3-1125G48GB2', 'La laptop 2 en 1 más popular y compacta de HP que se ha diseñado para transmitir y trabajar mejor es', 678954.000, 6),
(2, 'NOTEBOOK LENOVO IP 3 ', 'Mas informacion: nbsp82KU01YNAR - PERFORMANCE nbsp Processor AMD Ryzen trade 7 5700U (8C 16T, 1.8 4.', 345678.000, 1),
(3, 'NOTEBOOK LENOVO IP 1 ', 'Mas informacion: nbsp82R1009YAR - PERFORMANCE nbsp Processor AMD Ryzen trade 7 3700U (4C 8T, 2.3 4.0', 678954.000, 1),
(4, 'MONITOR 22 LENOVO S22E-20 VGA HDMI GTIA 3 CI', 'Pulgadas 21.5 Tipo Color BLACK Resolucion 1920X1080 Brillo 250 nits Luminosidad Contraste 3000 Cable', 453678.000, 1),
(5, 'Celular Samsung A34 5G 6GB 128GB Gris', 'VIENE SIN CARGADOR -Procesador Velocidad del CPU: 2.6GHz, 2GHz Tipo de CPU: Octa-Core-Display Tamaño', 345678.000, 2),
(6, 'CELULAR SAMSUNG GALAXY A23 LTE 4GB RAM 128GB NEGRO', 'Conexión:4G\r\nSeleccionado para accion comercial:No\r\nProcesador:Octa Core 2.3Ghz\r\nSistema Operativo:A', 234765.879, 2),
(7, 'Auricular Samsung Galaxy Buds 2 Pro Blanco', 'Audio y Video -Número de micrófono: 6 High-SNR (relación señal-ruido) -Vocero: Coaxial personalizado', 150987.000, 2),
(8, 'SSD 960GB ADATA SU630 BLISTER', 'SSD 960GB ADATA SU630 BLISTER\r\n', 76789.908, 3),
(9, 'SODIMM DDR4 4GB ADATA 2666MHZ SINGLE TRAY (L)', '- Tipo de modulo: SO-DIMM- Factor de forma: altura estandar de 1,18- Tipo de memoria: DDR4- Estandar', 24567.000, 3),
(10, 'DDR4 4GB ADATA 2666MHZ CL19 SINGLE TRAY', 'DDR4 4GB ADATA 2666MHZ CL19 SINGLE TRAY\r\n', 23456.987, 3),
(11, 'MEMORIA SODIMM DDR4 MARKVISION 4GB 2666 MHZ 1.20V ', 'The SO-DIMM is intended for use in applications operating up to 1333MHz clock speeds and achieves hi', 19076.890, 4),
(12, 'DISCO SSD M.2 MARKVISION 512GB PCIE GEN3 X4 BULK (', 'El nbspMarkVision N4951 M.2 SSD nbspes las soluciones de almacenamiento de masa de flujo principal, ', 42345.897, 4),
(13, 'DISCO SSD MARKVISION 960GB SATA INTERNO BULK (9397', 'Marca: Markvision Modelo: MVSD960G25-A1 Producto: Disco Solido SSD Formato: SATAIII 2.5 - Marca: Mar', 65987.000, 4),
(14, 'SSD M.2 NVME 512GB HIKVISION DESIRE P', 'Product model HS-SSD-Desire(P) Product size M.2 2280 PCIE 3.0 Capacity 128 256 512 1024GB Max.Seq.Re', 45678.098, 5),
(15, 'SSD 960GB HIKVISION C100 BLISTER', 'SSD 960GB HIKVISION C100 BLISTER\r\n', 67890.678, 5),
(16, 'SODIMM DDR4 16GB HIKVISION 3200MHZ SINGLE TRAY', '', 56321.456, 5),
(17, 'ESCANER HP SCANJET PRO 2600 F1', 'Escaner HP ScanJet Pro 2600 f1\r\n', 265789.987, 6),
(18, 'Notebook Core i5 11va Gen / 256 SSD + 8gb Hp 15.6 ', 'USO: RECOMENDADO\r\nOFICINA - ESTUDIANTES - GAMER\r\n\r\n\r\n# PRESTACIONES:\r\n- Procesador: Intel Core i5-11', 899900.876, 6),
(19, 'IMPRESORA HP DESKJET ADVANTAGE 2375', 'Sin descripcion del fabricante.', 59999.456, 6),
(20, 'NOTEBOOK HP 14-dq2505LA i3-1115G44GB256GB14 HD NAT', 'Aprecia más en la pantalla gracias al bisel con microborde de 6,5 mm. Un diseño fino y ligero te per', 567890.123, 6),
(21, 'IMPRESORA HP MULTIFUNCION SMART TANK 520 (1F3W2AAC', 'Disfrute de confiabilidad diaria con la impresora HP Smart Tank 520 Todo-en-Uno que ofrece la calida', 327895.098, 6);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `fabricante`
--
ALTER TABLE `fabricante`
  ADD PRIMARY KEY (`id_fabricante`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_productos`),
  ADD KEY `fk_fabricante` (`id_fabricante`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `fabricante`
--
ALTER TABLE `fabricante`
  MODIFY `id_fabricante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_productos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `fk_fabricante` FOREIGN KEY (`id_fabricante`) REFERENCES `fabricante` (`id_fabricante`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
