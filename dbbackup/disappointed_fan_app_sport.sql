BEGIN TRANSACTION;
DROP TABLE IF EXISTS `disappointed_fan_app_sport`;
CREATE TABLE IF NOT EXISTS `disappointed_fan_app_sport` (
	`id`	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	`name`	varchar ( 255 ) NOT NULL,
	`created_at`	datetime NOT NULL,
	`updated_at`	datetime NOT NULL
);
INSERT INTO `disappointed_fan_app_sport` (id,name,created_at,updated_at) VALUES (1,'Baseball','2018-03-29 02:07:47.641000','2018-03-29 02:09:05.974000');
INSERT INTO `disappointed_fan_app_sport` (id,name,created_at,updated_at) VALUES (2,'Soccer','2018-03-29 02:08:26.733000','2018-03-29 02:09:12.874000');
INSERT INTO `disappointed_fan_app_sport` (id,name,created_at,updated_at) VALUES (3,'Hockey','2018-03-29 02:09:00.443000','2018-03-29 02:09:16.291000');
COMMIT;
