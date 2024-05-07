
DROP DATABASE IF EXISTS `sql_basic`;
CREATE DATABASE `sql_basic`; 
USE `sql_basic`;  

CREATE TABLE `user`(
  `user_id` TINYINT(4) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `address` VARCHAR(10000),
  PRIMARY KEY(`user_id`)
) ENGINE=INNODB AUTO_INCREMENT=5 DEFAULT CHARSET=UTF8MB4 COLLATE=UTF8MB4_0900_AI_CI;

-- Insering new data to user table -- 
INSERT INTO `user` VALUES(1, 'Mijanur Rahman', '');
INSERT INTO `user` VALUES(2, 'HASAN Rahman', 'Sylhet');

SELECT * FROM `sql_basic`.`user` 
