BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS `disappointed_fan_app_usersearch` (
	`id`	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	`search_data`	varchar ( 100 ) NOT NULL,
	`allowed`	smallint NOT NULL,
	`created_at`	datetime NOT NULL,
	`updated_at`	datetime NOT NULL,
	`team_id`	integer NOT NULL,
	FOREIGN KEY(`team_id`) REFERENCES `disappointed_fan_app_team`(`id`)
);
CREATE TABLE IF NOT EXISTS `disappointed_fan_app_team` (
	`id`	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	`name`	varchar ( 255 ) NOT NULL,
	`created_at`	datetime NOT NULL,
	`updated_at`	datetime NOT NULL,
	`sport_id`	integer NOT NULL,
	FOREIGN KEY(`sport_id`) REFERENCES `disappointed_fan_app_sport`(`id`)
);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (1,'Arizona Diamondbacks','2018-03-29 02:11:04.684000','2018-03-29 02:11:04.684000',1);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (2,'Atlanta Braves','2018-03-29 02:11:24.718000','2018-03-29 02:11:24.718000',1);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (3,'Baltimore Orioles','2018-03-29 02:11:39.619000','2018-03-29 02:11:39.619000',1);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (4,'Boston Red Sox','2018-03-29 02:11:52.387000','2018-03-29 02:11:52.387000',1);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (5,'Chicago Cubs','2018-03-29 02:12:07.129000','2018-03-29 02:12:07.129000',1);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (6,'Chicago White Sox','2018-03-29 02:12:36.298000','2018-03-29 02:12:36.298000',1);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (7,'Cincinnati Reds','2018-03-29 02:12:52.469000','2018-03-29 02:12:52.469000',1);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (8,'Cleveland Indians','2018-03-29 02:13:06.620000','2018-03-29 02:13:06.620000',1);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (9,'Colorado Rockies','2018-03-29 02:13:17.941000','2018-03-29 02:13:17.941000',1);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (10,'Detroit Tigers','2018-03-29 02:13:27.564000','2018-03-29 02:13:27.564000',1);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (11,'Houston Astros','2018-03-29 02:13:38.432000','2018-03-29 02:13:38.432000',1);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (12,'Kansas City Royals','2018-03-29 02:13:48.834000','2018-03-29 02:13:48.835000',1);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (13,'Los Angeles Angels of Anaheim','2018-03-29 02:14:01.165000','2018-03-29 02:14:01.165000',1);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (14,'Los Angeles Dodgers','2018-03-29 02:14:12.582000','2018-03-29 02:14:12.582000',1);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (15,'Miami Marlins','2018-03-29 02:14:21.854000','2018-03-29 02:14:21.854000',1);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (16,'Milwaukee Brewers','2018-03-29 02:14:31.041000','2018-03-29 02:14:31.041000',1);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (17,'Minnesota Twins','2018-03-29 02:14:40.728000','2018-03-29 02:14:40.728000',1);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (18,'New York Mets','2018-03-29 02:14:50.308000','2018-03-29 02:14:50.308000',1);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (19,'New York Yankees','2018-03-29 02:15:02.319000','2018-03-29 02:15:02.319000',1);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (20,'Oakland Athletics','2018-03-29 02:15:13.322000','2018-03-29 02:15:13.322000',1);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (21,'Philadelphia Phillies','2018-03-29 02:15:23.341000','2018-03-29 02:15:23.341000',1);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (22,'Pittsburgh Pirates','2018-03-29 02:15:37.696000','2018-03-29 02:15:37.696000',1);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (23,'San Diego Padres','2018-03-29 02:15:48.396000','2018-03-29 02:15:48.396000',1);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (24,'San Francisco Giants','2018-03-29 02:15:58.323000','2018-03-29 02:15:58.323000',1);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (25,'Seattle Mariners','2018-03-29 02:16:08.032000','2018-03-29 02:16:08.032000',1);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (26,'St. Louis Cardinals','2018-03-29 02:16:17.582000','2018-03-29 02:16:17.582000',1);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (27,'Tampa Bay Rays','2018-03-29 02:16:28.709000','2018-03-29 02:16:28.709000',1);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (28,'Texas Rangers','2018-03-29 02:16:37.862000','2018-03-29 02:16:37.862000',1);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (29,'Toronto Blue Jays','2018-03-29 02:16:47.940000','2018-03-29 02:16:47.940000',1);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (30,'Washington Nationals','2018-03-29 02:16:59.571000','2018-03-29 02:16:59.571000',1);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (31,'Atlanta United FC','2018-03-29 02:19:39.952000','2018-03-29 02:19:39.952000',2);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (32,'Chicago Fire','2018-03-29 02:19:52.113000','2018-03-29 02:19:52.113000',2);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (33,'Columbus Crew SC','2018-03-29 02:20:01.592000','2018-03-29 02:20:01.592000',2);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (34,'D.C. United','2018-03-29 02:20:13.073000','2018-03-29 02:20:13.073000',2);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (35,'Montreal Impact','2018-03-29 02:20:21.090000','2018-03-29 02:20:21.090000',2);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (36,'New England Revolution','2018-03-29 02:20:31.269000','2018-03-29 02:20:31.269000',2);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (37,'New York City FC','2018-03-29 02:20:41.946000','2018-03-29 02:20:41.946000',2);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (38,'New York Red Bulls','2018-03-29 02:20:54.215000','2018-03-29 02:20:54.215000',2);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (39,'Orlando City SC','2018-03-29 02:21:07.445000','2018-03-29 02:21:07.445000',2);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (40,'Philadelphia Union','2018-03-29 02:21:16.440000','2018-03-29 02:21:16.440000',2);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (41,'Toronto FC','2018-03-29 02:21:56.576000','2018-03-29 02:21:56.576000',2);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (42,'Colorado Rapids','2018-03-29 02:22:08.903000','2018-03-29 02:22:08.903000',2);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (43,'FC Dallas','2018-03-29 02:22:19.488000','2018-03-29 02:22:19.488000',2);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (44,'Houston Dynamo','2018-03-29 02:22:28.339000','2018-03-29 02:22:28.339000',2);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (45,'LA Galaxy','2018-03-29 02:22:36.440000','2018-03-29 02:22:36.440000',2);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (46,'Los Angeles FC','2018-03-29 02:22:44.312000','2018-03-29 02:22:44.312000',2);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (47,'Minnesota United FC','2018-03-29 02:22:54.480000','2018-03-29 02:22:54.481000',2);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (48,'Portland Timbers','2018-03-29 02:23:04.622000','2018-03-29 02:23:04.622000',2);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (49,'Real Salt Lake','2018-03-29 02:23:13.410000','2018-03-29 02:23:13.410000',2);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (50,'San Jose Earthquakes','2018-03-29 02:23:22.782000','2018-03-29 02:23:22.782000',2);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (51,'Seattle Sounders FC','2018-03-29 02:23:31.772000','2018-03-29 02:23:31.772000',2);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (52,'Sporting Kansas City','2018-03-29 02:23:40.924000','2018-03-29 02:23:40.924000',2);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (53,'Vancouver Whitecaps FC','2018-03-29 02:23:51.095000','2018-03-29 02:23:51.095000',2);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (54,'Boston Bruins','2018-03-29 02:24:44.618000','2018-03-29 02:24:44.618000',3);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (55,'Buffalo Sabres','2018-03-29 02:24:54.408000','2018-03-29 02:24:54.408000',3);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (56,'Detroit Red Wings','2018-03-29 02:25:05','2018-03-29 02:25:05',3);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (57,'Florida Panthers','2018-03-29 02:25:18.042000','2018-03-29 02:25:18.043000',3);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (58,'Montreal Canadiens','2018-03-29 02:25:31.347000','2018-03-29 02:25:31.347000',3);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (59,'Ottawa Senators','2018-03-29 02:25:41.644000','2018-03-29 02:25:41.644000',3);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (60,'Tampa Bay Lightning','2018-03-29 02:25:50.575000','2018-03-29 02:25:50.575000',3);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (61,'Toronto Maple Leafs','2018-03-29 02:26:00.077000','2018-03-29 02:26:00.077000',3);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (62,'Carolina Hurricanes','2018-03-29 02:26:08.797000','2018-03-29 02:26:08.797000',3);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (63,'Columbus Blue Jackets','2018-03-29 02:26:17.994000','2018-03-29 02:26:17.995000',3);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (64,'New Jersey Devils','2018-03-29 02:26:27.099000','2018-03-29 02:26:27.099000',3);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (65,'New York Islanders','2018-03-29 02:26:37.764000','2018-03-29 02:26:37.765000',3);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (66,'New York Rangers','2018-03-29 02:26:45.800000','2018-03-29 02:26:45.800000',3);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (67,'Philadelphia Flyers','2018-03-29 02:26:54.414000','2018-03-29 02:26:54.414000',3);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (68,'Pittsburgh Penguins','2018-03-29 02:27:02.787000','2018-03-29 02:27:02.787000',3);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (69,'Washington Capitals','2018-03-29 02:27:12.372000','2018-03-29 02:27:12.372000',3);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (70,'Chicago Blackhawks','2018-03-29 02:27:21.378000','2018-03-29 02:27:21.378000',3);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (71,'Colorado Avalanche','2018-03-29 02:27:30.841000','2018-03-29 02:27:30.841000',3);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (72,'Dallas Stars','2018-03-29 02:27:38.534000','2018-03-29 02:27:38.535000',3);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (73,'Minnesota Wild','2018-03-29 02:27:45.501000','2018-03-29 02:27:45.501000',3);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (74,'Nashville Predators','2018-03-29 02:27:52.864000','2018-03-29 02:27:52.864000',3);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (75,'St. Louis Blues','2018-03-29 02:28:00.760000','2018-03-29 02:28:00.760000',3);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (76,'Winnipeg Jets','2018-03-29 02:28:08.991000','2018-03-29 02:28:08.991000',3);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (77,'Anaheim Ducks','2018-03-29 02:28:16.254000','2018-03-29 02:28:16.254000',3);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (78,'Arizona Coyotes','2018-03-29 02:28:23.269000','2018-03-29 02:28:23.269000',3);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (79,'Calgary Flames','2018-03-29 02:28:30.811000','2018-03-29 02:28:30.811000',3);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (80,'Edmonton Oilers','2018-03-29 02:28:39.245000','2018-03-29 02:28:39.245000',3);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (81,'Los Angeles Kings','2018-03-29 02:28:50.770000','2018-03-29 02:28:50.770000',3);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (82,'San Jose Sharks','2018-03-29 02:28:58.797000','2018-03-29 02:28:58.797000',3);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (84,'Vancouver Canucks','2018-03-29 02:31:36.507000','2018-03-29 02:31:36.507000',3);
INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (85,'Vegas Golden Knights','2018-03-29 02:31:46.541000','2018-03-29 02:31:46.541000',3);
CREATE TABLE IF NOT EXISTS `disappointed_fan_app_sport` (
	`id`	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	`name`	varchar ( 255 ) NOT NULL,
	`created_at`	datetime NOT NULL,
	`updated_at`	datetime NOT NULL
);
INSERT INTO `disappointed_fan_app_sport` (id,name,created_at,updated_at) VALUES (1,'Baseball','2018-03-29 02:07:47.641000','2018-03-29 02:09:05.974000');
INSERT INTO `disappointed_fan_app_sport` (id,name,created_at,updated_at) VALUES (2,'Soccer','2018-03-29 02:08:26.733000','2018-03-29 02:09:12.874000');
INSERT INTO `disappointed_fan_app_sport` (id,name,created_at,updated_at) VALUES (3,'Hockey','2018-03-29 02:09:00.443000','2018-03-29 02:09:16.291000');
CREATE INDEX IF NOT EXISTS `disappointed_fan_app_usersearch_f6a7ca40` ON `disappointed_fan_app_usersearch` (
	`team_id`
);
CREATE INDEX IF NOT EXISTS `disappointed_fan_app_team_fc9fd9e6` ON `disappointed_fan_app_team` (
	`sport_id`
);
COMMIT;
