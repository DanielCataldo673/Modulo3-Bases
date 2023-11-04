-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-08-2023 a las 21:44:50
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
-- Base de datos: `ecommers`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `nombre_categoria` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `nombre_categoria`) VALUES
(1, 'Tecnologia'),
(2, 'Hogar y Muebles'),
(3, 'Electrodomesticos'),
(4, 'Herramientas '),
(5, 'Juegos y juguetes'),
(6, 'Bebes'),
(7, 'Moda');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_clientes` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `telefono` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_clientes`, `nombre`, `apellido`, `direccion`, `correo`, `telefono`) VALUES
(1, 'Emiliano', 'Martinez', 'Soreda 56', 'emilianomartinez@gmail.com', '1123658974'),
(2, 'Cristian', 'Romero', 'soreda 345', 'cristianromero@gmail.com', '1125896374'),
(3, 'Nicolás', 'Otamendi ', 'soreda 34', 'nicolasotamendi@gmail.com', '1125639874'),
(4, 'Marcos  ', 'Acuña ', 'soreda 76', 'marcosacuña@gmail.com', '1125638965'),
(5, 'Nahuel ', ' Molina ', 'soreda 23', 'nahuelmolina@gmail.com', '1125698478'),
(6, 'Leandro ', 'Paredes ', 'soreda 12', 'leandroparedes@gmail.com', '1123658945'),
(7, 'Giovani ', 'Lo_Celso ', 'soreda 678', 'giovanilocelso@gmail.com', '1145698563'),
(8, 'Rodrigo ', 'De_Paul ', 'soreda 67', 'rodrigodepaul@gmail.com', '1145236956'),
(9, 'Lautaro ', 'Martinez ', 'soreda 67', 'lautaromartinez@gmail.com', '1123369584'),
(10, 'Lionel ', 'Messi ', 'soreda 10', 'lionelmessi@gmail.com', '1123523698');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedidos`
--

CREATE TABLE `detalle_pedidos` (
  `id_detalle_pedidos` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_unitario` decimal(10,0) NOT NULL,
  `id_pedido` int(11) NOT NULL,
  `id_productos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_pedidos`
--

INSERT INTO `detalle_pedidos` (`id_detalle_pedidos`, `cantidad`, `precio_unitario`, `id_pedido`, `id_productos`) VALUES
(1, 2, 50000, 1, 20),
(2, 5, 60000, 2, 4),
(3, 1, 63000, 3, 10),
(4, 2, 85002, 4, 13),
(5, 1, 50000, 5, 3),
(6, 6, 60000, 6, 10),
(7, 4, 2300, 7, 6),
(8, 8, 50230, 8, 8),
(9, 2, 110000, 9, 2),
(10, 10, 85000, 10, 15),
(11, 8, 100000, 11, 16),
(12, 5, 50000, 12, 7),
(13, 4, 60000, 13, 23),
(14, 8, 230003, 14, 12),
(15, 1, 50000, 15, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `id_pedido` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `estado` varchar(50) NOT NULL,
  `id_clientes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`id_pedido`, `fecha`, `estado`, `id_clientes`) VALUES
(1, '2023-08-16', 'En preparacion ', 1),
(2, '2023-08-26', 'Despachado ', 2),
(3, '2023-08-18', 'Despachado ', 3),
(4, '2023-08-30', 'En preparacion ', 4),
(5, '2023-08-31', 'Despachado ', 5),
(6, '2023-08-30', 'Despachado ', 6),
(7, '2023-08-16', 'Despachado ', 7),
(8, '2023-08-31', 'En preparacion ', 8),
(9, '2023-08-31', 'Despachado ', 9),
(10, '2023-09-10', 'Despachado ', 10),
(11, '2023-09-10', 'En preparacion', 10),
(12, '2023-08-24', 'En preparacion  ', 4),
(13, '2023-08-25', 'Despachado ', 9),
(14, '2023-08-17', 'Despachado ', 1),
(15, '2023-08-24', 'En preparacion', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_productos` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` text NOT NULL,
  `precio` decimal(10,0) NOT NULL,
  `stock` varchar(50) NOT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_productos`, `nombre`, `descripcion`, `precio`, `stock`, `id_categoria`) VALUES
(1, 'Celular Motorola Moto E13 64gb 2gb Ram Azul Turque', 'Lo que tenés que saber de este producto\r\nDispositivo liberado para que elijas la compañía telefónica que prefieras.\r\nPantalla IPS de 6.5\".\r\nCámara trasera de 13Mpx.\r\nCámara delantera de 5Mpx.\r\nProcesador Unisoc T606 Octa-Core de 1.6GHz con 2GB de RAM.\r\nBatería de 5000mAh.\r\nMemoria interna de 64GB.\r\nResistente a las salpicaduras.\r\nCon reconocimiento facial y sensor de huella dactilar.', 67999, '2474 ', 1),
(2, 'Canon EOS Kit M50 Mark II + lente EF-M 15-45mm f/3', 'Sensor CMOS de 24.1 Mpx y procesador DIGIC 8 para imágenes nítidas y colores vibrantes\r\nLente EFM 1545mm f/3.56.3 IS STM con zoom óptico de 45x para acercarte a tus sujetos\r\nGrabación de video en 4K y sensibilidad ISO 10025600 para capturar momentos en cualquier condición\r\nConectividad WiFi y Bluetooth para compartir fácilmente y control remoto desde tu smartphone\r\nPantalla táctil de 3\" para una navegación intuitiva y visualización de tus fotos y videos\r\nBatería de ion de litio LPE12 para una larga duración y compatibilidad con tarjetas SD UHSI\r\n', 1100000, '3 ', 1),
(3, 'Auriculares Inalambricos A8s Alpina Touch 25 Hs Ba', 'Lo que tenés que saber de este producto\r\nCon micrófono incorporado.\r\nSonido superior y sin límites.\r\nCómodos y prácticos.\r\nLas imágenes pueden ser ilustrativas.\r\n', 4200, '754 ', 1),
(4, 'Silla Eames Diseño Moderno Patas Madera Cocina Com', '\r\nEs plegable: No\r\nAncho de la silla: 46 cm\r\nAltura del asiento desde el piso: 50 cm\r\nProfundidad del asiento: 50 cm\r\nEs apilable: No\r\nProfundidad de la silla: 50 cm\r\nAncho del asiento: 46 cm\r\nPeso máximo soportado: 150 kg\r\n\r\n', 12000, '162 ', 2),
(5, 'Sillas Tulum Respaldo Alto', 'Fabricante:Acapulco\r\nMarca:tulum\r\nModelo:Tulum\r\nMateriales de la estructura:Hierro macizo\r\nDiseño de la silla:tulum\r\nMaterial del tapizado:Yute\r\nFirmeza:Extra firme\r\nEs silla mecedora:No\r\n', 22000, '289 ', 2),
(6, 'Batería Hudson Teflón Antiadheren Juego De Cocina ', 'Marca:Hudson\r\nLínea:Teflón\r\nModelo:Antihaderente\r\nCantidad de piezas:5', 43800, '24 ', 2),
(7, 'Kit Full La Planchetta + La Planchetitta De Regalo', 'Marca:La Planchetta\r\nLínea:Kit La Planchetta\r\nModelo:Kit Plancheta\r\nTipo de producto:Plancha/bifera\r\nCapacidad en volumen:2300 mL\r\nColor:Gris oscuro\r\nMaterial del cuerpo: Hierro\r\nMaterial del mango: Hierro\r\nLargo x Ancho x Altura: 48 cm x 27.5 cm x 3 cm\r\nCon material antiadherente: No\r\nCon superficie acanalada: No\r\n', 39500, '9 ', 2),
(8, 'Batidora de pie Tedge SM-1521 negra 220 V - 240 V', 'Funciones: batir, amasar y mezclar.\r\nCuenta con 8 velocidades.\r\nCon 1 bowl de 4.5 L.\r\nEl bowl es de acero inoxidable.\r\nLos batidores están fabricados en acero inoxidable y aluminio fundido.\r\nIncluye función rotatoria, pulsar y turbo.\r\nSu potencia es de 400 W.\r\nIncluye accesorios.\r\nPreparaciones deliciosas en pocos minutos.\r\n', 79499, '65', 3),
(9, 'Licuadora Peabody PE-LN601 1.5 L negra con jarra d', 'Capacidad de 1.5 L.\r\nSu potencia es de 600 W.\r\nCuchilla resistente de acero inoxidable.\r\nTapa dosificadora incorporada.\r\nFunciona con 5 velocidades.\r\nCuenta con cierre de seguridad.\r\nPica hielo.\r\nCon cuchilla removible.\r\nTus preparaciones preferidas listas en pocos minutos.\r\n', 20199, '187', 3),
(10, 'Balanza Alimentos Cocina Digital Hasta 10 Kg Alta ', 'Sensibilidad de 3g.\r\nCon función Tara.\r\nFunciona con 2 pilas AA.\r\nSoporta hasta 10kg.\r\nLa medida justa para todo tipo de preparaciones.\r\nIdeal para pesar ingredientes con gran exactitud.\r\nLas imágenes pueden ser ilustrativas.\r\n', 3871, '25', 3),
(11, 'Philco Pe1821npp Pava Eléctrica C/ Regulador De Te', 'Potencia de 2200w.\r\nCon capacidad para 1.7 litros.\r\nCon apagado automático.\r\nTecnología y rapidez para tus infusiones.\r\n', 21396, '41', 3),
(12, 'Moulinex Nescafé Cafetera Dolce Gusto Piccolo XS -', 'Tecnología manual para personalizar la intensidad del café\r\nCompatible con cápsulas Dolce Gusto para variedad de sabores\r\nPresión de 15 bar para extracción óptima de sabor y aroma\r\nRápida preparación en solo 1 minuto para disfrutar al instante\r\nCapacidad de agua de 0.8 L para múltiples preparaciones\r\nDiseño compacto y fácil de limpiar, ideal para cualquier cocina\r\n', 53190, '1963', 3),
(13, 'Set Extractor De Tornillos Cortados Rosca Izquierd', 'CONTENIDO DE LA PUBLICACIÓN\r\n• 1 Broca extractor de tornillos 1/8-1/4 (3-6mm)\r\n• 1 Broca extractor de tornillos 1/4-5/16 (6-8mm)\r\n• 1 Broca extractor de tornillos 5/16-7/16 (8-11mm)\r\n• 1 Broca extractor de tornillos 7/16-9/16 (11-14mm)\r\n• 1 Broca extractor de tornillos 9/16-3/4 (14-19mm)\r\n• 1 Estuche plástico\r\n', 2399, '500', 4),
(14, 'Taladro Atornillador Percutor + 2 Baterias Gp By L', 'CONTENIDO DE LA PUBLICACIÓN\r\n• 1 Taladro/ Atornillador Percutor Garde Plus by Lusqtoff\r\n• 2 Baterías\r\n• 1 Cargador\r\n• 1 Maletín\r\n\r\nDATOS TÉCNICOS\r\n• Alimentación: A batería\r\n• Voltaje: 12/24V\r\n• Tiempo de carga: 60 min\r\n• Velocidad variable: Marcha 1 (0-400 rpm) Marcha 2 (0-1350 rpm)\r\n• Número de marchas 2\r\n• Capacidad del mandril: 10mm (3/8\")\r\n• Torque: 25 NM\r\n• Posiciones de torque: 25+1+1\r\n• Giro Reversible: SI\r\n• Luz LED: SI\r\n• Motor: Carbones\r\n• Tipo: Atornillador / Taladro Percutor\r\n• Peso neto 1,5 Kg\r\n', 38128, '1500', 4),
(15, 'Juego De Llaves Combinadas Fija Estriada 12 Piezas', '// SET JUEGO LLAVES COMBINADAS 12 PIEZAS DE 8 A 22 MM //\r\n\r\n\r\nCARACTERISTICAS:\r\n\r\n- Set llave combinadas fija / estriada\r\n- Cantidad de Piezas: 12 Piezas\r\n- Medidas: 8 mm; 9mm; 10 mm; 11 mm; 12 mm; 13 mm; 14 mm; 15mm; 16 mm 17 mm; 19 mm; 22 mm.\r\n- Material Cromo Vanadio\r\n- Incluye estuche contenedor\r\n', 8999, '300', 4),
(16, 'Pinza Pela Cable Automática Multifunción Autoajust', 'Tipos de producto: Pinza\r\nCalibre de pelado: 0.2-6mm\r\nCalibre de corte: 0.2-6mm\r\nColor: Amarillo\r\nEs automático: Sí\r\nEs autoajustable: Sí\r\nCon mango antideslizante: Sí\r\nEs crimpeadora: Sí\r\n', 9936, '123', 4),
(17, 'Martillo Galponero Forjado En Acero Mango Madera', 'Cabeza forjada en acero especial y templada garantizando gran resistência al producto.\r\n- Acabado pulido y cabeza barnizada, proporcionando protección contra la oxidación.\r\n- Mango de madera fijado con epoxi.\r\n- Perfecto balance entre la cabeza y el mango para aumentar el confort y seguridad del usuário durante el uso.-.\r\n- Los martillos son sometidos a un proceso de temple localizado paratener dureza adecuada en la base de impacto y uñas para soportar el uso continuo por largos períodos.\r\n- Peso : 0,72 kg\r\n', 3200, '630', 4),
(18, 'Trencity Land Serie Ciudad B 22pcs De Encastre Cal', 'Tipo de vehículo: Auto\r\nCon luces: No\r\nCon sonido: No\r\nLargo x Ancho: 65 cm x 65 cm\r\nEdad mínima recomendada: 3 años\r\n', 20100, '4', 5),
(19, 'Cars Camion Mack Deluxe A Fricción + Rayo Cruz Sto', 'Número de certificado de seguridad del juguete: 7798310074516\r\nTipo de vehículo: Camión\r\nMaterial: Plástico\r\nCon luces: No\r\nCon sonido: No\r\nLargo x Ancho x Altura: 36 cm x 8 cm x 20 cm\r\nEdad mínima recomendada: 3 años\r\n', 9749, '41', 5),
(20, '211 Excavadora Plastica Grande Duravit', 'Tipo de vehículo: Auto\r\nMaterial: Plástico\r\nCon luces: No\r\nCon sonido: No\r\nLargo x Ancho x Altura: 60 cm x 28 cm x 30 cm\r\nEdad mínima recomendada - Edad máxima recomendada: 2 años - 12 años\r\n', 7100, '58', 5),
(21, 'Cochecito Carestino City Travel + Accesorios', 'Capacidad del cochecito: Individual\r\nPeso máximo soportado: 20 kg\r\nEs reclinable: Sí\r\nCantidad de posiciones de reclinado: 5\r\nTipo de sistema de seguridad: Arnés de 5 puntos\r\nIncluye travel system: Sí\r\nEs 3 en 1: No\r\nAltura abierto: 104 cm\r\nAncho abierto: 33 cm\r\nProfundidad abierto: 81 cm\r\nCon capota ventana: Sí\r\nCon funda desmontable: Sí\r\n', 139963, '35', 6),
(22, 'Coche Cuna Bebe 3 Ruedas + Huevito + Butaca Baby S', 'Capacidad del cochecito: 1 Persona\r\nPeso máximo soportado: 25 kg\r\nEs reclinable: Sí\r\nCantidad de posiciones de reclinado: 3\r\nTipo de sistema de seguridad: Arnés de 3 puntos\r\nIncluye travel system: Sí\r\nEs 3 en 1: Sí\r\nAltura abierto: 98 cm\r\nAncho abierto: 45 cm\r\nProfundidad abierto: 78 cm\r\nPeso: 7 kg\r\nEs plegable con una mano: Sí\r\n', 98190, '22', 6),
(23, 'Mamadera Avent Classic Anti-Colic 260 ml', 'Edad mínima recomendada: 0 meses.\r\nEdad máxima recomendada: 12 meses.\r\nEs libre de BPA.\r\nCon sistema anticólicos.\r\nCuenta con sistema AirFree.\r\n', 10399, '745', 6),
(24, 'Zapatilla Maria Cher Revel Con Detalles Para Mujer', 'Zapatilla estilo deportiva confeccionada en P.U. con diferentes recortes en gamuzon y red.\r\nSuela de goma con base caramelo. Posee acceso por cordones diferenciados. También tiene etiqueta tejida de logo en lengua.\r\n', 38186, '136', 7),
(25, 'Zapatillas Costa Topper Topper Tienda Oficial', 'NOMBRE: ZAPATILLAS COSTA\r\n-GÉNERO: UNISEX\r\n-MARCA: topper\r\n-ARTÍCULO: 25549\r\n-ORIGEN: NACIONAL\r\n', 28399, '63', 7);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_clientes`);

--
-- Indices de la tabla `detalle_pedidos`
--
ALTER TABLE `detalle_pedidos`
  ADD PRIMARY KEY (`id_detalle_pedidos`),
  ADD KEY `pedido` (`id_pedido`),
  ADD KEY `productos` (`id_productos`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`id_pedido`),
  ADD KEY `clientes` (`id_clientes`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_productos`),
  ADD KEY `categoria` (`id_categoria`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_clientes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `detalle_pedidos`
--
ALTER TABLE `detalle_pedidos`
  MODIFY `id_detalle_pedidos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `id_pedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_productos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_pedidos`
--
ALTER TABLE `detalle_pedidos`
  ADD CONSTRAINT `pedido` FOREIGN KEY (`id_pedido`) REFERENCES `pedido` (`id_pedido`),
  ADD CONSTRAINT `productos` FOREIGN KEY (`id_productos`) REFERENCES `productos` (`id_productos`);

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `clientes` FOREIGN KEY (`id_clientes`) REFERENCES `clientes` (`id_clientes`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `categoria` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
