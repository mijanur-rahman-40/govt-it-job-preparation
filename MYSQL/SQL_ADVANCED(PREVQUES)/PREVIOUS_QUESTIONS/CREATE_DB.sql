DROP DATABASE IF EXISTS `pet_society`;
CREATE DATABASE `pet_society`; 
USE `pet_society`;

SET NAMES UTF8;
SET character_set_client = utf8mb4;

CREATE TABLE `pet_society`.`Animals` (
  `Animal_ID` INT NOT NULL,
  `Name` VARCHAR(200) NULL,
  `Prev_Owner` VARCHAR(45) NULL,
  `Date_Admitted` DATE NULL);

CREATE TABLE `pet_society`.`Adopter` (
  `PSIN` INT NULL,
  `Name` VARCHAR(45) NULL,
  `Address` VARCHAR(45) NULL,
  `Others_Animals` VARCHAR(45) NULL);
  
  CREATE TABLE `pet_society`.`Adopter` (
  `PSIN` INT NULL,
  `Name` VARCHAR(45) NULL,
  `Address` VARCHAR(45) NULL,
  `Others_Animals` VARCHAR(45) NULL);

