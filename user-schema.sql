CREATE TABLE `usuario` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`First_name` VARCHAR(45) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`Last_name` VARCHAR(45) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`Email` VARCHAR(50) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`Phone` VARCHAR(50) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`Comments` TEXT (10) DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`Status` VARCHAR(50) NULL DEFAULT 'active' COLLATE 'latin1_swedish_ci',
	PRIMARY KEY (`id`) USING BTREE
)
COLLATE='latin1_swedish_ci'
ENGINE=InnoDB
;
