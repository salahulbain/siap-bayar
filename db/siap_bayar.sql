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
  `kelas_id` int(11) NOT NULL,
  `nama_ayah` varchar(128) NOT NULL,
  `nama_ibu` varchar(128) NOT NULL,
  `alamat_ortu` varchar(258) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `data_siswa` (`id`, `nik`, `nok`, `nama_siswa`, `jenis_kelamin`, `kelas_id`, `nama_ayah`, `nama_ibu`, `alamat_ortu`) VALUES
(2,	2111111111111111,	2111111111111112,	'Fitriyani',	'Perempuan',	2,	'Ahmad',	'Zurriati',	'Banda Aceh'),
(4,	1111111111111111,	1111111111111113,	'Syahrul Ramadhan',	'Laki-laki',	1,	'Syafruddin',	'Aminah',	'Banda Aceh'),
(5,	1111111111111114,	1111111111111113,	'Syahrul Muttaqin',	'Laki-laki',	1,	'Syafruddin',	'Aminah',	'Banda Aceh'),
(6,	1111111111111115,	1111111111111113,	'baili syuhada coba',	'Laki-laki',	5,	'',	'Aminah',	'banda aceh');

DROP TABLE IF EXISTS `iuran`;
CREATE TABLE `iuran` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bulan_bayar` varchar(128) NOT NULL,
  `jmlh_bayar_lunas` bigint(20) NOT NULL,
  `tahun` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `iuran` (`id`, `bulan_bayar`, `jmlh_bayar_lunas`, `tahun`) VALUES
(1,	'Januari',	600000,	2020),
(2,	'Februari',	600000,	2020),
(3,	'Maret',	600000,	2020),
(4,	'April',	600000,	2020),
(5,	'Mei',	600000,	2020),
(6,	'Juni',	600000,	2020),
(7,	'Juli',	600000,	2020),
(8,	'Agustus',	600000,	2020),
(9,	'September',	600000,	2020),
(10,	'Oktober',	600000,	2020),
(11,	'November',	600000,	2020),
(12,	'Desember',	600000,	2020),
(13,	'Januari',	700000,	2021);

DROP TABLE IF EXISTS `kelas`;
CREATE TABLE `kelas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kelas` varchar(128) NOT NULL,
  `id_kurikulum` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `kelas` (`id`, `nama_kelas`, `id_kurikulum`) VALUES
(1,	'Kelas VII-1',	1),
(2,	'Kelas VII-2',	1),
(3,	'Kelas VIII-1',	1),
(4,	'Kelas VIII-2',	1),
(5,	'Kelas IX-1',	1),
(6,	'Kelas IX-2',	1);

DROP TABLE IF EXISTS `kurikulum`;
CREATE TABLE `kurikulum` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(128) NOT NULL,
  `tahun` int(11) NOT NULL,
  `semester` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `kurikulum` (`id`, `nama`, `tahun`, `semester`) VALUES
(1,	'K-2013 Paket',	2020,	'Genap'),
(2,	'K-2013 Paket',	2020,	'Ganjil');

DROP TABLE IF EXISTS `transaksi`;
CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_siswa` int(11) NOT NULL,
  `bulan_bayar` varchar(128) NOT NULL,
  `tahun_bayar` bigint(20) NOT NULL,
  `jmlh_bayar` bigint(20) NOT NULL,
  `status` varchar(128) NOT NULL,
  `sisa` bigint(20) NOT NULL,
  `tgl_bayar` int(11) NOT NULL,
  `nama_petugas` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `transaksi` (`id`, `id_siswa`, `bulan_bayar`, `tahun_bayar`, `jmlh_bayar`, `status`, `sisa`, `tgl_bayar`, `nama_petugas`) VALUES
(1,	2,	'Januari',	0,	600000,	'Lunas',	0,	1576907294,	'Salahul Bain'),
(2,	2,	'Februari',	0,	500000,	'Belum Lunas',	0,	1576910805,	'Salahul Bain'),
(3,	2,	'Maret',	0,	500000,	'Belum Lunas',	0,	1576912439,	'Salahul Bain'),
(4,	5,	'Januari',	0,	600000,	'Lunas',	0,	1576915999,	'Salahul Bain'),
(5,	4,	'Januari',	0,	500000,	'Belum Lunas',	0,	1576916014,	'Salahul Bain'),
(6,	5,	'Maret',	0,	500000,	'Belum Lunas',	0,	1576982929,	'Salahul Bain'),
(7,	4,	'Mei',	0,	400000,	'Belum Lunas',	0,	1576982994,	'Salahul Bain'),
(8,	5,	'Januari',	2021,	600000,	'Lunas',	0,	1577285188,	'Baili Suhada'),
(9,	4,	'Januari',	2021,	600000,	'Lunas',	0,	1577285322,	'Baili Suhada'),
(10,	5,	'Januari',	2021,	600000,	'Lunas',	0,	1577285514,	'Baili Suhada'),
(11,	2,	'Januari',	2021,	600000,	'Lunas',	0,	1577285554,	'Baili Suhada'),
(12,	2,	'Januari',	2021,	600000,	'Lunas',	0,	1577285593,	'Baili Suhada'),
(13,	2,	'Januari',	2021,	600000,	'Lunas',	0,	1577285610,	'Baili Suhada'),
(14,	2,	'Januari',	2021,	600000,	'Belum Lunas',	0,	1577285874,	'Baili Suhada'),
(15,	4,	'Februari',	2021,	600000,	'Belum Lunas',	0,	1577285921,	'Baili Suhada'),
(16,	6,	'Mei',	2021,	600000,	'Belum Lunas',	0,	1577286052,	'Baili Suhada'),
(17,	6,	'Januari',	2020,	400000,	'Belum Lunas',	-400000,	1577286905,	'Baili Suhada'),
(18,	6,	'Januari',	2020,	500000,	'Belum Lunas',	-500000,	1577287319,	'Baili Suhada'),
(19,	6,	'Januari',	2020,	500000,	'Belum Lunas',	-500,	1577287370,	'Baili Suhada'),
(20,	6,	'Januari',	2020,	500000,	'Belum Lunas',	-500000,	1577287503,	'Baili Suhada'),
(21,	6,	'Januari',	2020,	500000,	'Belum Lunas',	500000,	1577287798,	'Baili Suhada'),
(22,	6,	'Januari',	2020,	500000,	'Belum Lunas',	500000,	1577287848,	'Baili Suhada'),
(23,	6,	'Desember',	2020,	400000,	'Belum Lunas',	400000,	1577288147,	'Baili Suhada'),
(24,	6,	'Mei',	2020,	400000,	'Belum Lunas',	-400000,	1577288349,	'Baili Suhada'),
(25,	6,	'Oktober',	2020,	500000,	'Belum Lunas',	-500000,	1577288465,	'Baili Suhada'),
(26,	6,	'November',	2020,	500000,	'Belum Lunas',	-500000,	1577288551,	'Baili Suhada');

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
(8,	'Baili Suhada',	'bailisuhada@smpislamik.sch.id',	'user-profile-icon-7.jpg',	'$2y$10$3J01pcyXlw.8qJhTP0HYBOnxVdfRTtj/xFm8YPqDxAM2L0QsPVBAu',	1,	1,	1576980466);

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
(15,	6,	'Wali Kelas',	'teacher',	'fas fa-fw fa-chalkboard-teacher',	1),
(16,	1,	'Master',	'admin/master',	'fas fa-fw fa-database',	1);

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
  `kelas_id` int(11) NOT NULL,
  `date_created` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- 2020-01-06 09:17:26
