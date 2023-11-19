-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-09-2023 a las 14:45:54
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
-- Base de datos: `estudiante`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignatura`
--

CREATE TABLE `asignatura` (
  `Id_asignatura` varchar(4) NOT NULL,
  `Nombre_Asignatura` varchar(50) DEFAULT NULL,
  `Intensidad_horaria` int(10) UNSIGNED NOT NULL,
  `Costo` int(10) UNSIGNED NOT NULL,
  `Docente` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `asignatura`
--

INSERT INTO `asignatura` (`Id_asignatura`, `Nombre_Asignatura`, `Intensidad_horaria`, `Costo`, `Docente`) VALUES
('AS01', 'BasedeDatos', 3, 3300, 'Ivan Andres'),
('AS02', 'Religión', 5, 5000, 'Jorge Eliecer'),
('AS03', 'Software', 1, 4000, 'Carlos Eduardo'),
('AS04', 'Tecnología ', 4, 4500, 'Alvaro Uribe'),
('AS05', 'Matemáticas ', 6, 8000, 'Néstor Palacio '),
('AS06', 'Español ', 5, 5500, 'Arnulfo '),
('AS07', 'Administración', 3, 6000, 'Margarita cifuentes '),
('AS08', 'Sociologia', 4, 3500, 'Eduardo Caseres'),
('AS09', 'Física', 7, 4500, 'Julian'),
('AS10', 'Literatura', 6, 5000, 'Johan Andres'),
('AS11', 'Religion', 8, 3400, 'Santiago'),
('AS12', 'Tecnologia', 7, 5000, 'Kevin Gildardo'),
('AS13', 'Quimica', 8, 3500, 'Michael'),
('AS14', 'Ingles', 5, 4500, 'Lucas Angel'),
('AS15', 'Idiomas', 3, 3400, 'Josep'),
('AS16', 'Fisica Cuantica', 8, 2300, 'Carlk Jhonson'),
('AS17', 'Lenguaje', 6, 5000, 'Brayan Alexis'),
('AS18', 'Artes', 3, 5600, 'Alan Mateo'),
('AS19', 'Astrofisica', 9, 5500, 'Jorge Alejandro'),
('AS20', 'Antropologia', 4, 2300, 'Miguel Angel'),
('AS21', 'Geologia', 6, 4500, 'Camila Diaz'),
('AS22', 'Estadistica', 5, 3400, 'María Fernández'),
('AS23', 'Arqueología ', 7, 6700, 'Esteban Martínez'),
('AS24', 'Neurociencia', 3, 5600, 'Valeria Gutiérrez'),
('AS25', 'Lingüística', 7, 2500, 'Sofía Rodríguez'),
('AS26', 'Marketing', 5, 3400, 'Alberto Jose'),
('AS27', 'Filosofia', 4, 4500, 'David Enrique'),
('AS28', 'Informática', 4, 5500, 'Kevin Gildardo'),
('AS29', 'Estructura de Datos', 7, 6700, 'Esteban Martínez'),
('AS30', 'Sistemas Operativos', 6, 4500, 'Valeria Gutiérrez'),
('AS31', 'Administración', 7, 9000, 'Esteban Martínez Paez'),
('AS32', 'Admision', 6, 5500, 'Alvaro Benitez Moreno'),
('AS33', 'Matematicas', 5, 6000, 'Margarita Moreno Paez'),
('AS34', 'Construccion De Bases De Datos', 7, 8000, 'Camilo Monsalve Guitierrez'),
('AS35', 'Ingles', 7, 9000, 'Esteban Palacios Benitez'),
('AS36', 'Religion', 3, 4400, 'Victor Manuel Ramirez Rengifo'),
('AS37', 'Etica', 9, 2000, 'Maria Ospina Torres'),
('AS38', 'Artistica', 9, 11000, 'Jairo Lopez Ospina'),
('AS39', 'Arismatica', 4, 6000, 'Juan Portillo Ramirez'),
('AS40', 'Castellano', 8, 10000, 'Camilo Asprilla Lopez'),
('AS41', 'Algrabra 2', 4, 6000, 'Willinton Martinez Cadavid'),
('AS42', 'Matemáticas ', 6, 8000, 'Calles Rengiifo'),
('AS43', 'Tecnologia', 8, 10000, 'Felipe Paez Guitierrez'),
('AS44', 'Idiomas', 4, 5000, 'Maria Martinez Palacios'),
('AS45', 'Arqueología ', 8, 9000, 'Carlos Corrales Moreno'),
('AS46', 'Artes', 6, 9000, 'Alberto Palacios Martinez'),
('AS47', 'Estructura de Datos', 9, 11000, 'Wendy Pertuz Moreno'),
('AS48', 'Fisica Cuantica', 3, 5000, 'Felipe Velez Paez'),
('AS49', 'Lingüística', 9, 10000, 'Luis Fernando Moreno Asprilla'),
('AS50', 'Matematicas', 9, 10000, 'Jorge Eliecer Martinez Moreno');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificaciones`
--

CREATE TABLE `calificaciones` (
  `Id_calificacion` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Id_estudiante` int(10) UNSIGNED NOT NULL,
  `Id_asignatura` varchar(6) DEFAULT NULL,
  `Calificacion_final` float UNSIGNED NOT NULL,
  `Aprobado` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `calificaciones`
--

INSERT INTO `calificaciones` (`Id_calificacion`, `Id_estudiante`, `Id_asignatura`, `Calificacion_final`, `Aprobado`) VALUES
('Cal1', 1, 'AS01', 4, 'SI'),
('Cal10', 10, 'AS10', 3, 'SI'),
('Cal11', 11, 'AS11', 3, 'SI'),
('Cal12', 12, 'AS12', 4, 'SI'),
('Cal13', 13, 'AS13', 2, 'NO'),
('Cal14', 14, 'AS14', 5, 'SI'),
('Cal15', 15, 'AS15', 3, 'SI'),
('Cal16', 16, 'AS16', 3, 'SI'),
('Cal17', 17, 'AS17', 2, 'NO'),
('Cal18', 18, 'AS18', 3.2, 'SI'),
('Cal19', 19, 'AS19', 3.1, 'SI'),
('Cal2', 2, 'AS02', 3, 'SI'),
('Cal20', 20, 'AS20', 3, 'SI'),
('Cal21', 21, 'AS21', 4, 'SI'),
('Cal22', 22, 'AS22', 2.4, 'NO'),
('Cal23', 23, 'AS23', 4.5, 'SI'),
('Cal24', 24, 'AS24', 3.2, 'SI'),
('Cal25', 25, 'AS25', 1, 'SI'),
('Cal26', 25, 'AS26', 4.2, 'SI'),
('Cal27', 27, 'AS27', 3, 'SI'),
('Cal28', 28, 'AS28', 3.4, 'SI'),
('Cal29', 29, 'AS29', 4, 'SI'),
('Cal3', 3, 'AS03', 3, 'SI'),
('Cal30', 30, 'AS30', 4.3, 'SI'),
('Cal31', 31, 'AS31', 3.7, 'SI'),
('Cal32', 32, 'AS32', 4.1, 'SI'),
('Cal33', 33, 'AS33', 2.5, 'NO'),
('Cal34', 34, 'AS34', 3.1, 'SI'),
('Cal35', 35, 'AS35', 3.9, 'SI'),
('Cal36', 36, 'AS36', 2, 'NO'),
('Cal37', 37, 'AS37', 3.9, 'SI'),
('Cal38', 38, 'AS38', 4.9, 'SI'),
('Cal39', 39, 'AS39', 3.6, 'SI'),
('Cal4', 4, 'AS04', 2, 'NO'),
('Cal40', 40, 'AS40', 3.4, 'SI'),
('Cal41', 41, 'AS41', 2.9, 'NO'),
('Cal42', 42, 'AS42', 2, 'NO'),
('Cal43', 43, 'AS43', 4, 'SI'),
('Cal44', 44, 'AS44', 3.8, 'SI'),
('Cal45', 45, 'AS45', 3.8, 'SI'),
('Cal46', 46, 'AS46', 3, 'SI'),
('Cal47', 47, 'AS47', 3, 'SI'),
('Cal48', 48, 'AS48', 2.9, 'NO'),
('Cal49', 49, 'AS49', 5, 'SI'),
('Cal5', 5, 'AS05', 4, 'SI'),
('Cal50', 50, 'AS50', 4.6, 'SI'),
('Cal51', 51, 'AS51', 4.7, 'SI'),
('Cal6', 6, 'AS06', 2, 'NO'),
('Cal7', 7, 'AS07', 4, 'SI'),
('Cal8', 8, 'AS08', 5, 'SI'),
('Cal9', 9, 'AS09', 4, 'SI');

--
-- Disparadores `calificaciones`
--
DELIMITER $$
CREATE TRIGGER `calificaciones_ai` AFTER INSERT ON `calificaciones` FOR EACH ROW insert into calificaciones_respaldo(Id_Calificacion, Id_estudiante, Id_Asignatura, calificacion_final, Aprobado, Usuario, Fecha_registro) values (new. Id_Calificacion, new.Id_estudiante, new. Id_asignatura, new.Calificacion_final, new.Aprobado, current_user(), now())
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificaciones_respaldo`
--

CREATE TABLE `calificaciones_respaldo` (
  `Id_calificacion` varchar(5) NOT NULL,
  `Id_estudiante` int(10) UNSIGNED DEFAULT NULL,
  `Id_asignatura` varchar(4) DEFAULT NULL,
  `Calificacion_final` float UNSIGNED DEFAULT NULL,
  `Aprobado` varchar(3) DEFAULT NULL,
  `Usuario` varchar(20) DEFAULT NULL,
  `Fecha_registro` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `calificaciones_respaldo`
--

INSERT INTO `calificaciones_respaldo` (`Id_calificacion`, `Id_estudiante`, `Id_asignatura`, `Calificacion_final`, `Aprobado`, `Usuario`, `Fecha_registro`) VALUES
('Cal51', 51, 'AS51', 4.7, 'SI', 'root@localhost', '2023-08-20 13:49:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE `estudiante` (
  `Id_estudiante` int(10) UNSIGNED NOT NULL COMMENT 'Llave primaria',
  `Nombre` varchar(30) NOT NULL,
  `Apellidos` varchar(30) CHARACTER SET armscii8 COLLATE armscii8_general_ci DEFAULT NULL,
  `Identificacion` varchar(20) NOT NULL,
  `Telefono` varchar(25) DEFAULT NULL,
  `Direccion` varchar(50) DEFAULT NULL,
  `Fecha_Nacimiento` date DEFAULT NULL,
  `Carrera` varchar(50) DEFAULT NULL,
  `Correo_Electronico` varchar(50) CHARACTER SET armscii8 COLLATE armscii8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estudiante`
--

INSERT INTO `estudiante` (`Id_estudiante`, `Nombre`, `Apellidos`, `Identificacion`, `Telefono`, `Direccion`, `Fecha_Nacimiento`, `Carrera`, `Correo_Electronico`) VALUES
(1, 'Darwin', 'Monroy', '10303467536', '3124655746', 'Cra 65 No. 54 - 34', '1993-04-15', 'Desarrollo Industrial', 'darwinmonr3134@gmail.com'),
(2, 'Ana', 'Benitez Ortiz', '1002234565', '3206406634', 'Crr32 No.45-23', '1999-12-12', 'Logistica', 'abenitez88@gmail.com'),
(3, 'Carlos', 'Correa', '39456890', '3508907865', 'Cr34 No. 67-23', '1980-12-09', 'Gestion Humana', 'carloscorre@hotmail.com'),
(4, 'Camila', 'Quinchia moreno', '1002023456', '3203450010', 'Crr45 No. 33', '2000-12-02', 'Administracion', 'cami1998@gmail.com'),
(5, 'Javier Alberto', 'Ramirez Gutierrez', '59512234', '3116541234', 'Cll22b No. 45 - 44', '1987-04-12', 'Logistica', 'gutierrezra@hotmail.com'),
(6, 'Paula', 'Bohorquez Palacios', '1000345987', '3247894512', 'Tv34 Sur 34 - 22', '1999-12-22', 'Ingles', 'paula1999b@gmail.com'),
(7, 'Karina ', 'Martinez Alvarez', '1003333452', '3113219988', 'Cll3 No. 34 - 12', '2003-12-14', 'Veterinaria', 'kalvarez@hotmail.com'),
(8, 'Yeferson Alveiro', 'Moreno Mosquera', '1001033890', '3508901234', 'Crr32A No. 77 - 11', '2001-08-12', 'Software', 'mmosquera2001@hotmail.com'),
(9, 'Daniel', 'Paez Foronda', '39345991', '3207891233', 'Cll22B No. 55 - 22', '2000-03-23', 'Redes', 'forondapaez@gmail.com'),
(10, 'Daniel Camilo ', 'Bolivar Foronda', '1000231734', '3101300011', 'Crr20 No. 34-11', '2002-04-22', 'Soporte tecnico', 'bolivar2002@hotmail.com'),
(11, 'Ana', 'Corrales Tres Palacios', '1003665124', '3145890022', 'Dg33 No. 44-87', '2003-09-30', 'Primera infancia', 'trespalacios@gmail.com'),
(12, 'Juan Marino', 'Ibarguen Torrez', '1000245812', '3110001245', 'Crr11 No. 33 - 44', '2003-08-09', 'Redes', 'ibarguen2003@gmail.com'),
(13, 'Yulieth', 'Lozano Moreno', '1001222092', '3134561290', 'Cll33 No. 10 - 11', '2000-11-10', 'Veterinaria', 'moreno1110@hotmail.com'),
(14, 'Kelly', 'Acosta  Beltran', '1000133093', '3157543311', 'Dg11 No. 66 - 90', '1999-12-09', 'Bachillerato', 'acobeltran@gmail.com'),
(15, 'Karina Andrea', 'Guerrero Ospina', '1001231881', '3190238823', 'Cll44 No. 4 -22', '2004-07-12', 'Primera infancia', 'kago2004@outlok.es'),
(16, 'Allyson', 'Gonzales Perez', '1004209332', '3239001290', 'Cll33 No. 33 - 55', '2004-12-01', 'Veterinaria', 'gonzalezperezallyson@outlok.live'),
(17, 'Heber', 'Vargas Trujillo', '1100100423', '3122450097', 'Crr34A No. 45 - 22', '2000-12-09', 'Software', 'truva1209@hotmail.com'),
(18, 'James', 'Rodriguez Fuentes', '1003890345', '4174400', 'Cll9 No. 34 - 11', '2006-12-23', 'Atencion al adulto mayor', 'furo1223@outlok.com'),
(19, 'Jhoana', 'Florez Ortiz', '100328009', '3169093456', 'Cll33 No. 70 - 20', '1987-01-20', 'Administracion', 'ortiz1987@gmail.com'),
(20, 'James Alberto', 'Cardonas Arias', '1011890345', '314174400', 'Cll29 No. 10 - 11', '2001-12-23', 'Atencion al adulto mayor', 'jamez1223ca@hotmail.com'),
(21, 'Yesica', 'Barrios Martinez', '1001044129', '3190901134', 'Tv40 No. 12 - 44', '1990-03-13', 'Entrenamiento', 'yebama@hotmail.com'),
(22, 'Amparo ', 'Grisales Paez', '1002451762', '3104349922', 'Cll40 No. 56 - 45', '1995-09-30', 'Veterinaria', 'gripaam1995@hotmail.com'),
(23, 'Anibal Conrrado', 'Escobar Mendoza', '1002034853', '3159035633', 'Crr33B No. 90 - 11', '2001-05-12', 'Software', 'conrrado0512@outlok.es'),
(24, 'Martha Rafaela', 'Soto Alvarez', '10010451023', '3102108876', 'Cll34 No. 22 - 11', '2006-09-12', 'Deportes', '2006soacu@hotmail.com'),
(25, 'Paula Nikol ', 'Paez Palacio', '1000345908', '3173280912', 'Cll56 No. 98 - 55', '2000-12-04', 'Veterinaria', 'paez2000pa@gmail.com'),
(26, 'Juan Jose', 'Montenegro Andrade', '1001034908', '3148902300', 'Crr45 No. 72 - 23', '2005-09-22', 'Redes', 'Monteanjuanh2005@hotmail.com'),
(27, 'Angela ', 'Rivas Zuluaga', '314987890', '3189083410', 'Cll5 No. 90 - 45', '2001-04-09', 'Software', 'rivas20021@hotmail.com'),
(28, 'Debora', 'Palacio Ramiez', '1000450982', '3209872309', 'Cll34 No. 34 - 12', '2005-09-20', 'Soporte', 'debo2005@outlok.com'),
(29, 'Yisela', 'Torrez Martinez', '1002908127', '3168905423', 'Crr67 No. 67 - 70', '1997-09-12', 'Deporte', 'torrez1997@hotmail.com'),
(30, 'Felipe', 'Campos Soto', '1039909345', '3206780233', 'Cll60 No. 56 - 90', '2003-07-15', 'Entrenamiento', 'campossoto15@hotmail.com'),
(31, 'Natalia', 'Guerra Ospina', '1010345009', '3230024599', 'Crr83b No. 70 - 20', '2000-06-09', 'Administracion', 'ospina2000@gmail.com'),
(32, 'Brayan Andres', 'Ruiz Aguirre', '1001024992', '3196306630', 'Cll36 No. 8N - 99', '2004-03-04', 'Redes', 'elbrayan20@gmail.com'),
(33, 'Leticia Patricia', 'Ciro Jimenez', '1002003987', '3509872245', 'Crr89 No. 99 - 11', '1994-09-23', 'Soporte', 'leticiji94@hotmail.com'),
(34, 'Alberto Alfonso', 'Diaz Lopez', '1001024932', '3206306630', 'Cll11 No. 8N - 99', '2004-03-04', 'Redes', 'dlopez04@gmail.com'),
(35, 'Carlos Alberto', 'Gonzalez Gonzalez', '1030006543', '3208901255', 'Cll 15 No. 45 - 09', '2001-02-25', 'Arquitecto', 'carlos2001@gmail.com'),
(36, 'Paula', 'Perez Tapias', '1001236908', '3509012312', 'Crr 46 No. 33-11', '1990-12-21', 'Veterinaria', 'paupe21@hotmail.com'),
(37, 'Nicolas ', 'Restrepo Munoz', '71345990', '3109907812', 'Dg 45 Sur No. 34 - 12', '1990-08-05', 'Ingenieria En Sistema', 'restrepo1990@hotmail.com'),
(38, 'Jhan ', 'Paternina Palacios', '1002901453', '3208901329', 'Crr 45 No. 78 - 90', '2001-09-12', 'Asistente Administrativo', 'patejhan12@outlok.live'),
(39, 'Mayerlis', 'Barrios Cansino', '1003908145', '3120985534', 'Cll 35 No 90 - 12', '2003-09-23', 'Aux Primera Infancia', 'maye348b@hotmail.com'),
(40, 'Camilo', 'Guitierrez Sanchez', '1001902871', '3209081278', 'Dg 78 No. 56a - 11', '2003-09-23', 'Ingeniera Ambiental', 'zulmaca03@gmail.com'),
(41, 'Luis Fernandez', 'Corrales Morales', '1001901389', '3240093458', 'Cra  85 No. 34 - 14', '1998-03-12', 'Campos externos', 'luisfernandez1324@gmail.com'),
(42, 'Jhan Carlos', 'Sepulveda Nari?o', '1003456982', '3159803421', 'Cll 45 No. 45 - 11', '2003-09-25', 'Ingeniera Industrial', 'sepuna2003@gmail.com'),
(43, 'Estela', 'Rodriguez Torres', '1002349098', '3109127812', 'Crr34 No. 67 - 23', '1999-12-23', 'Tecnica En Laboratio', 'estelatorres1990@gmail.com'),
(44, 'Alberto', 'Mu?oz Palacios', '10010782312', '3109018823', 'Cll 78 No. 90 - 10', '1998-12-12', 'Ingeniero En Calidad', 'mu?oz1998@hotmail.com'),
(45, 'Andrea', 'Tobon Palacio', '1034746513', '3146453632', 'Cra 34 No. 13 - 56', '1995-06-23', 'Diseño Grafico ', 'Andreatobon265@gmail.com'),
(46, 'Jose', 'Alzate Brice?o', '1033465376', '3124653757', 'Cra 45 No.65 - 43', '2001-09-15', 'Enfermeria ', 'josealzate3654@gmail.com'),
(47, 'Jonathan ', 'Moreno Sepulveda', '1034654243', '3021458327', 'Cra 65 No. 54 - 22', '1998-05-24', 'Arquitectura', 'jonathanmoreno365@gmail.com'),
(48, 'Duque', 'Castano Arboleda', '1030374835', '3237654533', 'Cra 36 No. 63 - 87', '1997-10-25', 'Veterinario ', 'duquecastan365@gmail.com'),
(49, 'Jhoana', 'Vazquez Betancur', '1034378590', '31426354857', 'Cra 77 No. 78 - 34 ', '2002-03-07', 'Tecnologia ', 'jhoanavazques2653@gmail.com'),
(50, 'Manuela', 'Trujillo Hernandez ', '1032635736', '3024768754', 'Cra 54 No. 34 - 65', '1997-04-26', 'Diseño Web', 'manutruji3254@gmail.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asignatura`
--
ALTER TABLE `asignatura`
  ADD PRIMARY KEY (`Id_asignatura`);

--
-- Indices de la tabla `calificaciones`
--
ALTER TABLE `calificaciones`
  ADD PRIMARY KEY (`Id_calificacion`,`Aprobado`);

--
-- Indices de la tabla `calificaciones_respaldo`
--
ALTER TABLE `calificaciones_respaldo`
  ADD PRIMARY KEY (`Id_calificacion`);

--
-- Indices de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`Id_estudiante`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  MODIFY `Id_estudiante` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Llave primaria', AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
