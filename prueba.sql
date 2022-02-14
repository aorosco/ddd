-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-02-2022 a las 01:19:33
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `prueba`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(70) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Categoria   7304', 9, '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(2, 'Categoria   7535', 1, '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(3, 'Categoria   1823', 2, '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(4, 'Categoria   4967', 7, '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(5, 'Categoria   8213', 6, '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(6, 'Categoria   6362', 2, '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(7, 'Categoria   8860', 7, '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(8, 'Categoria   2194', 10, '2022-02-14 02:10:55', '2022-02-14 02:10:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `order` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `courses`
--

INSERT INTO `courses` (`id`, `category_id`, `name`, `slug`, `img`, `description`, `active`, `order`, `created_at`, `updated_at`) VALUES
(1, 4, 'curso   6552', 'facere-et-ut-aut-nostrum-nostrum-beatae', 'https://via.placeholder.com/640x480.png/00dd55?text=molestiae', 'Nemo debitis blanditiis sit autem a omnis sequi. Voluptates tempora quia quod repudiandae id voluptas placeat. Repellat totam ipsa vitae eum delectus minus quibusdam. Eum est maxime vel labore.', 0, 1, '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(2, 4, 'curso   2891', 'perspiciatis-cum-officia-vel-officia-aut', 'https://via.placeholder.com/640x480.png/007722?text=praesentium', 'Delectus cum praesentium rem fuga et delectus. Rerum impedit ratione rerum iusto. Nihil molestias voluptatem et culpa fuga placeat ipsa.', 1, 19, '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(3, 2, 'curso   1252', 'alias-cumque-asperiores-eos-quidem-non-in-voluptatibus', 'https://via.placeholder.com/640x480.png/00aa33?text=debitis', 'Quasi unde quos excepturi sed. Est ipsum iusto et sit omnis. Ut nostrum animi nostrum et sequi sit pariatur. Molestiae mollitia officia corporis et quo cumque quisquam.', 1, 11, '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(4, 3, 'curso   6543', 'illum-sit-ut-aliquam-eos', 'https://via.placeholder.com/640x480.png/009911?text=sint', 'Enim ad modi vitae neque aliquam culpa. Laudantium repudiandae aut aspernatur et. Delectus eum et ea id. Nesciunt natus commodi nihil aliquam quo consequatur sint.', 1, 7, '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(5, 3, 'curso   5378', 'repellat-consequatur-officia-quod-similique-aut-voluptatum-nemo', 'https://via.placeholder.com/640x480.png/00ee88?text=ut', 'Cumque et quia et fugit. Rem quia velit et. Saepe eius molestiae cumque et. Sed quam asperiores aut minus labore quos ratione libero.', 1, 11, '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(6, 2, 'curso   2879', 'iusto-sint-delectus-odit-sed-maxime-sed', 'https://via.placeholder.com/640x480.png/005544?text=sunt', 'Cumque ducimus vel officiis. Est et quis qui. Molestiae quasi dolore modi.', 0, 1, '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(7, 3, 'curso   7331', 'sit-cupiditate-qui-qui-in-quibusdam-veniam', 'https://via.placeholder.com/640x480.png/001122?text=quia', 'Voluptate aut iste qui distinctio qui alias. Est pariatur cupiditate itaque et eveniet nisi. Voluptas eius veritatis sed repellendus aperiam libero ut.', 1, 12, '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(8, 3, 'curso   8649', 'aperiam-tenetur-quam-quisquam-velit-temporibus', 'https://via.placeholder.com/640x480.png/00dd33?text=cum', 'Illum dolor voluptatem ipsam. Culpa ad quo reprehenderit possimus voluptatem. Id soluta suscipit culpa expedita voluptatem ut quo ipsa. Nobis consequatur molestiae illo nisi.', 0, 14, '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(9, 1, 'curso   8815', 'fuga-velit-non-consequatur-tempore-eveniet-sapiente', 'https://via.placeholder.com/640x480.png/0044dd?text=voluptas', 'Aut ex nemo quod. Pariatur est harum maiores et quis. Illo aperiam praesentium eum consectetur. Non voluptatem sit sunt blanditiis omnis optio. Quia qui quisquam voluptatem et.', 1, 12, '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(10, 4, 'curso   3586', 'nisi-eligendi-officia-repellat-deleniti-praesentium-quis', 'https://via.placeholder.com/640x480.png/00ee00?text=nihil', 'Qui porro aliquid ratione eveniet. Aspernatur corrupti non temporibus cumque voluptas repudiandae. Explicabo et aut doloremque omnis facilis similique.', 1, 4, '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(11, 3, 'curso   4552', 'culpa-praesentium-id-dolore-corporis-minus-nulla-quam', 'https://via.placeholder.com/640x480.png/002255?text=nihil', 'Odio quaerat fugiat mollitia maiores adipisci pariatur. Qui facilis dolor iste consequatur id. Sed porro quo ipsa sit impedit ab. A dolorum placeat autem iste ut dolor aut.', 0, 11, '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(12, 2, 'curso   2366', 'voluptas-veritatis-aliquid-excepturi-hic-quibusdam-consequuntur', 'https://via.placeholder.com/640x480.png/00ee66?text=asperiores', 'Consectetur et et autem beatae adipisci rerum distinctio porro. Molestiae expedita iste quos distinctio similique distinctio velit. Rem rerum quo veritatis earum et. Voluptatibus omnis placeat rem.', 0, 11, '2022-02-14 02:10:55', '2022-02-14 02:10:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `groups`
--

CREATE TABLE `groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `groups`
--

INSERT INTO `groups` (`id`, `name`, `order`, `created_at`, `updated_at`) VALUES
(1, 'curso  5936', 2, '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(2, 'curso  3482', 2, '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(3, 'curso  8346', 4, '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(4, 'curso  5503', 4, '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(5, 'curso  8690', 3, '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(6, 'curso  0491', 2, '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(7, 'curso  3815', 3, '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(8, 'curso  2989', 3, '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(9, 'curso  1005', 1, '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(10, 'curso  3454', 4, '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(11, 'curso  8992', 4, '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(12, 'curso  7522', 2, '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(13, 'curso  5306', 3, '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(14, 'curso  6952', 1, '2022-02-14 02:10:55', '2022-02-14 02:10:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inscriptions`
--

CREATE TABLE `inscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `inscriptions`
--

INSERT INTO `inscriptions` (`id`, `user_id`, `course_id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 7, 3, '', 'cod3937zwb', '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(2, 5, 2, '', 'cod1594ech', '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(3, 4, 1, '', 'cod3902jnd', '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(4, 5, 4, '', 'cod4267hws', '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(5, 10, 5, '', 'cod8548bwc', '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(6, 9, 5, '', 'cod2850jay', '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(7, 10, 4, '', 'cod8217ixc', '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(8, 1, 4, '', 'cod3719ptn', '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(9, 6, 1, '', 'cod0832sab', '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(10, 10, 3, '', 'cod6718feo', '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(11, 10, 6, '', 'cod9029pxp', '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(12, 2, 4, '', 'cod8991jka', '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(13, 9, 2, '', 'cod9270wie', '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(14, 5, 4, '', 'cod5351xhd', '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(15, 1, 4, '', 'cod0438hyh', '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(16, 7, 6, '', 'cod9566web', '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(17, 1, 3, '', 'cod4325edv', '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(18, 4, 6, '', 'cod2669nnv', '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(19, 4, 1, '', 'cod8842ull', '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(20, 5, 4, '', 'cod0617ufh', '2022-02-14 02:10:55', '2022-02-14 02:10:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2020_05_21_100000_create_teams_table', 1),
(7, '2020_05_21_200000_create_team_user_table', 1),
(8, '2020_09_19_062623_create_sessions_table', 1),
(9, '2022_02_07_200000_create_categories_table', 1),
(10, '2022_02_07_300000_create_groups_table', 1),
(11, '2022_02_07_400000_create_courses_table', 1),
(12, '2022_02_07_500000_create_inscriptions_table', 1),
(13, '2022_02_07_600000_create_posts_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `src` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `order` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `posts`
--

INSERT INTO `posts` (`id`, `course_id`, `group_id`, `name`, `type`, `img`, `src`, `description`, `active`, `order`, `created_at`, `updated_at`) VALUES
(1, 5, 2, 'Post   2659', 'ktx', 'https://via.placeholder.com/640x480.png/009999?text=odio', '/direccion/asdf', 'Est facere maiores quasi dicta. Molestiae aut numquam quis id dolorem. Aspernatur adipisci hic ut libero eius eaque sed. Ratione maxime odit eos et odit aliquam qui.', 1, 5, '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(2, 4, 5, 'Post   6054', 'ogx', 'https://via.placeholder.com/640x480.png/002277?text=saepe', '/direccion/asdf', 'Modi praesentium magnam necessitatibus asperiores praesentium. Commodi suscipit consequatur ipsam quibusdam. Consequatur hic et ab.', 1, 4, '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(3, 6, 3, 'Post   0554', 'svc', 'https://via.placeholder.com/640x480.png/00ee33?text=quasi', '/direccion/asdf', 'Velit et deleniti ducimus saepe exercitationem minus sed. Doloribus aut et dolorum voluptatem debitis vero. Accusamus occaecati soluta aut id. Maxime vero aut velit saepe dolores quo et.', 1, 2, '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(4, 2, 3, 'Post   6794', 'kne', 'https://via.placeholder.com/640x480.png/00ddbb?text=pariatur', '/direccion/asdf', 'Voluptatum et fuga quo harum esse. Fugit sapiente quasi consectetur vero. A et aut laborum veritatis.', 1, 4, '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(5, 2, 4, 'Post   5190', 'sv4crc', 'https://via.placeholder.com/640x480.png/009999?text=aspernatur', '/direccion/asdf', 'Ea velit et aut et sint labore molestiae. Ab praesentium non praesentium perspiciatis. Sequi quidem id et quas. Sint iusto ipsum quia quae veniam id ea.', 1, 5, '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(6, 2, 1, 'Post   0562', 'dmp', 'https://via.placeholder.com/640x480.png/00bb11?text=iure', '/direccion/asdf', 'Voluptatibus et rerum non animi. Corporis possimus quia error recusandae ut eius. Eos amet veniam consequatur ut voluptate quia inventore.', 1, 10, '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(7, 5, 2, 'Post   2000', '7z', 'https://via.placeholder.com/640x480.png/00ddbb?text=laboriosam', '/direccion/asdf', 'Quia eligendi atque eaque molestiae natus nostrum aliquid enim. Modi unde et sit illum sed et est. Molestias totam animi non dignissimos adipisci temporibus. A at doloremque est natus ut ut id.', 1, 4, '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(8, 4, 6, 'Post   9345', 'kpxx', 'https://via.placeholder.com/640x480.png/00aaaa?text=accusamus', '/direccion/asdf', 'Qui molestiae itaque nam occaecati saepe. Laborum incidunt est quas illum. Assumenda deserunt tempore consequatur minus aut ab.', 1, 8, '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(9, 3, 1, 'Post   9236', 'pskcxml', 'https://via.placeholder.com/640x480.png/00ff22?text=hic', '/direccion/asdf', 'Ut est est quod recusandae aliquam ipsam accusamus. Aut expedita et cum odio dolorum earum laborum officia.', 1, 10, '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(10, 4, 6, 'Post   3375', 'pyv', 'https://via.placeholder.com/640x480.png/009944?text=sunt', '/direccion/asdf', 'Totam assumenda quasi rem inventore nesciunt asperiores. Praesentium et qui et ut. Quam quisquam in perspiciatis ut. Eos id quidem omnis quos illum ea sequi.', 1, 3, '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(11, 5, 1, 'Post   0887', 'xsl', 'https://via.placeholder.com/640x480.png/00cc11?text=aut', '/direccion/asdf', 'Ut ut harum ipsa sapiente. Sint nihil minima sint ut et. Magni blanditiis facere culpa provident corrupti dolorum eos.', 1, 3, '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(12, 1, 1, 'Post   0168', 'mov', 'https://via.placeholder.com/640x480.png/00bb99?text=quia', '/direccion/asdf', 'A illum est facere. Sit ut laboriosam doloremque.', 1, 9, '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(13, 5, 5, 'Post   0610', 'ivp', 'https://via.placeholder.com/640x480.png/0011cc?text=et', '/direccion/asdf', 'Consequatur est sit assumenda aut et. Accusantium alias ratione reiciendis distinctio explicabo incidunt quas perferendis. Consectetur ex consectetur necessitatibus veritatis id saepe labore.', 1, 7, '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(14, 1, 7, 'Post   5847', 'crt', 'https://via.placeholder.com/640x480.png/007788?text=voluptas', '/direccion/asdf', 'Quis quis sint iusto et. Dolores rem in omnis et asperiores. Eos beatae accusamus consequatur necessitatibus magni aliquam.', 1, 1, '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(15, 1, 5, 'Post   9370', 'btif', 'https://via.placeholder.com/640x480.png/0022dd?text=ut', '/direccion/asdf', 'Possimus eius ullam ut velit ab assumenda voluptas. Atque neque laboriosam a et cum asperiores. Aut perspiciatis eos dolores. Cumque minima molestiae et dolores.', 1, 5, '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(16, 3, 6, 'Post   0171', 'wbxml', 'https://via.placeholder.com/640x480.png/008899?text=molestias', '/direccion/asdf', 'Molestiae odit hic dicta tempora rerum sunt. Ut qui et ab et. Natus id voluptatum repellendus. Rem repellendus qui dolor optio molestiae.', 1, 3, '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(17, 1, 1, 'Post   9478', 'svg', 'https://via.placeholder.com/640x480.png/007733?text=aut', '/direccion/asdf', 'Sit aliquid dolor voluptas quisquam tenetur ut nesciunt. Ut voluptatem quia in et ut maiores. Voluptas distinctio asperiores alias provident vero atque. Aut corporis explicabo autem sint.', 1, 9, '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(18, 5, 7, 'Post   5231', 'chat', 'https://via.placeholder.com/640x480.png/007799?text=optio', '/direccion/asdf', 'Ad consequatur quasi ut ullam. Quod saepe reprehenderit quisquam aut. Odio sed ea saepe itaque est et veniam quo. Quibusdam reprehenderit dolores totam est iusto totam.', 1, 3, '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(19, 3, 4, 'Post   4575', 'hlp', 'https://via.placeholder.com/640x480.png/00ddff?text=fuga', '/direccion/asdf', 'Tenetur consequatur at ipsam. Animi laborum cum delectus rerum perferendis et. Nihil qui quis sunt voluptatem consequatur.', 1, 3, '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(20, 5, 5, 'Post   4550', 'dataless', 'https://via.placeholder.com/640x480.png/00ccff?text=veritatis', '/direccion/asdf', 'Animi cumque reprehenderit vitae fugit illo. Necessitatibus perferendis sint fuga dicta aut voluptatem dolorum. Quasi et omnis aliquid.', 1, 7, '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(21, 5, 3, 'Post   2677', 'emma', 'https://via.placeholder.com/640x480.png/00dd11?text=molestiae', '/direccion/asdf', 'Inventore ipsa sit porro illum quia. Delectus accusantium totam non illum unde consequatur id.', 1, 5, '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(22, 3, 5, 'Post   9094', 'link66', 'https://via.placeholder.com/640x480.png/008800?text=quia', '/direccion/asdf', 'Eaque deleniti officia et odit. Quia et dolores ut ad. Doloremque itaque non odio esse dicta doloribus itaque. Repellat fugit et ut voluptatem qui vitae nulla dignissimos.', 1, 7, '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(23, 1, 5, 'Post   2204', 'ecma', 'https://via.placeholder.com/640x480.png/005544?text=quia', '/direccion/asdf', 'Magni quaerat deleniti est. Facilis perspiciatis suscipit repellat eaque. Nisi nihil tempore ad molestias quis.', 1, 5, '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(24, 1, 5, 'Post   0324', 'sus', 'https://via.placeholder.com/640x480.png/006633?text=asperiores', '/direccion/asdf', 'Ad id possimus rerum iure eligendi. Et officiis sint ut enim illo repudiandae repellendus quasi. Culpa minima delectus esse iure. Velit placeat beatae alias voluptatem.', 1, 3, '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(25, 4, 7, 'Post   8121', 'lnk', 'https://via.placeholder.com/640x480.png/005555?text=eaque', '/direccion/asdf', 'Facere et vitae iure molestiae suscipit. Debitis ipsum et et rerum. Doloremque ex et qui in nam asperiores reprehenderit. Et reprehenderit voluptatem similique aut maiores.', 1, 2, '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(26, 2, 4, 'Post   4638', 'pot', 'https://via.placeholder.com/640x480.png/00ccff?text=molestias', '/direccion/asdf', 'Fuga quae odio officia totam. Rerum quia sunt et omnis commodi. Aut ratione rerum vel vel sunt voluptas accusantium. Doloribus temporibus ducimus nobis.', 1, 9, '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(27, 5, 7, 'Post   7071', 'scm', 'https://via.placeholder.com/640x480.png/00aa55?text=rerum', '/direccion/asdf', 'Soluta in nihil ea sequi consequatur officiis sint eaque. Necessitatibus voluptatem iure dolores non. Quis non alias in. Dolor reiciendis suscipit magnam nostrum quia qui officiis itaque.', 1, 3, '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(28, 2, 3, 'Post   4582', 'mets', 'https://via.placeholder.com/640x480.png/00eecc?text=praesentium', '/direccion/asdf', 'Ut accusantium reiciendis doloribus labore. Aut ut quis deserunt est est. Error nemo sunt provident consectetur. Fugit esse accusantium eos veniam.', 1, 2, '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(29, 4, 3, 'Post   0875', 'rmvb', 'https://via.placeholder.com/640x480.png/006688?text=sunt', '/direccion/asdf', 'Est accusamus dicta omnis libero placeat aliquam quo. Et molestiae sapiente expedita rerum omnis dolore fugit. Est eum vitae quas. Debitis cum voluptas cumque distinctio esse occaecati.', 1, 8, '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(30, 4, 5, 'Post   7579', 'gv', 'https://via.placeholder.com/640x480.png/00cc33?text=eum', '/direccion/asdf', 'Doloremque minima a qui quam natus tempore. Libero magnam dolore dolore omnis. Labore alias quod similique aut id nam sed. Et modi assumenda autem aperiam ut ipsa.', 1, 9, '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(31, 4, 1, 'Post   5585', 'sxi', 'https://via.placeholder.com/640x480.png/008800?text=accusantium', '/direccion/asdf', 'Voluptas laboriosam aut et nemo. Accusantium voluptatibus consequatur iusto ut veritatis tempore. Ducimus et dolorem voluptas quae et. Neque cupiditate ut corrupti et.', 1, 10, '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(32, 3, 6, 'Post   4240', '3dml', 'https://via.placeholder.com/640x480.png/0055dd?text=alias', '/direccion/asdf', 'Optio ab ut nemo eum et ut. Qui ut est quia odit dignissimos rerum odit. Et vero ut quas quo culpa et quis.', 1, 5, '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(33, 1, 5, 'Post   8084', 'sti', 'https://via.placeholder.com/640x480.png/002233?text=repellat', '/direccion/asdf', 'Eveniet eveniet quo architecto dicta. Sed aliquam sequi aut iusto consequuntur aut. Sequi commodi esse tempora repellat dolorem.', 1, 7, '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(34, 6, 6, 'Post   4663', 'twds', 'https://via.placeholder.com/640x480.png/003344?text=quis', '/direccion/asdf', 'Quia doloremque iste asperiores est. Est voluptatum tempora laboriosam quibusdam porro et. Et ea fugiat occaecati autem nobis neque.', 1, 10, '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(35, 1, 3, 'Post   8138', 'z1', 'https://via.placeholder.com/640x480.png/006677?text=necessitatibus', '/direccion/asdf', 'Cupiditate ullam necessitatibus reprehenderit non. Consectetur ab sed dolore aut adipisci vel. Corporis voluptatibus est quibusdam consequatur enim non.', 1, 7, '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(36, 1, 2, 'Post   7404', 'rmi', 'https://via.placeholder.com/640x480.png/00cc66?text=quos', '/direccion/asdf', 'Id itaque at et perferendis. Aut neque aliquid quia a velit dolores soluta neque. Aut similique facere quia iusto quibusdam atque.', 1, 10, '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(37, 1, 2, 'Post   4277', 'docm', 'https://via.placeholder.com/640x480.png/004488?text=fugit', '/direccion/asdf', 'Non vel suscipit necessitatibus quis. Rem excepturi accusamus voluptas cumque.', 1, 10, '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(38, 5, 7, 'Post   4670', 'mus', 'https://via.placeholder.com/640x480.png/008855?text=totam', '/direccion/asdf', 'Eum tempore reprehenderit quibusdam voluptatem nulla doloribus facere est. Deserunt voluptatem eos ipsa quasi quaerat. Quaerat dolores debitis tempore et adipisci molestiae dolor.', 1, 1, '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(39, 6, 6, 'Post   1897', 'svc', 'https://via.placeholder.com/640x480.png/009933?text=voluptas', '/direccion/asdf', 'Quia ab qui enim quo. Occaecati aliquam nisi delectus animi. Amet doloribus aut et occaecati dolorum magnam. Veritatis ullam iusto amet rerum dolorum atque doloribus.', 1, 4, '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(40, 2, 7, 'Post   5656', 'tmo', 'https://via.placeholder.com/640x480.png/001144?text=doloribus', '/direccion/asdf', 'Itaque hic qui sed sed ut et assumenda. Cumque velit voluptate perspiciatis magnam. Qui molestias qui aut architecto aut asperiores.', 1, 10, '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(41, 5, 1, 'Post   2401', 'nbp', 'https://via.placeholder.com/640x480.png/006666?text=maxime', '/direccion/asdf', 'Molestiae quas labore blanditiis minima aliquid in. Dignissimos ex dolor eos a ut. Sapiente quia sit et est.', 1, 1, '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(42, 1, 1, 'Post   8554', 'docm', 'https://via.placeholder.com/640x480.png/005511?text=dolor', '/direccion/asdf', 'Dolorum in est vel ea et aut cum. Accusamus sapiente quibusdam qui magnam. Aut impedit rerum eum labore. Voluptatem et amet nihil maiores.', 1, 6, '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(43, 1, 3, 'Post   5319', 'odb', 'https://via.placeholder.com/640x480.png/0022cc?text=sed', '/direccion/asdf', 'Architecto dolor voluptatem nam sapiente sunt. Adipisci ipsum error consequuntur enim nesciunt amet dicta. Et dolorem dignissimos atque et beatae dolores.', 1, 2, '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(44, 2, 2, 'Post   8582', 'rif', 'https://via.placeholder.com/640x480.png/00aa00?text=velit', '/direccion/asdf', 'Esse consequuntur nihil natus at sed. Ea omnis mollitia ducimus rerum. Tempore quia est non et non et provident vero. Voluptas vitae consequatur autem enim.', 1, 10, '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(45, 4, 5, 'Post   8348', '123', 'https://via.placeholder.com/640x480.png/0099aa?text=repellat', '/direccion/asdf', 'Maiores et praesentium reprehenderit odio minima. Qui dolor perferendis nostrum illo quod a sapiente. Mollitia sequi quidem reprehenderit ratione.', 1, 2, '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(46, 3, 4, 'Post   0347', 'f4v', 'https://via.placeholder.com/640x480.png/003388?text=vel', '/direccion/asdf', 'Ut itaque minima aut et alias. Autem quas unde explicabo numquam reiciendis. Non pariatur ipsam minima et asperiores dolorum quia perferendis.', 1, 5, '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(47, 2, 3, 'Post   2759', 'pkipath', 'https://via.placeholder.com/640x480.png/00ee66?text=et', '/direccion/asdf', 'Autem id earum inventore tenetur et ipsam voluptates earum. Qui sunt ipsam ipsa repudiandae. Quia ut aut ut recusandae deserunt animi perspiciatis. Est iste ipsam et magni quam suscipit nihil.', 1, 1, '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(48, 3, 5, 'Post   2075', 'fig', 'https://via.placeholder.com/640x480.png/00ff66?text=in', '/direccion/asdf', 'Aut quia sit laudantium amet. Accusamus enim atque culpa cumque ipsum atque facere nisi. Rerum unde debitis itaque aliquid. Saepe laudantium adipisci provident atque non velit.', 1, 8, '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(49, 2, 7, 'Post   1044', 'wma', 'https://via.placeholder.com/640x480.png/003388?text=dolorum', '/direccion/asdf', 'Commodi debitis est aut. Ut est ut cumque voluptatum. Quia debitis tempore sit dolor. Non quasi repudiandae a omnis aut voluptatem illo.', 1, 7, '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(50, 3, 3, 'Post   4319', 'sus', 'https://via.placeholder.com/640x480.png/00ccaa?text=tenetur', '/direccion/asdf', 'Nostrum quos non est explicabo. Quo modi nobis necessitatibus voluptatem. Est est et nam perspiciatis quia sint et.', 1, 6, '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(51, 1, 1, 'Post   5619', 'mov', 'https://via.placeholder.com/640x480.png/00dd33?text=expedita', '/direccion/asdf', 'Qui omnis quaerat asperiores repellat aliquam. Illo numquam magnam aut eveniet soluta eum. Rerum inventore tenetur dolorum aut. Repudiandae enim consequatur qui omnis.', 1, 4, '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(52, 6, 5, 'Post   9495', 'kwt', 'https://via.placeholder.com/640x480.png/009944?text=saepe', '/direccion/asdf', 'Et natus fugit quia eum dolores in nam. Libero qui repellendus dolorem excepturi. Voluptates quos qui consectetur neque minima rerum amet. Suscipit exercitationem ut tempora iusto.', 1, 9, '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(53, 4, 4, 'Post   6583', 'ttl', 'https://via.placeholder.com/640x480.png/006677?text=sequi', '/direccion/asdf', 'Ea cumque natus beatae ducimus. Ex expedita aut molestias velit excepturi. Eos excepturi rem unde. Debitis impedit deserunt aspernatur ut.', 1, 6, '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(54, 3, 3, 'Post   0626', 'chm', 'https://via.placeholder.com/640x480.png/00ee55?text=a', '/direccion/asdf', 'Quisquam a et similique. Officiis est est delectus vitae et voluptatem rem. Culpa ad minus consequatur consequatur minus. Commodi exercitationem sunt omnis.', 1, 10, '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(55, 4, 2, 'Post   3914', 'xul', 'https://via.placeholder.com/640x480.png/00aa22?text=consequatur', '/direccion/asdf', 'Molestiae illo et blanditiis neque numquam error voluptatum. Iste quae dolorem accusamus eos autem. Suscipit occaecati provident non magni eos porro. Rem praesentium ipsam nemo voluptas harum sit.', 1, 8, '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(56, 3, 2, 'Post   7805', 'odf', 'https://via.placeholder.com/640x480.png/005533?text=vitae', '/direccion/asdf', 'Pariatur ut totam dolor. Ipsa consequatur aliquid aperiam animi ut consequatur. Et inventore ratione animi in.', 1, 8, '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(57, 3, 7, 'Post   8678', 'obj', 'https://via.placeholder.com/640x480.png/0022dd?text=quia', '/direccion/asdf', 'Esse delectus ut dolorum iure voluptas voluptates. Dignissimos necessitatibus qui nihil eum recusandae nobis.', 1, 8, '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(58, 1, 6, 'Post   4278', 'h263', 'https://via.placeholder.com/640x480.png/00ffaa?text=molestias', '/direccion/asdf', 'Non veniam rerum quasi sunt enim eligendi voluptatem hic. Earum est nostrum molestiae eveniet aut quis quo. Soluta et officia ullam nobis.', 1, 3, '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(59, 3, 6, 'Post   5179', 'wmd', 'https://via.placeholder.com/640x480.png/009966?text=numquam', '/direccion/asdf', 'Cumque qui perferendis non dolorem saepe. Id quas deleniti qui accusantium eius architecto. Alias quas qui consequatur tempora quo est impedit.', 1, 8, '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(60, 2, 2, 'Post   1502', 'hal', 'https://via.placeholder.com/640x480.png/0055ee?text=rerum', '/direccion/asdf', 'Dicta qui perferendis sit ipsam commodi accusantium. Est sunt blanditiis dolor quidem et fuga quod. Vitae quibusdam ab tenetur quis odio fuga omnis. Voluptas unde qui eius.', 1, 10, '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(61, 2, 4, 'Post   5729', 'sfv', 'https://via.placeholder.com/640x480.png/00aabb?text=qui', '/direccion/asdf', 'Numquam cum error praesentium at modi velit. Sed tenetur earum ut veniam enim amet. Expedita accusantium id ut asperiores consectetur id sed.', 1, 2, '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(62, 4, 6, 'Post   7551', 'nbp', 'https://via.placeholder.com/640x480.png/0033ff?text=cum', '/direccion/asdf', 'Accusamus natus et maiores. Architecto eveniet dolor animi magnam. Voluptatem incidunt ut accusamus qui qui quam omnis. Magnam perferendis qui neque debitis cumque rerum laudantium sit.', 1, 5, '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(63, 3, 6, 'Post   6039', 'xlsm', 'https://via.placeholder.com/640x480.png/0099aa?text=et', '/direccion/asdf', 'Ipsa natus recusandae sint itaque neque sed quas doloribus. Omnis nisi minus qui est occaecati error dolor. Omnis vel alias quidem sapiente et et similique.', 1, 8, '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(64, 6, 1, 'Post   3661', 'stf', 'https://via.placeholder.com/640x480.png/00ff88?text=ut', '/direccion/asdf', 'Sint consectetur alias quas possimus sapiente praesentium nobis. Quia omnis nesciunt esse. Voluptatum ut doloribus recusandae doloribus voluptas.', 1, 2, '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(65, 2, 1, 'Post   5691', 'h261', 'https://via.placeholder.com/640x480.png/00aa11?text=error', '/direccion/asdf', 'Sapiente asperiores nobis sapiente sint. Minima dolorem quam qui. Ut provident magnam enim eaque maiores accusamus deleniti.', 1, 8, '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(66, 6, 5, 'Post   4566', 'qt', 'https://via.placeholder.com/640x480.png/002266?text=voluptatem', '/direccion/asdf', 'Hic perspiciatis aut unde architecto modi. Eaque animi rerum pariatur. Blanditiis perferendis animi qui neque eaque corporis.', 1, 5, '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(67, 2, 1, 'Post   3138', 'uvh', 'https://via.placeholder.com/640x480.png/000099?text=minus', '/direccion/asdf', 'Debitis sunt ipsa omnis eius. Et sed sed qui. Cum modi nihil possimus impedit voluptates consequatur. A repudiandae vel esse quia temporibus aperiam omnis.', 1, 8, '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(68, 1, 5, 'Post   8335', 'knp', 'https://via.placeholder.com/640x480.png/0055ee?text=et', '/direccion/asdf', 'Rerum earum ab dolor qui quos laborum. Velit nisi in quibusdam aut qui omnis.', 1, 2, '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(69, 6, 2, 'Post   7997', 'twd', 'https://via.placeholder.com/640x480.png/0088ff?text=fugit', '/direccion/asdf', 'Aliquam atque labore sint et. Aut possimus quia aut quisquam. Et id qui quaerat voluptatem.', 1, 9, '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(70, 3, 4, 'Post   5561', 'dsc', 'https://via.placeholder.com/640x480.png/0022bb?text=et', '/direccion/asdf', 'Asperiores rerum officia autem molestiae. Sed labore fuga libero et consectetur. Veritatis quia non saepe deserunt ut.', 1, 2, '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(71, 1, 3, 'Post   6032', 'wqd', 'https://via.placeholder.com/640x480.png/00ee11?text=nisi', '/direccion/asdf', 'Nemo ut eaque nam dignissimos repellendus. Vero eum quasi fugit. Porro inventore fugit vel nemo nesciunt aperiam.', 1, 4, '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(72, 5, 5, 'Post   6340', 'uvvf', 'https://via.placeholder.com/640x480.png/0000aa?text=laborum', '/direccion/asdf', 'Hic voluptas est vel. In voluptas voluptatem iste debitis error. Sit incidunt quas dolorum. Et voluptatem at sed minima est.', 1, 6, '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(73, 4, 1, 'Post   0248', 'svc', 'https://via.placeholder.com/640x480.png/00ee99?text=nulla', '/direccion/asdf', 'Consequatur exercitationem iure quos voluptas qui qui. Odit delectus molestiae earum non consequatur numquam. Aut consequatur quis dolorem corporis.', 1, 7, '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(74, 1, 5, 'Post   1720', 'cst', 'https://via.placeholder.com/640x480.png/00cccc?text=maiores', '/direccion/asdf', 'Ipsa perspiciatis cum nostrum sit quos et. Inventore molestias atque amet enim sed voluptas. Ut fugit debitis id blanditiis quia ut. Eius alias consequatur aperiam molestias laudantium.', 1, 3, '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(75, 1, 6, 'Post   8745', 'odt', 'https://via.placeholder.com/640x480.png/0022dd?text=labore', '/direccion/asdf', 'Est autem enim mollitia amet libero ut. Eos est delectus et aperiam eaque accusantium. Facere culpa ratione optio accusamus iusto earum quidem quia. Voluptatem neque suscipit esse.', 1, 9, '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(76, 5, 3, 'Post   0570', 'kfo', 'https://via.placeholder.com/640x480.png/004477?text=accusantium', '/direccion/asdf', 'Ea odit vel vel ea. Est fugit eveniet sapiente quibusdam aliquam veritatis recusandae. Nam iste rerum vero quia.', 1, 1, '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(77, 6, 6, 'Post   2261', 'tmo', 'https://via.placeholder.com/640x480.png/004466?text=distinctio', '/direccion/asdf', 'Ad dolor autem nam. Sed ducimus non odio hic velit dolor. Excepturi quae doloribus non nisi blanditiis quae esse rerum. Qui sed dolore perspiciatis quia nisi quia iste.', 1, 7, '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(78, 6, 3, 'Post   7098', 'jpgv', 'https://via.placeholder.com/640x480.png/0000bb?text=consequuntur', '/direccion/asdf', 'Harum et est ipsam autem inventore. Eum eaque sunt enim consequatur ea. Voluptatum reiciendis pariatur iste quisquam in.', 1, 9, '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(79, 4, 4, 'Post   5758', 'odm', 'https://via.placeholder.com/640x480.png/00aa22?text=commodi', '/direccion/asdf', 'Neque autem in et sunt nobis quaerat. Sit voluptatem molestias laboriosam voluptatem quis.', 1, 6, '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(80, 5, 5, 'Post   1283', 'xltx', 'https://via.placeholder.com/640x480.png/0044ff?text=sit', '/direccion/asdf', 'Quisquam omnis non totam quisquam. Ipsum deserunt qui rerum est aliquid consequatur qui. Laboriosam est fugiat est eaque molestias iste ut. Aspernatur dolorem nam qui et id in ducimus.', 1, 3, '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(81, 2, 6, 'Post   9020', 'sldx', 'https://via.placeholder.com/640x480.png/009999?text=iure', '/direccion/asdf', 'Nihil odio dolore aut molestias. Repellat fuga et quae ipsum ipsum dolorem iusto. Aut blanditiis laudantium quia labore.', 1, 1, '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(82, 3, 3, 'Post   3626', 'swf', 'https://via.placeholder.com/640x480.png/00ddee?text=non', '/direccion/asdf', 'Quia enim natus tenetur excepturi dolorem repellat. Rerum in aperiam laborum voluptas voluptatibus. Architecto ratione aspernatur laboriosam exercitationem neque praesentium.', 1, 3, '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(83, 1, 1, 'Post   0722', 'crd', 'https://via.placeholder.com/640x480.png/004477?text=libero', '/direccion/asdf', 'Rem voluptatibus distinctio soluta eum. Dignissimos at nihil occaecati est illum aliquid vitae. Neque id rerum ducimus. Quis est dolorum sapiente dolorem.', 1, 8, '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(84, 2, 7, 'Post   1478', 'bmp', 'https://via.placeholder.com/640x480.png/0077cc?text=quis', '/direccion/asdf', 'Rem et alias cum esse officiis eveniet aliquam. Ipsam cupiditate asperiores non quia fugit magnam non accusamus. Voluptatem deleniti quo est consequatur iste temporibus.', 1, 5, '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(85, 1, 2, 'Post   2543', 'prc', 'https://via.placeholder.com/640x480.png/00cc11?text=totam', '/direccion/asdf', 'Quis exercitationem sequi nihil nemo sit. Quibusdam quia veritatis corporis harum nihil et qui. Sunt neque deleniti voluptatibus odit commodi et distinctio maiores. Quo dolorum magni cum ut.', 1, 8, '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(86, 3, 3, 'Post   3261', '123', 'https://via.placeholder.com/640x480.png/00cc00?text=est', '/direccion/asdf', 'Facere qui amet magnam veniam. Dolorem nobis architecto vitae odio ipsa mollitia et. Cum quod quibusdam illum distinctio voluptate aut. Quis et at repellendus.', 1, 7, '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(87, 2, 5, 'Post   9017', 'stl', 'https://via.placeholder.com/640x480.png/00ff00?text=placeat', '/direccion/asdf', 'Harum accusantium ipsa cumque unde. Rerum unde dolorem sunt dolores deleniti possimus. Autem voluptatibus ea ex commodi. Quasi quidem odio non.', 1, 2, '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(88, 2, 1, 'Post   6640', 'x3d', 'https://via.placeholder.com/640x480.png/00cccc?text=facere', '/direccion/asdf', 'Saepe autem est laborum voluptate ullam sint consequatur sed. Vero quidem dicta totam quae quo. Laboriosam omnis pariatur at animi quia ea accusamus. Est dolore dolorem unde quia unde ut adipisci.', 1, 4, '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(89, 1, 2, 'Post   0548', 'karbon', 'https://via.placeholder.com/640x480.png/0011dd?text=amet', '/direccion/asdf', 'Quis non aperiam quisquam molestiae tempore ea et. Quam totam et quas nihil temporibus neque. Minima deserunt iure velit veniam a quos qui.', 1, 5, '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(90, 6, 6, 'Post   7143', 's', 'https://via.placeholder.com/640x480.png/0022aa?text=nobis', '/direccion/asdf', 'Aut ut voluptates nam non. Commodi expedita dignissimos officiis iste dolorem.', 1, 3, '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(91, 6, 5, 'Post   7139', 'tmo', 'https://via.placeholder.com/640x480.png/0099bb?text=qui', '/direccion/asdf', 'Consequatur architecto corrupti repudiandae voluptatum dolorem. Voluptas voluptatem odio ipsa velit quasi autem consequatur.', 1, 4, '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(92, 2, 4, 'Post   1915', '3ds', 'https://via.placeholder.com/640x480.png/009977?text=rerum', '/direccion/asdf', 'Voluptas eius ut cum et exercitationem. Ipsum consequatur exercitationem ut dolor tenetur quae ea a. Quos eligendi sed in quae nemo. Voluptatum porro odio autem.', 1, 2, '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(93, 2, 2, 'Post   4901', 'xltx', 'https://via.placeholder.com/640x480.png/004499?text=amet', '/direccion/asdf', 'Quod voluptates tempore illum aut. Non et fugiat non aperiam. Accusantium expedita magni ad officia eveniet porro. Cum repellat ab nobis.', 1, 5, '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(94, 3, 5, 'Post   2341', 'nbp', 'https://via.placeholder.com/640x480.png/0077ff?text=nihil', '/direccion/asdf', 'Alias aliquid ut sed non. Quae dolor quia ut voluptatem. Laborum necessitatibus omnis mollitia saepe ipsam.', 1, 9, '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(95, 5, 7, 'Post   4585', 'au', 'https://via.placeholder.com/640x480.png/00aaaa?text=similique', '/direccion/asdf', 'Et ea ea sit debitis adipisci eaque vero. Rerum iure laborum eaque dolorem quo. Ut sed voluptatem quis dignissimos repudiandae voluptatem. Omnis ipsam officia suscipit et quia aut sequi possimus.', 1, 10, '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(96, 6, 6, 'Post   1510', 'swf', 'https://via.placeholder.com/640x480.png/000077?text=et', '/direccion/asdf', 'Soluta doloribus earum dolor ut consequuntur ut. Provident aut deserunt cumque quia dicta eius. Repellendus eum eligendi porro est deserunt facere. Veritatis illo vero suscipit tempore qui ipsa.', 1, 6, '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(97, 3, 1, 'Post   4265', 'spot', 'https://via.placeholder.com/640x480.png/002288?text=aut', '/direccion/asdf', 'Sit ad debitis aperiam iusto. Tempore eos nihil aut. Non deserunt minima delectus nesciunt. Debitis consequatur et fugiat aut. Aliquam nobis provident consequuntur ea.', 1, 3, '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(98, 3, 6, 'Post   1615', 'lbe', 'https://via.placeholder.com/640x480.png/008833?text=optio', '/direccion/asdf', 'Sint eos qui culpa molestiae cum voluptatum. Fugiat vitae fugit distinctio dolores ducimus et repellendus. Qui tempora saepe ipsum ab porro in.', 1, 5, '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(99, 5, 1, 'Post   2186', 'svg', 'https://via.placeholder.com/640x480.png/009922?text=est', '/direccion/asdf', 'Molestias et velit id. Perspiciatis laboriosam tempore sit soluta nihil et cupiditate. Pariatur qui pariatur cumque iste doloremque ratione nesciunt.', 1, 1, '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(100, 3, 6, 'Post   6245', 'rgb', 'https://via.placeholder.com/640x480.png/0000cc?text=similique', '/direccion/asdf', 'Minima veritatis sed dolores omnis error ab voluptatem. Omnis sit eum non officia commodi. Nam eligendi harum rem unde id molestiae. Autem et esse ipsum ut tempora sit veritatis.', 1, 9, '2022-02-14 02:10:55', '2022-02-14 02:10:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('dTkGICDS1tYZNQq293NXgk359VMx2w9DyujnlZvS', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSGNqaDBuTmV2cWVHeFFVUWl4RlVoanNoNGpqVXJ4aVVRQ3FFOWpFbiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6MzoidXJsIjthOjE6e3M6ODoiaW50ZW5kZWQiO3M6MzE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kYXNoYm9hcmQiO319', 1644795458),
('lsKEd4NP0GxB9Onl3nlB7I6AXEaJxDeGtpW5JWuc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ2pCSlRvWGt0eEZmemtBbHczSFhEQllnNXFUYllOY2phV0s1T0p4aCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9sb2dpbiI7fX0=', 1644791804);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_team` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `teams`
--

INSERT INTO `teams` (`id`, `user_id`, `name`, `personal_team`, `created_at`, `updated_at`) VALUES
(1, 11, 'ALEJANDRO\'s Team', 1, '2022-02-13 23:41:33', '2022-02-13 23:41:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `team_user`
--

CREATE TABLE `team_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Ángeles Villegas', 'xarana@example.org', '2022-02-13 23:35:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'MkCqgqvPGJ', NULL, NULL, 1, '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(2, 'Aitor Vázquez', 'ortiz.candela@example.net', '2022-02-13 23:35:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'dlWqkOufae', NULL, NULL, 1, '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(3, 'Sr. Pol Vanegas', 'tamez.josefa@example.com', '2022-02-13 23:35:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'JrYVVSLHo9', NULL, NULL, 1, '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(4, 'D. Luis Arredondo Segundo', 'alexia40@example.org', '2022-02-13 23:35:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'bMNOR1b903', NULL, NULL, 1, '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(5, 'Silvia Álvarez Hijo', 'mar.sauceda@example.org', '2022-02-13 23:35:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'LeH1fPkNnF', NULL, NULL, 1, '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(6, 'Aitana Giménez Hijo', 'nerea56@example.com', '2022-02-13 23:35:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'BYdsxcCDX1', NULL, NULL, 1, '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(7, 'Marc Covarrubias', 'emilia.sola@example.com', '2022-02-13 23:35:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'z3vJdWaf6c', NULL, NULL, 1, '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(8, 'Oliver Canales', 'raquel.sancho@example.org', '2022-02-13 23:35:57', 'l?<(?h?u8?R*ݮL?Ć?igāO?S?E?s?', NULL, NULL, 'bigM5oPcmw', NULL, NULL, 1, '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(9, 'Lic. Yeray Alcántar', 'ona.batista@example.net', '2022-02-13 23:35:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'LLIy3HBJQJ', NULL, NULL, 1, '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(10, 'Lic. Mateo Baca Hijo', 'marco.salgado@example.net', '2022-02-13 23:35:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'xT2AdVrFuZ', NULL, NULL, 1, '2022-02-13 23:35:57', '2022-02-13 23:35:57'),
(11, 'ALEJANDRO', 'oroscoalejandro@gmail.com', NULL, '$2y$10$k4Lop9bURq/edtDT6WK/qOH323xT6KU6dg1bdJvPDnZiyPquv/1fu', NULL, NULL, NULL, '1', NULL, 1, '2022-02-13 23:41:33', '2022-02-13 23:41:34'),
(12, 'Carlos Blázquez', 'nadia77@example.net', '2022-02-14 02:10:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'Rc0TRuvcL6', NULL, NULL, 1, '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(13, 'Ing. Marco Nevárez Segundo', 'naiara.vega@example.net', '2022-02-14 02:10:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'C8G9hteb7p', NULL, NULL, 1, '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(14, 'Valeria Requena', 'juanjose.espinosa@example.org', '2022-02-14 02:10:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'vYSnzbgEbb', NULL, NULL, 1, '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(15, 'Lic. Pilar Santos Segundo', 'nayara.ybarra@example.net', '2022-02-14 02:10:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'qThKymqCSQ', NULL, NULL, 1, '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(16, 'Nil Villalobos', 'izan52@example.net', '2022-02-14 02:10:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'HuCvenJsZN', NULL, NULL, 1, '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(17, 'Omar Tovar', 'fernando57@example.org', '2022-02-14 02:10:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '39BRVsOWf4', NULL, NULL, 1, '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(18, 'Diego Benavides', 'guillermo.holguin@example.net', '2022-02-14 02:10:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'SCOtB04sKf', NULL, NULL, 1, '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(19, 'Valeria Mares', 'gabriela.ocampo@example.org', '2022-02-14 02:10:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'Shshl6M79L', NULL, NULL, 1, '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(20, 'Asier Roca Hijo', 'verdugo.daniela@example.net', '2022-02-14 02:10:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'Bb0DUlrcwx', NULL, NULL, 1, '2022-02-14 02:10:55', '2022-02-14 02:10:55'),
(21, 'Ing. Marcos Quintana Hijo', 'erik96@example.net', '2022-02-14 02:10:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'UWL2XQ8fM7', NULL, NULL, 1, '2022-02-14 02:10:55', '2022-02-14 02:10:55');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_category_id_foreign` (`category_id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `inscriptions`
--
ALTER TABLE `inscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inscriptions_user_id_foreign` (`user_id`),
  ADD KEY `inscriptions_course_id_foreign` (`course_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_course_id_foreign` (`course_id`),
  ADD KEY `posts_group_id_foreign` (`group_id`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teams_user_id_index` (`user_id`);

--
-- Indices de la tabla `team_user`
--
ALTER TABLE `team_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_user_team_id_user_id_unique` (`team_id`,`user_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `groups`
--
ALTER TABLE `groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `inscriptions`
--
ALTER TABLE `inscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `team_user`
--
ALTER TABLE `team_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `inscriptions`
--
ALTER TABLE `inscriptions`
  ADD CONSTRAINT `inscriptions_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `inscriptions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `posts_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
