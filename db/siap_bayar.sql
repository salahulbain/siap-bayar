-- Adminer 4.7.3 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `data_siswa`;
CREATE TABLE `data_siswa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nik` bigint(20) NOT NULL,
  `nok` bigint(20) NOT NULL,
  `nama_siswa` varchar(128) NOT NULL,
  `jenis_kelamin` varchar(128) NOT NULL,
  `kelas` varchar(128) NOT NULL,
  `nama_ayah` varchar(128) NOT NULL,
  `nama_ibu` varchar(128) NOT NULL,
  `alamat_ortu` varchar(258) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `data_siswa` (`id`, `nik`, `nok`, `nama_siswa`, `jenis_kelamin`, `kelas`, `nama_ayah`, `nama_ibu`, `alamat_ortu`) VALUES
(27,	1101707090890912,	1101707090890983,	'Rajali',	'Laki-laki',	'VIII-2',	'Sulaiman',	'Hanifah',	'Aceh Besar'),
(28,	1101707090890982,	1101707090890986,	'Muhammad Ali',	'Laki-laki',	'IX-2',	'Bakri',	'Fitri',	'Banda Aceh'),
(29,	1201707090890014,	1201707090890015,	'Martunis',	'Laki-laki',	'IX-1',	'Ismail',	'Fatimah',	'Aceh Besar'),
(30,	1501707090890014,	1501707090890014,	'M. Karnen',	'Laki-laki',	'VIII-2',	'Abdul Qadir',	'Nurul Hayati',	'Jl. Tgk Di Bak Ue Kec. Madat Kab. Aceh Timur'),
(31,	1101707090890016,	1101707090890016,	'Wilda',	'Perempuan',	'IX-1',	'Ahmad',	'Ayu',	'Aceh Besar');

DROP TABLE IF EXISTS `transaksi`;
CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nik_siswa` bigint(20) NOT NULL,
  `nama_siswa` varchar(128) NOT NULL,
  `kelas` varchar(128) NOT NULL,
  `nama_walikelas` varchar(128) NOT NULL,
  `jmlh_iuran` bigint(20) NOT NULL,
  `jmlh_bayar` bigint(20) NOT NULL,
  `status` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `transaksi` (`id`, `nik_siswa`, `nama_siswa`, `kelas`, `nama_walikelas`, `jmlh_iuran`, `jmlh_bayar`, `status`) VALUES
(1,	1171046010120001,	'1171056010120001',	'IX-2',	'',	500000,	500000,	'Lunas'),
(2,	1201707090890014,	'Martunis',	'IX-1',	'Ardiansyah',	500000,	50000,	'Lunas'),
(3,	1101707090890912,	'Rajali',	'VIII-2',	'Rahmad Zulhijjah, S.Pd.',	500000,	50000,	'Lunas'),
(4,	1501707090890014,	'M. Karnen',	'VIII-2',	'Ardiansyah',	500000,	400000,	'Belum Lunas');

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(7,	'Salahul Bain',	'salahul@gmail.com',	'profile_user.jpg',	'$2y$10$UKKPcRTGe9euoWPRVHd1EOG0NCvKxWuqaYU1nW6MNO5cJh8lVPhAO',	1,	1,	1571583076),
(12,	'Salahul Bain',	'salahul.bain@gmail.com',	'profile_user5.jpg',	'$2y$10$Wj.rOxGtLymtBQgQlA1ePuQX1QwfvvLYmhVn95vxWadHiH7UcIDEi',	1,	1,	1572533547),
(13,	'Admin Siap Bayar',	'siapbayaronline@gmail.com',	'profile_user6.jpg',	'$2y$10$KMF9Ag5Y3q.70fkeswYt4..rvL9vBdhGZcY376EUaVG60Cf/eK4Xq',	1,	1,	1572792711),
(14,	'Baili Suhada',	's1c.salahul1@gmail.com',	'default.jpg',	'$2y$10$OzAekxnEmTE0xABA1qenOeSAg97sC8DIgaSKKFghIRUWHkztYttvq',	1,	0,	1572801090),
(15,	'Muhammad Aulia',	'auliaalbenseh@gmail.com',	'default.jpg',	'auliaalbenseh@gmail.com',	3,	1,	1573480049),
(16,	'Ramawati',	'ramawati.smp@gmail.com',	'default.jpg',	'ramawati.smp@gmail.com',	3,	1,	1573739869),
(17,	'Miksalmina',	'miksalmina.smp@gmail.com',	'default.jpg',	'miksalmina.smp@gmail.com',	3,	1,	1573739948),
(18,	'Jamaliah',	'jamaliah.smp@gmail.com',	'default.jpg',	'jamaliah.smp@gmail.com',	3,	1,	1573739977),
(19,	'Ratna Juhari',	'ratnajuhari.smp@gmail.com',	'default.jpg',	'ratnajuhari.smp@gmail.com',	3,	1,	1573740016),
(20,	'Fazrian',	'fazryanp@gmail.com',	'default.jpg',	'$2y$10$eJvjC4rg7Y/Coi1sFN6tMe6r3ALsYgy1O.eN8ehjjusLJBYFaR8Cq',	1,	0,	1573876944);

DROP TABLE IF EXISTS `user_access_menu`;
CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1,	1,	1),
(2,	1,	2),
(3,	2,	4),
(5,	1,	4),
(6,	3,	6),
(8,	1,	3);

DROP TABLE IF EXISTS `user_menu`;
CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1,	'admin'),
(2,	'siswa'),
(3,	'walikelas'),
(4,	'user'),
(6,	'walikelas');

DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `user_role` (`id`, `role`) VALUES
(1,	'Administrator'),
(2,	'Member'),
(3,	'Walikelas');

DROP TABLE IF EXISTS `user_sub_menu`;
CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1,	1,	'Dashboard',	'admin',	'fas fa-fw fa-tachometer-alt',	1),
(2,	4,	'My Profile',	'user',	'fas fa-fw fa-user',	1),
(3,	4,	'Edit Profile',	'user/edit',	'fas fa-fw fa-user-edit',	1),
(8,	4,	'Change Password',	'user/changepassword',	'fas fa-fw fa-key',	1),
(10,	2,	'Data Siswa',	'siswa',	'fas fa-fw fa-user',	1),
(11,	2,	'Tambah Siswa',	'siswa/tambahsiswa',	'fas fa-fw fa-users',	1),
(12,	2,	'Transaksi',	'siswa/transaksi',	'fas fa-fw fa-cash-register',	1),
(14,	3,	'Wali Kelas',	'walikelas',	'fas fa-fw fa-chalkboard-teacher',	1),
(15,	6,	'Wali Kelas',	'teacher',	'fas fa-fw fa-chalkboard-teacher',	1);

DROP TABLE IF EXISTS `user_token`;
CREATE TABLE `user_token` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(128) NOT NULL,
  `token` varchar(128) NOT NULL,
  `date_created` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `user_token` (`id`, `email`, `token`, `date_created`) VALUES
(3,	'salahul.bain@gmail.com',	'1Hhk07PDKI2IztOZycD0HxetyG0mTCvYEiJW+WW2f3w=',	1572755551),
(4,	'salahul.bain@gmail.com',	'PLoRjekBgIOjF81HWfVCH1Jf02J8zE3W2nuG+5Grlw8=',	1572757912),
(5,	'salahul.bain@gmail.com',	'Lau66LGCMJbWDas6eR+qyLMggMLn5dbcB59Zabnuz9g=',	1572758051),
(7,	's1c.salahul1@gmail.com',	'ZY9K6bBNmZvuxunkHdOYiDxzxFGLOvHvdLrUIlzq2o0=',	1572801090),
(8,	'fazryanp@gmail.com',	'uWTwpdT7L+atxMOa+2ubf4DRQWyKEauyOO+YxWulYIs=',	1573876944);

DROP TABLE IF EXISTS `walikelas`;
CREATE TABLE `walikelas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `kelas_binaan` varchar(128) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(11) NOT NULL,
  `image` varchar(128) NOT NULL,
  `date_created` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `walikelas` (`id`, `name`, `email`, `kelas_binaan`, `role_id`, `is_active`, `image`, `date_created`) VALUES
(2,	'Ardiansyah',	'ardiansyah.smp@gmail.com',	'IX-1',	3,	1,	'default.jpg',	1572801090),
(3,	'Muhammad Aulia',	'auliaalbenseh@gmail.com',	'VII-2',	3,	1,	'default.jpg',	1573480049),
(4,	'Ramawati',	'ramawati.smp@gmail.com',	'IX-2',	3,	1,	'default.jpg',	1573739869),
(5,	'Miksalmina',	'miksalmina.smp@gmail.com',	'VII-1',	3,	1,	'default.jpg',	1573739948),
(6,	'Jamaliah',	'jamaliah.smp@gmail.com',	'VIII-1',	3,	1,	'default.jpg',	1573739977),
(7,	'Ratna Juhari',	'ratnajuhari.smp@gmail.com',	'VIII-2',	3,	1,	'default.jpg',	1573740016);

-- 2019-12-09 03:15:34
