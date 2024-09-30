-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Sze 30. 08:59
-- Kiszolgáló verziója: 10.4.20-MariaDB
-- PHP verzió: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `shop`
--
CREATE DATABASE IF NOT EXISTS `shop` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci;
USE `shop`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `products`
--

CREATE TABLE `products` (
  `id` varchar(50) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `price` text COLLATE utf8mb4_hungarian_ci NOT NULL,
  `CreatedTime` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `CreatedTime`) VALUES
('02c9c187-47c2-4188-9ba3-228812a76797', 'Sauce - Soya, Light', '$7340.88', '2023-08-22'),
('06780bf9-9725-4f59-ab8c-f0528213d301', 'Cumin - Whole', '$7079.49', '2024-07-27'),
('08284142-fdc8-4a3d-8e61-ec7d2e2f1d94', 'Wine - White, Schroder And Schyl', '$4372.94', '2024-08-03'),
('08f15b76-c444-4bcf-8195-03064011fb78', 'Lamb Rack - Ontario', '$1201.54', '2023-05-21'),
('0be7383d-eee4-4035-8994-b4bbf4016015', 'Crab - Meat', '$3045.32', '2024-04-23'),
('0d51b525-f40e-4037-9701-3ad2c402c8eb', 'Sour Puss - Tangerine', '$2591.30', '2024-02-04'),
('0d9e5b9a-2db1-480d-8af1-9a2a9143f1be', 'Soup - Campbells Chicken', '$3465.97', '2024-07-09'),
('0f709352-f131-436a-9eee-b60e3d93644e', 'Beef - Roasted, Cooked', '$4001.97', '2022-11-04'),
('12d3a090-2e5e-43ef-9a06-24629c54984f', 'Trout - Smoked', '$6091.03', '2023-04-29'),
('15d3cb10-eb3d-453c-967f-d5bb21fa29ba', 'Anchovy Paste - 56 G Tube', '$8105.25', '2024-08-22'),
('16b9d0c0-fa32-495d-9e41-ed4eedbc936a', 'Squash - Guords', '$5047.86', '2024-07-01'),
('1705567f-e4f9-4958-8ca5-48309e017bde', 'Flower - Carnations', '$9254.91', '2023-07-28'),
('18c2c0d4-370e-4805-839a-4ed1a0dcd404', 'Pomegranates', '$3837.47', '2024-07-21'),
('1f74429f-563b-4218-aa57-978470a2b9a1', 'Radish - Black, Winter, Organic', '$8041.70', '2022-12-01'),
('21cc3944-d002-4bcd-89b8-48d51eb2e377', 'Goat - Whole Cut', '$4059.54', '2024-09-08'),
('234950e8-5936-4c23-802d-94380060e685', 'Mousse - Banana Chocolate', '$2379.69', '2024-01-14'),
('23e6a5f3-76ed-41b9-8abb-079dab0e97d1', 'Bread - Petit Baguette', '$9361.76', '2023-03-05'),
('2449bc03-d0db-4afc-8712-5364c234b0d3', 'Chicken - Base, Ultimate', '$898.11', '2023-11-30'),
('2483065f-4a07-497e-81c5-83bce5ef3de1', 'Yeast Dry - Fermipan', '$2153.61', '2023-01-19'),
('26bc01b8-a83a-406c-84a5-9a0bb4bea378', 'Vodka - Smirnoff', '$2189.83', '2024-02-20'),
('2b27b417-1fee-45c0-b291-862d0416dd15', 'Apricots Fresh', '$3477.84', '2024-03-20'),
('2c6227c2-4f70-4ea5-958e-aa9c635914f2', 'Flour Pastry Super Fine', '$9533.00', '2023-11-11'),
('2e833634-5e59-4272-a7e0-0dbaff9d0123', 'Wine - White, Lindemans Bin 95', '$5990.42', '2023-04-23'),
('2f24f702-44aa-4357-add1-916aef19f120', 'Wine - Sicilia Igt Nero Avola', '$2596.99', '2023-02-27'),
('31942fee-712a-4b6e-869c-8c18722521ad', 'Tomatoes - Yellow Hot House', '$1847.83', '2024-02-13'),
('3becbf53-a3a0-47a0-9f59-181c0007c7af', 'Flour - Strong', '$4146.57', '2022-09-28'),
('3c52e2d5-b311-4bfd-b128-a96d5da5b93d', 'Ocean Spray - Kiwi Strawberry', '$2701.83', '2023-09-07'),
('3e64d4db-12f2-42dd-ae5a-35f12339bf42', 'Skirt - 24 Foot', '$6005.33', '2024-01-04'),
('41efd0fd-3772-4da2-bba4-867228ebd067', 'Mustard - Seed', '$6748.33', '2023-04-17'),
('47b65c7d-a82a-4920-80c1-5fac9427700f', 'Pasta - Lasagna, Dry', '$5538.77', '2023-07-06'),
('4baa9c39-6af5-4804-a06e-30421e10e72f', 'Steam Pan Full Lid', '$5953.87', '2023-03-09'),
('4eacdab1-13b0-4357-beb1-2141826fae0c', 'Beef - Roasted, Cooked', '$2889.86', '2023-11-07'),
('5480653f-11c5-4d24-8b78-e46dc53b4958', 'Mushroom - Trumpet, Dry', '$584.85', '2023-01-30'),
('5d1a9f04-62b4-4153-a602-14264c5bbb2f', 'Container Clear 8 Oz', '$9589.58', '2024-07-15'),
('60206e8c-2d3f-4317-a176-9efee6860668', 'Worcestershire Sauce', '$9827.26', '2023-04-08'),
('6213522c-f70d-4fbc-bebd-83f161865c93', 'Chicken - Diced, Cooked', '$1182.43', '2023-09-18'),
('6217e200-5de4-4325-a7f8-4c1321472d01', 'Dried Cherries', '$8463.41', '2024-09-23'),
('62d8756f-fba3-40b2-bcb2-41acca7ec67e', 'Wooden Mop Handle', '$8393.90', '2023-09-24'),
('6ad31828-2285-42b5-8e4c-546df9d8c542', 'Stock - Chicken, White', '$8899.86', '2022-12-26'),
('6b9ac9e3-256a-4e54-84c4-620850072b7d', 'Squash - Pattypan, Yellow', '$9294.23', '2023-01-19'),
('6eacf272-8159-4a71-b08d-5e6dea91cc91', 'Paper - Brown Paper Mini Cups', '$1510.25', '2024-07-22'),
('7051fd84-5a13-44f7-9fa9-f0cb905bdb17', 'Cassis', '$9056.12', '2024-02-15'),
('73229db7-6162-474f-a691-39c49f01a2a6', 'French Pastries', '$7167.45', '2023-09-20'),
('74b82f3e-0a5f-447a-b5d8-f5cbf25517f9', 'Bread - Hot Dog Buns', '$2130.70', '2024-02-12'),
('76e98661-efb6-4ee0-9d5b-debbe9829020', 'Rye Special Old', '$3599.98', '2024-06-16'),
('7a4e1a2e-405c-49ca-a50f-9817f215916c', 'Beer - Sleeman Fine Porter', '$4035.87', '2022-12-29'),
('7df88517-3294-4520-b228-07d2f3f6651f', 'Danishes - Mini Raspberry', '$6746.33', '2022-12-14'),
('7f2e5363-1c2f-44e6-954f-ef2b65f7ccae', 'Foil Wrap', '$2608.12', '2024-07-02'),
('80de1431-f759-4b2f-bc60-433064435bf9', 'Beef - Kobe Striploin', '$6109.48', '2024-01-16'),
('86638194-1286-4ed5-be72-5b6469743e38', 'Soup Campbells Turkey Veg.', '$6755.87', '2023-06-29'),
('877a84f8-f198-4def-9bf6-97662f133103', 'Oregano - Fresh', '$5394.73', '2024-07-14'),
('8d95e2bd-d585-4b66-95fc-2f22ca1cad4c', 'Clam - Cherrystone', '$5040.58', '2023-06-08'),
('8e96b4e4-7b00-4840-8bb6-8cdbaeea2344', 'Clam Nectar', '$4021.99', '2024-05-25'),
('99bbb8a6-f06e-4c96-a689-f4c5d44615f9', 'Jerusalem Artichoke', '$5998.19', '2023-10-27'),
('9a8341a1-ab6f-47b4-a7af-0903fc21105f', 'Egg - Salad Premix', '$1835.61', '2022-12-13'),
('9ac01d93-8074-42a3-8d86-36e572f09ec2', 'Cheese - Provolone', '$846.94', '2023-03-19'),
('9c16c297-2b5e-4f36-b289-65c823186a9b', 'Apron', '$9557.08', '2023-09-26'),
('9d3b50c8-1624-4abd-bb88-dd6255bc363c', 'Wine - Port Late Bottled Vintage', '$6943.59', '2024-03-18'),
('a10693a8-7824-41b2-914e-a4e48a66ce90', 'Coffee - Hazelnut Cream', '$545.42', '2023-10-01'),
('a50035b0-2718-4da8-b81c-7be52d047e92', 'Carbonated Water - Blackberry', '$1325.72', '2023-09-03'),
('a588a85e-001b-4554-b5ac-112b397d3402', 'Wine - Mas Chicet Rose, Vintage', '$3625.31', '2024-04-21'),
('a5c3fd22-a5e6-4472-9a4d-30a28a00b847', 'Cabbage - Nappa', '$1278.68', '2022-10-01'),
('a6fa70b0-c7c5-497a-838b-c9bf00ddb0b1', 'Pur Source', '$6856.21', '2023-12-16'),
('a9426509-feaf-4c85-9155-b77e3b4cbd89', 'Dooleys Toffee', '$5635.12', '2023-03-22'),
('aa5ebf1b-bf18-48b3-95d0-b5c8a5d74c8a', 'Dry Ice', '$8180.44', '2024-08-03'),
('af4a7fed-139e-45f0-b165-56be6b103321', 'Pork - Bacon, Double Smoked', '$3539.35', '2023-01-12'),
('b35ec833-e583-4005-aeb6-b49230e60ef0', 'Bread - Burger', '$4112.70', '2023-02-14'),
('b7ee713d-66b9-4597-9f35-4fa92b0289da', 'Bowl 12 Oz - Showcase 92012', '$4634.01', '2022-09-15'),
('bb12f4d6-bff6-4eae-b511-5d6958f8bd22', 'Gloves - Goldtouch Disposable', '$2279.05', '2023-07-04'),
('bcf18e1b-b4e5-44ad-af85-3f28ca607f82', 'Soup - Campbells Tomato Ravioli', '$9997.74', '2024-02-19'),
('bdcaaeef-b723-4513-a880-7b80dc08c9e8', 'Spice - Paprika', '$4373.27', '2023-08-25'),
('be71946d-3677-48ad-bdf8-9f42a742cc2a', 'Basil - Pesto Sauce', '$7199.83', '2022-12-09'),
('c0e7c45e-2c11-4337-b389-c65528e03ac2', 'Pur Source', '$8314.69', '2023-10-19'),
('c1215808-64a7-4331-944e-bb6bbfd5e84c', 'Turkey Tenderloin Frozen', '$8353.23', '2022-10-05'),
('c2172433-6fee-477b-8678-329cee7c687b', 'Rum - White, Gg White', '$5312.74', '2023-06-04'),
('c3291c69-aca7-4efc-9c46-ec60497a7a40', 'Cloves - Whole', '$3337.06', '2023-01-21'),
('c56501cb-ce52-456a-ae0b-304a8ca016b9', 'Pepper - Green, Chili', '$1428.32', '2024-09-20'),
('c692b3cc-3c9c-4051-9917-b625da6615b8', 'Bandage - Fexible 1x3', '$6433.82', '2023-01-30'),
('c8ef59bd-5874-465d-8187-52046d2ba57f', 'Wine - Champagne Brut Veuve', '$3835.27', '2023-09-23'),
('cb7115bb-7557-4794-883a-ff28f6d7551d', 'Crab Brie In Phyllo', '$1440.64', '2022-09-28'),
('cdde8cdb-a934-49c5-ba89-1a12c0511e78', 'Egg - Salad Premix', '$899.09', '2023-06-25'),
('d2555874-f962-4f98-8675-1e6ca17a98a3', 'Chocolate - Dark Callets', '$6781.00', '2023-02-18'),
('d3273e57-1fdc-4266-960e-d15e8e4f35d4', 'Soup - Beef Conomme, Dry', '$5171.08', '2023-03-17'),
('d7572ec0-6b76-4d09-9c26-b785e9beae62', 'Jam - Blackberry, 20 Ml Jar', '$5322.34', '2024-04-28'),
('d7ab09d0-74c7-455f-9b95-2d40434dd57b', 'Cake - Dulce De Leche', '$1031.45', '2023-08-19'),
('d9592e5d-0325-4a69-a68a-4c9f2a9bcccd', 'Buffalo - Striploin', '$3432.06', '2023-09-12'),
('d9eb52e9-39d9-4504-bf99-af8b41c85c2c', 'Veal - Inside Round / Top, Lean', '$7174.73', '2024-07-23'),
('da9a73b5-c91a-4e3f-bc75-8020081ffbbe', 'Skirt - 24 Foot', '$6092.04', '2022-10-21'),
('dacef17d-de42-4628-a002-1e9381c9ddcc', 'Monkfish - Fresh', '$3064.68', '2023-03-10'),
('df622e35-93a2-4a0d-83da-92ddd258d160', 'Mangoes', '$5402.25', '2024-07-28'),
('dfd8e359-443d-446c-9446-7d2b98ac2288', 'Coriander - Seed', '$1500.91', '2022-10-29'),
('e1066977-b8c1-4e89-8644-df61074f1924', 'Wine - Remy Pannier Rose', '$3622.27', '2024-04-12'),
('e21af94b-a913-4989-b7a0-914b1f5984a1', 'Dried Cherries', '$5168.25', '2022-11-24'),
('e6b704bf-6ce5-48dd-a2c6-8036dc7bae3b', 'Cookie Dough - Double', '$5936.19', '2023-10-09'),
('ef910cc4-58bb-4ab3-a81a-c04f593f2a31', 'Ecolab - Mikroklene 4/4 L', '$8618.67', '2023-03-28'),
('f5522a90-92ac-4f32-ab98-027cc7480e62', 'Croissants Thaw And Serve', '$3824.05', '2023-05-03'),
('f76dae58-e963-4526-aa51-d0b0305304e8', 'Beans - Black Bean, Canned', '$7121.20', '2022-12-28'),
('fa7ccb67-86e1-4f6d-8f73-d6becb64da20', 'Eggs - Extra Large', '$9814.59', '2023-09-21'),
('fb666189-135a-4801-a051-afe058a1e15e', 'French Kiss Vanilla', '$9342.80', '2024-01-31'),
('fd68b99f-e74b-4b22-b90a-4ae900c8c967', 'Gingerale - Schweppes, 355 Ml', '$9148.72', '2024-01-11');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
