-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: bbdd
-- Tiempo de generación: 14-03-2022 a las 11:50:46
-- Versión del servidor: 8.0.27
-- Versión de PHP: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `iaw_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `nombre` varchar(15) NOT NULL,
  `pApellido` varchar(25) NOT NULL,
  `sApellido` varchar(25) NOT NULL,
  `DNI` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `codigo` int NOT NULL,
  `descripcion` varchar(20) NOT NULL,
  `rebaja` int NOT NULL,
  `estarebajas` int NOT NULL,
  `precio` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`codigo`, `descripcion`, `rebaja`, `estarebajas`, `precio`) VALUES
(70, 'luz', 50, 1, 30),
(3, 'Gomilla', 50, 1, 20),
(4, 'balon3', 50, 1, 3),
(80, 'oikijpl', 7, 1, 12365),
(50, 'rrgrg', 55, 1, 57),
(70, 'reloj', 50, 1, 30),
(1234, 'reloj', 70, 1, 5),
(7, 'libro historia', 50, 1, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores`(
  `nombre` varchar(50) NOT NULL,
  `cif` varchar(50) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telefono` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`nombre`, `cif`, `direccion`, `email`, `telefono`) VALUES
('', '6567', 'R3R3R', '434343', ''),
('', 'lepflepflepl', 'elfpleplfpelf', 'fepflpelfpelfp', ''),
('', '709069', 'calle eresma', 'alvaro@gmail.com', ''),
('', '7090696', 'calle eresma', 'alvaro@gmail.com', ''),
('', '7090696', 'calle eresma', 'alvaro@gmail.com', '65560505'),
('', '7090696', 'calle eresma', 'alvaro@gmail.com', '65560505'),
('alvaro', '5960690690', 'calle eresma', 'alvaro@gmail.com', '635395049'),
('martin', '7890075y', 'Calle Larios', 'alvaro@gmail.com', '6435770'),
('ewfkoefkoek', 'kofekoekfofeko', 'ofekoekfoek', 'feokeokfoeko', '69505905'),
('alvaro', '6789095950D', 'calle alfonso', 'alvaro@gmail.com', '6493920290');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

