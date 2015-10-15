DROP TABLE IF EXISTS `balance_for_all_projects`;
DROP VIEW IF EXISTS `balance_for_all_projects`;
CREATE VIEW `balance_for_all_projects` AS select `objects`.`name` AS `name`,(`objects`.`price` - `objects`.`spending`) AS `balance` from `objects`;

DROP TABLE IF EXISTS `balance_for_2014`;
DROP VIEW IF EXISTS `balance_for_2014`;
CREATE VIEW `balance_for_2014` AS select sum((`objects`.`price` - `objects`.`spending`)) AS `total` from `objects` where (`objects`.`finished`=1) and YEAR(`objects`.`end`)=2014;

DROP TABLE IF EXISTS `balance_for_2015`;
DROP VIEW IF EXISTS `balance_for_2015`;
CREATE VIEW `balance_for_2015` AS select sum((`objects`.`price` - `objects`.`spending`)) AS `total` from `objects` where (`objects`.`finished`=1) and YEAR(`objects`.`end`)=2015;

DROP TABLE IF EXISTS `balance_for_2016`;
DROP VIEW IF EXISTS `balance_for_2016`;
CREATE VIEW `balance_for_2016` AS select sum((`objects`.`price` - `objects`.`spending`)) AS `total` from `objects` where (`objects`.`finished`=1) and YEAR(`objects`.`end`)=2016;


DROP TABLE IF EXISTS `top_foreman`;
DROP VIEW IF EXISTS `top_foreman`;
CREATE VIEW `top_foreman` AS select distinct `workers`.`name` AS `name`,`professions`.`name` AS `profession`,`objects`.`name` AS `object`,(`objects`.`price` - `objects`.`spending`) AS `balance` from (((`objects` join `salary`) join `workers`) join `professions` on(((`salary`.`prof_id` = `professions`.`id`) and (`salary`.`object_id` = `objects`.`id`) and (`salary`.`worker_id` = `workers`.`id`)))) where (`professions`.`name` = 'Foreman') order by (`objects`.`price` - `objects`.`spending`) desc;


DROP TABLE IF EXISTS `total_balance`;
DROP VIEW IF EXISTS `total_balance`;
CREATE VIEW `total_balance` AS select sum((`objects`.`price` - `objects`.`spending`)) AS `total` from `objects`;
