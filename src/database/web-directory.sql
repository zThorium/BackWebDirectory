-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-09-2023 a las 12:11:44
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
-- Base de datos: `web-directory`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `ID_Admin` int(11) NOT NULL,
  `Nombre_ad` varchar(20) DEFAULT NULL,
  `correo_ad` varchar(30) DEFAULT NULL,
  `contraseña_ad` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`ID_Admin`, `Nombre_ad`, `correo_ad`, `contraseña_ad`) VALUES
(2, 'Sofia Torres', 'sofia.torres@gmail.com', 'contraseñaactual'),
(3, 'Alejandro Vargas', 'alejandrovargas32@hotmail.com', 'batmanfan1'),
(4, 'Valentina Ramos', 'valentinaramos2@gmail.com', 'vegetan1'),
(5, 'Diego Herrera', 'diego.herrera@yahoo.com', 'narutobestanime'),
(6, 'Isabella Mendoza', 'isabella.mendoza@gmail.com', 'luffygod'),
(7, 'Mateo Guzman', 'mateoguzman@gmail.com', 'mateo123'),
(8, 'Camila Soto', 'camilasoto42@gmail.com', 'cami2556'),
(9, 'Valeria Morales', 'valeria.morales@gmail.com', 'vale502morales'),
(10, 'Santiago Castro', 'santiagocas233@gmail.com', 'santi123castro'),
(11, 'Lucas Ortega', 'lucas.ortega@gmail.com', 'lucas12345'),
(13, 'Nuevo Administrador', 'nuevoadmin@example.com', 'nuevacontraseña');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificacion`
--

CREATE TABLE `calificacion` (
  `ID_calificacion` int(11) NOT NULL,
  `estrellas` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `calificacion`
--

INSERT INTO `calificacion` (`ID_calificacion`, `estrellas`) VALUES
(1, '2'),
(2, '6');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentario`
--

CREATE TABLE `comentario` (
  `id_usuario` int(11) NOT NULL,
  `id_comentario` int(11) NOT NULL,
  `texto` text DEFAULT NULL,
  `calificacion` int(11) DEFAULT NULL,
  `fecha` date NOT NULL,
  `id_lugar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `comentario`
--

INSERT INTO `comentario` (`id_usuario`, `id_comentario`, `texto`, `calificacion`, `fecha`, `id_lugar`) VALUES
(3, 1, 'El lugar era muy bonito', 7, '2022-05-02', 1),
(8, 2, 'muy hermoso el lugar, muy calido en los dias', 9, '2022-04-03', 3),
(3, 3, 'marivollo lugar la decoracion son maravillosa', 8, '2021-07-12', 4),
(6, 4, 'el lugar se veia bien, pero le falta algo que no puedo describir', 5, '2021-09-25', 5),
(5, 5, 'muy hermoso paisaje', 7, '2023-03-03', 6),
(2, 6, 'heromoso parona, las vista son geniales', 7, '2023-02-27', 7),
(8, 7, 'muy hermos los siete moai, es una experiensia unica', 6, '2021-09-14', 8),
(8, 8, 'el paisaje es una maravilla', 9, '2022-08-17', 9),
(2, 9, 'la flora es bonita, lo que permite un paisaje sea maravilloso', 6, '2021-10-05', 10),
(5, 10, 'son bueno pero no es la gran cosa', 3, '2023-02-18', 11),
(2, 11, 'Gran lugar', 9, '2023-09-26', 12),
(3, 12, 'Increíble', 8, '2023-09-26', 12),
(4, 13, 'Volvería una y otra vez', 9, '2023-09-26', 12),
(5, 14, 'Maravilloso', 8, '2023-09-26', 12),
(6, 15, 'Me encantó', 9, '2023-09-26', 12),
(1, 16, 'Excelente lugar', 5, '2023-09-25', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gestiona`
--

CREATE TABLE `gestiona` (
  `ID_admin` int(11) NOT NULL,
  `ID_lugar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `gestiona`
--

INSERT INTO `gestiona` (`ID_admin`, `ID_lugar`) VALUES
(2, 1),
(3, 3),
(3, 4),
(7, 5),
(11, 11),
(9, 10),
(9, 6),
(5, 8),
(5, 7),
(10, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lugar`
--

CREATE TABLE `lugar` (
  `ID_Lugar` int(11) NOT NULL,
  `Nombre_Lugar` varchar(30) DEFAULT NULL,
  `Descripcion` text DEFAULT NULL,
  `Clasificacion` int(11) DEFAULT NULL,
  `id_usuario` int(11) NOT NULL,
  `Direccion` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `lugar`
--

INSERT INTO `lugar` (`ID_Lugar`, `Nombre_Lugar`, `Descripcion`, `Clasificacion`, `id_usuario`, `Direccion`) VALUES
(1, 'GLACIAR DEL JUNCAL', 'Uno de los glaciares más atractivos, además de ser uno de los de más fácil acceso', 7, 3, 'No hay Direcion disponible'),
(3, 'BALNEARIO DE MAITENCILLO', 'Bella play para pasar la tarde con la familia', 6, 8, 'A 15 KM AL NOROESTE DE PUCHUNCAVI'),
(4, 'CALETA HORCON', 'Se dice que en la época precolombina, Horcón y sus Alrededores fue habitada por los Changos.', 8, 3, 'A 44 KM DE VIÑA DEL MAR'),
(5, 'CALETA EL MEMBRILLO', 'Una vez inaugurada la avenida Altamirano, en 1930, el acceso costero inmediato a la caleta se colmó de pequeñas fondas y quintas de recreo.', 5, 6, 'AV. ERRAZURIZ CON AV. ALTAMIRANO'),
(6, 'LAGUNA VERDE', 'Es apta para tomar baños de sol y pescar. A mitad de camino, se encuentra la Laguna El Plateado.', 7, 5, 'A 18 KMS AL SUR DE PLAYA ANCHA'),
(7, 'QUINTAY', 'Nació como caleta de pescadores. En este lugar se construyó la ballenera más importante de Chile por el año 1943.', 7, 2, 'A 47 KM DE VALPARAÍSO'),
(8, 'AHU TEPEU', 'El conjunto ceremonial está bastante deteriorado por acción del clima.', 6, 8, 'Ubicada en la isla de Pascua'),
(9, 'AHU AKIVI', 'El sitio arqueológico conocido como Ahu a Kivi, es según la tradición oral llamado Ahu a Tiu, plataforma de los siete Moai.', 9, 8, 'Ubicado en el centro de la Isla de Pascua'),
(10, 'PUNA PAU', 'Cantera de Puna Pau, es un cráter de escoria roja del que los pascuenses obtenían los Pukao o tocados que coronaban los moais.', 6, 2, 'A 15 KM DE HANGA ROA, Ubicado en la Isla de Pascua'),
(11, 'FUERTE ESMERALDA', 'Si bien su denominación oficial es “Fuerte Esmeralda”, su nombre correcto es Batería Esmeralda.', 3, 5, 'AVDA. ALTAMIRANO ESQUINA MOLO'),
(12, 'Nuevo Lugar Interesante', 'Descripción del lugar', 8, 1, 'Dirección del lugar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `ID_usuario` int(11) NOT NULL,
  `nombre_us` varchar(20) DEFAULT NULL,
  `correo_us` varchar(30) DEFAULT NULL,
  `contraseña` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`ID_usuario`, `nombre_us`, `correo_us`, `contraseña`) VALUES
(1, 'Juan Perez', 'juanperez@gmail.com', 'contraseña123'),
(2, 'Maria Rodriguez', 'maria_rodriguez32@gmail.com', 'miperrocolacao123'),
(3, 'Ana Lopez', 'ana_lopez53@gmail.com', 'migatitosky'),
(4, 'Carlos Martinez', 'carlos.mart25@gmail.com', 'elgrancarlos'),
(5, 'Laura Gonzalez', 'laura432@gmail.com', 'perrochocolo124'),
(6, 'Manuel Sanchez', 'manuelsanchez234@gmail.com', 'gokueslaley'),
(7, 'Isabel Torres', 'isabeltorres543@yahoo.com', 'marvelepicfan12'),
(8, 'Pedro Jimenez', 'pedro.jimenez@yahoo.com', 'amoamisgatos'),
(9, 'Carmen Ruiz', 'carmenruiz@gmail.com', 'perrolover'),
(10, 'Javier Fernandez', 'javier.fernandez123@gmail.com', 'catlover'),
(11, 'Daniel Oceano', 'danny@gmail.com', 'Claveprueba123');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`ID_Admin`);

--
-- Indices de la tabla `calificacion`
--
ALTER TABLE `calificacion`
  ADD PRIMARY KEY (`ID_calificacion`);

--
-- Indices de la tabla `comentario`
--
ALTER TABLE `comentario`
  ADD PRIMARY KEY (`id_comentario`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `gestiona`
--
ALTER TABLE `gestiona`
  ADD KEY `ID_lugar` (`ID_lugar`),
  ADD KEY `ID_admin` (`ID_admin`);

--
-- Indices de la tabla `lugar`
--
ALTER TABLE `lugar`
  ADD PRIMARY KEY (`ID_Lugar`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`ID_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administrador`
--
ALTER TABLE `administrador`
  MODIFY `ID_Admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `calificacion`
--
ALTER TABLE `calificacion`
  MODIFY `ID_calificacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `comentario`
--
ALTER TABLE `comentario`
  MODIFY `id_comentario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `lugar`
--
ALTER TABLE `lugar`
  MODIFY `ID_Lugar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `ID_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comentario`
--
ALTER TABLE `comentario`
  ADD CONSTRAINT `comentario_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`ID_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `gestiona`
--
ALTER TABLE `gestiona`
  ADD CONSTRAINT `gestiona_ibfk_1` FOREIGN KEY (`ID_lugar`) REFERENCES `lugar` (`ID_Lugar`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `gestiona_ibfk_2` FOREIGN KEY (`ID_admin`) REFERENCES `administrador` (`ID_Admin`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `lugar`
--
ALTER TABLE `lugar`
  ADD CONSTRAINT `lugar_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`ID_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
