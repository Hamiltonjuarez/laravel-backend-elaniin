-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-02-2021 a las 05:30:04
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `elaniin_db`
--

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
(10, '2014_10_12_000000_create_users_table', 1),
(11, '2014_10_12_100000_create_password_resets_table', 1),
(12, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(13, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(14, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(15, '2016_06_01_000004_create_oauth_clients_table', 1),
(16, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(17, '2019_08_19_000000_create_failed_jobs_table', 1),
(18, '2021_02_05_004809_create_products_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` double NOT NULL,
  `price` double NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `sku`, `name`, `quantity`, `price`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, '9YtvnpqBTL', 'Tenetur libero aut.', 229.0623, 351.5516, 'Officia iusto quos mollitia qui itaque. Sed placeat quia fuga qui perferendis aut doloribus. Ab illum vero praesentium eum cum eveniet.', 'https://via.placeholder.com/640x480.png/0044ee?text=quia', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(2, '96dWvAEfiW', 'Quos suscipit quam.', 976.5287, 554.3146, 'Atque vel qui sed ratione numquam. Nesciunt fugiat qui nemo quae quam. Voluptas numquam ut voluptas mollitia illo adipisci. Beatae qui perferendis quasi iusto.', 'https://via.placeholder.com/640x480.png/00bb66?text=et', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(3, 'v4pXZnq9xQ', 'Et facilis quia.', 651.6648, 590.8688, 'Est error necessitatibus nulla laudantium et laborum quis. Velit facere dolor nam iusto. Minima quasi aut accusantium voluptas perferendis exercitationem nihil.', 'https://via.placeholder.com/640x480.png/00bbbb?text=quod', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(4, 'WQp0YHpfDz', 'Recusandae et est.', 863.4377, 194.9361, 'Ullam aut tenetur error expedita sed. Quia quia natus necessitatibus ut quo quia totam. Eum voluptates non dolorem necessitatibus et dicta aut. Eos placeat voluptatem eos architecto.', 'https://via.placeholder.com/640x480.png/003300?text=enim', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(5, 'ayIufgf5wC', 'Nisi minima eveniet.', 185.9783, 962.8211, 'Corporis maiores occaecati fugit nesciunt. Voluptates voluptatum qui sed et aspernatur et. Nemo assumenda et nihil.', 'https://via.placeholder.com/640x480.png/007788?text=accusantium', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(6, 'M0crONWui7', 'Magnam rem eveniet.', 266.6275, 859.2317, 'Laborum iure eum nulla velit. Modi dolor culpa dolores voluptate deleniti. Sit non soluta ut laudantium eos est. Distinctio sed impedit vel.', 'https://via.placeholder.com/640x480.png/008811?text=non', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(7, 'Rn1BYx4cvY', 'Sequi et esse enim.', 456.8158, 504.637, 'Perferendis aliquam nihil possimus omnis. Ut omnis nisi accusantium minima non. Omnis qui optio culpa voluptas. Quos magni voluptas natus cum.', 'https://via.placeholder.com/640x480.png/000088?text=ea', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(8, 'Kt4TrtclH8', 'Dicta tenetur.', 393.6852, 614.3649, 'Illo fugit velit ab tempora omnis rem voluptatem explicabo. Voluptatum dolorem blanditiis tempora quibusdam atque.', 'https://via.placeholder.com/640x480.png/006644?text=natus', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(9, 'MNgSGOwL0q', 'Ut quod voluptate.', 985.3567, 535.5468, 'Corrupti fuga vel praesentium necessitatibus. Odit ducimus non minima. Tenetur a inventore aperiam quia. Est commodi et neque.', 'https://via.placeholder.com/640x480.png/007711?text=qui', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(10, 'cjosEMpoOI', 'Impedit adipisci.', 294.0241, 468.5858, 'Possimus enim et ullam quasi. Deserunt ducimus qui laboriosam quis eum impedit culpa.', 'https://via.placeholder.com/640x480.png/005577?text=a', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(11, 'Zvuzc9P5m2', 'Voluptate veritatis.', 556.625, 877.8642, 'Atque sed architecto ea debitis. Eum quia rerum ad officia ex corporis vitae. Nobis et quia sed accusantium magnam quas quo. Placeat labore iusto perferendis molestiae.', 'https://via.placeholder.com/640x480.png/00ff99?text=dolorem', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(12, 'Y98KM7M8yE', 'Id commodi.', 707.3758, 172.6206, 'Repellat ut consectetur qui et ullam quia ut. Velit minus aut corrupti occaecati numquam illo eaque. Voluptas cupiditate nobis id blanditiis dolores itaque sit.', 'https://via.placeholder.com/640x480.png/005588?text=qui', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(13, 'NqZrvx5aGB', 'Sapiente deserunt.', 434.9671, 502.5095, 'Corporis nihil quas qui quidem mollitia ipsum dolorum. In et libero incidunt sed officia laboriosam possimus. Distinctio consequatur et autem.', 'https://via.placeholder.com/640x480.png/00ee11?text=in', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(14, 'jZT6ANOYTb', 'Aut repellat optio.', 775.5537, 864.6092, 'Veniam iusto voluptates aut natus possimus molestias. Illo odio magnam ducimus neque ut dolorem. Est debitis repudiandae libero. Amet iure tenetur deleniti vero.', 'https://via.placeholder.com/640x480.png/009977?text=illo', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(15, 'nVyQlTCRjm', 'Doloribus quas sit.', 818.8227, 588.7364, 'Sunt cum quo architecto autem saepe et. Excepturi in laborum quo rerum. Et alias quo corrupti tenetur. Natus est harum vitae dolorem.', 'https://via.placeholder.com/640x480.png/004466?text=id', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(16, 'RF2ffzVoPM', 'Delectus qui beatae.', 766.7316, 276.0392, 'Quia sint qui ipsam consequuntur. Eos quia nesciunt non sit. Qui voluptates dolores voluptatem qui. Rerum rem officia quis aut. Rerum optio nemo maiores neque perspiciatis pariatur.', 'https://via.placeholder.com/640x480.png/0077dd?text=ut', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(17, 'GS0fJDQTPu', 'Porro omnis.', 68.4269, 78.0564, 'Id nesciunt tempora nesciunt. Laudantium aut pariatur accusamus. Vel illum autem dolores eveniet est. Dolore aut illum labore et.', 'https://via.placeholder.com/640x480.png/0044dd?text=veritatis', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(18, 'oSTaoArjuS', 'Minus non facere.', 363.6523, 59.159, 'Voluptate illo totam amet aspernatur eos debitis voluptatem voluptas. Non est rem repudiandae ut fuga quam. Doloremque omnis explicabo atque distinctio.', 'https://via.placeholder.com/640x480.png/0099ee?text=at', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(19, 'rEiEQ9tPW7', 'Dolores enim porro.', 178.1417, 298.7486, 'Sit qui repellendus quia in. Doloribus doloribus illo ex quia voluptates ea nobis. Ad et voluptatibus ut magni eius. Ipsam cum eos quibusdam vitae consequatur repudiandae.', 'https://via.placeholder.com/640x480.png/00aa22?text=aliquid', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(20, 'DgXJX5mFsd', 'Modi aliquid et.', 414.274, 339.6089, 'Quo molestiae recusandae et est est consequatur cum accusamus. Sint veritatis distinctio quos hic aut sequi.', 'https://via.placeholder.com/640x480.png/005566?text=sed', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(21, '3NFgYAlIlD', 'Accusamus rerum.', 825.2006, 684.4993, 'Ut quae voluptate asperiores saepe. Reprehenderit aliquam quae aut voluptatem sed dignissimos.', 'https://via.placeholder.com/640x480.png/004433?text=consequatur', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(22, 'sjZcbawMnf', 'Assumenda eveniet.', 432.9006, 160.784, 'Sit dolorem vero dolorem explicabo nihil eum similique perspiciatis. Quod molestiae dicta non beatae rerum. Quia repellendus asperiores delectus enim optio vel.', 'https://via.placeholder.com/640x480.png/007766?text=veritatis', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(23, 'xjYrmONGvp', 'Itaque quam aut vel.', 908.2749, 89.4098, 'Nesciunt velit unde quam sint consequatur. Qui voluptates nesciunt tempore aut maiores veritatis et dolores. Laboriosam aliquid rem sed aut aut hic et.', 'https://via.placeholder.com/640x480.png/009999?text=illo', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(24, 'BZb8fQw9Ly', 'Voluptates odio et.', 742.6797, 933.9391, 'Impedit sint ea eum in similique commodi. Eum enim minima dolorem est. Fugiat aliquam vero reprehenderit soluta fugit.', 'https://via.placeholder.com/640x480.png/00ffee?text=tempore', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(25, 'Cr0wJTCr8t', 'Reprehenderit.', 811.6729, 647.2952, 'Qui praesentium corporis corrupti ut. Quas non recusandae deleniti expedita. Similique vero fugit ipsum nihil. Qui necessitatibus nemo et architecto. Dolor autem neque enim.', 'https://via.placeholder.com/640x480.png/00ee00?text=aliquam', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(26, 'r5Wc7H212y', 'Esse odio ut nobis.', 226.6384, 878.7501, 'Esse consequatur ut provident incidunt laborum deserunt. Itaque eius soluta voluptas doloremque. Eum autem quis autem dolor molestiae. Aspernatur tenetur accusantium qui ipsa.', 'https://via.placeholder.com/640x480.png/0044bb?text=voluptatem', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(27, 'rnIKkPxQSi', 'Sunt ipsam.', 679.1929, 978.3167, 'Laboriosam eligendi sit dolore molestiae vitae possimus omnis tempore. Deserunt qui unde dolorem ipsa in. Fuga sunt delectus et reiciendis voluptatum. Soluta unde voluptatum nobis hic.', 'https://via.placeholder.com/640x480.png/001199?text=autem', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(28, 'fWb1R6tkvh', 'Expedita iste et.', 891.0348, 853.2975, 'Quaerat dolore aut voluptatem quasi necessitatibus nam. Ullam hic cum quo sint sint enim eligendi.', 'https://via.placeholder.com/640x480.png/001111?text=dolor', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(29, 'LfAAyyM7J8', 'Dolor aut est id.', 876.6381, 421.8465, 'Rem recusandae at est. Iste sunt repellat tenetur tenetur ipsa eaque. Aut omnis qui possimus esse iure iure nihil.', 'https://via.placeholder.com/640x480.png/00aa99?text=reprehenderit', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(30, 'CHFo0G74Io', 'Id et quo enim ipsa.', 592.5164, 400.4929, 'Enim autem iusto ut fugiat numquam est similique. Voluptates assumenda qui nulla non occaecati. Molestiae molestiae rerum quo id.', 'https://via.placeholder.com/640x480.png/0044cc?text=repudiandae', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(31, 'lT6wKg335K', 'Natus ipsam quis.', 328.1677, 900.1437, 'Voluptatem aliquid voluptate sit atque dolor. Et est odit id quis tempora ratione quo vero. Est dolorum quia qui labore debitis magnam molestiae. Qui quod aspernatur qui sint laboriosam.', 'https://via.placeholder.com/640x480.png/0044bb?text=quisquam', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(32, '1SY3rumKBV', 'Et beatae impedit.', 263.4513, 706.0246, 'Libero aut omnis iste quo animi voluptatibus atque. Similique minus eius laboriosam et maxime. Occaecati qui tempora consequatur pariatur.', 'https://via.placeholder.com/640x480.png/0099aa?text=quam', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(33, '1jbGTUed7c', 'Magni nesciunt.', 406.2343, 729.6009, 'Quia ipsam magni sit cum. Nisi sunt qui quis enim blanditiis quia autem. Consequatur labore ducimus fuga animi. Fuga cupiditate provident doloribus expedita porro. Placeat nisi impedit eius officia.', 'https://via.placeholder.com/640x480.png/002200?text=animi', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(34, 'wziw8PIryl', 'Rem et non quam.', 637.8959, 612.0798, 'Vitae labore mollitia alias dolore vero. Ea natus nam facilis quaerat est laborum et. Eum suscipit omnis autem laborum minima ratione. Error qui doloremque ipsa libero sed.', 'https://via.placeholder.com/640x480.png/00bb22?text=quae', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(35, '5IxR84HX80', 'Nostrum animi sed.', 540.69, 553.2363, 'Sequi voluptatem dolore recusandae ipsum et fuga sunt. Quod omnis dolorum earum ex ea dignissimos. Quo ipsa adipisci debitis quia et. Quibusdam eligendi ratione ab alias voluptatem sit.', 'https://via.placeholder.com/640x480.png/007755?text=rem', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(36, 'zVj39kHrOk', 'Fugit quibusdam.', 654.8177, 157.0649, 'Aspernatur est quo eius dolorum. Ipsam facilis sint amet autem dicta voluptatem ipsum. Corporis quis beatae eum voluptatem.', 'https://via.placeholder.com/640x480.png/00dd88?text=cupiditate', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(37, 'xCcRpHfvmh', 'Pariatur voluptate.', 931.1047, 105.0977, 'Exercitationem consequatur blanditiis velit dolorem debitis quo dolore dignissimos. Totam voluptatem ipsa omnis maxime nemo.', 'https://via.placeholder.com/640x480.png/0088aa?text=placeat', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(38, '2OxUueXMnS', 'Accusamus est omnis.', 705.0393, 742.3788, 'Quibusdam blanditiis sit esse. Minus officiis nostrum animi quas maiores est. Quos rem repudiandae ex ratione. Ipsa ea ut repellat ducimus rerum laborum.', 'https://via.placeholder.com/640x480.png/008822?text=eaque', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(39, '97NzgIvCxT', 'Tempore ipsum quia.', 455.823, 304.5393, 'Quidem id natus aut dicta. Ut natus iste molestiae minus modi aut asperiores. Ea magni quidem eaque sunt.', 'https://via.placeholder.com/640x480.png/006633?text=molestiae', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(40, 'SqbIidtRYE', 'Et error.', 32.0401, 440.4705, 'Odit iure vero tenetur ut aut. Inventore error quos cupiditate dolorum aut odit. Fuga ut ut occaecati provident quam ut aperiam.', 'https://via.placeholder.com/640x480.png/00aacc?text=animi', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(41, 'qbeaERvQH6', 'Quas debitis.', 887.0089, 280.1214, 'Assumenda dignissimos aliquam iure consequuntur ut. Molestiae et et quia temporibus id accusamus facilis.', 'https://via.placeholder.com/640x480.png/00ee22?text=officia', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(42, 'dMggdm9k71', 'Animi minus ratione.', 888.9639, 756.6993, 'Vero repudiandae molestiae debitis et. Accusantium esse ut molestiae sint. Inventore et quas ipsum saepe similique qui.', 'https://via.placeholder.com/640x480.png/004422?text=totam', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(43, 'O05rRLaMNH', 'Voluptatem sint aut.', 921.7935, 799.3266, 'Voluptatem fuga aliquid tempora sunt dolorem animi iste. Debitis dolor cumque culpa magnam dolor id explicabo quia.', 'https://via.placeholder.com/640x480.png/0055bb?text=voluptate', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(44, 'RBzHRE8xyR', 'Consequatur sit.', 168.5714, 160.3733, 'In aut voluptatum qui. Ratione ipsam sit impedit et asperiores. Et hic tenetur quae nisi quia voluptate.', 'https://via.placeholder.com/640x480.png/003344?text=molestias', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(45, 'iMibx2RvVh', 'Repellat quis.', 863.6266, 64.9326, 'Quia sed id et quasi aut rem dolores. Consectetur officia est quis eos rerum consequuntur aperiam. Voluptatem fugiat tempore voluptas labore hic.', 'https://via.placeholder.com/640x480.png/0044bb?text=ut', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(46, 'QcQO93ai2i', 'Reiciendis omnis et.', 570.7172, 586.6334, 'Aut quas magni qui sed repellat. Quod autem iure rem est qui sed soluta. Cum dignissimos dolores expedita consectetur blanditiis. In nam sed dolore qui.', 'https://via.placeholder.com/640x480.png/00ddff?text=illum', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(47, 'nWwciue2zr', 'Numquam numquam.', 775.9021, 316.8688, 'Deleniti ipsam voluptatem consequuntur molestias. Voluptatum deserunt necessitatibus porro quasi a. Et ut eius unde consequatur officia.', 'https://via.placeholder.com/640x480.png/00aaaa?text=est', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(48, 'vq6q3I5zBq', 'Tenetur dolore et.', 526.4489, 708.1162, 'Aut ea praesentium qui exercitationem enim et. Sint ea nulla voluptas aliquid. Voluptatem quia non illum esse.', 'https://via.placeholder.com/640x480.png/00ff00?text=laborum', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(49, 'joHkgSgCFO', 'Sit possimus id.', 948.3206, 61.9037, 'In architecto et et adipisci. Sit aut labore qui animi modi aliquid veniam. Repellendus consequuntur consequatur laudantium accusantium minus. Qui dignissimos voluptates qui deserunt sit neque.', 'https://via.placeholder.com/640x480.png/00ff77?text=ipsa', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(50, 'RN5OnvqFkW', 'Autem quia soluta.', 529.732, 971.9386, 'Consequatur sequi magni ex ut repudiandae et. Necessitatibus tempore quo illum labore eius iure minima. Perferendis ea natus sunt et id delectus. Magni repellendus quis aliquam magni placeat sint.', 'https://via.placeholder.com/640x480.png/00bb88?text=reiciendis', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(51, 'D8Gju4cbxj', 'Et saepe odit est.', 694.687, 596.8337, 'Aliquid architecto similique ad aut. Qui est laborum aut. Inventore illum qui nemo deserunt nostrum et praesentium. Dolor doloremque dolorem doloremque maxime voluptatum nam voluptatem.', 'https://via.placeholder.com/640x480.png/0044bb?text=labore', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(52, 'bWdYQADHL7', 'Aliquam deserunt.', 264.0848, 278.3881, 'Omnis repellat velit labore est. Perferendis non corporis voluptas reprehenderit numquam quam et expedita. Dolor mollitia qui ullam dolorem nam.', 'https://via.placeholder.com/640x480.png/00bb99?text=voluptatem', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(53, 'huU30uDqwQ', 'Minus et facilis.', 200.9825, 817.4354, 'Adipisci eaque nesciunt temporibus id. Voluptatem et fuga perferendis quia soluta. Facilis incidunt omnis ab dolores est.', 'https://via.placeholder.com/640x480.png/006644?text=nobis', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(54, 'akvHvq2uRv', 'Accusantium ea non.', 702.8855, 481.9363, 'Sunt dolor voluptatem et odio ex qui nihil. In ipsam alias blanditiis quae earum. Aperiam amet voluptatem delectus omnis. Accusamus aut veniam omnis quos sed.', 'https://via.placeholder.com/640x480.png/00cc77?text=officiis', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(55, 'cjl7rCTErk', 'Saepe ipsam.', 231.5258, 474.0515, 'Ut illo explicabo aut dignissimos nam nostrum. Omnis consequatur fugit officia reiciendis sapiente et. Mollitia qui enim consequatur minima sed error. Corporis nesciunt modi rerum nihil suscipit.', 'https://via.placeholder.com/640x480.png/000066?text=ut', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(56, 'sNnMNsqyQ1', 'Amet aut est ut.', 639.5208, 153.0124, 'Qui totam natus doloremque quia. Qui possimus facilis ad rem sint tempore. Ut dolor est ut ab eveniet aspernatur quaerat. Ut explicabo est aperiam blanditiis nihil.', 'https://via.placeholder.com/640x480.png/009933?text=in', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(57, 'eefSzWprUE', 'Id dicta ut.', 295.4023, 187.7475, 'Asperiores quidem ipsum sed ad maxime qui. Consequatur cumque illo ex est atque quia. Rem sint ipsam quod praesentium odit ratione aut.', 'https://via.placeholder.com/640x480.png/006677?text=iure', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(58, 'OD0oqOX4bg', 'Facilis repellat.', 252.7101, 462.8316, 'At voluptatem eius iusto reiciendis totam hic. Occaecati voluptate officiis maiores quae in. Est in et et natus. Magnam aut et deserunt facere.', 'https://via.placeholder.com/640x480.png/0066ee?text=natus', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(59, 's7J0gvWc1T', 'Quasi in at dolorem.', 988.8211, 862.945, 'Voluptatibus corporis non odit ea. Quo vel et sit. Explicabo facilis quos itaque vel ipsa reiciendis.', 'https://via.placeholder.com/640x480.png/00ff22?text=qui', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(60, 'ZlZ3vVVISh', 'Praesentium labore.', 503.6792, 42.3079, 'Ullam dolores harum voluptas cupiditate totam. Totam est eum et autem id ut. Aut perferendis ut distinctio dolorum ea.', 'https://via.placeholder.com/640x480.png/00ff77?text=quia', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(61, '4k9GKuLksx', 'Sit qui omnis.', 586.1637, 754.6885, 'Fuga quo dolore saepe delectus magni omnis. Unde iure distinctio ipsa laudantium. Adipisci dolore iure similique.', 'https://via.placeholder.com/640x480.png/001177?text=voluptatibus', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(62, 'X1RcBe43E4', 'Nesciunt porro.', 746.652, 194.118, 'Sunt non ipsam alias non dolorem aut. Aut sint doloremque a in. Sequi commodi consequatur nihil iure magni.', 'https://via.placeholder.com/640x480.png/003399?text=inventore', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(63, 'Uxt4e1VZwb', 'Distinctio.', 15.5352, 311.9299, 'Perferendis praesentium nesciunt enim et et. Pariatur magni sit delectus blanditiis ullam. Sed ut qui reprehenderit repellendus exercitationem qui.', 'https://via.placeholder.com/640x480.png/006633?text=eos', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(64, '2QKYDbzJgQ', 'Molestiae corporis.', 663.2838, 478.7966, 'Facilis minima maiores dolores vitae distinctio. Et ipsam aut delectus impedit dolores ut. Itaque cupiditate asperiores distinctio minima eum sint voluptas libero.', 'https://via.placeholder.com/640x480.png/00ffbb?text=quidem', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(65, 'jGH12wzusD', 'Cumque modi debitis.', 751.325, 962.865, 'Ut voluptas aut tenetur adipisci inventore eaque sunt eveniet. Nulla fugiat qui debitis dolorem a. Vel praesentium possimus debitis iure. Velit maiores quia voluptates.', 'https://via.placeholder.com/640x480.png/008866?text=qui', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(66, 'yteOFEtvga', 'Deleniti corporis.', 457.948, 185.8437, 'Aperiam est amet nesciunt et ea ut. Cupiditate aut explicabo consequatur similique molestiae. Tempora et sit temporibus ut dicta.', 'https://via.placeholder.com/640x480.png/00ff11?text=vero', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(67, '7SjXadkQnW', 'Officiis rerum.', 417.43, 939.6855, 'Incidunt dolor aperiam autem. Aperiam in et dolor aut minima maxime ex odit. Quibusdam cumque corporis atque animi. Dolor quod fugit rerum occaecati officia et.', 'https://via.placeholder.com/640x480.png/006600?text=sit', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(68, 'WgPpPq3luG', 'Voluptatem sapiente.', 321.2488, 333.8099, 'Eum perspiciatis unde ea numquam. Quidem labore facilis ratione nisi magni sit nihil. Aut accusantium aut eius.', 'https://via.placeholder.com/640x480.png/00cc22?text=ducimus', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(69, 'FiM7Zfcgos', 'Aut ut repellendus.', 921.546, 902.7893, 'Et rem eaque nemo occaecati soluta. Voluptas tempora nemo enim maiores numquam aliquid illum. Voluptas labore animi laudantium. Magni atque ullam veritatis velit.', 'https://via.placeholder.com/640x480.png/00cc99?text=iusto', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(70, 'WPYHg4YD70', 'Dolore est aliquid.', 302.537, 495.5601, 'Repellat quasi est distinctio pariatur rerum. Voluptatem eaque eveniet quo nemo fugiat odio maxime. Totam est nesciunt quia et. Autem veritatis voluptatum voluptatem totam omnis.', 'https://via.placeholder.com/640x480.png/0033dd?text=qui', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(71, 'm3Sc146Ykj', 'Cupiditate a culpa.', 136.2208, 969.7228, 'Aperiam sed animi rem aliquam ut. Explicabo quis itaque architecto dolorem. Suscipit fuga voluptates quisquam possimus voluptatum deserunt.', 'https://via.placeholder.com/640x480.png/00cc99?text=consequuntur', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(72, 'WSJU5ADtVo', 'Repellendus.', 678.3162, 974.211, 'Ut sit aut dignissimos voluptate. Eveniet sequi aut id itaque consequatur sunt. Nobis aperiam tenetur quis blanditiis consequatur cupiditate.', 'https://via.placeholder.com/640x480.png/007700?text=quae', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(73, 'RHqFCoI6YA', 'Qui necessitatibus.', 954.7195, 190.5131, 'Totam itaque quo at odit veritatis iusto quibusdam. In et laudantium fugit odio modi explicabo. In rerum vitae maxime occaecati quia.', 'https://via.placeholder.com/640x480.png/00bb44?text=ab', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(74, 'HKcNIuBi8k', 'Iusto officia fuga.', 561.0671, 797.5756, 'Sit impedit vel nulla consequatur fugit est. Sequi officiis nemo quasi sequi quibusdam ut nobis quia. Quidem modi quia aut facilis. Pariatur ratione qui saepe et atque sunt aut.', 'https://via.placeholder.com/640x480.png/002244?text=et', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(75, '6QExTLRYUt', 'Quas quis minus.', 901.2453, 591.0114, 'Velit molestiae dolorum quod dolores et eum atque. Est voluptas eum repellat maiores. Aut reprehenderit est aut dolorem.', 'https://via.placeholder.com/640x480.png/0088aa?text=rerum', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(76, 'Q2VMmnstvF', 'Expedita vel quam.', 97.8422, 32.9939, 'Ipsa dolore fuga esse. Architecto ut nisi omnis saepe fugiat. Voluptates id itaque sunt et distinctio soluta. At et vero at.', 'https://via.placeholder.com/640x480.png/00bb88?text=architecto', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(77, 'h0ZpztxvDi', 'Molestias rerum sit.', 252.3826, 245.8535, 'Laudantium modi unde dignissimos. Odio sed officia eligendi. Officia ducimus voluptas corporis impedit ratione praesentium.', 'https://via.placeholder.com/640x480.png/00bb00?text=aliquid', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(78, 'WqCFasHMJl', 'Saepe impedit.', 767.3514, 512.4211, 'Quos tempore voluptates officiis officia qui. Expedita ipsam asperiores ab facere perspiciatis et.', 'https://via.placeholder.com/640x480.png/00ddee?text=ut', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(79, 'Aw0Svb5qBu', 'Culpa reprehenderit.', 512.1369, 155.8815, 'Qui aspernatur tempore accusamus enim reprehenderit. Quibusdam deleniti facilis itaque consequatur in. Non ullam saepe minus at consequuntur aut quia. Dolorum alias ratione impedit.', 'https://via.placeholder.com/640x480.png/0077bb?text=accusantium', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(80, 'mRwMz7YlPx', 'Blanditiis delectus.', 904.8489, 44.7678, 'Unde nihil nesciunt eum quam. Pariatur velit non quod possimus. Earum quibusdam nemo qui id tempore atque. Quia ad nesciunt assumenda ut.', 'https://via.placeholder.com/640x480.png/0055ff?text=nisi', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(81, 'jJ4e0fM3sx', 'Est et dolore ut.', 598.1046, 531.9244, 'Nihil maxime aliquam quaerat pariatur tempore. Blanditiis aliquam reiciendis et qui. Aut sint harum suscipit rerum temporibus veritatis quibusdam.', 'https://via.placeholder.com/640x480.png/001133?text=repellendus', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(82, 'n0hKHtpx0V', 'Ad blanditiis.', 979.1731, 568.9897, 'Eos adipisci qui nemo in sit nisi. Natus quasi sunt unde velit. Fugiat inventore non est nobis id quas doloribus qui. Sint debitis aut hic occaecati.', 'https://via.placeholder.com/640x480.png/00ddff?text=iure', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(83, '2NmC1HnAD7', 'Aut aut qui dolores.', 3.3959, 155.9425, 'Totam quia qui natus. Esse eos voluptatem error dolor nostrum autem. Recusandae rerum eum quod sed officiis. Ipsum voluptatibus aperiam id reprehenderit qui illo id.', 'https://via.placeholder.com/640x480.png/00ffbb?text=non', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(84, 'fGrRqapIYz', 'Dicta laudantium at.', 772.507, 567.2513, 'Dicta similique voluptas nihil possimus sint accusantium voluptas. Vel eveniet odit qui occaecati. Sed commodi optio molestiae hic ratione ut quod neque. Qui ut nemo architecto nam magnam.', 'https://via.placeholder.com/640x480.png/0000ff?text=omnis', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(85, 'H5xlpiAVg7', 'Eum voluptatum sit.', 716.2338, 123.2084, 'Repellat et soluta eveniet ea. Fugiat iusto non ut illum magni. Nemo et maiores ea sit in labore laboriosam.', 'https://via.placeholder.com/640x480.png/00cc99?text=repellat', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(86, 'xMAdoxOH3h', 'Aut ut autem ut.', 256.0061, 707.2486, 'Perspiciatis qui aliquid sit. Dolorem veritatis officia libero eaque. Nostrum ipsam ea doloremque id et aliquam et. A necessitatibus nesciunt quod vitae.', 'https://via.placeholder.com/640x480.png/00ccff?text=dolor', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(87, 'Wz6vVYcw1g', 'Expedita blanditiis.', 995.727, 610.6116, 'Veritatis velit distinctio autem officia sit nihil et. Ut consequatur veritatis omnis facere. Amet totam molestias perferendis est. Qui ex dolore ratione.', 'https://via.placeholder.com/640x480.png/0077ff?text=et', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(88, 'gRjmGuHUsg', 'Suscipit quae totam.', 726.3689, 942.3338, 'Eos dolorem ipsa inventore perspiciatis velit est ut. Dolore deserunt quibusdam animi qui. Similique fugit quia ut nesciunt vel iste.', 'https://via.placeholder.com/640x480.png/006633?text=in', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(89, 'Sz3qSyBVlR', 'Rerum dolore iste.', 9.5606, 110.3119, 'Ea alias in impedit cumque laboriosam atque. Rem est et sapiente nihil est ut accusamus. Quis repellat est laboriosam voluptatem amet fuga commodi.', 'https://via.placeholder.com/640x480.png/0099aa?text=sapiente', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(90, 'RwSmI0bVQ0', 'Assumenda.', 779.3724, 682.6591, 'Reiciendis quidem ab magni impedit. Maxime impedit consequatur nam earum. Ad et temporibus eligendi amet. Quia omnis facilis laboriosam labore sunt sequi modi.', 'https://via.placeholder.com/640x480.png/007799?text=est', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(91, 'AOMJ5WBMLT', 'Exercitationem.', 804.4961, 242.334, 'Suscipit et eveniet eos. Tenetur sint blanditiis temporibus id. Tempora odit qui voluptatibus magni.', 'https://via.placeholder.com/640x480.png/008866?text=at', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(92, 'LS903Kl05d', 'Ab voluptas aperiam.', 30.676, 366.9268, 'Quis in et eaque aut aut nostrum eum. Quaerat odio id molestias voluptate. Autem est ratione nihil voluptatem fugit. Accusamus est doloribus sed animi magni deleniti omnis.', 'https://via.placeholder.com/640x480.png/0088bb?text=sed', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(93, 'wdydEJMyGE', 'In excepturi.', 406.3248, 875.6905, 'Ut odio assumenda enim. Et aut et omnis perspiciatis. Odio aperiam nostrum tempora. Quos cumque reiciendis architecto voluptatum dolorem et.', 'https://via.placeholder.com/640x480.png/00aa88?text=hic', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(94, 'InqJgUnqIu', 'Facilis quam nulla.', 886.2269, 81.3134, 'Iusto rerum et quasi suscipit neque. Officiis numquam suscipit dolor quod. Ratione aut sapiente qui itaque nihil incidunt inventore eum.', 'https://via.placeholder.com/640x480.png/00aa77?text=pariatur', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(95, 'XexB1P0Kp5', 'Illo rerum.', 129.6793, 575.7564, 'Fugiat voluptatum aliquam ut sunt aut. Et et nihil optio eius et eveniet. Aut unde eum eligendi voluptatum in asperiores. Dolorem perferendis corrupti adipisci aut in.', 'https://via.placeholder.com/640x480.png/001144?text=cumque', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(96, 'Ft1aw8QoLa', 'Et repellendus.', 953.2173, 637.6353, 'Autem est quidem inventore sit est itaque. Qui aut consequatur asperiores dolores quibusdam et maiores. Natus voluptas consectetur harum quia aperiam ipsam. Modi voluptates doloribus itaque.', 'https://via.placeholder.com/640x480.png/007755?text=ut', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(97, 'D167468aGs', 'Quia veniam ut.', 167.7206, 335.1119, 'Quibusdam aut est beatae facilis saepe. Similique pariatur voluptatibus natus culpa ipsa quam ipsam. Voluptates qui aut sunt sed nostrum reiciendis.', 'https://via.placeholder.com/640x480.png/0066ee?text=atque', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(98, 'r4lNAjaRwC', 'Exercitationem.', 33.4377, 809.1593, 'Et incidunt est mollitia veniam dolorem fugit. Officia hic voluptatem dolore aut vel. Rerum recusandae omnis facilis dolorum ducimus enim alias. Molestias repellendus ducimus consequatur nulla amet.', 'https://via.placeholder.com/640x480.png/00ccaa?text=sed', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(99, 'vDNoqGvaTf', 'Quam et sapiente et.', 104.4761, 941.6934, 'Impedit sit qui enim molestiae animi. Ab ab sed ut reiciendis quis. Aliquam fuga non tempore officia error.', 'https://via.placeholder.com/640x480.png/0088dd?text=voluptas', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(100, 'oCIpjTBonu', 'Aut distinctio.', 83.6665, 741.1451, 'Accusantium non sit eaque inventore excepturi fugit libero. Dolorem quam et aut voluptas harum dolorum eveniet. Fugiat consequatur dignissimos sed et. Reiciendis hic tempora quia aliquid at est.', 'https://via.placeholder.com/640x480.png/00eebb?text=officia', '2021-02-07 10:28:50', '2021-02-07 10:28:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth_date` date NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `username`, `birth_date`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Henriette Heaney', 42119173, 'angie.gulgowski', '1978-07-29', 'cortez.turner@example.org', '2021-02-07 10:28:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4HBozGf2PB', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(2, 'Jeanette Price', 63853870, 'judson.price', '1975-10-29', 'nleannon@example.net', '2021-02-07 10:28:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2mKyv5jCEQ', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(3, 'Christophe Baumbach', 97435896, 'qkoch', '1978-10-06', 'heath38@example.com', '2021-02-07 10:28:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'XNMBeCjUt6', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(4, 'Prof. Corbin Bode DDS', 6466512, 'xkrajcik', '1978-05-17', 'denis.bernhard@example.org', '2021-02-07 10:28:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vWAHEcUGqw', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(5, 'Colten Hackett', 18799377, 'shanny04', '2012-04-22', 'amanda98@example.org', '2021-02-07 10:28:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ndpFBaZQAm', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(6, 'Mr. Jeremy Toy Sr.', 19262895, 'tiana.terry', '1979-11-22', 'vandervort.charlotte@example.com', '2021-02-07 10:28:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'AyddW55IQG', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(7, 'Ariel Dibbert', 14935276, 'delmer78', '1996-03-12', 'jrempel@example.org', '2021-02-07 10:28:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uLbpVKPl6g', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(8, 'Lauryn Christiansen IV', 38840178, 'mark.borer', '1989-11-28', 'jakubowski.danyka@example.org', '2021-02-07 10:28:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vLWBlerfBc', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(9, 'Ms. Athena Runolfsdottir Jr.', 2360067, 'turcotte.sage', '1979-07-20', 'wabshire@example.com', '2021-02-07 10:28:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Prn5po4PyN', '2021-02-07 10:28:50', '2021-02-07 10:28:50'),
(10, 'Lazaro Erdman', 13440228, 'williamson.guillermo', '1999-02-01', 'friesen.bart@example.com', '2021-02-07 10:28:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9F4FyrGtuN', '2021-02-07 10:28:50', '2021-02-07 10:28:50');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
