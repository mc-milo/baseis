-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.4.0 - MySQL Community Server - GPL
-- Server OS:                    Linux
-- HeidiSQL Version:             12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for Insurance
CREATE DATABASE IF NOT EXISTS `Insurance` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `Insurance`;

-- Dumping structure for table Insurance.Doctor
CREATE TABLE IF NOT EXISTS `Doctor` (
  `DoctorID` char(16) NOT NULL,
  `FullName` varchar(255) NOT NULL,
  `PhoneNumber1` char(14) NOT NULL,
  `PhoneNumber2` char(14) DEFAULT NULL,
  `Email` varchar(100) NOT NULL,
  `Profession` varchar(255) NOT NULL,
  `Experience` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`DoctorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table Insurance.Doctor: ~0 rows (approximately)
INSERT INTO `Doctor` (`DoctorID`, `FullName`, `PhoneNumber1`, `PhoneNumber2`, `Email`, `Profession`, `Experience`) VALUES
	('232ef678f06a40af', 'Signe Dillard', '+306903510461', NULL, 'SigneDillard@mail.com', 'Internist', NULL),
	('29564872130069fc', 'Gary Tucker', '+306943572183', NULL, 'GaryTucker@mail.com', 'Geneticist', NULL),
	('32b3e3fdc0b6c891', 'Holly Jordan', '+306932505302', NULL, 'HollyJordan@mail.com', 'Internist', NULL),
	('32e7cf625bdc93b3', 'Eric Biagioni', '+306995786022', NULL, 'EricBiagioni@mail.com', 'Radiologists', NULL),
	('def12561276321b5', 'John Rodriguez', '+306966693380', NULL, 'JohnRodriguez@mail.com', 'Ophthalmologist', NULL);

-- Dumping structure for table Insurance.Institution
CREATE TABLE IF NOT EXISTS `Institution` (
  `InstitutionID` char(16) NOT NULL,
  `InstitutionName` varchar(255) NOT NULL,
  `ContactNumber` char(14) NOT NULL,
  `ContactEmail` varchar(100) NOT NULL,
  `Location` varchar(255) NOT NULL,
  PRIMARY KEY (`InstitutionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table Insurance.Institution: ~5 rows (approximately)
INSERT INTO `Institution` (`InstitutionID`, `InstitutionName`, `ContactNumber`, `ContactEmail`, `Location`) VALUES
	('61065152c601d9f7', 'Grand Sharon`s Hospital', '+302339094008', 'GrandSharon`sHospital@mail.com', '5123 Ewell Street'),
	('640223e8d6c525e2', 'Grand Nicholas`s Clinic', '+302338172847', 'GrandNicholas`sClinic@mail.com', '2703 Woolsey Street'),
	('66be16f80832b04f', 'Big Daniel`s Community Hospital', '+302322625836', 'BigDaniel`sCommunityHospital@mail.com', '23 Columbia Drive'),
	('a225b43a1e8219e6', 'Grand Lora`s Medical Center', '+302371611250', 'GrandLora`sMedicalCenter@mail.com', '126 Garth Road'),
	('cfd2efe18cc727d0', 'Grand Dorothy`s Medical Center', '+302323362945', 'GrandDorothy`sMedicalCenter@mail.com', '14358 West 88th Place');

-- Dumping structure for table Insurance.Insurance
CREATE TABLE IF NOT EXISTS `Insurance` (
  `InsuranceID` char(10) NOT NULL,
  `InsuranceName` varchar(255) NOT NULL,
  `InsurancePlansIDs` varchar(4096) DEFAULT NULL,
  `ContactNumber` char(14) NOT NULL,
  `ContactEmail` varchar(100) NOT NULL,
  PRIMARY KEY (`InsuranceID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table Insurance.Insurance: ~0 rows (approximately)
INSERT INTO `Insurance` (`InsuranceID`, `InsuranceName`, `InsurancePlansIDs`, `ContactNumber`, `ContactEmail`) VALUES
	('0fe54d4ddd', 'Caron Ltd.', NULL, '+302344756864', 'Caron_Ltd.@mail.com'),
	('5ecb5da3b6', 'Coleman insurances', NULL, '+302326222041', 'Coleman_insurances@mail.com'),
	('7d445ff69d', 'Holsomback insurances', NULL, '+302311983611', 'Holsomback_insurances@mail.com'),
	('85b8dea26e', 'Schmidt insurance company', NULL, '+302333221860', 'Schmidt_insurance_company@mail.com'),
	('c7b6437803', 'Gray insurances', NULL, '+302360792915', 'Gray_insurances@mail.com');

-- Dumping structure for table Insurance.Medication
CREATE TABLE IF NOT EXISTS `Medication` (
  `MedicationID` char(16) NOT NULL,
  `MedicationName` varchar(100) NOT NULL,
  `Information` varchar(255) DEFAULT NULL,
  `Covered` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`MedicationID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table Insurance.Medication: ~0 rows (approximately)
INSERT INTO `Medication` (`MedicationID`, `MedicationName`, `Information`, `Covered`) VALUES
	('2abeb7a96ade3cf2', 'Myochrysine', NULL, 1),
	('3f46b391a53a7201', 'Albendazole', NULL, 0),
	('46cca2c1e32c9240', 'Temodar', NULL, 1),
	('499484795942e487', 'Isopto Carpine', NULL, 1),
	('692e113df5818f91', 'Hylan G-F 20', NULL, 1),
	('6e2979c18585b74b', 'Pegfilgrastim', NULL, 1),
	('a7b58a23e92a23ce', 'Factive', NULL, 1),
	('aa737a6d08e214f4', 'Unoprostone isopropyl', NULL, 0),
	('f19702b8e14f639e', 'Botulinum Toxin Type B', NULL, 1),
	('f697e29fe3f839f7', 'Compro', NULL, 1);

-- Dumping structure for table Insurance.Patient
CREATE TABLE IF NOT EXISTS `Patient` (
  `AMKA` char(11) NOT NULL,
  `IDNumber` char(9) NOT NULL,
  `FullName` varchar(255) NOT NULL,
  `BirthDay` date NOT NULL,
  `Address` varchar(255) NOT NULL,
  `PhoneNumber1` char(14) NOT NULL,
  `PhoneNumber2` char(14) DEFAULT NULL,
  `Email` varchar(100) NOT NULL,
  `InsuranceID` char(10) NOT NULL,
  `InsurancePlanID` char(21) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `PersonalDoctorID` char(16) NOT NULL,
  `InsuredBy` char(11) NOT NULL,
  PRIMARY KEY (`AMKA`),
  UNIQUE KEY `IDNumber` (`IDNumber`),
  KEY `InsuranceID` (`InsuranceID`),
  KEY `PersonalDoctorID` (`PersonalDoctorID`),
  KEY `InsuredBy` (`InsuredBy`),
  CONSTRAINT `Patient_ibfk_1` FOREIGN KEY (`InsuranceID`) REFERENCES `Insurance` (`InsuranceID`),
  CONSTRAINT `Patient_ibfk_2` FOREIGN KEY (`PersonalDoctorID`) REFERENCES `Doctor` (`DoctorID`),
  CONSTRAINT `Patient_ibfk_3` FOREIGN KEY (`InsuredBy`) REFERENCES `Patient` (`AMKA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table Insurance.Patient: ~10 rows (approximately)
INSERT INTO `Patient` (`AMKA`, `IDNumber`, `FullName`, `BirthDay`, `Address`, `PhoneNumber1`, `PhoneNumber2`, `Email`, `InsuranceID`, `InsurancePlanID`, `PersonalDoctorID`, `InsuredBy`) VALUES
	('05127902698', 'HX 213466', 'Jose Herzog', '1979-12-05', '236 Alden Road', '+306921072832', NULL, 'Jose.Herzog@mail.com', '0fe54d4ddd', NULL, '232ef678f06a40af', '05127902698'),
	('14031148113', 'MS 666754', 'Sally Oneal', '2011-03-14', '3001 Spyglass Hill Road', '+306982896395', NULL, 'Sally.Oneal@mail.com', '5ecb5da3b6', NULL, '32e7cf625bdc93b3', '25048295909'),
	('14079152406', 'ZS 565268', 'Eugene Shield', '1991-07-14', '40700 Penn Lane', '+306913429623', NULL, 'Eugene.Shield@mail.com', 'c7b6437803', NULL, '32e7cf625bdc93b3', '14079152406'),
	('18079447154', 'AF 096929', 'Katherine Gold', '1994-07-18', '713 Ringgold Drive', '+306946908531', NULL, 'Katherine.Gold@mail.com', 'c7b6437803', NULL, '232ef678f06a40af', '18079447154'),
	('19083120133', 'RV 596105', 'Clyde Ferguson', '2003-08-19', '890 East Skyline Drive', '+306910600779', NULL, 'Clyde.Ferguson@mail.com', '0fe54d4ddd', NULL, '32b3e3fdc0b6c891', '25048295909'),
	('21051403902', 'OF 177227', 'Wanda Mack', '2014-05-21', '1711 Lore Road', '+306941381482', NULL, 'Wanda.Mack@mail.com', '85b8dea26e', NULL, '32e7cf625bdc93b3', '05127902698'),
	('25048295909', 'VM 184833', 'Rosa Hughes', '1982-04-25', '2203 7th Street Road', '+306959211703', NULL, 'Rosa.Hughes@mail.com', '7d445ff69d', NULL, '29564872130069fc', '25048295909'),
	('27029019043', 'VD 474401', 'Rebecca Riffle', '1990-02-27', '8546 North 59th Lane', '+306945594949', NULL, 'Rebecca.Riffle@mail.com', '0fe54d4ddd', NULL, '32b3e3fdc0b6c891', '27029019043'),
	('27066814709', 'JN 935332', 'Rose Ackies', '1968-06-27', '20241 North 67th Avenue', '+306950226510', NULL, 'Rose.Ackies@mail.com', '5ecb5da3b6', NULL, '232ef678f06a40af', '27066814709'),
	('31126882175', 'HD 076440', 'Elena Dewolf', '1968-12-31', '1376 Oakland Avenue', '+306960099151', NULL, 'Elena.Dewolf@mail.com', '85b8dea26e', NULL, '32e7cf625bdc93b3', '31126882175');

-- Dumping structure for table Insurance.Prescription
CREATE TABLE IF NOT EXISTS `Prescription` (
  `PrescriptionID` char(255) NOT NULL,
  `Issued` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Until` datetime NOT NULL,
  `PrescriptionInstitutionID` char(16) NOT NULL,
  `PrescriptionDoctorID` char(16) NOT NULL,
  `MedicineID` char(16) NOT NULL,
  `DoctorsNotes` varchar(255) DEFAULT NULL,
  `Renewable` tinyint(1) NOT NULL DEFAULT '0',
  `RenewableTimes` tinyint unsigned DEFAULT '0',
  `PatientID` char(11) NOT NULL,
  PRIMARY KEY (`PrescriptionID`),
  KEY `PrescriptionInstitutionID` (`PrescriptionInstitutionID`),
  KEY `PrescriptionDoctorID` (`PrescriptionDoctorID`),
  KEY `MedicineID` (`MedicineID`),
  KEY `PatientID` (`PatientID`),
  CONSTRAINT `Prescription_ibfk_1` FOREIGN KEY (`PrescriptionInstitutionID`) REFERENCES `Institution` (`InstitutionID`),
  CONSTRAINT `Prescription_ibfk_2` FOREIGN KEY (`PrescriptionDoctorID`) REFERENCES `Doctor` (`DoctorID`),
  CONSTRAINT `Prescription_ibfk_3` FOREIGN KEY (`MedicineID`) REFERENCES `Medication` (`MedicationID`),
  CONSTRAINT `Prescription_ibfk_4` FOREIGN KEY (`PatientID`) REFERENCES `Patient` (`AMKA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table Insurance.Prescription: ~0 rows (approximately)
INSERT INTO `Prescription` (`PrescriptionID`, `Issued`, `Until`, `PrescriptionInstitutionID`, `PrescriptionDoctorID`, `MedicineID`, `DoctorsNotes`, `Renewable`, `RenewableTimes`, `PatientID`) VALUES
	('40fcbe8f5b8193ef26fc257f8a7a8e316692afae17df5a5aa46459ee3b1b26a8', '2024-01-22 00:17:27', '2025-01-29 00:17:27', '61065152c601d9f7', '232ef678f06a40af', 'aa737a6d08e214f4', NULL, 0, NULL, '19083120133'),
	('48daa514734733d115aa64689665d36e2c041b5065319a65f4bfe7d4ad8b8d3e', '2023-09-09 00:17:27', '2024-11-08 00:17:27', 'cfd2efe18cc727d0', '32e7cf625bdc93b3', '692e113df5818f91', NULL, 0, NULL, '27066814709'),
	('8e381f34f368cef05621b336bcad2c563f6a6af4b8f00a836375b6496adb5a6a', '2023-12-14 00:17:27', '2024-09-26 00:17:27', '66be16f80832b04f', '32b3e3fdc0b6c891', '46cca2c1e32c9240', NULL, 0, NULL, '31126882175'),
	('ce520db73a83a9b19187340fad8e82f6f052fb9d1a413091b98d9f83b2edb407', '2023-09-28 00:17:27', '2025-02-25 00:17:27', '66be16f80832b04f', '32b3e3fdc0b6c891', '6e2979c18585b74b', NULL, 1, 5, '27029019043'),
	('d9fb8b1cdedd6deb761b3a01928c8ce94b41ace8478c594a1ede5630ef90cacd', '2023-12-26 00:17:27', '2024-09-09 00:17:27', '66be16f80832b04f', '32e7cf625bdc93b3', 'aa737a6d08e214f4', NULL, 0, NULL, '21051403902');

-- Dumping structure for table Insurance.Record
CREATE TABLE IF NOT EXISTS `Record` (
  `RecordID` char(32) NOT NULL,
  `PatientID` char(11) NOT NULL,
  `PreviousDoctor` char(16) DEFAULT NULL,
  `CurrentDoctor` char(16) NOT NULL,
  `RecordTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`RecordID`),
  KEY `PatientID` (`PatientID`),
  KEY `PreviousDoctor` (`PreviousDoctor`),
  KEY `CurrentDoctor` (`CurrentDoctor`),
  CONSTRAINT `Record_ibfk_1` FOREIGN KEY (`PatientID`) REFERENCES `Patient` (`AMKA`),
  CONSTRAINT `Record_ibfk_2` FOREIGN KEY (`PreviousDoctor`) REFERENCES `Doctor` (`DoctorID`),
  CONSTRAINT `Record_ibfk_3` FOREIGN KEY (`CurrentDoctor`) REFERENCES `Doctor` (`DoctorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table Insurance.Record: ~15 rows (approximately)
INSERT INTO `Record` (`RecordID`, `PatientID`, `PreviousDoctor`, `CurrentDoctor`, `RecordTime`) VALUES
	('014aacab8df988345f4a5779ab269aef', '19083120133', NULL, '32e7cf625bdc93b3', '2023-04-24 00:36:33'),
	('0182337e20e09c2e0a8fbee3f8d23d6d', '18079447154', 'def12561276321b5', '29564872130069fc', '2023-11-01 02:47:38'),
	('324df76b5e218a713e71a6ab797e3123', '05127902698', '32b3e3fdc0b6c891', '32e7cf625bdc93b3', '2023-11-22 02:47:38'),
	('378794eee88c3069ec193af48dc6104b', '21051403902', NULL, '32b3e3fdc0b6c891', '2023-05-09 00:36:33'),
	('3ae2070694610ea86eb86cb0c71ead2b', '27066814709', NULL, '29564872130069fc', '2023-02-02 00:36:33'),
	('581eba56abbdc894eaa5ecde65e66cd6', '27029019043', NULL, '32b3e3fdc0b6c891', '2022-06-30 00:36:33'),
	('96ca51161d9d57e68237bc9e5fa3372b', '25048295909', NULL, '32b3e3fdc0b6c891', '2023-03-04 00:36:33'),
	('9b6216e2bcd76eef9e4f59a49b884e58', '31126882175', 'def12561276321b5', '29564872130069fc', '2023-11-29 02:47:38'),
	('a4f615efc734cdad11a84b8ad8c0f05d', '05127902698', NULL, '32b3e3fdc0b6c891', '2022-08-03 00:36:33'),
	('bd29a68995c0914febefaea2626ccace', '31126882175', NULL, 'def12561276321b5', '2023-03-31 00:36:33'),
	('c071b18abdd898b8194252c699782ecc', '14031148113', NULL, '32e7cf625bdc93b3', '2022-07-21 00:36:33'),
	('cb043c8320c086a8dfa33ce3207fa551', '21051403902', '32b3e3fdc0b6c891', 'def12561276321b5', '2024-01-28 02:47:38'),
	('cc3425cf80d813ec1692f8c642ecf7ca', '14079152406', NULL, '232ef678f06a40af', '2023-04-12 00:36:33'),
	('cee8c535d831bde81ceb94972f60c6cf', '21051403902', 'def12561276321b5', '32e7cf625bdc93b3', '2024-03-07 02:47:38'),
	('f91e94648869fc17874a02b1164f83f3', '18079447154', NULL, 'def12561276321b5', '2023-01-23 00:36:33');

-- Dumping structure for table Insurance.Visit
CREATE TABLE IF NOT EXISTS `Visit` (
  `VisitID` char(32) NOT NULL,
  `PatientAMKA` char(11) NOT NULL,
  `DoctorID` char(16) NOT NULL,
  `VisitType` varchar(100) NOT NULL,
  `Diagnosis` varchar(255) DEFAULT NULL,
  `FollowUp` varchar(255) DEFAULT NULL,
  `Vitals` varchar(255) DEFAULT NULL,
  `Timestamp` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`VisitID`),
  KEY `PatientAMKA` (`PatientAMKA`),
  KEY `DoctorID` (`DoctorID`),
  CONSTRAINT `Visit_ibfk_1` FOREIGN KEY (`PatientAMKA`) REFERENCES `Patient` (`AMKA`),
  CONSTRAINT `Visit_ibfk_2` FOREIGN KEY (`DoctorID`) REFERENCES `Doctor` (`DoctorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table Insurance.Visit: ~100 rows (approximately)
INSERT INTO `Visit` (`VisitID`, `PatientAMKA`, `DoctorID`, `VisitType`, `Diagnosis`, `FollowUp`, `Vitals`, `Timestamp`) VALUES
	('00f359b49ffa640361019005ce7c6b62', '18079447154', '232ef678f06a40af', 'checkup', NULL, NULL, NULL, '2023-09-13 16:53:39'),
	('02e366441c095d7b1ad75a95aa95e113', '27029019043', '32b3e3fdc0b6c891', 'emergency', NULL, NULL, NULL, '2023-08-03 16:53:39'),
	('02e4e8da4f37a2a466c03880cc26430d', '27066814709', '232ef678f06a40af', 'visit', NULL, NULL, NULL, '2023-12-28 16:53:39'),
	('02ebf55984e3b0b0515755440241aa4d', '14079152406', '32e7cf625bdc93b3', 'checkup', NULL, NULL, NULL, '2023-10-24 16:53:39'),
	('0700d316f0a45c9b7ecc8e32d7d22614', '14031148113', '29564872130069fc', 'emergency', NULL, NULL, NULL, '2023-07-26 16:53:39'),
	('0b733a769943474781bbc9a41050fd57', '31126882175', '32e7cf625bdc93b3', 'emergency', NULL, NULL, NULL, '2023-08-19 16:53:39'),
	('0f676c50b79a3171029e44bb3b8db706', '31126882175', '232ef678f06a40af', 'emergency', NULL, NULL, NULL, '2023-08-17 16:53:39'),
	('10825e6c18ad3c266c1efafaf3cdbd68', '21051403902', '32e7cf625bdc93b3', 'visit', NULL, NULL, NULL, '2023-12-20 16:53:39'),
	('10c4e66c07eeb2ccc30a41b3fc5da665', '21051403902', '32b3e3fdc0b6c891', 'visit', NULL, NULL, NULL, '2023-11-19 16:53:39'),
	('1512c14c0af0b4e914361d09265ce722', '14031148113', '32b3e3fdc0b6c891', 'checkup', NULL, NULL, NULL, '2023-09-29 16:53:39'),
	('1b1e44918b0d79685a38cf17e5855d35', '18079447154', '232ef678f06a40af', 'visit', NULL, NULL, NULL, '2023-12-09 16:53:39'),
	('1c23541eff61ad5ca79319eb8828c6a5', '18079447154', '232ef678f06a40af', 'followup', NULL, NULL, NULL, '2023-10-11 16:53:39'),
	('1f10f4137d08cb5a94a1541ba94bfe9d', '21051403902', 'def12561276321b5', 'checkup', NULL, NULL, NULL, '2023-08-14 16:53:39'),
	('20e9e67e27e77b5cddd4019032e36768', '27066814709', '232ef678f06a40af', 'followup', NULL, NULL, NULL, '2024-01-09 16:53:39'),
	('22142a41473e985148c4a117f2814cb2', '05127902698', '29564872130069fc', 'followup', NULL, NULL, NULL, '2023-10-04 16:53:39'),
	('22a9554fbc8e2a1cae9e00fde6ae1afc', '14031148113', '32b3e3fdc0b6c891', 'emergency', NULL, NULL, NULL, '2023-10-18 16:53:39'),
	('2302754ccb4ce01e2bbf98c5d0e06f27', '31126882175', '29564872130069fc', 'checkup', NULL, NULL, NULL, '2024-02-06 16:53:39'),
	('230b5aae0a7ebe8859131e2ae2a5cb4d', '27066814709', '232ef678f06a40af', 'visit', NULL, NULL, NULL, '2023-12-19 16:53:39'),
	('2606c9e0d61cef808f263f567856814d', '18079447154', '232ef678f06a40af', 'visit', NULL, NULL, NULL, '2023-10-21 16:53:39'),
	('293d2f5f6796f8fd17a0cf7af004ab1a', '14079152406', '29564872130069fc', 'visit', NULL, NULL, NULL, '2023-12-03 16:53:39'),
	('2a5bc6713c1577e000723bdd23922367', '27029019043', '29564872130069fc', 'visit', NULL, NULL, NULL, '2024-01-27 16:53:39'),
	('2bfc898824fa70b84ed356891f27332e', '19083120133', '32b3e3fdc0b6c891', 'checkup', NULL, NULL, NULL, '2023-08-28 16:53:39'),
	('2ee393992bcc9a4de320e595b34a07a7', '21051403902', 'def12561276321b5', 'checkup', NULL, NULL, NULL, '2023-08-26 16:53:39'),
	('36015b613355cd699733dc6adbd1ebc8', '05127902698', 'def12561276321b5', 'checkup', NULL, NULL, NULL, '2024-01-25 16:53:39'),
	('3af39bc9685e30f2ed365301cc811f47', '25048295909', '32e7cf625bdc93b3', 'visit', NULL, NULL, NULL, '2023-09-28 16:53:39'),
	('443d499712372cdb5d9dd237e9627a24', '25048295909', '232ef678f06a40af', 'checkup', NULL, NULL, NULL, '2023-10-22 16:53:39'),
	('45b75d0e9a0be996592b62109c80e232', '25048295909', '29564872130069fc', 'checkup', NULL, NULL, NULL, '2023-09-28 16:53:39'),
	('49362dd4d19d42d8a2decbcd82e78983', '31126882175', '32e7cf625bdc93b3', 'visit', NULL, NULL, NULL, '2023-10-15 16:53:39'),
	('4a21256ef02cb1633bc6340dd3183bf6', '27029019043', '32e7cf625bdc93b3', 'checkup', NULL, NULL, NULL, '2023-09-13 16:53:39'),
	('4ba37e9c9b5130d2e932dc5a9472c7ce', '27029019043', '29564872130069fc', 'emergency', NULL, NULL, NULL, '2023-09-21 16:53:39'),
	('52bf7c82087177918a0f47ffd677fb43', '31126882175', '32b3e3fdc0b6c891', 'checkup', NULL, NULL, NULL, '2023-09-25 16:53:39'),
	('53541efb205cd6bf0ad57c8aa0f7e2dc', '14079152406', '232ef678f06a40af', 'visit', NULL, NULL, NULL, '2023-08-30 16:53:39'),
	('5444fbd48479e1e02de40f00a94a215f', '31126882175', '232ef678f06a40af', 'visit', NULL, NULL, NULL, '2023-12-31 16:53:39'),
	('5ccbc8f23f1919512e02c14bb19cb50c', '27029019043', '32b3e3fdc0b6c891', 'emergency', NULL, NULL, NULL, '2023-12-28 16:53:39'),
	('5f4451ffe2a2667fb41fd095391f88dc', '27066814709', '29564872130069fc', 'checkup', NULL, NULL, NULL, '2024-01-22 16:53:39'),
	('60dc19a2d684f5fce80b0dd91b0fcb22', '19083120133', 'def12561276321b5', 'emergency', NULL, NULL, NULL, '2023-08-09 16:53:39'),
	('60f825256f4975c21a62320b56b124e2', '27029019043', '32b3e3fdc0b6c891', 'checkup', NULL, NULL, NULL, '2024-01-13 16:53:39'),
	('6512f20d4f471ea64f4ef284fae680c0', '21051403902', '29564872130069fc', 'visit', NULL, NULL, NULL, '2023-11-09 16:53:39'),
	('74c953b51de2b2fc62549b88f2ae2257', '27066814709', '232ef678f06a40af', 'visit', NULL, NULL, NULL, '2023-08-27 16:53:39'),
	('7af966cb92a7b98ddeee5f212eba62d0', '14031148113', '232ef678f06a40af', 'emergency', NULL, NULL, NULL, '2024-01-01 16:53:39'),
	('7d87956fd5b87eadad4e7b8664078b18', '14079152406', '232ef678f06a40af', 'checkup', NULL, NULL, NULL, '2023-09-27 16:53:39'),
	('854ca17ee802be79aeea09a771260882', '14031148113', '32e7cf625bdc93b3', 'emergency', NULL, NULL, NULL, '2023-12-11 16:53:39'),
	('867770cfb050d7960166582122607881', '31126882175', 'def12561276321b5', 'emergency', NULL, NULL, NULL, '2023-08-29 16:53:39'),
	('8b8d79db003b07a0b3f11a783d09e985', '14031148113', '32e7cf625bdc93b3', 'followup', NULL, NULL, NULL, '2023-12-17 16:53:39'),
	('8f65c131f26f8351f5714646c392c3f4', '27029019043', '32e7cf625bdc93b3', 'emergency', NULL, NULL, NULL, '2023-12-13 16:53:39'),
	('91ad1f37cf8c3372ba58151bbeca09d7', '21051403902', '232ef678f06a40af', 'emergency', NULL, NULL, NULL, '2023-11-24 16:53:39'),
	('92aa145f7ee6f90410296faaf3164abd', '31126882175', '32e7cf625bdc93b3', 'emergency', NULL, NULL, NULL, '2024-01-07 16:53:39'),
	('93f9f88e88a79cc93b1551386c5edf15', '25048295909', '32b3e3fdc0b6c891', 'checkup', NULL, NULL, NULL, '2023-10-21 16:53:39'),
	('94f25b09beb05b4ef35a3515c63e1c6d', '05127902698', '32e7cf625bdc93b3', 'checkup', NULL, NULL, NULL, '2023-08-18 16:53:39'),
	('9582a3dd9063c3f959c4e64b9c3e953a', '21051403902', '32b3e3fdc0b6c891', 'emergency', NULL, NULL, NULL, '2023-11-02 16:53:39'),
	('99296a04d076385870c44a5be5209163', '14079152406', '32b3e3fdc0b6c891', 'checkup', NULL, NULL, NULL, '2023-08-16 16:53:39'),
	('998fa8b9498152d70e42e24e978f0c00', '31126882175', 'def12561276321b5', 'followup', NULL, NULL, NULL, '2023-10-16 16:53:39'),
	('9b88d6bb9e1deda9e3df54dfc0632a28', '27066814709', '232ef678f06a40af', 'followup', NULL, NULL, NULL, '2024-01-11 16:53:39'),
	('9bdae287a32f6a69b4a85a3ce6c0bd26', '14031148113', '29564872130069fc', 'checkup', NULL, NULL, NULL, '2024-02-08 16:53:39'),
	('9cc33430b95e060633613d0806c9b751', '31126882175', '29564872130069fc', 'emergency', NULL, NULL, NULL, '2024-01-11 16:53:39'),
	('9f950ebdc38383f3c7e73ef30ce24a32', '25048295909', '32e7cf625bdc93b3', 'emergency', NULL, NULL, NULL, '2023-08-28 16:53:39'),
	('a13027044f085bfebf8280dac015965b', '25048295909', '32b3e3fdc0b6c891', 'followup', NULL, NULL, NULL, '2023-08-06 16:53:39'),
	('a1924d4b9f077b6e458234859d34d7f0', '18079447154', '232ef678f06a40af', 'visit', NULL, NULL, NULL, '2023-11-29 16:53:39'),
	('a20a3a865cf64749a837b3aacbfaeaab', '27066814709', '29564872130069fc', 'visit', NULL, NULL, NULL, '2023-08-02 16:53:39'),
	('a23a92464e7a357c76b415b161418a17', '25048295909', '232ef678f06a40af', 'visit', NULL, NULL, NULL, '2023-10-19 16:53:39'),
	('a2616f1ed8e68027e51d2dc7c2360b74', '27029019043', '32e7cf625bdc93b3', 'followup', NULL, NULL, NULL, '2024-01-10 16:53:39'),
	('a2d55d1ed7e88a224090f94efc2404d1', '31126882175', '232ef678f06a40af', 'visit', NULL, NULL, NULL, '2023-11-15 16:53:39'),
	('a9c7bb0c84acc4f3286c174f4a2428ea', '27029019043', '232ef678f06a40af', 'emergency', NULL, NULL, NULL, '2023-10-25 16:53:39'),
	('aaf7dc307876326aad8e283cbbd5d9ff', '18079447154', '29564872130069fc', 'checkup', NULL, NULL, NULL, '2023-11-13 16:53:39'),
	('ac2ebaba9e9e719e898b21602337dec3', '27029019043', '32e7cf625bdc93b3', 'visit', NULL, NULL, NULL, '2023-12-07 16:53:39'),
	('b4bba4859c3ea55190ed052627b42baa', '14031148113', '32b3e3fdc0b6c891', 'checkup', NULL, NULL, NULL, '2023-11-05 16:53:39'),
	('b79fe18f4add6edd215435d054835172', '27066814709', '29564872130069fc', 'followup', NULL, NULL, NULL, '2023-10-13 16:53:39'),
	('b8494941d266160925cae7eab5911745', '19083120133', '232ef678f06a40af', 'visit', NULL, NULL, NULL, '2023-12-02 16:53:39'),
	('b9bbedd3b41940966e6a8c7bbe1d403f', '27066814709', '32e7cf625bdc93b3', 'checkup', NULL, NULL, NULL, '2024-01-27 16:53:39'),
	('bb59e35485696479ffebdb466b2bf52d', '25048295909', 'def12561276321b5', 'checkup', NULL, NULL, NULL, '2023-09-24 16:53:39'),
	('bbbc58af618ab04122c18fbf8c79d025', '27029019043', '232ef678f06a40af', 'checkup', NULL, NULL, NULL, '2024-02-03 16:53:39'),
	('be3cd45ca614b6420b85794db5df127f', '21051403902', '32e7cf625bdc93b3', 'checkup', NULL, NULL, NULL, '2023-09-10 16:53:39'),
	('c16a1b58f26422e127dc7804df574d00', '27066814709', '232ef678f06a40af', 'emergency', NULL, NULL, NULL, '2023-11-16 16:53:39'),
	('c1eb5d6af366c77cc3bec7d5de736204', '05127902698', '232ef678f06a40af', 'checkup', NULL, NULL, NULL, '2024-02-05 16:53:39'),
	('ca34bc130c7c02bf7fd34954f9452bc1', '05127902698', '29564872130069fc', 'checkup', NULL, NULL, NULL, '2023-11-11 16:53:39'),
	('cac4e0263dabfa4c895495f925667544', '31126882175', '232ef678f06a40af', 'visit', NULL, NULL, NULL, '2024-01-03 16:53:39'),
	('cee5f4091f6408011404f547a8d4f783', '25048295909', '32b3e3fdc0b6c891', 'followup', NULL, NULL, NULL, '2024-01-14 16:53:39'),
	('cfd151d2dfc8020678809b52a186afff', '14031148113', '32e7cf625bdc93b3', 'followup', NULL, NULL, NULL, '2023-11-15 16:53:39'),
	('d1f1dda5384e9224b0e6a2089e7d1820', '21051403902', '29564872130069fc', 'visit', NULL, NULL, NULL, '2023-10-05 16:53:39'),
	('d3c27c2dd4b21697cf1e1ba483456466', '27029019043', '32b3e3fdc0b6c891', 'emergency', NULL, NULL, NULL, '2024-01-23 16:53:39'),
	('d3f2560634b158d1774968ce974fe3da', '14031148113', 'def12561276321b5', 'visit', NULL, NULL, NULL, '2023-08-06 16:53:39'),
	('d426b31a76de07be9240c3cb8f5b3376', '27029019043', '32b3e3fdc0b6c891', 'visit', NULL, NULL, NULL, '2023-09-04 16:53:39'),
	('d4aef6c962ae2dfac15d9854fd0e4f9a', '18079447154', 'def12561276321b5', 'emergency', NULL, NULL, NULL, '2023-12-30 16:53:39'),
	('d7fb8271ee59abfc14bc4903e9ceb02c', '14079152406', '32e7cf625bdc93b3', 'emergency', NULL, NULL, NULL, '2023-09-22 16:53:39'),
	('d92e74a0efeab0a4e3fb613ba517ec20', '21051403902', '29564872130069fc', 'followup', NULL, NULL, NULL, '2023-10-03 16:53:39'),
	('d9c92e9c495c7ae7f6a2b2fc21750f2e', '27066814709', '32b3e3fdc0b6c891', 'followup', NULL, NULL, NULL, '2024-01-02 16:53:39'),
	('dad9296aaec10332714a7f2a8cf27f90', '14079152406', '29564872130069fc', 'visit', NULL, NULL, NULL, '2023-11-17 16:53:39'),
	('dc9b93787c8f7e34382844ec28374c4b', '05127902698', '32b3e3fdc0b6c891', 'checkup', NULL, NULL, NULL, '2023-11-01 16:53:39'),
	('e2e4bf5b437bcf153b66d3d85d53eda0', '27029019043', '32e7cf625bdc93b3', 'visit', NULL, NULL, NULL, '2024-01-25 16:53:39'),
	('e5f9312637eb24d4ad758e7fbe998c42', '27066814709', 'def12561276321b5', 'followup', NULL, NULL, NULL, '2023-12-28 16:53:39'),
	('e628c6edd0200586f8abd50503fab6aa', '25048295909', '232ef678f06a40af', 'visit', NULL, NULL, NULL, '2023-09-12 16:53:39'),
	('e6b947436869710993912889535d9c75', '14031148113', '32b3e3fdc0b6c891', 'visit', NULL, NULL, NULL, '2023-12-12 16:53:39'),
	('f0dbb7247a2120371195329425e82713', '27066814709', '29564872130069fc', 'emergency', NULL, NULL, NULL, '2023-08-24 16:53:39'),
	('f7b93bffc4f5c4b20ac9909d3681c989', '14031148113', '32e7cf625bdc93b3', 'visit', NULL, NULL, NULL, '2023-08-27 16:53:39'),
	('f8015b081ac24fd74e155a9636de3d6a', '21051403902', 'def12561276321b5', 'followup', NULL, NULL, NULL, '2023-11-20 16:53:39'),
	('f9c4c20de79148a53cc9628784cfd332', '25048295909', 'def12561276321b5', 'followup', NULL, NULL, NULL, '2024-02-09 16:53:39'),
	('fa3a853882ab4af9257b5dc67934548a', '21051403902', '32b3e3fdc0b6c891', 'visit', NULL, NULL, NULL, '2023-10-25 16:53:39'),
	('face67c04d2c3ebc50ad117ae334e2d1', '14079152406', '32b3e3fdc0b6c891', 'followup', NULL, NULL, NULL, '2023-09-07 16:53:39'),
	('fc06c7bd6b53e2c8a26af755887bd6b5', '19083120133', '32b3e3fdc0b6c891', 'emergency', NULL, NULL, NULL, '2023-11-26 16:53:39'),
	('ff2f90281f0853d740309e19a25c8023', '14079152406', '32e7cf625bdc93b3', 'emergency', NULL, NULL, NULL, '2023-08-26 16:53:39');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
