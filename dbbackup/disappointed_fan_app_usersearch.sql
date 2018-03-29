BEGIN TRANSACTION;
DROP TABLE IF EXISTS `disappointed_fan_app_usersearch`;
CREATE TABLE IF NOT EXISTS `disappointed_fan_app_usersearch` (
	`id`	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	`search_data`	varchar ( 100 ) NOT NULL,
	`allowed`	smallint NOT NULL,
	`created_at`	datetime NOT NULL,
	`updated_at`	datetime NOT NULL,
	`team_id`	integer NOT NULL,
	FOREIGN KEY(`team_id`) REFERENCES `disappointed_fan_app_team`(`id`)
);
DROP INDEX IF EXISTS `disappointed_fan_app_usersearch_f6a7ca40`;
CREATE INDEX IF NOT EXISTS `disappointed_fan_app_usersearch_f6a7ca40` ON `disappointed_fan_app_usersearch` (
	`team_id`
);
COMMIT;
