Author: Sun Davey <SunDavey@hotmail.com>  2018-03-29 16:14:59
Committer: Sun Davey <SunDavey@hotmail.com>  2018-03-29 16:14:59
Parent: da8983291e3ed8a5b68a71acd2abc036ac0ba615 (merged data again)
Branch: master
Follows: 
Precedes: 

    Index page css and added baskeball db

-------------------- dbbackup/disappointed_fan_app_team.sql --------------------
index 87a8c4d..d1d8ef6 100644
@@ -92,6 +92,36 @@ INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id)
 INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (82,'San Jose Sharks','2018-03-29 02:28:58.797000','2018-03-29 02:28:58.797000',3);
 INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (84,'Vancouver Canucks','2018-03-29 02:31:36.507000','2018-03-29 02:31:36.507000',3);
 INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (85,'Vegas Golden Knights','2018-03-29 02:31:46.541000','2018-03-29 02:31:46.541000',3);
+INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (86,'Boston Celtics','2018-03-29 22:45:32.608000','2018-03-29 22:45:32.608000',4);
+INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (87,'Brooklyn Nets','2018-03-29 22:45:44.768000','2018-03-29 22:45:44.768000',4);
+INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (88,'New York Knicks','2018-03-29 22:46:54.906000','2018-03-29 22:46:54.906000',4);
+INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (89,'Philadelphia 76ers','2018-03-29 22:47:04.071000','2018-03-29 22:47:04.071000',4);
+INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (90,'Toronto Raptors','2018-03-29 22:47:13.320000','2018-03-29 22:47:13.320000',4);
+INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (91,'Chicago Bulls','2018-03-29 22:47:21.661000','2018-03-29 22:47:21.661000',4);
+INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (92,'Cleveland Cavaliers','2018-03-29 22:47:30.801000','2018-03-29 22:47:30.802000',4);
+INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (93,'Detroit Pistons','2018-03-29 22:47:39.110000','2018-03-29 22:47:39.110000',4);
+INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (94,'Indiana Pacers','2018-03-29 22:47:48.054000','2018-03-29 22:47:48.054000',4);
+INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (95,'Milwaukee Bucks','2018-03-29 22:47:56.103000','2018-03-29 22:47:56.103000',4);
+INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (96,'Atlanta Hawks','2018-03-29 22:48:04.232000','2018-03-29 22:48:04.232000',4);
+INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (97,'Charlotte Hornets','2018-03-29 22:48:11.755000','2018-03-29 22:48:11.755000',4);
+INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (98,'Miami Heat','2018-03-29 22:48:20.290000','2018-03-29 22:48:20.290000',4);
+INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (99,'Orlando Magic','2018-03-29 22:48:28.814000','2018-03-29 22:48:28.814000',4);
+INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (100,'Washington Wizards','2018-03-29 22:48:38.521000','2018-03-29 22:48:38.521000',4);
+INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (101,'Denver Nuggets','2018-03-29 22:48:47.233000','2018-03-29 22:48:47.233000',4);
+INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (102,'Minnesota Timberwolves','2018-03-29 22:48:57.060000','2018-03-29 22:48:57.060000',4);
+INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (103,'Oklahoma City Thunder','2018-03-29 22:49:05.428000','2018-03-29 22:49:05.428000',4);
+INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (104,'Portland Trail Blazers','2018-03-29 22:49:14.458000','2018-03-29 22:49:14.458000',4);
+INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (105,'Utah Jazz','2018-03-29 22:49:23.782000','2018-03-29 22:49:23.782000',4);
+INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (106,'Golden State Warriors','2018-03-29 22:49:31.257000','2018-03-29 22:49:31.257000',4);
+INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (107,'Los Angeles Clippers','2018-03-29 22:49:40.771000','2018-03-29 22:49:40.771000',4);
+INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (108,'Los Angeles Lakers','2018-03-29 22:49:52.362000','2018-03-29 22:49:52.362000',4);
+INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (109,'Phoenix Suns','2018-03-29 22:50:00.479000','2018-03-29 22:50:00.479000',4);
+INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (110,'Sacramento Kings','2018-03-29 22:50:09.034000','2018-03-29 22:50:09.034000',4);
+INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (111,'Dallas Mavericks','2018-03-29 22:50:18.691000','2018-03-29 22:50:18.691000',4);
+INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (112,'Houston Rockets','2018-03-29 22:50:27.224000','2018-03-29 22:50:27.224000',4);
+INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (114,'Memphis Grizzlies','2018-03-29 22:51:33.183000','2018-03-29 22:51:33.183000',4);
+INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (115,'New Orleans Pelicans','2018-03-29 22:51:49.744000','2018-03-29 22:51:49.744000',4);
+INSERT INTO `disappointed_fan_app_team` (id,name,created_at,updated_at,sport_id) VALUES (116,'San Antonio Spurs','2018-03-29 22:51:58.720000','2018-03-29 22:51:58.720000',4);
 DROP INDEX IF EXISTS `disappointed_fan_app_team_fc9fd9e6`;
 CREATE INDEX IF NOT EXISTS `disappointed_fan_app_team_fc9fd9e6` ON `disappointed_fan_app_team` (
 	`sport_id`

