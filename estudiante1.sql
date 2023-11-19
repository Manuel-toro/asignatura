-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-07-2023 a las 21:14:34
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `polmedellin`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante1`
--

CREATE TABLE `estudiante1` (
  `Id_estudiante` int(10) UNSIGNED NOT NULL COMMENT 'Llave primaria',
  `Nombre` varchar(30) NOT NULL,
  `Identificacion` varchar(20) NOT NULL,
  `Telefono` varchar(25) DEFAULT NULL,
  `Direccion` varchar(50) DEFAULT NULL,
  `Fecha_Nacimiento` date DEFAULT NULL,
  `Carrera` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estudiante1`
--

INSERT INTO `estudiante1` (`Id_estudiante`, `Nombre`, `Identificacion`, `Telefono`, `Direccion`, `Fecha_Nacimiento`, `Carrera`) VALUES
(1, 'James Antonio', '1049541631', '3159435678', 'Cra 5   No. 45 - 89', '2000-03-10', 'Doctor'),
(2, 'Yeison ', '1074121341', '3003214568', 'Cra 79 No. 77 - 30', '1999-05-20', 'Actor'),
(3, 'Camilo', '1074156341', '3003214908', 'Cra 72 No. 70 - 31', '1989-05-20', 'Forence'),
(4, 'Fuan', '1039629534', '3001214678', 'Cra 31 No. 54 - 56', '1988-04-12', 'Profesor'),
(5, 'Alfredo', '1036562953', '3007542179', 'Cra 35 No. 94 - 96', '1959-03-25', 'Veterinario'),
(6, 'Anyonia', '1030876559', '3013243802', 'Cra 54 No. 10 - 43', '1957-03-25', 'Ingeniera'),
(7, 'Jessica', '1030876543', '3013243312', 'Cra 50 No. 11 - 43', '2003-03-25', 'Ingeniera'),
(8, 'Valentina', '1054367123', '3154322150', 'Car 87 No. 12 - 43', '2002-09-23', 'Farmaceutica'),
(9, 'Carlos', '1001032902', '3509081345', 'Cra 32 No. 86 - 22', '1990-12-09', 'Software'),
(10, 'Camila', '1002045890', '3208906644', 'Cra 45 No. 45 - 11', '2005-09-23', 'Redes'),
(11, 'Carmen', '1000432904', '3504508912', 'Cra 34 No. 12 - 01', '2005-12-09', 'Redes'),
(12, 'Carolina', '1001987124', '3140983450', 'Cra 44 No. 23 - 11', '2002-09-12', 'Ingles'),
(13, 'Juan', '1001070132', '3210883453', 'Crr 40 No. 88 - 20', '1999-10-02', 'Software'),
(14, 'Jhon', '1003978210', '3198906610', 'Cra 10  No. 23-12', '2003-02-12', 'Veterinaria'),
(15, 'jhan', '1002012895', '3109341278', 'Crr 34 No. 23 - 11', '2009-09-12', 'Veterinario'),
(16, 'Ana', '1001238091', '3148901245', 'Cra 34 No. 55 - 11', '1996-03-04', 'Software'),
(17, 'Cristina', '1039476526', '3148361645', 'Cra 23 No. 45 - 53', '1997-04-14', 'Ing.Civil'),
(18, 'Sofia', '1039437526', '3027468371', 'Cra 14 No. 23 - 34', '2002-10-04', 'Psicología'),
(19, 'Francisco', '1038746354', '3204084111', 'Cra 32 No. 14 - 15 ', '1994-04-20', 'Motociclista'),
(20, 'Manuel', '1034645135', '3124658574', 'Cra 24 No. 7 - 12', '1997-07-21', 'Diseño_Gráfico'),
(21, 'Isabel', '1030475746', '3140983354', 'Cra 60 No. 20 - 30', '1995-02-21', 'Actriz '),
(22, 'Andrés', '1036364746', '3034507645', 'Cra 13 No. 43 - 55', '1995-12-31', 'Arquitecto'),
(23, 'Jhoan', '1039576134', '3005432132', 'Cra 90 No. 19 - 21', '2004-03-15', 'Aserrador'),
(24, 'David', '10308760436', '30132005312', 'Cra 10 No. 21 - 43', '2002-05-25', 'Militar'),
(25, 'Armando', '10308765076', '3013736312', 'Cra 27 No. 12 - 3', '2003-10-20', 'Vendedor'),
(26, 'Jaime', '10308766391', '3354243312', 'Cra 12 No. 7  - 6', '1980-09-26', 'Constructor '),
(27, 'Mateo', '10382365436', '3140023450', 'Cra 5   No. 11 - 4', '2000-10-05', 'Ambientalista '),
(28, 'Federico', '10308645436', '3140921023', 'Cra 10 No. 6  - 8', '2001-11-02', 'Guitarrista'),
(29, 'Yeferson', '10012350976', '3213298890', 'Cra 45 No. 45 - 11', '2003-04-10', 'Software'),
(30, 'Debora', '10038900512', '3508729087', 'Cra 45 No. 45 - 09', '2000-12-09', 'Redes');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `estudiante1`
--
ALTER TABLE `estudiante1`
  ADD PRIMARY KEY (`Id_estudiante`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `estudiante1`
--
ALTER TABLE `estudiante1`
  MODIFY `Id_estudiante` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Llave primaria', AUTO_INCREMENT=100;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
