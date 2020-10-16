-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-10-2020 a las 17:19:53
-- Versión del servidor: 10.1.31-MariaDB
-- Versión de PHP: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `frankgael`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito`
--

CREATE TABLE `carrito` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_zapato` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precioAcumulado` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `carrito`
--

INSERT INTO `carrito` (`id`, `id_usuario`, `id_zapato`, `cantidad`, `precioAcumulado`) VALUES
(24, 19, 3, 1, 125),
(29, 19, 10, 1, 40);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra`
--

CREATE TABLE `compra` (
  `id` int(11) NOT NULL,
  `codigoVenta` varchar(5) NOT NULL,
  `id_zapato` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `compra`
--

INSERT INTO `compra` (`id`, `codigoVenta`, `id_zapato`, `id_usuario`, `total`) VALUES
(2, '1', 10, 19, 15),
(3, '2', 9, 19, 16),
(4, '3', 6, 19, 17),
(5, '4', 7, 19, 18);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `talla`
--

CREATE TABLE `talla` (
  `id` int(11) NOT NULL,
  `talla` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `Id_usuario` int(10) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Apellido` varchar(50) NOT NULL,
  `Nombre_Usuario` varchar(50) NOT NULL,
  `Password` varchar(250) NOT NULL,
  `Correo` varchar(50) NOT NULL,
  `type` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`Id_usuario`, `Nombre`, `Apellido`, `Nombre_Usuario`, `Password`, `Correo`, `type`, `status`) VALUES
(19, 'Julio ', 'Mayer', 'Mayen624', 'ouN0lxZ9z01IMZIk4wGPIw==', 'blabla@gmail.com', 2, 1),
(20, 'Julio ', 'Mayen', 'Admin', 'k5ihfDoabJZC8lk2sFUw7Q==', 'juliomayen300@gmail.com', 1, 1),
(21, 'Marcos', 'Martines ', 'Varca', 'ouN0lxZ9z01IMZIk4wGPIw==', 'elsalvador25@gmail.com', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zapatos`
--

CREATE TABLE `zapatos` (
  `Id_zapato` int(11) NOT NULL,
  `Precio` decimal(11,0) NOT NULL,
  `Descripcion` text NOT NULL,
  `Cantidad` int(10) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `categoria` varchar(75) NOT NULL,
  `img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `zapatos`
--

INSERT INTO `zapatos` (`Id_zapato`, `Precio`, `Descripcion`, `Cantidad`, `Nombre`, `categoria`, `img`) VALUES
(1, '100', 'Zapato Pierre cardin casuales color gris.', 5, 'Zapato-PIERRE CARDIN', 'Hombre', 'zapato-pierrecardin-H.jpg'),
(2, '75', 'Zapato deportivo color blanco.', 5, 'Zapato FILA', 'Deporte', 'D4-H.jpg'),
(3, '125', 'Zapato Jorndan color rojo. ', 5, 'Zapato Jordan', 'Hombre ', 'D6-H.jpg'),
(5, '70', 'Zapato casual para hombre color cafe. ', 5, 'Botin-Callahan', 'Hombre ', 'botin-callaghan.jpg'),
(6, '80', 'Zapato formal para hombre color rojo', 5, 'Botin-Camper', 'Hombre', 'botin-camper-negro.jpg'),
(7, '75', 'Zapato de vestir para hombre color beis', 5, 'Zapato camper', 'Hombre ', 'zapato-camper.jpg'),
(8, '50', 'Zapato de vestir para hombre color gris', 5, 'Zapato camper', 'Hombre ', 'zapato-camper-gris.jpg'),
(9, '30', 'Zapto de vestir para hombre color cafe', 5, 'Botin camper', 'Hombre ', 'botin-camper.jpg'),
(10, '40', 'Zapato formal para hombre color cafe claro', 5, 'Zapato camper', 'Hombre ', 'zapato-camper-cafe-claro.jpg'),
(11, '40', 'Zpato para de vestir para mujer color ocre', 5, 'Bota Igico', 'Mujer', 'bota-igico.jpg'),
(12, '75', 'Zapato de vestir color cafe para mujer ', 5, 'Botin Arvera', 'Mujer', 'botin-arveva.jpg'),
(13, '80', 'Zapato de vestir para mujer color negro', 5, 'Botin colores de california', 'Mujer', 'botin-colors-of-california.jpg'),
(14, '35', 'Zapatos casules para mujer color beige', 5, 'Botin Dorolatina', 'Mujer ', 'botin-doralatina.jpg'),
(15, '85', 'Zapato formal para mujer color cafe claro', 5, 'Zapato Dorolotina', 'Mujer ', 'zapato-doralatina.jpg'),
(16, '40', 'Zapato casual para mujer color beige', 5, 'Sandalia Dorolotina ', 'Mujer', 'sandalia-lodi.jpg'),
(17, '75', 'Zapato formales para mujer color gris con beige', 5, 'Tacones hispanitas', 'Mujer', 'zapato-hispanitas.jpg'),
(18, '100', 'Zapatos formales para mujer color negro oscuro', 5, 'Tocones Lodi ', 'Mujer', 'zapato-lodi.jpg'),
(19, '30', 'Zapato casual para niño color azul', 5, 'Lacostes ', 'Niños', 'Lacostes.png'),
(20, '40', 'Zapato deportivo para niña color rosado', 5, 'Puma kids', 'Niños', 'Puma.png'),
(21, '50', 'Zapatos de vestir para niño color marron', 5, 'Botin Fisher Price ', 'Niños', 'cceeb477a1e317da050da01340753a1b-product.jpg'),
(23, '60', 'Zapatos para niño color azul marino ', 5, 'Zapato All Stars ', 'Niños', 'img.png'),
(24, '45', 'Zapatos de vestir para niño color cafe ', 5, 'Zapato Fisher Price ', 'Niños', '8008932-5.jpg'),
(25, '35', 'Zapato deportivo para niño color celeste', 5, 'Zapato Adidas', 'Niños ', '41qN400i7SL.jpg'),
(26, '65', 'Zaptos para niño de cuero color cafe oscuro', 5, 'Allfora kids', 'Niños', 'Cuero-kid.png'),
(27, '40', 'Zapato casual para niño color azul ', 5, 'Kikers kids ', 'Niños ', 'Kikers.png'),
(28, '50', 'Zapato deportivo para mujer color rojo', 5, 'Zapato Callahan', 'Deportes', 'deportivo-callaghan.jpg'),
(29, '55', 'Zapato deportivo para hombre color gris con azul', 5, 'Zapato Camper ', 'Deportes', 'deportivo-camper (1).jpg'),
(30, '50', 'Zapato deportivo para hombre color azul marino ', 5, 'Zapato Camper ', 'Deportes', 'deportivo-camper (2).jpg'),
(31, '45', 'Zapato deportivo para hombre color gris con blanco ', 5, 'Zapato Camper ', 'Deportes', 'deportivo-camper (3).jpg'),
(32, '65', 'Zapato deportivo para hombre color rojo ', 5, 'Zapato Camper ', 'Deportes', 'deportivo-camper.jpg'),
(33, '75', 'Zapatos deportivo para mujer color rosado brillante', 5, 'Zapato Exe ', 'Deportes', 'deportivo-exe.jpg'),
(34, '60', 'Zapato deportivo para hombre color verde ', 5, 'Zapato Kanna', 'Deportes', 'deportivo-kanna.jpg'),
(35, '70', 'Zapato deportivo para mujer color platiado ', 5, 'Zapato Giosepo ', 'Deportes', 'depotivo-gioseppo.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zapatoxtalla`
--

CREATE TABLE `zapatoxtalla` (
  `id` int(11) NOT NULL,
  `id_zapato` int(11) NOT NULL,
  `id_talla` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_zapato` (`id_zapato`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_zapato` (`id_zapato`),
  ADD KEY `fk_user` (`id_usuario`);

--
-- Indices de la tabla `talla`
--
ALTER TABLE `talla`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`Id_usuario`);

--
-- Indices de la tabla `zapatos`
--
ALTER TABLE `zapatos`
  ADD PRIMARY KEY (`Id_zapato`);

--
-- Indices de la tabla `zapatoxtalla`
--
ALTER TABLE `zapatoxtalla`
  ADD PRIMARY KEY (`id`,`id_zapato`,`id_talla`),
  ADD KEY `fk_zapato` (`id_zapato`),
  ADD KEY `fk_talla` (`id_talla`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carrito`
--
ALTER TABLE `carrito`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `compra`
--
ALTER TABLE `compra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `talla`
--
ALTER TABLE `talla`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `Id_usuario` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `zapatos`
--
ALTER TABLE `zapatos`
  MODIFY `Id_zapato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `zapatoxtalla`
--
ALTER TABLE `zapatoxtalla`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD CONSTRAINT `carrito_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`Id_usuario`),
  ADD CONSTRAINT `carrito_ibfk_2` FOREIGN KEY (`id_zapato`) REFERENCES `zapatos` (`Id_zapato`);

--
-- Filtros para la tabla `compra`
--
ALTER TABLE `compra`
  ADD CONSTRAINT `FK_compra_zapatos` FOREIGN KEY (`id_zapato`) REFERENCES `zapatos` (`Id_zapato`),
  ADD CONSTRAINT `compra_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`Id_usuario`);

--
-- Filtros para la tabla `zapatoxtalla`
--
ALTER TABLE `zapatoxtalla`
  ADD CONSTRAINT `fk_talla` FOREIGN KEY (`id_talla`) REFERENCES `talla` (`id`),
  ADD CONSTRAINT `fk_zapato` FOREIGN KEY (`id_zapato`) REFERENCES `zapatos` (`Id_zapato`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
