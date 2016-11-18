-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-12-2015 a las 22:55:40
-- Versión del servidor: 5.6.24
-- Versión de PHP: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `examen`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--
create DATABASE IF NOT EXISTS examen;

use examen;

CREATE TABLE empleados (
  id int(11) NOT NULL,
  nombre char(40) NOT NULL,
  telefono char(9) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO empleados (id, nombre, telefono) VALUES
(1, 'Ana Garc', '677000111'),
(2, 'Jos', '914445555'),
(3, 'Marta Guti', '646111111'),
(4, 'Juan Ayuso', '616212121'),
(5, 'Isabel Fern', '913333222');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE usuarios (
  usuario varchar(25) NOT NULL,
  password varchar(32) NOT NULL,
  email varchar(25) NOT NULL,
  nombre varchar(25) NOT NULL,
  apellidos varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO usuarios (usuario, password, email, nombre, apellidos) VALUES
('admin', 'admin', 'admin@admin.com', 'Boss', 'Super Boss'),
('ana', 'ana', 'ana@gmail.com', 'Ana', 'García González'),
('dwes', 'dwes', 'dwes@gmail.com', 'Examen', 'Desrraollo Web');

--
-- Índices para tablas volcadas
--

-- Indices de la tabla `empleados`
--
ALTER TABLE empleados
  ADD PRIMARY KEY (id);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE usuarios
  ADD PRIMARY KEY (usuario);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE empleados
  MODIFY id int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
