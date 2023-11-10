DROP DATABASE IF EXISTS `student_activity`;
CREATE DATABASE `student_activity` COLLATE utf8mb4_general_ci;
USE `student_activity`;

CREATE TABLE `major` (
  `majorID` char(2),
  `majorName` varchar(50) DEFAULT NULL,
  `faculty` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`majorID`)
);

INSERT INTO `major` (`majorID`, `majorName`, `faculty`) VALUES
('AN', 'การออกแบบเชิงโต้ตอบและการพัฒนาเกม', 'ANT'),
('DB', 'ระบบสารสนเทศเพื่อธุรกิจดิจิทัล', 'CIBA'),
('IB', 'ธุรกิจระหว่างประเทศ', 'CIBA'),
('IT', 'เทคโนโลยีสารสนเทศ', 'CITE'),
('MG', 'การตลาด', 'CIBA'),
('MS', 'การจัดการ', 'CIBA');

CREATE TABLE `student` (
  `studentID` char(8),
  `studentName` varchar(100) DEFAULT NULL,
  `majorID` char(2) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`studentID`),
  FOREIGN KEY (`majorID`) REFERENCES `major` (`majorID`)
);

INSERT INTO `student` (`studentID`, `studentName`, `majorID`, `password`, `image`) VALUES
('64210088', 'นางสาวกุลชา ขวัญเต่า', 'DB', '$2y$10$IeHVk5uloVUHFQfnpVKxD.Gq0pPI3F40XhdRit0523byOybjeK81q', NULL),
('65110054', 'นายวชิรวิทย์ ไตรอรุณ', 'DB', '$2y$10$IeHVk5uloVUHFQfnpVKxD.Gq0pPI3F40XhdRit0523byOybjeK81q', NULL),
('65110409', 'นายปฎิพัฒน์ สิริวราห์', 'DB', '$2y$10$IeHVk5uloVUHFQfnpVKxD.Gq0pPI3F40XhdRit0523byOybjeK81q', NULL),
('65110544', 'นางสาวสุพิชฌาย์ ศรีเมฆวงษา', 'DB', '$2y$10$IeHVk5uloVUHFQfnpVKxD.Gq0pPI3F40XhdRit0523byOybjeK81q', NULL),
('65110892', 'นายณัฐสิทธิ์ พรมรัตน์', 'DB', '$2y$10$IeHVk5uloVUHFQfnpVKxD.Gq0pPI3F40XhdRit0523byOybjeK81q', NULL),
('65110893', 'นายศิวกร เทพเเก้ว', 'DB', '$2y$10$IeHVk5uloVUHFQfnpVKxD.Gq0pPI3F40XhdRit0523byOybjeK81q', NULL),
('65111051', 'นางสาวชิษณุชา เส้งสุ้น', 'DB', '$2y$10$IeHVk5uloVUHFQfnpVKxD.Gq0pPI3F40XhdRit0523byOybjeK81q', NULL),
('65111162', 'นายภูรินทร์ ธรรมศิริ', 'DB', '$2y$10$IeHVk5uloVUHFQfnpVKxD.Gq0pPI3F40XhdRit0523byOybjeK81q', NULL),
('65111257', 'นายนิวเยีย หว่องสุวรรณ', 'DB', '$2y$10$IeHVk5uloVUHFQfnpVKxD.Gq0pPI3F40XhdRit0523byOybjeK81q', NULL),
('65111689', 'นางสาวอมรรัตน์  นิตระ', 'IT', '$2y$10$IeHVk5uloVUHFQfnpVKxD.Gq0pPI3F40XhdRit0523byOybjeK81q', NULL),
('65111731', 'นายปฏิภาณ  น้อยผา', 'AN', '$2y$10$IeHVk5uloVUHFQfnpVKxD.Gq0pPI3F40XhdRit0523byOybjeK81q', NULL),
('65111830', 'นางสาวจรรยาภรณ์  โคบาล', 'MG', '$2y$10$IeHVk5uloVUHFQfnpVKxD.Gq0pPI3F40XhdRit0523byOybjeK81q', NULL),
('65112182', 'นายฐิตินันท์  อาจศรี', 'MS', '$2y$10$IeHVk5uloVUHFQfnpVKxD.Gq0pPI3F40XhdRit0523byOybjeK81q', NULL),
('65112197', 'นางสาวนาตาลี  มูฮำหมัดยูโซ๊ะ', 'MG', '$2y$10$IeHVk5uloVUHFQfnpVKxD.Gq0pPI3F40XhdRit0523byOybjeK81q', NULL),
('65112233', 'นายสหรัฐ  ศรีจันทร์โฉม', 'AN', '$2y$10$IeHVk5uloVUHFQfnpVKxD.Gq0pPI3F40XhdRit0523byOybjeK81q', NULL),
('65112416', 'นางสาวอิงอร พงษ์สุวรรณ์', 'DB', '$2y$10$IeHVk5uloVUHFQfnpVKxD.Gq0pPI3F40XhdRit0523byOybjeK81q', NULL),
('65112462', 'นางสาวมณีนุช วรรณทอง', 'DB', '$2y$10$IeHVk5uloVUHFQfnpVKxD.Gq0pPI3F40XhdRit0523byOybjeK81q', NULL),
('65210040', 'นายศุภรัตน์ สายจันดา', 'DB', '$2y$10$IeHVk5uloVUHFQfnpVKxD.Gq0pPI3F40XhdRit0523byOybjeK81q', NULL),
('66110144', 'นางสาวพัชริญาภรณ์ มูลสาร', 'DB', '$2y$10$IeHVk5uloVUHFQfnpVKxD.Gq0pPI3F40XhdRit0523byOybjeK81q', NULL),
('66110541', 'นายกนกพล สุทธิใส', 'DB', '$2y$10$IeHVk5uloVUHFQfnpVKxD.Gq0pPI3F40XhdRit0523byOybjeK81q', NULL),
('66110552', 'นางสาวพอเพียง รักษายศ', 'DB', '$2y$10$IeHVk5uloVUHFQfnpVKxD.Gq0pPI3F40XhdRit0523byOybjeK81q', NULL),
('66110695', 'นางสาวสุธิดา มณฑาทิพย์', 'DB', '$2y$10$IeHVk5uloVUHFQfnpVKxD.Gq0pPI3F40XhdRit0523byOybjeK81q', NULL),
('66110700', 'นางสาวนิรุชา แสงเดช', 'DB', '$2y$10$IeHVk5uloVUHFQfnpVKxD.Gq0pPI3F40XhdRit0523byOybjeK81q', NULL),
('66110716', 'นางสาวจิรัชญา เนียมกูล', 'DB', '$2y$10$IeHVk5uloVUHFQfnpVKxD.Gq0pPI3F40XhdRit0523byOybjeK81q', NULL),
('66111606', 'นางสาวปรีญาภรณ์ แย้มกลีบบัว', 'DB', '$2y$10$IeHVk5uloVUHFQfnpVKxD.Gq0pPI3F40XhdRit0523byOybjeK81q', NULL),
('66111648', 'นายวรเมธ ใจกว้าง', 'DB', '$2y$10$IeHVk5uloVUHFQfnpVKxD.Gq0pPI3F40XhdRit0523byOybjeK81q', NULL),
('66112320', 'นางสาวอริสา เกตุแก้ว', 'DB', '$2y$10$IeHVk5uloVUHFQfnpVKxD.Gq0pPI3F40XhdRit0523byOybjeK81q', NULL);

CREATE TABLE `staff` (
  `staffID` char(6),
  `staffName` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `approvedBy` char(6),
  PRIMARY KEY (`staffID`),
  FOREIGN KEY (`approvedBy`) REFERENCES `staff` (`staffID`)
);

INSERT INTO `staff` (`staffID`, `staffName`, `password`, `approvedBy`) VALUES
('551001', 'นายเศรษฐี ทวีสุข', '$2y$10$IeHVk5uloVUHFQfnpVKxD.Gq0pPI3F40XhdRit0523byOybjeK81q', NULL),
('601101', 'นางรจนา โรงเรียน', '$2y$10$IeHVk5uloVUHFQfnpVKxD.Gq0pPI3F40XhdRit0523byOybjeK81q', '551001'),
('601102', 'นายสินเชื่อ ทวีสุข', '$2y$10$IeHVk5uloVUHFQfnpVKxD.Gq0pPI3F40XhdRit0523byOybjeK81q', '551001');

CREATE TABLE `activity` (
  `activityID` int AUTO_INCREMENT,
  `activityName` varchar(100) NOT NULL,
  `available` int NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  PRIMARY KEY (`activityID`)
);

INSERT INTO `activity` (`activityName`, `start`, `end`, `available`) VALUES
('ปฐมนิเทศ', '2023-08-01 08:30:00', '2023-08-01 16:30:00', 97),
('ไหว้ครู', '2023-09-16 09:00:00', '2023-09-16 12:00:00', 47),
('Walk Rally', '2023-12-20 08:30:00', '2023-12-20 16:30:00', 49),
('ลอยกระทง', '2023-11-27 17:00:00', '2023-11-27 20:30:00', 99),
('ปัจฉิมนิเทศ', '2024-03-30 08:00:00', '2024-03-30 17:00:00', 50),
('ประกวดดาวเดือน', '2023-10-20 12:30:00', '2023-10-20 17:30:00', 50),
('ฮาละวง ฮาโลวีน', '2023-10-31 10:00:00', '2023-10-31 16:30:00', 50),
('อบรมทำกระเป๋าผ้า', '2023-10-20 12:30:00', '2023-10-20 17:30:00', 50),
('การเอาตัวรอดในสถาณการณ์ฉุกเฉิน', '2023-10-20 12:30:00', '2023-10-20 17:30:00', 50);

CREATE TABLE `register` (
  `studentID` char(8) NOT NULL,
  `activityID` int NOT NULL,
  `registerDate` timestamp DEFAULT NOW(),
  `activityStatus` tinyint(1) DEFAULT 0,
  `approvedBy` char(6),
  `approvedWhen` timestamp,
  PRIMARY KEY (`studentID`,`activityID`),
  FOREIGN KEY (`activityID`) REFERENCES `activity` (`activityID`),
  FOREIGN KEY (`approvedBy`) REFERENCES `staff` (`staffID`)
);

INSERT INTO `register` (`studentID`, `activityID`, `registerDate`, `activityStatus`, `approvedBy`, `approvedWhen`) VALUES
('65112462', 1, '2023-07-25', 1, '601101', '2023-08-01 08:50:10'),
('65112462', 2, '2023-09-10', 1, '601102', '2023-09-16 12:00:01'),
('65111257', 1, '2023-07-20', 0, NULL, NULL),
('65111257', 2, '2023-09-08', 1, '601101', '2023-09-16 12:01:10'),
('66111648', 3, '2023-10-02', 0, NULL, NULL),
('66110552', 1, '2023-07-02', 1, '551001', '2023-08-01 08:45:00'),
('65111051', 2, '2023-09-13', 0, NULL, NULL),
('66110552', 4, '2023-10-06', 0, NULL, NULL);
