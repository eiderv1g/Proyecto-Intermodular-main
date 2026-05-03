-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-05-2026 a las 19:56:37
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto intermodular`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `id_alumno` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `contrasena` varchar(255) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`id_alumno`, `nombre`, `email`, `contrasena`, `telefono`) VALUES
(1, 'Antonio Rossi', 'antonio@email.com', '1234', '600123123'),
(2, 'Laura Pérez', 'laura@email.com', 'abcd', '611111111'),
(3, 'Carlos Ficticius', 'carlos@email.com', '1234', '600111111'),
(4, 'María José Niño', 'mariajo@email.com', '1234', '600222222'),
(5, 'José María Palomares', 'josema@email.com', '1234', '600333333'),
(6, 'Adolfo Pinceles', 'adolfo@email.com', '1234', '600444444'),
(7, 'Ernesto Calpiano', 'ernesto@email.com', '1234', '600555555'),
(8, 'Lucía Romero', 'lucia@email.com', '1234', '600666666'),
(9, 'David Torres', 'david@email.com', '1234', '600777777');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno_desafio`
--

CREATE TABLE `alumno_desafio` (
  `id_alumno` int(11) NOT NULL,
  `id_desafio` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `completado` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `alumno_desafio`
--

INSERT INTO `alumno_desafio` (`id_alumno`, `id_desafio`, `fecha`, `completado`) VALUES
(1, 1, '2026-03-02', 1),
(3, 2, '2026-05-03', 1),
(4, 3, '2026-05-04', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno_evento`
--

CREATE TABLE `alumno_evento` (
  `id_alumno` int(11) NOT NULL,
  `id_evento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `alumno_evento`
--

INSERT INTO `alumno_evento` (`id_alumno`, `id_evento`) VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `id_departamento` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `equipoHW` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`id_departamento`, `nombre`, `equipoHW`) VALUES
(1, 'IT', 'Servidores'),
(2, 'Soporte', 'PCs'),
(3, 'Formación', 'PCs'),
(4, 'Soporte', 'Servidores');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `desafio`
--

CREATE TABLE `desafio` (
  `id_desafio` int(11) NOT NULL,
  `titulo` varchar(100) DEFAULT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `dificultad` enum('easy','medium','hard') DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `id_laboratorio` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `desafio`
--

INSERT INTO `desafio` (`id_desafio`, `titulo`, `tipo`, `dificultad`, `descripcion`, `id_laboratorio`) VALUES
(1, 'Escalada de privilegios', 'privilege escalation', 'medium', 'Subir permisos', 1),
(2, 'Intro Linux', 'practica', 'easy', 'Comandos básicos', 1),
(3, 'Escaneo red', 'practica', 'medium', 'Nmap', 2),
(4, 'Root exploit', 'practica', 'hard', 'Escalada', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `id_empleado` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `rol` enum('admin','soporte','instructor') DEFAULT NULL,
  `salario` decimal(10,2) DEFAULT NULL,
  `fecha_contratacion` date DEFAULT NULL,
  `id_departamento` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`id_empleado`, `nombre`, `email`, `rol`, `salario`, `fecha_contratacion`, `id_departamento`) VALUES
(1, 'Carlos Ruiz', 'carlos@empresa.com', 'instructor', 2000.00, '2024-01-01', 1),
(2, 'Ana López', 'ana@empresa.com', 'soporte', 1800.00, '2024-03-01', 2),
(3, 'Sergio Gallardo', 'sergio@email.com', 'instructor', 2000.00, '2024-01-01', 1),
(4, 'Miriam Ocaña', 'miriam@email.com', 'instructor', 2000.00, '2024-01-01', 1),
(5, 'Antonio J. Rossi', 'antoniorossi@email.com', 'instructor', 2200.00, '2024-01-01', 1),
(6, 'Lucía Fernández', 'lucifer@email.com', 'admin', 2500.00, '2024-01-01', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evento_ctf`
--

CREATE TABLE `evento_ctf` (
  `id_evento` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `evento_ctf`
--

INSERT INTO `evento_ctf` (`id_evento`, `nombre`, `descripcion`, `fecha_inicio`, `fecha_fin`) VALUES
(1, 'CTF Marzo', 'Evento mensual', '2026-03-01', '2026-03-03'),
(2, 'CTF Mayo', 'Evento de hacking', '2026-05-08', '2026-05-10'),
(3, 'CTF Junio', 'Evento avanzado', '2026-06-01', '2026-06-03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `incidencia`
--

CREATE TABLE `incidencia` (
  `id_incidencia` int(11) NOT NULL,
  `titulo` varchar(100) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `estado` enum('abierta','en_proceso','cerrada') DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `id_alumno` int(11) DEFAULT NULL,
  `id_empleado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `incidencia`
--

INSERT INTO `incidencia` (`id_incidencia`, `titulo`, `descripcion`, `estado`, `fecha_creacion`, `id_alumno`, `id_empleado`) VALUES
(1, 'Error login', 'No puedo acceder', 'abierta', '2026-03-05', 1, 2),
(2, 'Error login', 'No puede acceder', 'abierta', '2026-05-01', 1, 4),
(3, 'Fallo lab', 'No carga', 'en_proceso', '2026-05-02', 2, 4),
(4, 'Bug sistema', 'Error general', 'cerrada', '2026-05-03', 3, 4),
(5, 'Problema red', 'Lentitud', 'abierta', '2026-05-04', 4, 4),
(6, 'Cuenta bloqueada', 'Error acceso', 'cerrada', '2026-05-05', 5, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `laboratorio`
--

CREATE TABLE `laboratorio` (
  `id_laboratorio` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `dificultad` enum('easy','medium','hard') DEFAULT NULL,
  `sistema` varchar(50) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `id_empleado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `laboratorio`
--

INSERT INTO `laboratorio` (`id_laboratorio`, `nombre`, `dificultad`, `sistema`, `descripcion`, `id_empleado`) VALUES
(1, 'Linux Básico', 'easy', 'Linux', 'Intro a Linux', 1),
(2, 'Cyber Básico', 'easy', 'Linux', 'Fundamentos de ciberseguridad', 1),
(3, 'Reconocimiento', 'medium', 'Linux', 'OSINT y escaneo', 2),
(4, 'PrivEsc', 'hard', 'Linux', 'Escalada de privilegios', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `matricula`
--

CREATE TABLE `matricula` (
  `id_matricula` int(11) NOT NULL,
  `fecha_matricula` date DEFAULT NULL,
  `estado` enum('activa','suspendida','finalizada') DEFAULT NULL,
  `id_alumno` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `matricula`
--

INSERT INTO `matricula` (`id_matricula`, `fecha_matricula`, `estado`, `id_alumno`) VALUES
(1, '2026-01-10', 'activa', 1),
(2, '2026-02-01', 'activa', 2),
(3, '2026-01-01', 'activa', 1),
(4, '2026-01-02', 'activa', 2),
(5, '2026-01-03', 'activa', 3),
(6, '2026-01-04', 'suspendida', 4),
(7, '2026-01-05', 'activa', 5),
(8, '2026-01-06', 'finalizada', 6),
(9, '2026-01-07', 'suspendida', 7);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`id_alumno`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indices de la tabla `alumno_desafio`
--
ALTER TABLE `alumno_desafio`
  ADD PRIMARY KEY (`id_alumno`,`id_desafio`),
  ADD KEY `id_desafio` (`id_desafio`);

--
-- Indices de la tabla `alumno_evento`
--
ALTER TABLE `alumno_evento`
  ADD PRIMARY KEY (`id_alumno`,`id_evento`),
  ADD KEY `id_evento` (`id_evento`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`id_departamento`);

--
-- Indices de la tabla `desafio`
--
ALTER TABLE `desafio`
  ADD PRIMARY KEY (`id_desafio`),
  ADD KEY `id_laboratorio` (`id_laboratorio`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`id_empleado`),
  ADD KEY `id_departamento` (`id_departamento`);

--
-- Indices de la tabla `evento_ctf`
--
ALTER TABLE `evento_ctf`
  ADD PRIMARY KEY (`id_evento`);

--
-- Indices de la tabla `incidencia`
--
ALTER TABLE `incidencia`
  ADD PRIMARY KEY (`id_incidencia`),
  ADD KEY `id_alumno` (`id_alumno`),
  ADD KEY `id_empleado` (`id_empleado`);

--
-- Indices de la tabla `laboratorio`
--
ALTER TABLE `laboratorio`
  ADD PRIMARY KEY (`id_laboratorio`),
  ADD KEY `id_empleado` (`id_empleado`);

--
-- Indices de la tabla `matricula`
--
ALTER TABLE `matricula`
  ADD PRIMARY KEY (`id_matricula`),
  ADD KEY `id_alumno` (`id_alumno`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumno`
--
ALTER TABLE `alumno`
  MODIFY `id_alumno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `departamento`
--
ALTER TABLE `departamento`
  MODIFY `id_departamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `desafio`
--
ALTER TABLE `desafio`
  MODIFY `id_desafio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
  MODIFY `id_empleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `evento_ctf`
--
ALTER TABLE `evento_ctf`
  MODIFY `id_evento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `incidencia`
--
ALTER TABLE `incidencia`
  MODIFY `id_incidencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `laboratorio`
--
ALTER TABLE `laboratorio`
  MODIFY `id_laboratorio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `matricula`
--
ALTER TABLE `matricula`
  MODIFY `id_matricula` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumno_desafio`
--
ALTER TABLE `alumno_desafio`
  ADD CONSTRAINT `alumno_desafio_ibfk_1` FOREIGN KEY (`id_alumno`) REFERENCES `alumno` (`id_alumno`),
  ADD CONSTRAINT `alumno_desafio_ibfk_2` FOREIGN KEY (`id_desafio`) REFERENCES `desafio` (`id_desafio`);

--
-- Filtros para la tabla `alumno_evento`
--
ALTER TABLE `alumno_evento`
  ADD CONSTRAINT `alumno_evento_ibfk_1` FOREIGN KEY (`id_alumno`) REFERENCES `alumno` (`id_alumno`),
  ADD CONSTRAINT `alumno_evento_ibfk_2` FOREIGN KEY (`id_evento`) REFERENCES `evento_ctf` (`id_evento`);

--
-- Filtros para la tabla `desafio`
--
ALTER TABLE `desafio`
  ADD CONSTRAINT `desafio_ibfk_1` FOREIGN KEY (`id_laboratorio`) REFERENCES `laboratorio` (`id_laboratorio`);

--
-- Filtros para la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD CONSTRAINT `empleado_ibfk_1` FOREIGN KEY (`id_departamento`) REFERENCES `departamento` (`id_departamento`);

--
-- Filtros para la tabla `incidencia`
--
ALTER TABLE `incidencia`
  ADD CONSTRAINT `incidencia_ibfk_1` FOREIGN KEY (`id_alumno`) REFERENCES `alumno` (`id_alumno`),
  ADD CONSTRAINT `incidencia_ibfk_2` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id_empleado`);

--
-- Filtros para la tabla `laboratorio`
--
ALTER TABLE `laboratorio`
  ADD CONSTRAINT `laboratorio_ibfk_1` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id_empleado`);

--
-- Filtros para la tabla `matricula`
--
ALTER TABLE `matricula`
  ADD CONSTRAINT `matricula_ibfk_1` FOREIGN KEY (`id_alumno`) REFERENCES `alumno` (`id_alumno`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
