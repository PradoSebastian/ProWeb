-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-05-2020 a las 02:45:40
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dbproyecto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `camas`
--

CREATE TABLE `camas` (
  `ID` int(11) NOT NULL,
  `Numero` int(11) NOT NULL,
  `HabitacionID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `camas`
--

INSERT INTO `camas` (`ID`, `Numero`, `HabitacionID`) VALUES
(16, 1, 3),
(18, 3, 4),
(19, 1, 4),
(21, 1, 5),
(22, 1, 6),
(23, 101, 7),
(24, 109, 7),
(25, 101, 8),
(26, 101, 9),
(27, 101, 10),
(28, 101, 11),
(29, 101, 12),
(30, 101, 13),
(31, 102, 7),
(32, 103, 7),
(33, 102, 8),
(34, 102, 9),
(35, 102, 10),
(36, 102, 11),
(37, 102, 12),
(38, 102, 13);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos`
--

CREATE TABLE `equipos` (
  `ID` int(11) NOT NULL,
  `Nombre` char(30) NOT NULL,
  `Cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `equipos`
--

INSERT INTO `equipos` (`ID`, `Nombre`, `Cantidad`) VALUES
(1, 'Rayos X', 7),
(2, 'Rayos Y', 3),
(3, 'Rayos Gamma', 0),
(4, 'Monitor de signos vitales', 10),
(5, 'Desfibrilador', 10),
(6, 'Máquina de electrocardiograma', 7),
(7, 'Ultrasonido de diagnóstico', 0),
(8, 'Unidades electroquirúrgicas', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos_asignados`
--

CREATE TABLE `equipos_asignados` (
  `ID` int(11) NOT NULL,
  `EquipoID` int(11) NOT NULL,
  `PacienteID` int(11) NOT NULL,
  `FechaPedido` datetime DEFAULT NULL,
  `Cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `equipos_asignados`
--

INSERT INTO `equipos_asignados` (`ID`, `EquipoID`, `PacienteID`, `FechaPedido`, `Cantidad`) VALUES
(4, 2, 1, '2020-05-29 18:54:53', 1),
(5, 5, 12, '2020-05-29 19:34:38', 1),
(6, 7, 7, '2020-05-29 19:29:13', 1),
(7, 7, 15, '2020-05-29 19:36:07', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habitaciones`
--

CREATE TABLE `habitaciones` (
  `ID` int(11) NOT NULL,
  `Numero` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `habitaciones`
--

INSERT INTO `habitaciones` (`ID`, `Numero`) VALUES
(3, 1),
(4, 2),
(5, 3),
(6, 4),
(7, 101),
(8, 102),
(9, 103),
(10, 104),
(11, 105),
(12, 201),
(13, 202),
(14, 203),
(15, 301);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensajes_admin`
--

CREATE TABLE `mensajes_admin` (
  `ID` int(11) NOT NULL,
  `EquipoID` int(11) NOT NULL,
  `PacienteID` int(11) NOT NULL,
  `FechaPedido` datetime DEFAULT NULL,
  `Cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `mensajes_admin`
--

INSERT INTO `mensajes_admin` (`ID`, `EquipoID`, `PacienteID`, `FechaPedido`, `Cantidad`) VALUES
(11, 4, 7, '2020-05-29 19:29:26', 1),
(12, 6, 8, '2020-05-29 19:30:12', 1),
(15, 4, 9, '2020-05-29 19:32:26', 1),
(16, 5, 10, '2020-05-29 19:32:50', 1),
(17, 8, 11, '2020-05-29 19:33:26', 1),
(18, 4, 11, '2020-05-29 19:33:30', 1),
(19, 4, 5, '2020-05-29 19:34:08', 1),
(20, 6, 5, '2020-05-29 19:34:11', 1),
(21, 8, 12, '2020-05-29 19:34:34', 1),
(23, 5, 13, '2020-05-29 19:35:00', 1),
(24, 8, 13, '2020-05-29 19:35:04', 1),
(25, 8, 14, '2020-05-29 19:35:31', 1),
(26, 6, 15, '2020-05-29 19:36:03', 1),
(29, 6, 16, '2020-05-29 19:36:29', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pacientes`
--

CREATE TABLE `pacientes` (
  `PID` int(11) NOT NULL,
  `Identificacion` int(11) NOT NULL,
  `Nombre` char(30) NOT NULL,
  `Diagnostico` char(255) NOT NULL,
  `Prioridad` char(5) NOT NULL,
  `FechaIngreso` date NOT NULL,
  `DuracionDias` int(11) NOT NULL,
  `CamaID` int(11) NOT NULL,
  `MedicoID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pacientes`
--

INSERT INTO `pacientes` (`PID`, `Identificacion`, `Nombre`, `Diagnostico`, `Prioridad`, `FechaIngreso`, `DuracionDias`, `CamaID`, `MedicoID`) VALUES
(1, 1235, 'nn', 'Herido', 'Alta', '2020-05-26', 15, 16, 8),
(4, 4846846, 'Gustavo', 'Sanito', 'Baja', '2020-05-26', 15, 19, 6),
(5, 584698, 'Juanito', 'ESTE ES UN TEXTO DE PRUEBA', 'Alta', '2020-05-29', 5, 21, 9),
(7, 16235678, 'Acira', 'Diagnostico de prueba', 'Alta', '2020-05-29', 2, 23, 8),
(8, 16235679, 'Agustin', 'Diagnostico de prueba', 'Media', '2020-05-28', 3, 24, 8),
(9, 16235689, 'Dustine', 'Diagnostico de prueba', 'Media', '2020-05-29', 2, 25, 8),
(10, 16235680, 'Dyllis', 'Diagnostico de prueba', 'Baja', '2020-04-29', 2, 26, 8),
(11, 16235681, 'Eadberto', 'Diagnostico de prueba', 'Alta', '2020-04-28', 2, 27, 8),
(12, 16235684, 'Estelle', 'Diagnostico de prueba', 'Alta', '2020-04-27', 2, 28, 9),
(13, 1623345, 'Genovev', 'Diagnostico de prueba', 'Media', '2020-04-25', 2, 29, 9),
(14, 16235553, 'Germana', 'Diagnostico de prueba', 'Baja', '2020-04-26', 2, 30, 9),
(15, 16235465, 'Guila', 'Diagnostico de prueba', 'Alta', '2020-04-18', 2, 31, 9),
(16, 162356463, 'Luisiana', 'Diagnostico de prueba', 'Media', '2020-05-28', 2, 32, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recursos`
--

CREATE TABLE `recursos` (
  `ID` int(11) NOT NULL,
  `Nombre` char(30) NOT NULL,
  `Cantidad` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `recursos`
--

INSERT INTO `recursos` (`ID`, `Nombre`, `Cantidad`) VALUES
(2, 'Mascarilla', 0),
(3, 'Gel', 0),
(4, 'Guantes', 13),
(5, 'Jeringa', 2),
(6, 'Sabanas', 0),
(7, 'Papel', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recursos_asignados`
--

CREATE TABLE `recursos_asignados` (
  `PacienteID` int(11) NOT NULL,
  `RecursoID` int(11) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `FechaPedido` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `recursos_asignados`
--

INSERT INTO `recursos_asignados` (`PacienteID`, `RecursoID`, `Cantidad`, `FechaPedido`) VALUES
(1, 2, 7, '2020-05-28 21:03:16'),
(7, 2, 7, '2020-05-29 19:28:45'),
(7, 6, 2, '2020-05-29 19:28:25'),
(7, 7, 2, '2020-05-29 19:28:29'),
(7, 3, 3, '2020-05-29 19:28:34'),
(7, 5, 2, '2020-05-29 19:28:54'),
(7, 4, 4, '2020-05-29 19:29:02'),
(8, 2, 3, '2020-05-29 19:29:42'),
(8, 3, 2, '2020-05-29 19:29:47'),
(8, 6, 2, '2020-05-29 19:29:52'),
(8, 5, 2, '2020-05-29 19:29:56'),
(8, 7, 2, '2020-05-29 19:30:00'),
(8, 4, 2, '2020-05-29 19:30:05'),
(9, 2, 3, '2020-05-29 19:31:12'),
(9, 3, 2, '2020-05-29 19:31:35'),
(9, 6, 2, '2020-05-29 19:31:46'),
(9, 7, 2, '2020-05-29 19:32:17'),
(10, 3, 3, '2020-05-29 19:32:37'),
(10, 7, 3, '2020-05-29 19:32:41'),
(10, 5, 4, '2020-05-29 19:32:45'),
(11, 3, 3, '2020-05-29 19:33:14'),
(11, 6, 2, '2020-05-29 19:33:18'),
(11, 7, 2, '2020-05-29 19:33:21'),
(5, 3, 2, '2020-05-29 19:33:57'),
(5, 6, 2, '2020-05-29 19:34:00'),
(5, 5, 2, '2020-05-29 19:34:04'),
(12, 6, 2, '2020-05-29 19:34:20'),
(12, 7, 2, '2020-05-29 19:34:23'),
(12, 4, 3, '2020-05-29 19:34:28'),
(13, 6, 2, '2020-05-29 19:34:46'),
(13, 7, 2, '2020-05-29 19:34:50'),
(13, 5, 3, '2020-05-29 19:34:55'),
(14, 7, 3, '2020-05-29 19:35:15'),
(14, 6, 1, '2020-05-29 19:35:22'),
(14, 4, 3, '2020-05-29 19:35:26'),
(15, 7, 2, '2020-05-29 19:35:48'),
(15, 4, 2, '2020-05-29 19:35:52'),
(15, 5, 3, '2020-05-29 19:35:55'),
(16, 4, 3, '2020-05-29 19:36:14'),
(16, 5, 2, '2020-05-29 19:36:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `UserID` int(11) NOT NULL,
  `NombreUsuario` char(30) NOT NULL,
  `Rol` char(30) NOT NULL,
  `Email` char(30) NOT NULL,
  `Contraseña` char(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`UserID`, `NombreUsuario`, `Rol`, `Email`, `Contraseña`) VALUES
(1, 'Admin', 'admin', 'proweb202001@gmail.com', '$6$rounds=5000$usesomesillystri$8qVBs6WMUqQEH0I6bua5jzhAiZ2Vd942xNvJk9TvjON0GJ3giwqg7qGiJQd2ITyi.MCs3BWviLpF8nx4rJRk./'),
(6, 'Prueba', 'medico', 'prueba@gmail.com', '$6$rounds=5000$usesomesillystri$8qVBs6WMUqQEH0I6bua5jzhAiZ2Vd942xNvJk9TvjON0GJ3giwqg7qGiJQd2ITyi.MCs3BWviLpF8nx4rJRk./'),
(7, 'Pruba2', 'medico', 'prueba2@gmail.com', '$6$rounds=5000$usesomesillystri$8qVBs6WMUqQEH0I6bua5jzhAiZ2Vd942xNvJk9TvjON0GJ3giwqg7qGiJQd2ITyi.MCs3BWviLpF8nx4rJRk./'),
(8, 'Prueba2', 'medico', 'sebastianpv799@gmail.com', '$6$rounds=5000$usesomesillystri$8qVBs6WMUqQEH0I6bua5jzhAiZ2Vd942xNvJk9TvjON0GJ3giwqg7qGiJQd2ITyi.MCs3BWviLpF8nx4rJRk./'),
(9, 'Gustavo', 'medico', 'gus.rivera103@gmail.com', '$6$rounds=5000$usesomesillystri$8qVBs6WMUqQEH0I6bua5jzhAiZ2Vd942xNvJk9TvjON0GJ3giwqg7qGiJQd2ITyi.MCs3BWviLpF8nx4rJRk./');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `camas`
--
ALTER TABLE `camas`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `HabitacionID` (`HabitacionID`);

--
-- Indices de la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `equipos_asignados`
--
ALTER TABLE `equipos_asignados`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `EquipoID` (`EquipoID`),
  ADD KEY `PacienteID` (`PacienteID`);

--
-- Indices de la tabla `habitaciones`
--
ALTER TABLE `habitaciones`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `mensajes_admin`
--
ALTER TABLE `mensajes_admin`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `EquipoID` (`EquipoID`),
  ADD KEY `PacienteID` (`PacienteID`);

--
-- Indices de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  ADD PRIMARY KEY (`PID`),
  ADD KEY `CamaID` (`CamaID`),
  ADD KEY `MedicoID` (`MedicoID`);

--
-- Indices de la tabla `recursos`
--
ALTER TABLE `recursos`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `recursos_asignados`
--
ALTER TABLE `recursos_asignados`
  ADD KEY `PacienteID` (`PacienteID`),
  ADD KEY `RecursoID` (`RecursoID`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `NombreUsuario` (`NombreUsuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `camas`
--
ALTER TABLE `camas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `equipos`
--
ALTER TABLE `equipos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `equipos_asignados`
--
ALTER TABLE `equipos_asignados`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `habitaciones`
--
ALTER TABLE `habitaciones`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `mensajes_admin`
--
ALTER TABLE `mensajes_admin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  MODIFY `PID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `recursos`
--
ALTER TABLE `recursos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `camas`
--
ALTER TABLE `camas`
  ADD CONSTRAINT `camas_ibfk_1` FOREIGN KEY (`HabitacionID`) REFERENCES `habitaciones` (`ID`);

--
-- Filtros para la tabla `equipos_asignados`
--
ALTER TABLE `equipos_asignados`
  ADD CONSTRAINT `equipos_asignados_ibfk_1` FOREIGN KEY (`EquipoID`) REFERENCES `equipos` (`ID`),
  ADD CONSTRAINT `equipos_asignados_ibfk_2` FOREIGN KEY (`PacienteID`) REFERENCES `pacientes` (`PID`);

--
-- Filtros para la tabla `mensajes_admin`
--
ALTER TABLE `mensajes_admin`
  ADD CONSTRAINT `mensajes_admin_ibfk_1` FOREIGN KEY (`EquipoID`) REFERENCES `equipos` (`ID`),
  ADD CONSTRAINT `mensajes_admin_ibfk_2` FOREIGN KEY (`PacienteID`) REFERENCES `pacientes` (`PID`);

--
-- Filtros para la tabla `pacientes`
--
ALTER TABLE `pacientes`
  ADD CONSTRAINT `pacientes_ibfk_1` FOREIGN KEY (`CamaID`) REFERENCES `camas` (`ID`),
  ADD CONSTRAINT `pacientes_ibfk_2` FOREIGN KEY (`MedicoID`) REFERENCES `usuarios` (`UserID`);

--
-- Filtros para la tabla `recursos_asignados`
--
ALTER TABLE `recursos_asignados`
  ADD CONSTRAINT `recursos_asignados_ibfk_1` FOREIGN KEY (`PacienteID`) REFERENCES `pacientes` (`PID`),
  ADD CONSTRAINT `recursos_asignados_ibfk_2` FOREIGN KEY (`RecursoID`) REFERENCES `recursos` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
