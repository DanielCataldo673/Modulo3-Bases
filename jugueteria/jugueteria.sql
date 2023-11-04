-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-08-2023 a las 16:51:00
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
-- Base de datos: `jugueteria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `categoria_id` int(11) NOT NULL,
  `nombre` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_esperanto_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`categoria_id`, `nombre`) VALUES
(1, 'dinosaurios'),
(2, 'juegos_de_mesa'),
(3, 'muñecas'),
(4, 'muñecos_de_accion'),
(5, 'pelotas'),
(6, 'bebes'),
(7, 'aire_libre'),
(8, 'instrumentos_musicales'),
(9, 'peluches'),
(10, 'pistas_y_vehiculos'),
(11, 'rodados'),
(12, 'pistolas_y_espadas'),
(13, 'disfraces'),
(14, 'ladrillos_y_bloques'),
(15, 'didacticos'),
(16, 'electronica'),
(17, 'jugando_a_ser_grande'),
(18, 'electronica'),
(19, 'libros'),
(20, 'play_mobil');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `edades`
--

CREATE TABLE `edades` (
  `edad_id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `edades`
--

INSERT INTO `edades` (`edad_id`, `nombre`) VALUES
(1, '0_a_12_meses'),
(2, '1_a_6'),
(3, '7_a_12'),
(4, '0_a_99');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `empleado_id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `rol` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`empleado_id`, `nombre`, `rol`) VALUES
(1, 'juan', 'empleado_deposito'),
(2, 'abel', 'encargado_deposito'),
(3, 'pedro', 'empleado_deposito'),
(4, 'maria', 'administracion'),
(5, 'laura', 'entregas'),
(6, 'lucas', 'seguridad'),
(7, 'lujan', 'atencion_al_cliente'),
(8, 'luis', 'limpieza'),
(9, 'jorge', 'atencion_al_cliente'),
(10, 'fernanda', 'atencion_al_cliente_y_encargada_salon');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marcas`
--

CREATE TABLE `marcas` (
  `marcas_id` smallint(5) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `marcas`
--

INSERT INTO `marcas` (`marcas_id`, `nombre`) VALUES
(1, 'mattel'),
(2, 'play_mobil'),
(3, 'barbie'),
(4, 'chicco'),
(5, 'hasbro'),
(6, 'lego'),
(7, 'fisher_price'),
(8, 'nenuco'),
(9, 'marvel'),
(10, 'adidas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `producto_id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` text NOT NULL,
  `precio` float NOT NULL,
  `destacado` varchar(100) NOT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`producto_id`, `nombre`, `descripcion`, `precio`, `destacado`, `stock`) VALUES
(1, 'Salvavidas Inflable ', 'Salvavidas Peses Amistosos\r\nCaracterísticas:\r\n-Válvula de seguridad\r\n-Vinilo resistente probado\r\n-Medidas presentación: 81 x 76 Cm\r\n', 1.65, 'SI ', 100),
(2, 'Andador Pata Pata ', 'Andarin Aventura 2 en 1\r\nPractico Andador\r\n-Características-\r\n*Aro de protección\r\n*Barra de arrastre\r\n*Llave\r\n*Bocina a aire\r\n*Apoyapies\r\n*Asiento portaobjetos\r\n*Medidas:58x28x28 (largo/ancho/alto) sin barral\r\n', 15.5, 'SI', 33),
(3, 'Disfraz Buzz Lightyear ', '¡Tu niño puede convertirse en su personaje favorito! El disfraz consta de 1 traje de una pieza entera y la máscara de tela.\r\n\r\nTalle 0 (3/4 años): Torax 67/70 cm, Cintura 66/69 cm, altura 95/113 cm\r\nTalle 1 (5/6 años): Torax 74/77 cm, Cintura 70/73 cm, altura 113/123 cm\r\nTalle 2 (7/8 años): Torax 79/83 cm, cintura 78/82 cm, altura 123/133 cm\r\n* Los diferentes talles se venden por separado.\r\n', 10.9, 'SI', 25),
(4, 'Smart Dog Tu Mejor Amigo', 'Smart Dog Tu Mejor Amigo.\r\n\r\nRobot de alta tecnología.\r\n\r\nOjos Luminosos\r\nEfectos Sonoros\r\nProgramable\r\nMúltiples Funciones\r\nCable USB para cargar\r\n\r\nOriginal de Ditoys\r\n', 55.7, 'SI', 12),
(5, 'Señor Cara de Papa Clasico', 'EL MUNDO DE LAS COMBINACIONES DE LOS JUGUETES POTATO HEAD: Los niños pueden poner a volar su imaginación y creatividad con esta figura que viene con numerosas piezas para crear todo tipo de looks descabellados Edad recomendada: 2 años en adelante. Incluye 1 cuerpo de papa grande, 1 base y 11 accesorios.\r\n', 7.599, 'SI', 45),
(6, 'Guitarra Juguete Princesas 4 Cuerdas Girl Power Or', 'PRINCESAS GUITARRA ORIGINAL DITOYS Que tu primera guitarra sea de princesas!! Una preciosa guitarra con motivos de princesas para que los mas pequeños de la casa aprendan a usar instrumentos musicales de la mejor manera y se adentren en el maravilloso mundo de la musica!! Las guitarras tienen un largo de 48 cms aproximadamente La guitarra de Princesas es con cuerdas !!!\r\n', 5.28, 'SI', 11),
(7, 'Juego De Mesa Familiar Bingo Lotto Original', 'Prepárate para un emocionante juego de azar. ¡Reúne a algunos amigos, elige una carta de la suerte y toma algunos contadores para prepararte para un juego de bingo! ¡Gira tus números de la suerte de la bola de bingo y si el número está en tu tarjeta, cúbrelo con un contador, primero gana cinco en fila!\r\n', 2.6, 'SI', 10),
(8, 'Juego De Mesa Bingo 48 Cartones Con Bolillero', 'Incluye:\r\n- 90 Bolas\r\n- 48 Cartones\r\n- 1 Bolillero\r\n- 1 Tablero\r\n', 3.4, 'SI', 56),
(9, 'Muñeca Kiara Fashion Vestido Fucsia', 'Muñeca fashion Kiara\r\n\r\nCaracterísticas:\r\n- Muñeca con múltiples vestidos y más de 25 accesorios para vestirla.\r\n- Articulada en brazos, piernas y cabeza.\r\n- Medida : 25 cm de alto.\r\n\r\nEdad recomedada: a partir de los 3 años\r\n', 4.35, 'SI', 55),
(10, 'Pepona Sweet Doll Cabello De Nieve De 35 Cm.', 'Muñeca Sweet Doll de tela 35cm de alto\r\n\r\nRelleno con vellón siliconado\r\nOjos bordados\r\nExcelente terminación\r\nSuave al tacto y liviana de peso.\r\n\r\nMedidas\r\nAncho 10 - 12cm\r\nAlto 35cm\r\n\r\n', 4.3, 'SI', 124),
(11, 'Pelotas De Futbol Dream ', 'Características: - Material: Cuero Sintetico - Diámetro: 700mm - Medida: Nº 5 - Cámara: Látex - Uso: Recreación - Ideal para Césped natural - Costura a máquina - Acabado semi brillante - Textura lisa - El balón viene desinflado\r\n', 5.85, 'SI', 123);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `usuario_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`usuario_id`, `first_name`, `nickname`, `password`, `email`) VALUES
(1, 'MANUEL', 'LUCES_AMARILLAS', '1235', 'LUCESAMARILLAS@GMAIL.COM'),
(2, 'PEDRO', 'LUCES_VIOLETAS', '1234', 'LUCESVIOLETAS@GMAIL.COM'),
(3, 'LUIS', 'LUCES_AZULES', '12345', 'LUCESAZULES@GMAIL.COM'),
(4, 'JORGE', 'LUCES_ROJAS', '123456', 'LUCESROJAS@GMAIL.COM');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`categoria_id`);

--
-- Indices de la tabla `edades`
--
ALTER TABLE `edades`
  ADD PRIMARY KEY (`edad_id`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`empleado_id`);

--
-- Indices de la tabla `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`marcas_id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`producto_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usuario_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `categoria_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `edades`
--
ALTER TABLE `edades`
  MODIFY `edad_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `empleado_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `marcas`
--
ALTER TABLE `marcas`
  MODIFY `marcas_id` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `producto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `usuario_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
