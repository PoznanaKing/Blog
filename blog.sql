-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Okt 21. 09:13
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
-- Adatbázis: `blog`
--
CREATE DATABASE IF NOT EXISTS `blog` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `blog`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `bloggers`
--

CREATE TABLE `bloggers` (
  `Id` char(36) NOT NULL,
  `Name` longtext NOT NULL,
  `Sex` longtext NOT NULL,
  `Status` longtext NOT NULL,
  `RegistrationTime` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `bloggers`
--

INSERT INTO `bloggers` (`Id`, `Name`, `Sex`, `Status`, `RegistrationTime`) VALUES
('01f629ef-f259-4ae4-927c-5e49c1472bc5', 'Riannon Caddies', 'Female', 'dictumst maecenas ut massa quis augue luctus', '2024-01-16 11:41:43.000000'),
('05206c88-cbce-4042-98ff-0b99d4106124', 'Wolf Gallon', 'Male', 'consequat dui nec nisi volutpat eleifend', '2024-04-25 21:50:19.000000'),
('064c80a3-d99f-45dd-972c-89d895880261', 'Alvira Crowne', 'Female', 'nullam molestie nibh in lectus', '2024-09-08 02:57:48.000000'),
('0c86e826-5fb8-4968-a075-94b4bc291e31', 'Muffin Givens', 'Male', 'aliquam quis turpis eget elit', '2024-09-20 01:23:12.000000'),
('0e27cb72-7804-44f3-9d7c-99b55af8ca3d', 'Sawyer Stiller', 'Male', 'sed justo pellentesque viverra pede', '2024-02-15 18:41:59.000000'),
('10e3dc90-8dc3-4fc8-9302-df3a5d65ed7b', 'Marylou Thomasson', 'Female', 'accumsan tellus nisi eu orci', '2024-09-02 07:21:38.000000'),
('115a9a75-6ce8-4748-bd88-097e650f5ea2', 'Kit Perford', 'Male', 'pellentesque volutpat dui maecenas tristique est', '2024-02-26 15:30:43.000000'),
('138f3e24-5683-4417-b27c-292629957cdf', 'Meryl Knott', 'Male', 'odio elementum eu interdum eu', '2024-02-03 17:55:58.000000'),
('143d2908-d1e9-4982-873f-e42d09799718', 'Ryon Sumnall', 'Male', 'maecenas tincidunt lacus at velit vivamus', '2024-04-15 19:10:09.000000'),
('15c7b66c-e106-42ef-81a0-591e2713b929', 'Hermina Lowless', 'Female', 'nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh', '2023-10-23 19:45:28.000000'),
('1623ef3c-6456-47e2-9440-58014c496039', 'Rad Catherall', 'Male', 'orci luctus et ultrices posuere cubilia curae donec pharetra', '2024-02-12 22:57:57.000000'),
('1b23aa9d-0b9a-4f0d-b6d8-fe3ae5d7649a', 'Jammal Raybould', 'Male', 'amet nulla quisque arcu libero rutrum ac lobortis vel', '2024-04-21 15:47:46.000000'),
('1b55355e-070f-4cb5-b4f2-431d2cba100f', 'Alasteir Mifflin', 'Male', 'in quis justo maecenas rhoncus aliquam lacus', '2024-03-15 22:16:30.000000'),
('1e8ddc01-3047-4d8f-9187-1e64ce9b242b', 'Alfonse Amey', 'Male', 'montes nascetur ridiculus mus etiam vel', '2024-04-23 07:13:34.000000'),
('22b9efb2-ec4a-4f6b-830c-582b2d7d8660', 'Shellysheldon Dzenisenka', 'Male', 'eleifend quam a odio in hac habitasse', '2024-04-16 23:15:12.000000'),
('2bf0605d-4c40-4e5d-89e1-33e5f5a37f41', 'Chev Skynner', 'Male', 'quam suspendisse potenti nullam porttitor lacus at turpis donec', '2024-06-16 09:36:53.000000'),
('2ca0e8f3-9237-4b4d-a98a-93653f6a9517', 'Allix Armal', 'Female', 'in tempor turpis nec euismod', '2024-05-27 06:48:24.000000'),
('2d7700fc-919f-481e-a808-d7f606b380e4', 'Noak Fessler', 'Male', 'adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam', '2023-11-18 05:42:19.000000'),
('2d9fa634-ad01-4901-8df1-1a8c6331812f', 'Dallis Knath', 'Male', 'purus eu magna vulputate luctus cum sociis natoque penatibus', '2024-01-09 09:08:14.000000'),
('31c59ba7-a5ce-4404-a7e4-7dfcde263fbe', 'Matthaeus Querree', 'Genderfluid', 'convallis nulla neque libero convallis eget eleifend luctus', '2023-12-24 22:15:35.000000'),
('329072a3-ae88-4dec-b81e-eae8c7b95538', 'Katharyn Vakhonin', 'Female', 'vestibulum quam sapien varius ut blandit non interdum', '2023-11-08 21:52:07.000000'),
('4da54aa1-fdd6-44ab-9bc4-ceeb568fde14', 'Shelagh Muzzi', 'Female', 'praesent lectus vestibulum quam sapien varius ut blandit', '2024-09-10 02:25:25.000000'),
('4f179cfb-c878-4717-9707-a2ca5b52263d', 'Hussein Stallen', 'Male', 'duis bibendum felis sed interdum venenatis turpis', '2024-06-09 12:33:59.000000'),
('51a7fb64-e197-4f81-ab45-4d86f15f163c', 'Stirling Hansill', 'Male', 'sodales sed tincidunt eu felis fusce posuere felis sed', '2023-12-21 06:54:08.000000'),
('51be8ea3-d8f2-4f29-bfd6-b52207441ac4', 'Lucian Caspell', 'Male', 'odio condimentum id luctus nec molestie sed justo', '2024-03-22 03:52:26.000000'),
('5318d665-7a2f-4a22-bf75-78e056d0eb52', 'Reynold Gowen', 'Male', 'lectus in est risus auctor sed tristique in tempus sit', '2023-11-26 05:34:26.000000'),
('5320ace8-476a-4802-9bf5-69444987b483', 'Elinor Monday', 'Female', 'parturient montes nascetur ridiculus mus vivamus', '2024-07-18 00:44:44.000000'),
('538d3e19-23a0-4a82-88d4-27d6cde81324', 'Kent Issitt', 'Male', 'vestibulum aliquet ultrices erat tortor sollicitudin', '2023-11-19 19:09:44.000000'),
('56eaf687-a3f2-4436-b108-9ddcb01503ae', 'Neysa Bartomeu', 'Female', 'ut mauris eget massa tempor convallis nulla neque libero convallis', '2024-05-19 06:30:43.000000'),
('58287a8c-ae8a-4ee4-8ad7-0cbea174e6dc', 'Shep Sheekey', 'Male', 'lacus curabitur at ipsum ac tellus', '2023-11-10 01:42:55.000000'),
('59017130-2283-4067-8d8f-682e01d86b2f', 'Holly-anne Hatliffe', 'Female', 'gravida sem praesent id massa id nisl venenatis lacinia aenean', '2023-11-19 00:11:37.000000'),
('5bf2880c-340e-438d-a369-267274f82216', 'Gaylor Moline', 'Male', 'vestibulum quam sapien varius ut blandit non interdum in', '2024-02-28 18:52:12.000000'),
('5e885878-b188-42b5-bbc8-6141089c2162', 'Othello Beecham', 'Male', 'adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus', '2024-07-16 10:04:16.000000'),
('5f4a951b-587b-4619-a6d2-9c0943679c5b', 'Carmita Renshaw', 'Female', 'luctus rutrum nulla tellus in', '2024-09-15 15:41:18.000000'),
('60234cae-f712-424c-9baa-165833cc64f0', 'Karyl Allin', 'Female', 'penatibus et magnis dis parturient montes', '2024-01-17 05:47:51.000000'),
('60e709ad-e5c6-4cff-b23b-6f82d099647d', 'Parke Oakshott', 'Male', 'curae duis faucibus accumsan odio curabitur convallis duis', '2024-02-15 06:03:40.000000'),
('6102ca54-985d-413d-a404-909002c43728', 'Page Goudard', 'Male', 'nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque', '2024-06-14 09:53:53.000000'),
('61040fef-171d-42da-ba63-e5eff92d99d2', 'Arturo Margerison', 'Male', 'convallis tortor risus dapibus augue vel', '2024-02-02 02:53:48.000000'),
('6175b4a6-9a93-4420-9069-64fe228e0766', 'Darryl MacGilmartin', 'Male', 'neque libero convallis eget eleifend luctus ultricies eu nibh quisque', '2023-11-23 05:22:40.000000'),
('63e8f800-a0cf-479b-a3ad-e709bedf24f6', 'Ned Galpin', 'Male', 'hac habitasse platea dictumst maecenas ut massa', '2024-09-30 21:24:20.000000'),
('64f6833b-5d57-4a57-bf3e-f34108721746', 'Audra Tute', 'Female', 'luctus et ultrices posuere cubilia curae nulla', '2024-02-16 06:06:40.000000'),
('65326482-20b4-4f3e-a9e8-1d1be2be1f0c', 'Joela Cuttings', 'Female', 'potenti in eleifend quam a odio in', '2024-04-21 01:41:27.000000'),
('6e177c1e-e902-485e-a10f-1484051147f7', 'Sandye Hamshar', 'Female', 'habitasse platea dictumst etiam faucibus cursus urna', '2024-07-24 21:18:04.000000'),
('6e3d84a1-41f6-4fad-81d5-0f016243a4fa', 'Fulton Baugham', 'Male', 'in eleifend quam a odio', '2024-01-25 10:48:01.000000'),
('720efb60-5805-4c14-a03b-f579e13c864a', 'Waylin Moger', 'Non-binary', 'nam congue risus semper porta', '2024-02-18 21:07:04.000000'),
('7564455c-2fbf-4968-8c89-54f567dfe262', 'Alessandro Worthy', 'Male', 'maecenas tristique est et tempus semper est quam', '2024-04-10 17:33:18.000000'),
('75d90d45-dfdf-44c7-b862-9af2bf0fa37e', 'Chancey Macauley', 'Male', 'lorem ipsum dolor sit amet consectetuer', '2024-02-21 23:48:57.000000'),
('75df00fa-3e76-44f0-83d8-76cb6f79f5b1', 'Rhodie Pepineaux', 'Female', 'praesent blandit lacinia erat vestibulum sed magna at nunc commodo', '2024-08-22 16:38:59.000000'),
('767b4d55-1c81-40df-83ef-64b3cf545c5d', 'Lorianne Gabe', 'Female', 'proin at turpis a pede posuere nonummy integer', '2024-07-09 13:55:24.000000'),
('7c05fc3f-4538-49bd-8111-c9e1537a4c47', 'Marje Terese', 'Female', 'mauris non ligula pellentesque ultrices phasellus id sapien', '2024-06-12 01:15:14.000000'),
('7c2fa20f-fff0-43c5-9893-234e149f6d64', 'Graeme Mabbutt', 'Male', 'nam congue risus semper porta volutpat', '2024-01-20 00:35:53.000000'),
('7db1e2b7-fc73-4482-b53d-fcfe707cbe0d', 'Halimeda Giercke', 'Female', 'non quam nec dui luctus rutrum', '2024-10-17 03:02:02.000000'),
('7ea6c011-ce63-4275-b9a7-795fcdd8eadd', 'Anne-marie Ivanshintsev', 'Female', 'praesent blandit lacinia erat vestibulum sed magna at nunc', '2023-12-07 09:05:41.000000'),
('7efaef72-831d-4d55-be58-a4902c92c33a', 'Gilli Frowde', 'Female', 'congue etiam justo etiam pretium', '2023-11-18 21:50:58.000000'),
('7fc49022-8561-4821-8b66-f3fc995d1132', 'Denni Trenbey', 'Female', 'bibendum felis sed interdum venenatis turpis enim blandit', '2024-07-21 22:27:10.000000'),
('830494dd-baa6-45c4-a844-227a94fd6d1b', 'Erik Terrelly', 'Male', 'sit amet diam in magna bibendum', '2024-08-15 16:08:48.000000'),
('837ce0ba-0492-4dbc-8d09-d254580963cf', 'Hana Wyon', 'Female', 'imperdiet nullam orci pede venenatis non sodales sed tincidunt', '2024-01-05 09:54:16.000000'),
('87195b1d-ed87-4950-a285-4511625f08d5', 'Patrica Stapylton', 'Female', 'sed tristique in tempus sit', '2023-12-22 07:42:08.000000'),
('889aa41b-90d8-463a-b1bb-2eb2ca0826c7', 'Dottie Syphus', 'Female', 'ornare consequat lectus in est risus auctor sed tristique in', '2024-02-19 02:46:24.000000'),
('891c0153-efa3-4f99-997c-190792d65166', 'Leeland Gueste', 'Male', 'nulla sed vel enim sit amet', '2024-08-22 18:26:55.000000'),
('93aea91b-0252-492a-8280-06c519dba51d', 'Shalom Bosence', 'Male', 'ante vivamus tortor duis mattis', '2024-08-16 00:05:01.000000'),
('9607a621-c58d-424f-82d8-7d5b5b7803a6', 'Gun Radish', 'Male', 'pede ullamcorper augue a suscipit nulla elit ac', '2024-04-19 01:40:18.000000'),
('9c88c5f1-e980-4a44-ad0c-2df76d0edbc0', 'Garnet Glasgow', 'Female', 'posuere cubilia curae donec pharetra magna vestibulum', '2024-01-12 02:27:41.000000'),
('9ea08378-8ba1-467f-b84b-a74affb6ec70', 'Deina McKelvie', 'Female', 'donec quis orci eget orci vehicula', '2024-05-30 17:32:49.000000'),
('a1ea5708-63ed-478e-ac5d-72a0d581b1ba', 'Prudence Biaggioli', 'Female', 'ultrices libero non mattis pulvinar nulla pede ullamcorper augue', '2024-07-23 20:42:36.000000'),
('a61b49b0-991d-4d69-9f25-ffc963b24b38', 'Swen Crowne', 'Genderfluid', 'donec odio justo sollicitudin ut suscipit a feugiat', '2023-11-27 19:20:32.000000'),
('a7ae81da-c221-4cdd-94d2-9ce25a3aef66', 'Guenna Kenworth', 'Female', 'rutrum ac lobortis vel dapibus at', '2024-01-18 10:35:00.000000'),
('a7b74f25-1dd7-4671-a61d-0fa2fb161970', 'Caitlin Maddra', 'Female', 'platea dictumst maecenas ut massa quis augue luctus', '2024-08-28 14:23:18.000000'),
('a8d24dee-acc4-4dd5-b032-29191829f26d', 'Giffard Blitz', 'Male', 'sem sed sagittis nam congue', '2024-09-13 13:36:10.000000'),
('a913e89a-8a4f-4a09-af12-228483616bc9', 'Randa Grishechkin', 'Female', 'pede ac diam cras pellentesque volutpat dui', '2024-01-14 10:30:55.000000'),
('aa5024b5-f155-4e93-8c19-cd335d0e74c4', 'Wallie Falcus', 'Bigender', 'est lacinia nisi venenatis tristique fusce congue diam id', '2024-02-12 17:38:22.000000'),
('aa721778-950b-401d-8ce3-5e17032fbca1', 'Ros McLagan', 'Female', 'habitasse platea dictumst aliquam augue quam sollicitudin', '2024-08-01 02:31:55.000000'),
('b23adf9c-c68d-4161-bec5-f5db38f7b7d3', 'Ely Rigardeau', 'Male', 'sollicitudin ut suscipit a feugiat et eros vestibulum ac est', '2024-08-06 14:54:42.000000'),
('b2d91c37-4805-4d02-a86b-3ed93f7cfc80', 'Oriana Maryott', 'Female', 'id mauris vulputate elementum nullam', '2023-12-30 06:12:59.000000'),
('b6844819-4ac8-43bd-8c2e-c941fde7138b', 'Chan Brookzie', 'Male', 'eleifend luctus ultricies eu nibh quisque id justo', '2024-05-24 21:12:27.000000'),
('b7298499-e840-4b9a-a474-452b5d52e68d', 'Issiah Joll', 'Male', 'leo odio condimentum id luctus nec', '2024-06-16 22:16:05.000000'),
('b72f92be-a378-418b-9ce7-ac9586c61ab7', 'Trip Leggott', 'Male', 'quam nec dui luctus rutrum nulla tellus', '2024-10-19 09:36:48.000000'),
('b7640a65-f9bc-4bea-936f-7d9970195f80', 'Suki Rittmeier', 'Female', 'tellus nulla ut erat id mauris vulputate elementum', '2024-09-21 00:45:36.000000'),
('ba21ab2b-bcc4-4194-8573-f9c158891a3c', 'Debee Collyear', 'Female', 'nisl duis bibendum felis sed interdum venenatis turpis enim', '2024-03-03 14:14:28.000000'),
('bd1adc7f-43bb-4ec0-8498-48f6d70f8b1d', 'Ara Grossman', 'Male', 'nisi volutpat eleifend donec ut dolor morbi vel lectus in', '2024-05-28 19:05:47.000000'),
('bea104dd-6463-4bb9-886b-06d6280cc30d', 'Chris Chatteris', 'Female', 'erat curabitur gravida nisi at nibh', '2024-09-14 09:37:56.000000'),
('c78ec40e-5413-4b47-bde1-b11ae4b4846d', 'Terese Klimpt', 'Female', 'aliquam augue quam sollicitudin vitae consectetuer eget rutrum', '2024-09-28 19:44:47.000000'),
('cd1f6690-183c-4eec-a96b-08008a7a1226', 'Ettore Schoenleiter', 'Male', 'lacinia sapien quis libero nullam sit', '2024-01-17 03:06:13.000000'),
('d0b2866c-47fd-4451-8284-03e938c3255c', 'Kylen Blevin', 'Female', 'nonummy maecenas tincidunt lacus at velit vivamus vel nulla', '2024-01-20 09:00:06.000000'),
('d21a0d9e-f1c4-4a13-ae89-864b4fc40bee', 'Odelle Sparham', 'Female', 'ligula suspendisse ornare consequat lectus', '2023-11-03 23:28:39.000000'),
('d50ac148-52b2-44eb-bd27-a8f360ec2fc4', 'Sheffield Wheowall', 'Male', 'posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat', '2024-08-01 19:15:37.000000'),
('d51c5e88-6f80-4d46-b8fa-a9f7111fcd40', 'Diena Greenway', 'Female', 'volutpat erat quisque erat eros', '2024-04-13 06:41:24.000000'),
('d5887639-a364-4421-8f78-444a048bbb29', 'Tracey Breffitt', 'Female', 'morbi quis tortor id nulla ultrices aliquet', '2024-07-21 21:25:58.000000'),
('d769b7f5-741c-48ad-b929-e96f18f0f682', 'Nobie Bick', 'Male', 'eleifend quam a odio in hac habitasse platea', '2024-02-05 06:51:57.000000'),
('d9b8dd21-72da-4fce-8dba-2737281d8b59', 'Anthea Freckelton', 'Female', 'at feugiat non pretium quis lectus suspendisse potenti', '2024-07-26 23:45:01.000000'),
('db1d6f1d-14fa-45e4-8372-bcb9b6c60d2b', 'Merl Moresby', 'Female', 'etiam vel augue vestibulum rutrum rutrum neque aenean', '2024-01-03 04:03:01.000000'),
('db4b3970-2c9c-44f6-b140-22713a49dc6a', 'Rudyard Izaac', 'Male', 'in tempus sit amet sem fusce consequat', '2024-03-20 15:52:25.000000'),
('dc0b560d-f959-40b9-9494-28088e05c3c4', 'Herschel Possek', 'Male', 'at vulputate vitae nisl aenean', '2024-04-19 21:15:55.000000'),
('e227c92d-4113-4195-a8a9-e34d65de63d0', 'Hephzibah Wehner', 'Female', 'ligula sit amet eleifend pede libero quis orci nullam', '2024-05-30 18:39:41.000000'),
('e50092f4-c344-4dc2-9a62-8c956de56545', 'Celestina Suttell', 'Female', 'morbi non lectus aliquam sit amet diam in', '2024-10-16 18:09:09.000000'),
('e83a5520-62b1-474c-b1c6-6572a0cd43b1', 'Ernst Fever', 'Male', 'nisl venenatis lacinia aenean sit amet justo morbi ut', '2024-08-26 08:16:52.000000'),
('eebd63c3-386a-491f-af4e-dc18e53211b6', 'Mendie Connichie', 'Male', 'phasellus sit amet erat nulla tempus vivamus in', '2024-07-19 06:49:20.000000'),
('f332ccd0-9e95-451d-bc54-c06533be1133', 'Hayyim Gallamore', 'Male', 'felis fusce posuere felis sed lacus', '2024-01-29 00:39:20.000000'),
('fe693bc9-4533-4059-bb5c-76facb33faa5', 'Dame Mufford', 'Polygender', 'vestibulum ac est lacinia nisi venenatis tristique fusce congue', '2024-01-27 08:23:46.000000'),
('ff26e76c-9f5f-46ea-91a6-b53dc90221b6', 'Nolana Asch', 'Female', 'sapien sapien non mi integer ac neque duis bibendum morbi', '2024-04-20 12:58:31.000000');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `__efmigrationshistory`
--

CREATE TABLE `__efmigrationshistory` (
  `MigrationId` varchar(150) NOT NULL,
  `ProductVersion` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `__efmigrationshistory`
--

INSERT INTO `__efmigrationshistory` (`MigrationId`, `ProductVersion`) VALUES
('20241021064059_CreateBlogDb', '8.0.10');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `bloggers`
--
ALTER TABLE `bloggers`
  ADD PRIMARY KEY (`Id`);

--
-- A tábla indexei `__efmigrationshistory`
--
ALTER TABLE `__efmigrationshistory`
  ADD PRIMARY KEY (`MigrationId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
