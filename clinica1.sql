-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-02-2019 a las 12:18:21
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `clinica1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargo`
--

CREATE TABLE `cargo` (
  `Cod_Cargo` int(11) NOT NULL,
  `No_Cargo` int(10) NOT NULL,
  `Tipo_Cargo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clinica`
--

CREATE TABLE `clinica` (
  `Nombre_Clinica` varchar(30) NOT NULL,
  `Cod_Clinica` int(10) NOT NULL,
  `Direccion_clinica` varchar(30) NOT NULL,
  `Telefono_Clinica` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dentista`
--

CREATE TABLE `dentista` (
  `Nombre_Dentista` varchar(50) NOT NULL,
  `Cod_Factura` int(11) NOT NULL,
  `Cod_Horario` int(11) NOT NULL,
  `Cod_Cargo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_clinica`
--

CREATE TABLE `detalle_clinica` (
  `Nombre_Clinica` varchar(30) DEFAULT NULL,
  `No_Sita` int(50) DEFAULT NULL,
  `Cod_Historial` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `Cod_Factura` int(11) NOT NULL,
  `Nombre_Factura` varchar(50) NOT NULL,
  `Nit_Factura` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial`
--

CREATE TABLE `historial` (
  `Cod_Historial` int(11) NOT NULL,
  `No_Historial` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario`
--

CREATE TABLE `horario` (
  `Cod_Horario` int(11) NOT NULL,
  `Cod_turno` int(11) NOT NULL,
  `Tipo_Horario` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paciente`
--

CREATE TABLE `paciente` (
  `Dire` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paciente1`
--

CREATE TABLE `paciente1` (
  `Nombre_Cliente` varchar(30) NOT NULL,
  `telefono` int(10) NOT NULL,
  `Direccion_cliente` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sita`
--

CREATE TABLE `sita` (
  `No_Sita` int(50) NOT NULL,
  `Nombre_Dentista` varchar(50) NOT NULL,
  `Nombre_Cliente` varchar(30) NOT NULL,
  `Cod_Tratamiento` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tratamiento`
--

CREATE TABLE `tratamiento` (
  `Cod_Tratamiento` int(10) NOT NULL,
  `tipo_tratamiento` varchar(50) NOT NULL,
  `Nombre_tratamiento` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turno`
--

CREATE TABLE `turno` (
  `Cod_Turno` int(11) NOT NULL,
  `Tipo_Turno` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`Cod_Cargo`);

--
-- Indices de la tabla `clinica`
--
ALTER TABLE `clinica`
  ADD PRIMARY KEY (`Nombre_Clinica`);

--
-- Indices de la tabla `dentista`
--
ALTER TABLE `dentista`
  ADD PRIMARY KEY (`Nombre_Dentista`),
  ADD UNIQUE KEY `Cod_Factura` (`Cod_Factura`,`Cod_Horario`,`Cod_Cargo`),
  ADD KEY `Cod_Horario` (`Cod_Horario`),
  ADD KEY `Cod_Cargo` (`Cod_Cargo`);

--
-- Indices de la tabla `detalle_clinica`
--
ALTER TABLE `detalle_clinica`
  ADD UNIQUE KEY `Nombre_Clinica` (`Nombre_Clinica`),
  ADD UNIQUE KEY `No_Sita` (`No_Sita`),
  ADD UNIQUE KEY `Cod_Historial` (`Cod_Historial`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`Cod_Factura`);

--
-- Indices de la tabla `historial`
--
ALTER TABLE `historial`
  ADD PRIMARY KEY (`Cod_Historial`);

--
-- Indices de la tabla `horario`
--
ALTER TABLE `horario`
  ADD PRIMARY KEY (`Cod_Horario`),
  ADD UNIQUE KEY `Cod_turno` (`Cod_turno`);

--
-- Indices de la tabla `paciente1`
--
ALTER TABLE `paciente1`
  ADD PRIMARY KEY (`Nombre_Cliente`);

--
-- Indices de la tabla `sita`
--
ALTER TABLE `sita`
  ADD PRIMARY KEY (`No_Sita`),
  ADD UNIQUE KEY `Cod_Tratamiento` (`Cod_Tratamiento`),
  ADD UNIQUE KEY `Nombre_Dentista` (`Nombre_Dentista`),
  ADD UNIQUE KEY `Nombre_Cliente` (`Nombre_Cliente`);

--
-- Indices de la tabla `tratamiento`
--
ALTER TABLE `tratamiento`
  ADD PRIMARY KEY (`Cod_Tratamiento`);

--
-- Indices de la tabla `turno`
--
ALTER TABLE `turno`
  ADD PRIMARY KEY (`Cod_Turno`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cargo`
--
ALTER TABLE `cargo`
  MODIFY `Cod_Cargo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `factura`
--
ALTER TABLE `factura`
  MODIFY `Cod_Factura` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `historial`
--
ALTER TABLE `historial`
  MODIFY `Cod_Historial` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `horario`
--
ALTER TABLE `horario`
  MODIFY `Cod_Horario` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sita`
--
ALTER TABLE `sita`
  MODIFY `No_Sita` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tratamiento`
--
ALTER TABLE `tratamiento`
  MODIFY `Cod_Tratamiento` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `turno`
--
ALTER TABLE `turno`
  MODIFY `Cod_Turno` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `dentista`
--
ALTER TABLE `dentista`
  ADD CONSTRAINT `dentista_ibfk_1` FOREIGN KEY (`Cod_Factura`) REFERENCES `factura` (`Cod_Factura`),
  ADD CONSTRAINT `dentista_ibfk_2` FOREIGN KEY (`Cod_Horario`) REFERENCES `horario` (`Cod_Horario`),
  ADD CONSTRAINT `dentista_ibfk_3` FOREIGN KEY (`Cod_Cargo`) REFERENCES `cargo` (`Cod_Cargo`);

--
-- Filtros para la tabla `detalle_clinica`
--
ALTER TABLE `detalle_clinica`
  ADD CONSTRAINT `detalle_clinica_ibfk_1` FOREIGN KEY (`Nombre_Clinica`) REFERENCES `clinica` (`Nombre_Clinica`),
  ADD CONSTRAINT `detalle_clinica_ibfk_2` FOREIGN KEY (`No_Sita`) REFERENCES `sita` (`No_Sita`);

--
-- Filtros para la tabla `historial`
--
ALTER TABLE `historial`
  ADD CONSTRAINT `historial_ibfk_1` FOREIGN KEY (`Cod_Historial`) REFERENCES `detalle_clinica` (`Cod_Historial`);

--
-- Filtros para la tabla `horario`
--
ALTER TABLE `horario`
  ADD CONSTRAINT `horario_ibfk_1` FOREIGN KEY (`Cod_turno`) REFERENCES `turno` (`Cod_Turno`);

--
-- Filtros para la tabla `sita`
--
ALTER TABLE `sita`
  ADD CONSTRAINT `sita_ibfk_1` FOREIGN KEY (`Nombre_Cliente`) REFERENCES `paciente1` (`Nombre_Cliente`),
  ADD CONSTRAINT `sita_ibfk_2` FOREIGN KEY (`Nombre_Dentista`) REFERENCES `dentista` (`Nombre_Dentista`),
  ADD CONSTRAINT `sita_ibfk_3` FOREIGN KEY (`Cod_Tratamiento`) REFERENCES `tratamiento` (`Cod_Tratamiento`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
