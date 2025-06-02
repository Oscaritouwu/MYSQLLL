-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-06-2025 a las 23:01:59
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
-- Base de datos: `sistema_licencias_conducir`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aplicantes`
--

CREATE TABLE `aplicantes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido_paterno` varchar(50) NOT NULL,
  `apellido_materno` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `domicilio` text NOT NULL,
  `tipo_sangre` enum('A+','A-','B+','B-','AB+','AB-','O+','O-') NOT NULL,
  `fecha_registro` datetime DEFAULT current_timestamp(),
  `foto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `aplicantes`
--

INSERT INTO `aplicantes` (`id`, `nombre`, `apellido_paterno`, `apellido_materno`, `email`, `telefono`, `domicilio`, `tipo_sangre`, `fecha_registro`, `foto`) VALUES
(5, 'O5c4r', 'Hernández', 'Hernandez', 'ahsgdkawsdadsd@gmail.com', '3221247757', 's', 'AB+', '2025-05-31 23:16:42', 'fotos_aplicantes/683be23ac678d_RobloxScreenShot20250404_043358476.png'),
(6, 'O5c4r', 'Hernández', 'Hernandez', 'ahsgdkawssdadsd@gmail.com', '3221247757', 's', 'AB+', '2025-05-31 23:21:23', 'fotos_aplicantes/683be35356aa3_RobloxScreenShot20250404_043358476.png'),
(7, 'O5c4r', 'Hernández', 'Hernandez', 'ahsgdkaswsssdadsd@gmail.com', '3221247757', 's', 'AB+', '2025-05-31 23:22:33', 'fotos_aplicantes/683be3997cc5b.png'),
(9, 'O5c4r', 'Hernández', 'Hernandez', 'ahsgdkaswsssssdadsd@gmail.com', '3221247757', 's', 'AB+', '2025-05-31 23:23:22', 'fotos_aplicantes/683be3ca744b5.png'),
(10, 'O5c4r', 'Hernández', 'Hernandez', 'ahsgdkaswssssssssdadsd@gmail.com', '3221247757', 's', 'AB+', '2025-05-31 23:31:46', 'fotos_aplicantes/683be5c2b37d2.png'),
(11, 'O5c4r', 'Hernández', 'Hernandez', 'ahsgdkaswssssssssssdadsd@gmail.com', '3221247757', 's', 'AB+', '2025-05-31 23:35:02', 'fotos_aplicantes/683be6866b280.png'),
(12, 'O5c4r', 'Hernández', 'Hernandez', 'sssss@gmail.com', '3221247757', 's', 'B-', '2025-05-31 23:42:02', 'fotos_aplicantes/683be82a32410.png'),
(13, 'oscar', 's', 'Hernandez', 'ahsgdkaswssssssdadsd@gmail.com', '3221247757', 's', 'O+', '2025-05-31 23:47:04', 'fotos_aplicantes/683be9589a79f.png'),
(14, 'O5c4r', 'Hernández', 'Hernandez', 'sss@gmail.com', '3221247757', 's', 'B-', '2025-05-31 23:52:04', 'fotos_aplicantes/683bea845d71b.png'),
(15, 'O5c4r', 'Hernández', 'Hernandez', 'ahsgdkawd@gmail.com', '3221247757', 's', 'O-', '2025-06-02 14:08:45', 'fotos_aplicantes/683e04cdc7f7d.png'),
(17, 'Oscar Antonio', 'Hernández', 'Ramírez', 'ahsgdkawsdadsddd@gmail.com', '3221247757', 'dfs', 'O-', '2025-06-02 14:17:21', 'fotos_aplicantes/683e06d13b60b.png'),
(18, 'O5c4r', 'Hernández', 'Hernandez', 'daweqwd@gmail.com', '3221247757', 'dfs', 'AB+', '2025-06-02 14:21:17', 'fotos_aplicantes/683e07bd7720e.png'),
(19, 'O5c4r', 'Hernández', 'Hernandez', 'daweqwdss@gmail.com', '3221247757', 'dfs', 'AB+', '2025-06-02 14:34:22', 'fotos_aplicantes/683e0ace7decc.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `examenes`
--

CREATE TABLE `examenes` (
  `id` int(11) NOT NULL,
  `aplicante_id` int(11) NOT NULL,
  `fecha_inicio` datetime NOT NULL,
  `fecha_fin` datetime DEFAULT NULL,
  `tiempo_transcurrido` int(11) DEFAULT NULL COMMENT 'Tiempo en segundos',
  `puntuacion` int(11) DEFAULT NULL,
  `aprobado` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `examenes`
--

INSERT INTO `examenes` (`id`, `aplicante_id`, `fecha_inicio`, `fecha_fin`, `tiempo_transcurrido`, `puntuacion`, `aprobado`) VALUES
(1, 5, '2025-06-01 07:16:42', NULL, NULL, NULL, NULL),
(2, 5, '2025-06-01 07:17:19', NULL, NULL, NULL, NULL),
(3, 6, '2025-06-01 07:21:23', NULL, NULL, NULL, NULL),
(4, 7, '2025-06-01 07:22:33', NULL, NULL, NULL, NULL),
(5, 9, '2025-06-01 07:23:22', NULL, NULL, NULL, NULL),
(6, 10, '2025-06-01 07:31:46', NULL, NULL, NULL, NULL),
(7, 11, '2025-06-01 07:35:02', '2025-06-01 07:35:17', 15, 4, 0),
(8, 11, '2025-06-01 07:35:30', '2025-06-01 07:35:40', 10, 1, 0),
(9, 12, '2025-06-01 07:42:02', '2025-06-01 07:42:11', 9, 3, 0),
(10, 13, '2025-06-01 07:47:04', '2025-06-01 07:47:22', 18, 6, 0),
(11, 13, '2025-06-01 07:51:31', '2025-06-01 07:51:33', 2, 2, 0),
(12, 13, '2025-06-01 07:51:39', '2025-06-01 07:51:44', 5, 0, 0),
(13, 14, '2025-06-01 07:52:04', '2025-06-01 07:52:14', 10, 3, 0),
(14, 14, '2025-06-01 07:55:55', '2025-06-01 07:55:56', 1, 6, 0),
(15, 15, '2025-06-02 22:08:45', '2025-06-02 22:08:59', 14, 3, 0),
(16, 17, '2025-06-02 22:17:21', '2025-06-02 22:17:32', 11, 1, 0),
(17, 17, '2025-06-02 22:18:10', '2025-06-02 22:18:11', 1, 5, 0),
(18, 18, '2025-06-02 22:21:17', '2025-06-02 22:21:34', 17, 4, 0),
(19, 18, '2025-06-02 22:27:51', '2025-06-02 22:27:53', 2, 3, 0),
(20, 18, '2025-06-02 22:29:00', '2025-06-02 22:29:01', 1, 4, 0),
(21, 18, '2025-06-02 22:33:06', '2025-06-02 22:33:08', 2, 2, 0),
(22, 19, '2025-06-02 22:34:22', '2025-06-02 22:34:32', 10, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opciones_respuesta`
--

CREATE TABLE `opciones_respuesta` (
  `id` int(11) NOT NULL,
  `pregunta_id` int(11) NOT NULL,
  `opcion` text NOT NULL,
  `es_correcta` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `opciones_respuesta`
--

INSERT INTO `opciones_respuesta` (`id`, `pregunta_id`, `opcion`, `es_correcta`) VALUES
(1, 1, '20 km/h', 0),
(2, 1, '10 km/h', 1),
(3, 1, '30 km/h', 0),
(4, 2, '40 km/h', 0),
(5, 2, '20 km/h', 1),
(6, 2, '60 km/h', 0),
(7, 3, 'Que está prohibido rebasar', 1),
(8, 3, 'Que puedes rebasar con precaución', 0),
(9, 3, 'Que es un carril exclusivo para bicicletas', 0),
(10, 4, 'Para llamarle la atención a alguien', 0),
(11, 4, 'Para evitar un accidente', 1),
(12, 4, 'Para apurar a otros conductores', 0),
(13, 5, 'Desvío obligatorio hacia la izquierda', 0),
(14, 5, 'Incorporación de un carril lateral al carril principal', 1),
(15, 5, 'Fin de zona de carriles adicionales', 0),
(16, 6, 'Acelerar y huir bien lejos y bien rápido', 0),
(17, 6, 'Discutir tus derechos y defenderte', 0),
(18, 6, 'Obedecer sus indicaciones y mostrar tus documentos', 1),
(19, 7, 'Siempre', 0),
(20, 7, 'Siempre y cuándo tenga 1 mano en el volante', 0),
(21, 7, 'Solo con manos libres', 1),
(22, 8, 'Detenerte y ceder el paso', 1),
(23, 8, 'Acelerar para que se detenga el peatón', 0),
(24, 8, 'Tocar el claxon', 0),
(25, 9, 'Evitar multas', 0),
(26, 9, 'Proteger al conductor y pasajeros en caso de accidente', 1),
(27, 9, 'Mejorar la postura al conducir', 0),
(28, 10, 'Sí, si es solo una copa', 0),
(29, 10, 'Sí, si vas despacio y con cuidado', 0),
(30, 10, 'No, porque afecta tus reflejos', 1),
(31, 11, 'Encender la radio', 0),
(32, 11, 'Verificar espejos y ajustar el asiento', 1),
(33, 11, 'Acelerar para calentar el motor', 0),
(34, 12, 'Granja cercana', 0),
(35, 12, 'Cruce de ganado', 1),
(36, 12, 'Comida típica', 0),
(37, 13, 'Solo en calles de un solo sentido', 0),
(38, 13, 'Sí, siempre', 0),
(39, 13, 'No, salvo cuando el vehículo de adelante va a girar a la izquierda', 1),
(40, 14, 'INE', 0),
(41, 14, 'Licencia de conducir', 1),
(42, 14, 'Tarjeta de circulación', 0),
(43, 15, 'Activar direccional', 1),
(44, 15, 'Frenar de golpe', 0),
(45, 15, 'Tocar el claxon', 0),
(46, 16, 'Acelerar para alejarte', 0),
(47, 16, 'No responder y mantener la calma', 1),
(48, 16, 'Gritarle y seguirlo', 0),
(49, 17, 'Se puede rebasar', 0),
(50, 17, 'Está prohibido cambiar de carril', 1),
(51, 17, 'No rebasar', 0),
(52, 18, 'Circular normalmente', 0),
(53, 18, 'Aplicar el reglamento de señales horizontales', 0),
(54, 18, 'Tratar el cruce como si hubiera señales de alto en todas las esquinas', 1),
(55, 19, 'Llegas más rápido y ahorras gasolina', 0),
(56, 19, 'Aumentas el riesgo de accidentes y multas', 1),
(57, 19, 'Chocas un árbol y atropellas un gato', 0),
(58, 20, '16 años', 0),
(59, 20, '18 años', 1),
(60, 20, '21 años', 0),
(61, 21, 'Alto total y continuar con precaución', 0),
(62, 21, 'Continúa sin detenerte', 0),
(63, 21, 'Precaución y reduce la velocidad', 1),
(64, 22, 'Al semáforo', 0),
(65, 22, 'Al oficial de tránsito', 1),
(66, 22, 'A ningún lado', 0),
(67, 23, 'Un árbol', 0),
(68, 23, 'Un gato', 0),
(69, 23, 'Nada', 1),
(70, 24, 'Para avisar que te estacionarás en un lugar permitido', 0),
(71, 24, 'Para indicar que te detendrás momentáneamente en doble fila', 0),
(72, 24, 'Para señalar una situación de emergencia o peligro', 1),
(73, 25, 'Acelerar para llegar rápido a un taller', 0),
(74, 25, 'Tocar el claxon y aventarte al tráfico', 0),
(75, 25, 'Reducir la velocidad con freno de motor y buscar una zona segura', 1),
(76, 26, 'Zona de hospitales', 1),
(77, 26, 'Helipuerto', 0),
(78, 26, 'Zona de hamburguesas', 0),
(79, 27, 'Cada mes', 1),
(80, 27, 'Cada año', 0),
(81, 27, 'Solo cuando se ven bajas', 0),
(82, 28, 'Detente por completo y continúa cuando sea seguro', 1),
(83, 28, 'Sigue sin detenerte', 0),
(84, 28, 'Solo reduce velocidad', 0),
(85, 29, 'El que llega primero', 0),
(86, 29, 'Los vehículos que ya circulan dentro de la glorieta', 1),
(87, 29, 'El vehículo más grande', 0),
(88, 30, 'Ignorarla', 0),
(89, 30, 'Cederle el paso inmediatamente', 1),
(90, 30, 'Competirle', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntas`
--

CREATE TABLE `preguntas` (
  `id` int(11) NOT NULL,
  `pregunta` text NOT NULL,
  `dificultad` enum('baja','media','alta') DEFAULT 'media',
  `activa` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `preguntas`
--

INSERT INTO `preguntas` (`id`, `pregunta`, `dificultad`, `activa`) VALUES
(1, '¿Cuál es la velocidad máxima permitida en un estacionamiento?', 'media', 1),
(2, '¿Cuál es el límite máximo de velocidad permitido en zonas escolares cuando hay niños presentes?', 'media', 1),
(3, '¿Qué significa una línea continua en el centro de la carretera?', 'media', 1),
(4, '¿En qué casos puedes usar el claxon?', 'media', 1),
(5, '¿Qué significa este señalamiento? (Incorporación de tránsito)', 'media', 1),
(6, '¿Qué debes hacer si te detiene un agente de tránsito?', 'media', 1),
(7, '¿Cuándo puedes usar el teléfono celular mientras conduces?', 'media', 1),
(8, 'Si un peatón cruza la calle por una zona peatonal, ¿qué debes hacer?', 'media', 1),
(9, '¿Cuál es la función principal del cinturón de seguridad?', 'media', 1),
(10, '¿Está permitido conducir si has ingerido alcohol, pero te sientes bien?', 'media', 1),
(11, '¿Qué debes hacer antes de arrancar el vehículo?', 'media', 1),
(12, '¿Qué indica una señal de tránsito triangular con borde rojo y un símbolo de vaca?', 'media', 1),
(13, '¿Está permitido rebasar por la derecha?', 'media', 1),
(14, '¿Qué documento acredita que estás legalmente autorizado para conducir?', 'media', 1),
(15, '¿Qué se debe hacer antes de girar en una esquina?', 'media', 1),
(16, '¿Qué hacer si otro conductor te provoca en la vía?', 'media', 1),
(17, '¿Qué significa una línea blanca continua entre carriles?', 'media', 1),
(18, '¿Qué se debe hacer si el semáforo está apagado?', 'media', 1),
(19, '¿Qué pasa si conduces con exceso de velocidad?', 'media', 1),
(20, '¿Cuál es la edad mínima para obtener una licencia de conducir tipo \"automovilista\"?', 'media', 1),
(21, '¿Qué significa una luz amarilla intermitente en un semáforo?', 'media', 1),
(22, 'Si un oficial de tránsito te da una indicación que contradice un semáforo, ¿a quién debes obedecer?', 'media', 1),
(23, '¿Que te has chingado con un carro?', 'media', 1),
(24, '¿Para qué se utilizan las luces intermitentes (emergencia)?', 'media', 1),
(25, '¿Qué debes hacer si te quedas sin frenos?', 'media', 1),
(26, '¿Qué indica una señal con fondo azul y una H blanca?', 'media', 1),
(27, '¿Cada cuánto tiempo es recomendable revisar la presión de las llantas?', 'media', 1),
(28, '¿Qué significa una luz roja intermitente en un semáforo?', 'media', 1),
(29, '¿Cuál es la prioridad de paso en una glorieta?', 'media', 1),
(30, '¿Qué se debe hacer si ves una ambulancia con sirena y luces encendidas?', 'media', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuestas_aplicantes`
--

CREATE TABLE `respuestas_aplicantes` (
  `id` int(11) NOT NULL,
  `examen_id` int(11) NOT NULL,
  `pregunta_id` int(11) NOT NULL,
  `opcion_seleccionada_id` int(11) NOT NULL,
  `es_correcta` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `respuestas_aplicantes`
--

INSERT INTO `respuestas_aplicantes` (`id`, `examen_id`, `pregunta_id`, `opcion_seleccionada_id`, `es_correcta`) VALUES
(1, 7, 1, 2, 1),
(2, 7, 2, 4, 0),
(3, 7, 8, 23, 0),
(4, 7, 9, 26, 1),
(5, 7, 12, 36, 0),
(6, 7, 18, 54, 1),
(7, 7, 21, 61, 0),
(8, 7, 23, 68, 0),
(9, 7, 25, 75, 1),
(10, 7, 27, 80, 0),
(11, 8, 2, 4, 0),
(12, 8, 4, 10, 0),
(13, 8, 12, 34, 0),
(14, 8, 13, 38, 0),
(15, 8, 15, 43, 1),
(16, 8, 18, 52, 0),
(17, 8, 25, 73, 0),
(18, 8, 26, 78, 0),
(19, 8, 27, 80, 0),
(20, 8, 29, 85, 0),
(21, 9, 7, 20, 0),
(22, 9, 9, 26, 1),
(23, 9, 12, 36, 0),
(24, 9, 14, 40, 0),
(25, 9, 15, 43, 1),
(26, 9, 18, 52, 0),
(27, 9, 21, 62, 0),
(28, 9, 23, 69, 1),
(29, 9, 26, 77, 0),
(30, 9, 30, 88, 0),
(31, 10, 3, 9, 0),
(32, 10, 10, 28, 0),
(33, 10, 11, 32, 1),
(34, 10, 12, 35, 1),
(35, 10, 15, 43, 1),
(36, 10, 16, 46, 0),
(37, 10, 20, 59, 1),
(38, 10, 23, 69, 1),
(39, 10, 25, 73, 0),
(40, 10, 27, 79, 1),
(41, 11, 1, 3, 0),
(42, 11, 2, 4, 0),
(43, 11, 4, 11, 1),
(44, 11, 11, 32, 1),
(45, 11, 12, 34, 0),
(46, 11, 14, 40, 0),
(47, 11, 18, 53, 0),
(48, 11, 22, 66, 0),
(49, 11, 24, 70, 0),
(50, 11, 30, 88, 0),
(51, 12, 1, 3, 0),
(52, 12, 2, 4, 0),
(53, 12, 4, 11, 0),
(54, 12, 11, 32, 0),
(55, 12, 12, 34, 0),
(56, 12, 14, 40, 0),
(57, 12, 18, 53, 0),
(58, 12, 22, 66, 0),
(59, 12, 24, 70, 0),
(60, 12, 30, 88, 0),
(61, 13, 1, 2, 1),
(62, 13, 4, 12, 0),
(63, 13, 5, 15, 0),
(64, 13, 9, 27, 0),
(65, 13, 10, 29, 0),
(66, 13, 14, 41, 1),
(67, 13, 19, 57, 0),
(68, 13, 23, 67, 0),
(69, 13, 24, 70, 0),
(70, 13, 30, 89, 1),
(71, 14, 2, 5, 1),
(72, 14, 3, 9, 0),
(73, 14, 11, 33, 0),
(74, 14, 12, 36, 0),
(75, 14, 16, 47, 1),
(76, 14, 21, 62, 0),
(77, 14, 23, 69, 1),
(78, 14, 27, 79, 1),
(79, 14, 28, 82, 1),
(80, 14, 29, 86, 1),
(81, 15, 1, 2, 1),
(82, 15, 2, 4, 0),
(83, 15, 3, 9, 0),
(84, 15, 5, 15, 0),
(85, 15, 12, 35, 1),
(86, 15, 15, 45, 0),
(87, 15, 16, 46, 0),
(88, 15, 19, 55, 0),
(89, 15, 21, 63, 1),
(90, 15, 23, 68, 0),
(91, 16, 8, 24, 0),
(92, 16, 11, 32, 1),
(93, 16, 12, 34, 0),
(94, 16, 13, 38, 0),
(95, 16, 16, 48, 0),
(96, 16, 18, 52, 0),
(97, 16, 22, 66, 0),
(98, 16, 24, 71, 0),
(99, 16, 25, 73, 0),
(100, 16, 29, 85, 0),
(101, 17, 3, 9, 0),
(102, 17, 5, 14, 1),
(103, 17, 8, 22, 1),
(104, 17, 9, 26, 1),
(105, 17, 10, 30, 1),
(106, 17, 14, 40, 0),
(107, 17, 24, 72, 1),
(108, 17, 25, 74, 0),
(109, 17, 29, 85, 0),
(110, 17, 30, 88, 0),
(111, 18, 1, 3, 0),
(112, 18, 3, 7, 1),
(113, 18, 7, 19, 0),
(114, 18, 9, 27, 0),
(115, 18, 12, 35, 1),
(116, 18, 13, 37, 0),
(117, 18, 20, 59, 1),
(118, 18, 21, 63, 1),
(119, 18, 24, 70, 0),
(120, 18, 30, 88, 0),
(121, 19, 3, 9, 0),
(122, 19, 6, 16, 0),
(123, 19, 12, 34, 0),
(124, 19, 16, 48, 0),
(125, 19, 17, 50, 1),
(126, 19, 18, 52, 0),
(127, 19, 20, 59, 1),
(128, 19, 21, 63, 1),
(129, 19, 23, 67, 0),
(130, 19, 25, 73, 0),
(131, 20, 2, 6, 0),
(132, 20, 3, 7, 1),
(133, 20, 6, 16, 0),
(134, 20, 10, 30, 1),
(135, 20, 11, 32, 1),
(136, 20, 13, 37, 0),
(137, 20, 18, 53, 0),
(138, 20, 22, 66, 0),
(139, 20, 24, 70, 0),
(140, 20, 28, 82, 1),
(141, 21, 2, 6, 0),
(142, 21, 4, 10, 0),
(143, 21, 6, 16, 0),
(144, 21, 7, 21, 1),
(145, 21, 8, 23, 0),
(146, 21, 9, 25, 0),
(147, 21, 18, 53, 0),
(148, 21, 27, 81, 0),
(149, 21, 28, 82, 1),
(150, 21, 30, 88, 0),
(151, 22, 1, 3, 0),
(152, 22, 6, 17, 0),
(153, 22, 8, 23, 0),
(154, 22, 16, 48, 0),
(155, 22, 17, 51, 0),
(156, 22, 22, 64, 0),
(157, 22, 23, 67, 0),
(158, 22, 26, 77, 0),
(159, 22, 28, 84, 0),
(160, 22, 30, 89, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `aplicantes`
--
ALTER TABLE `aplicantes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indices de la tabla `examenes`
--
ALTER TABLE `examenes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aplicante_id` (`aplicante_id`);

--
-- Indices de la tabla `opciones_respuesta`
--
ALTER TABLE `opciones_respuesta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pregunta_id` (`pregunta_id`);

--
-- Indices de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `respuestas_aplicantes`
--
ALTER TABLE `respuestas_aplicantes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `examen_id` (`examen_id`),
  ADD KEY `pregunta_id` (`pregunta_id`),
  ADD KEY `opcion_seleccionada_id` (`opcion_seleccionada_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `aplicantes`
--
ALTER TABLE `aplicantes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `examenes`
--
ALTER TABLE `examenes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `opciones_respuesta`
--
ALTER TABLE `opciones_respuesta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `respuestas_aplicantes`
--
ALTER TABLE `respuestas_aplicantes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `examenes`
--
ALTER TABLE `examenes`
  ADD CONSTRAINT `examenes_ibfk_1` FOREIGN KEY (`aplicante_id`) REFERENCES `aplicantes` (`id`);

--
-- Filtros para la tabla `opciones_respuesta`
--
ALTER TABLE `opciones_respuesta`
  ADD CONSTRAINT `opciones_respuesta_ibfk_1` FOREIGN KEY (`pregunta_id`) REFERENCES `preguntas` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `respuestas_aplicantes`
--
ALTER TABLE `respuestas_aplicantes`
  ADD CONSTRAINT `respuestas_aplicantes_ibfk_1` FOREIGN KEY (`examen_id`) REFERENCES `examenes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `respuestas_aplicantes_ibfk_2` FOREIGN KEY (`pregunta_id`) REFERENCES `preguntas` (`id`),
  ADD CONSTRAINT `respuestas_aplicantes_ibfk_3` FOREIGN KEY (`opcion_seleccionada_id`) REFERENCES `opciones_respuesta` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
