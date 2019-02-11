-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 11, 2019 at 12:59 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `siakampus`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `id_dosen` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `tempat_lahir` varchar(20) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jk` varchar(10) NOT NULL,
  `agama` varchar(10) NOT NULL,
  `nohp` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `nama_prodi` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`id_dosen`, `nama`, `nip`, `tempat_lahir`, `tanggal_lahir`, `jk`, `agama`, `nohp`, `email`, `alamat`, `nama_prodi`) VALUES
(1, 'Dr. Gunawan, M.Si.', '1420972999811', 'Tuban', '1973-02-06', 'Laki-Laki', 'Islam', '085603928423', 'gunawanmsi@gmail.com', 'Jalan KH. Agus Salim No. 44 Tuban', 'Teknik Informatika'),
(7, 'Rita Yuliati, M.Kom.', '1523923474', 'Surabaya', '2019-02-15', 'Perempuan', 'Islam', '085062392342', 'ritayul@gmail.com', 'Kelurahan Sidomulyo Tuban', 'Teknik Kimia'),
(8, '1315151551', 'Januar s.kom', 'surabaya', '2019-02-15', 'Laki-Laki', 'islam', 'janu@gmail.com', '08970098789', 'palang tuban', 'Teknik Kimia');

-- --------------------------------------------------------

--
-- Table structure for table `gedung`
--

CREATE TABLE `gedung` (
  `id_gedung` int(11) NOT NULL,
  `nama_gedung` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gedung`
--

INSERT INTO `gedung` (`id_gedung`, `nama_gedung`) VALUES
(18, 'Gedung B'),
(19, 'Gedung L'),
(20, 'Gedung A'),
(21, 'Gedung C'),
(22, 'Gedung D'),
(23, 'Gedung E'),
(24, 'Gedung F'),
(25, 'Gedung G'),
(26, 'Gedung H'),
(27, 'Gedung I'),
(28, 'Gedung J'),
(29, 'Gedung K'),
(31, 'Gedung M'),
(32, 'Gedung N'),
(33, 'Gedung O'),
(34, 'Gedung P'),
(35, 'Gedung Q'),
(37, 'Gedung G');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id_login` int(11) NOT NULL,
  `user` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id_login`, `user`, `pass`) VALUES
(1, 'admin', '1'),
(4, 'iqbal', 'iqbal'),
(7, 'aries', '1'),
(8, 'ririn', '1');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id_mahasiswa` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `npm` varchar(20) NOT NULL,
  `tempat_lahir` varchar(20) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jk` varchar(10) NOT NULL,
  `agama` varchar(15) NOT NULL,
  `nohp` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `nama_prodi` varchar(30) NOT NULL,
  `tahun_angkatan` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id_mahasiswa`, `nama`, `npm`, `tempat_lahir`, `tanggal_lahir`, `jk`, `agama`, `nohp`, `email`, `alamat`, `nama_prodi`, `tahun_angkatan`) VALUES
(5, 'Ririn Safitri', '1412170037', 'Tuban', '1999-02-16', 'Perempuan', 'Islam', '084596739729', 'rir@gmail.com', 'Desa Njarjo Kecamatan Magelang', 'Ilmu Kelautan dan Perikanan', '2012-2013'),
(6, 'Muhammad Iqbal', '1412170024', 'Tuban', '1998-02-28', 'Laki-Laki', 'Islam', '08506575143', 'kucur@gmail.com', 'Jalan Ahmad Dahlan No.44 Tuban', 'Pendidikan Guru Sekolah Dasar', '2016-2017');

-- --------------------------------------------------------

--
-- Table structure for table `matkul`
--

CREATE TABLE `matkul` (
  `id_matkul` int(11) NOT NULL,
  `kode_matkul` varchar(20) NOT NULL,
  `nama_matkul` varchar(20) NOT NULL,
  `nama_prodi` varchar(30) NOT NULL,
  `jam` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matkul`
--

INSERT INTO `matkul` (`id_matkul`, `kode_matkul`, `nama_matkul`, `nama_prodi`, `jam`) VALUES
(3, 'A308', 'Basis Data', 'Teknik Informatika', '2 Jam'),
(5, 'A309', 'JAVA', 'Teknik Informatika', '1 Jam'),
(6, 'A310', 'MATEMATIKA', 'Teknik Informatika', '2 Jam'),
(7, 'A311', 'Riset Operasi', 'Teknik Informatika', '2 Jam'),
(8, 'L133', 'Seni dan Budaya', 'Pendidikan Guru Sekolah Dasar', '3 Jam'),
(9, 'B312', 'Bahasa Indonesia', 'Pendidikan Guru Sekolah Dasar', '2 Jam'),
(10, 'A3014', 'B INGGRIS', 'Teknik Informatika', '2 JAM'),
(11, 'A3014', 'B INGGRIS', 'Teknik Informatika', '1 JAM'),
(12, 'A310', 'MATEMATIKA 2', 'Teknik Informatika', '3 JAM');

-- --------------------------------------------------------

--
-- Table structure for table `prodi`
--

CREATE TABLE `prodi` (
  `id_prodi` int(11) NOT NULL,
  `nama_prodi` varchar(30) NOT NULL,
  `ketua` varchar(30) NOT NULL,
  `no_izin` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prodi`
--

INSERT INTO `prodi` (`id_prodi`, `nama_prodi`, `ketua`, `no_izin`) VALUES
(1, 'Teknik Industri', 'Wahidin Suroso, S.T., M.T.', 'BZ00212299'),
(2, 'Teknik Informatika', 'Ahmad Dahlan, S.Kom, M.Kom.', 'HD0923402'),
(7, 'Teknik Kimia', 'Wardoyo, M.Si.', 'KI9359348'),
(8, 'Pendidikan Guru Sekolah Dasar', 'Dr. Kiki Amalia, M.Pd.', 'PG2308320'),
(9, 'Ilmu Kelautan dan Perikanan', 'Hendy Suparso, M.Pd.', 'PE829348'),
(10, 'Pendidikan Guru Bahasa Inggris', 'Helena Sari, M.Pd.', 'NG2343223');

-- --------------------------------------------------------

--
-- Table structure for table `ruangan`
--

CREATE TABLE `ruangan` (
  `id_ruangan` int(11) NOT NULL,
  `nama_ruangan` varchar(20) NOT NULL,
  `nama_gedung` varchar(20) NOT NULL,
  `kapasitas` int(11) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ruangan`
--

INSERT INTO `ruangan` (`id_ruangan`, `nama_ruangan`, `nama_gedung`, `kapasitas`, `keterangan`) VALUES
(4, 'Ruangan 1', 'Gedung B', 30, 'Ruang Kelas'),
(5, 'Ruangan 2', 'Gedung B', 30, 'Ruang Kelas'),
(6, 'Ruangan 3', 'Gedung B', 20, 'Ruang Kelas'),
(7, 'Ruangan 1', 'Gedung L', 25, 'Laboratorium Data Minning'),
(8, 'Ruangan 3', 'Gedung E', 25, 'Laboratorium Riset Operasi');

-- --------------------------------------------------------

--
-- Table structure for table `thnangkatan`
--

CREATE TABLE `thnangkatan` (
  `id_angkatan` int(11) NOT NULL,
  `tahun_angkatan` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `thnangkatan`
--

INSERT INTO `thnangkatan` (`id_angkatan`, `tahun_angkatan`) VALUES
(4, '2010-2011'),
(5, '2011-2012'),
(6, '2012-2013'),
(7, '2013-2014'),
(8, '2014-2015'),
(9, '2016-2017'),
(10, '2017-2018');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id_dosen`);

--
-- Indexes for table `gedung`
--
ALTER TABLE `gedung`
  ADD PRIMARY KEY (`id_gedung`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_login`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id_mahasiswa`);

--
-- Indexes for table `matkul`
--
ALTER TABLE `matkul`
  ADD PRIMARY KEY (`id_matkul`);

--
-- Indexes for table `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`id_prodi`);

--
-- Indexes for table `ruangan`
--
ALTER TABLE `ruangan`
  ADD PRIMARY KEY (`id_ruangan`);

--
-- Indexes for table `thnangkatan`
--
ALTER TABLE `thnangkatan`
  ADD PRIMARY KEY (`id_angkatan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dosen`
--
ALTER TABLE `dosen`
  MODIFY `id_dosen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `gedung`
--
ALTER TABLE `gedung`
  MODIFY `id_gedung` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id_mahasiswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `matkul`
--
ALTER TABLE `matkul`
  MODIFY `id_matkul` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `prodi`
--
ALTER TABLE `prodi`
  MODIFY `id_prodi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ruangan`
--
ALTER TABLE `ruangan`
  MODIFY `id_ruangan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `thnangkatan`
--
ALTER TABLE `thnangkatan`
  MODIFY `id_angkatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
