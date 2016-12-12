-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- 主機: 127.0.0.1
-- 產生時間： 2016-12-12 08:44:33
-- 伺服器版本: 10.1.16-MariaDB
-- PHP 版本： 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `project`
--

-- --------------------------------------------------------

--
-- 資料表結構 `card`
--

CREATE TABLE `card` (
  `CID` int(11) NOT NULL,
  `cardname` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `card`
--

INSERT INTO `card` (`CID`, `cardname`) VALUES
(1, 'C1'),
(2, 'C2'),
(3, 'C3'),
(4, 'C4'),
(5, 'C5'),
(6, 'C6'),
(7, 'C7'),
(8, 'C8');

-- --------------------------------------------------------

--
-- 資料表結構 `history`
--

CREATE TABLE `history` (
  `HID` int(10) NOT NULL,
  `HUID` int(10) NOT NULL,
  `HSID` int(10) NOT NULL,
  `hisprice` int(10) NOT NULL,
  `histime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `history`
--

INSERT INTO `history` (`HID`, `HUID`, `HSID`, `hisprice`, `histime`) VALUES
(1, 1, 4, 2, '2016-12-02 00:00:00'),
(2, 1, 4, 2, '2016-12-02 00:00:00'),
(3, 1, 5, 10, '2016-12-02 21:33:37'),
(4, 1, 6, 11, '2016-12-03 00:52:39'),
(5, 1, 6, 5, '2016-12-03 00:55:06'),
(6, 1, 6, 5, '2016-12-03 00:55:19'),
(7, 1, 6, 5, '2016-12-03 00:56:22'),
(8, 1, 6, 5, '2016-12-03 00:56:55'),
(9, 1, 6, 5, '2016-12-03 00:57:02'),
(10, 1, 6, 5, '2016-12-03 00:57:12'),
(11, 1, 7, 5, '2016-12-03 01:08:35');

-- --------------------------------------------------------

--
-- 資料表結構 `mycard`
--

CREATE TABLE `mycard` (
  `MID` int(10) NOT NULL,
  `MCID` int(10) NOT NULL,
  `account` int(10) NOT NULL,
  `MUID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `mycard`
--

INSERT INTO `mycard` (`MID`, `MCID`, `account`, `MUID`) VALUES
(1, 1, 33, 1),
(2, 2, 33, 1),
(3, 3, 33, 1),
(4, 8, 30, 1),
(5, 4, 33, 1),
(6, 5, 33, 1),
(7, 6, 33, 1),
(8, 7, 33, 1);

-- --------------------------------------------------------

--
-- 資料表結構 `sale`
--

CREATE TABLE `sale` (
  `SID` int(11) NOT NULL,
  `timer` datetime NOT NULL,
  `SUID` int(10) NOT NULL,
  `SCID` int(10) NOT NULL,
  `saleAccount` int(10) NOT NULL,
  `salePrice` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `sale`
--

INSERT INTO `sale` (`SID`, `timer`, `SUID`, `SCID`, `saleAccount`, `salePrice`) VALUES
(1, '2016-12-02 20:24:33', 1, 1, 1, 1),
(2, '2016-12-02 21:19:50', 1, 1, 1, 1),
(3, '2016-12-02 21:31:25', 1, 1, 1, 10),
(4, '2016-12-02 21:33:00', 1, 1, 1, 10),
(5, '2016-12-02 21:43:27', 1, 1, 1, 1),
(6, '2016-12-03 00:57:22', 1, 2, 1, 10),
(7, '2016-12-03 01:09:21', 1, 2, 1, 10),
(8, '2016-12-03 14:47:50', 1, 2, 1, 1),
(9, '2016-12-04 13:58:34', 1, 2, 1, 1),
(10, '2016-12-10 15:11:08', 2, 5, 3, 356),
(11, '2016-12-10 15:11:10', 2, 3, 3, 239),
(12, '2016-12-10 15:12:11', 2, 4, 3, 367),
(13, '2016-12-10 15:11:13', 2, 1, 3, 299),
(14, '2016-12-10 15:11:14', 2, 2, 3, 291),
(15, '2016-12-10 15:12:36', 2, 1, 3, 387),
(16, '2016-12-10 15:32:24', 2, 7, 3, 65),
(17, '2016-12-10 15:32:32', 2, 3, 3, 64),
(18, '2016-12-10 15:33:39', 2, 7, 3, 85),
(19, '2016-12-10 15:33:53', 2, 4, 3, 60),
(20, '2016-12-10 15:40:28', 2, 2, 3, 51),
(21, '2016-12-10 15:45:31', 2, 2, 3, 51),
(22, '2016-12-10 15:50:35', 2, 2, 3, 51),
(23, '2016-12-10 15:56:24', 2, 2, 3, 51),
(24, '2016-12-10 16:01:25', 2, 2, 3, 51),
(25, '2016-12-10 16:07:50', 2, 2, 3, 51),
(26, '2016-12-10 16:13:29', 2, 2, 3, 51),
(27, '2016-12-10 16:18:30', 2, 2, 3, 51),
(28, '2016-12-10 16:26:38', 2, 2, 3, 51),
(29, '2016-12-10 16:31:39', 2, 2, 3, 51),
(30, '2016-12-10 16:36:41', 2, 2, 3, 51),
(31, '2016-12-10 16:41:49', 2, 2, 3, 51),
(32, '2016-12-10 16:46:51', 2, 2, 3, 51),
(33, '2016-12-10 16:52:02', 2, 2, 3, 51),
(34, '2016-12-10 16:57:47', 2, 2, 3, 51),
(35, '2016-12-10 17:04:40', 2, 8, 3, 24),
(36, '2016-12-10 17:04:42', 2, 8, 3, 24);

-- --------------------------------------------------------

--
-- 資料表結構 `user`
--

CREATE TABLE `user` (
  `UID` int(10) NOT NULL,
  `loginID` text NOT NULL,
  `password` text NOT NULL,
  `money` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `user`
--

INSERT INTO `user` (`UID`, `loginID`, `password`, `money`) VALUES
(1, 'test', '123', 2000),
(2, 'boss', '123', 1000);

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `card`
--
ALTER TABLE `card`
  ADD PRIMARY KEY (`CID`);

--
-- 資料表索引 `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`HID`);

--
-- 資料表索引 `mycard`
--
ALTER TABLE `mycard`
  ADD PRIMARY KEY (`MID`);

--
-- 資料表索引 `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`SID`);

--
-- 資料表索引 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UID`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `card`
--
ALTER TABLE `card`
  MODIFY `CID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- 使用資料表 AUTO_INCREMENT `history`
--
ALTER TABLE `history`
  MODIFY `HID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- 使用資料表 AUTO_INCREMENT `mycard`
--
ALTER TABLE `mycard`
  MODIFY `MID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- 使用資料表 AUTO_INCREMENT `sale`
--
ALTER TABLE `sale`
  MODIFY `SID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- 使用資料表 AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `UID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
