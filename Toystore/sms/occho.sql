-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 26, 2018 lúc 04:33 AM
-- Phiên bản máy phục vụ: 10.1.37-MariaDB
-- Phiên bản PHP: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `occho`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `catalogue`
--

CREATE TABLE `catalogue` (
  `cId` int(10) UNSIGNED NOT NULL,
  `cName` varchar(50) DEFAULT NULL,
  `cDescription` varchar(200) DEFAULT NULL,
  `lastModifiedBy` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `catalogue`
--

INSERT INTO `catalogue` (`cId`, `cName`, `cDescription`, `lastModifiedBy`) VALUES
(3, 'Men', 'Tpye-Shoes', 1),
(4, 'Woman', 'Type-Shoes', 1),
(5, 'Kid', 'Tpye Shoes', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `item`
--

CREATE TABLE `item` (
  `iId` varchar(10) NOT NULL,
  `iName` varchar(50) DEFAULT NULL,
  `iDescription` varchar(300) DEFAULT NULL,
  `iPrice` int(10) UNSIGNED DEFAULT NULL,
  `iStatus` varchar(20) DEFAULT NULL,
  `iSize` varchar(20) DEFAULT NULL,
  `iImage` varchar(300) DEFAULT NULL,
  `catalogueId` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `item`
--

INSERT INTO `item` (`iId`, `iName`, `iDescription`, `iPrice`, `iStatus`, `iSize`, `iImage`, `catalogueId`) VALUES
('211', 'FUTUREPACER SHOES', 'The Futurepacer reworks the revolutionary design of the 1984 Micropacer to challenge old ideas of what a sneaker should look like. This futuristic style makes a statement with a fully reflective stret', 190, 'New seal', '37,38,40', '211.jpg', 3),
('235', 'SWIFT RUN BARRIER ', 'Inspired by classic runners of the \'80s, these mid-cut shoes are made to keep you cosy in cold weather. They\'re built with a sturdy closed-mesh material and lined with neoprene to hug the feet and shu', 420, 'New seal', '35,36,37', '235.jpg', 4),
('313', 'POD-S3.1', 'The P.O.D. System brings the best of \'90s cushioning to today\'s streets. These shoes blend adidas heritage inspiration with a knit upper that has a snug, supportive feel. Boost heel Boost where it mat', 250, 'New seal', '40,41', '313.jpg', 3),
('333', 'SWIFT RUN SHOES', 'The go-to trainer for everyone, these shoes hit the sweet spot of effortless comfort and universal style. The knit upper stretches to fit like a sock, with an easy-entry collar that\'s shaped to perfec', 120, 'New seal', '39,40,44', '333.jpg', 3),
('343', '3ST.002 PRIMEKNIT', 'Sport-born and culture-inspired, adidas Skateboarding brings a new, ultra-progressive look and feel to the classic vulc shoe design. These shoes have an adidas Primeknit upper with a tough TPU coating', 180, 'New seal', '42,43,44', '343.jpg', 3),
('345', 'DEERUPT RUNNER', 'Inspired by modern art and \'80s running style, Deerupt is definitive proof that minimalism can be bold. These shoes have a thin, collapsible stretch upper with a web overlay for a streamlined, flexibl', 100, 'New seal', '38,39,40', '345.jpg', 3),
('437', 'FALCON SHOES', 'The Falcon flaunts a carefree rebellious look inspired by retro style trends. These chunky shoes show off a distinctly \'90s look with loud high-contrast colours and metallic finishes.', 200, 'New seal', '39,40,43', '437.jpg', 3),
('444', 'PROPHERE SHOES', 'The Prophere brings fresh swagger to streetwear fashion. These shoes offer a playfully bold look with exaggerated proportions and standout textures. They combine a sturdy structured knit upper with a ', 60, 'New seal', '40,42,44', '444.jpg', 3),
('445', 'EQT SUPPORT MID ADV PRIMEKNIT', 'With a technical design fine-tuned for different runner types, the Equipment series redefined running gear in the \'90s. These streetwear shoes stay true to the innovative Equipment spirit.', 330, 'New seal', '39,42,43', '445.jpg', 3),
('454', 'NMD_RACER PRIMEKNIT', 'Progressive, premium, pioneering. NMD blends pure adidas heritage with advanced modern materials to create a futuristic look that resonates on the streets.', 130, 'New seal', '41,42,43', '454.jpg', 3),
('456', 'EQT SUPPORT ADV MID', 'Born in the \'90s, the Equipment line was a changing of the guard for running culture. Inspired by the \'91 EQT Support runner, these shoes modernise the look for today. A soft, sock-like knit upper giv', 200, 'New seal', '39,42,44', '456.jpg', 3),
('555', 'SOBAKOV SHOES', 'The Sobakov honours the spirit of modern football culture. Built with a stretchy knit upper, these shoes have a fierce look with reflective swerving 3-Stripes and a bold sculpted rubber outsole.', 220, 'New seal', '39,40,41', '555.jpg', 3),
('565', 'CRAZY BYW', 'Legendary B-ball players flashed this \'90s style with a look so unconventional that it was called Crazy. Now a footwear fashion series, the Crazy BYW combines a bold mix of colours and textures with i', 445, 'New seal', '35,36,37', '565.jpg', 4),
('567', 'STAN SMITH', 'The timeless chic of the Stan Smith invites creative reimagining. Inspired by glitter nail polish, this version covers the clean court design with a subtle sparkle that changes colour when the light h', 150, 'New seal', '36,37,38', '567.jpg', 4),
('585', 'ARKYN PRIMEKNIT', 'nspired by adidas\' running heritage, the Arkyn is focused on the future. These shoes show off sleek glamour in a glimmering silver knit that\'s accented with bright colour. The sock-like upper offers a', 220, 'New seal', '39,42,44', '585.jpg', 4),
('676', 'KAMANDA 01 ', 'The Kamanda began as a design experiment in the late \'80s. Inspired by football fans\' favourite styles, these shoes show off a simple low-tech upper. Mixing retro and modern looks, the sculpted gum-ru', 300, 'New seal', '34,37,38', '676.jpg', 4),
('764', 'CRAZY BYW X', 'Legendary B-ball players flashed this \'90s style with a look so unconventional that it was called Crazy. A new chapter in the story of Crazy, these Crazy BYW shoes have a pro-level design that\'s at ho', 150, 'New seal', '40,44', '764.jpg', 3),
('778', 'YUNG 1 SHOES', 'Reimagining the late \'90s-era adidas Falcon Dorf, the Yung 1 offers an authentic, creative take on retro nostalgia. This version echoes true \'90s style with a layered look. ', 300, 'New seal', '40,42,43', '778.jpg', 3),
('999', 'CRAZY 8 ADV SHOES', 'These women\'s shoes descend from instantly recognisable B-ball trainers from the \'90s. Now they bring hardwood style to the streets. A comfy knit upper with nubuck overlays.', 550, 'New seal', '40,41,43', '999.jpg', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `uId` int(10) UNSIGNED NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `status` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`uId`, `username`, `password`, `status`) VALUES
(1, 'occho', '7c289436a6846981eacb5fa006705eb3', '1'),
(2, 'nguyentrungduc', '93dd646db7ac1de0ea652af8c4c22820', '1');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `catalogue`
--
ALTER TABLE `catalogue`
  ADD PRIMARY KEY (`cId`),
  ADD KEY `lastModifiedBy` (`lastModifiedBy`),
  ADD KEY `cName` (`cName`(7));

--
-- Chỉ mục cho bảng `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`iId`),
  ADD KEY `iName` (`iName`(10)),
  ADD KEY `catalogueId` (`catalogueId`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uId`),
  ADD KEY `username` (`username`(10));

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `catalogue`
--
ALTER TABLE `catalogue`
  MODIFY `cId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `uId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `catalogue`
--
ALTER TABLE `catalogue`
  ADD CONSTRAINT `catalogue_ibfk_1` FOREIGN KEY (`lastModifiedBy`) REFERENCES `user` (`uId`);

--
-- Các ràng buộc cho bảng `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `item_ibfk_1` FOREIGN KEY (`catalogueId`) REFERENCES `catalogue` (`cId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
