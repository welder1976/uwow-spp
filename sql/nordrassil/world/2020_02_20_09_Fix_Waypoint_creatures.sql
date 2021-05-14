DELETE FROM `waypoint_data` WHERE `id` = '17547';
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `delay_chance`, `move_flag`, `speed`, `action`, `action_chance`, `entry`, `wpguid`) VALUES 
('17547', '8', '-3929.27', '-12431.9', '10.3129', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('17547', '7', '-3897.21', '-12421.9', '4.08596', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('17547', '6', '-3872.2', '-12413', '0.703684', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('17547', '5', '-3830.2', '-12396.5', '-0.748694', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('17547', '4', '-3792.25', '-12394.5', '-1.7873', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('17547', '3', '-3846.18', '-12400.6', '-0.600935', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('17547', '2', '-3880.35', '-12416.3', '1.53222', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('17547', '1', '-3916.96', '-12427', '8.30357', '0', '0', '0', '0', '0', '0', '100', '0', '0');

DELETE FROM `waypoint_data` WHERE `id` = '17170';
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `delay_chance`, `move_flag`, `speed`, `action`, `action_chance`, `entry`, `wpguid`) VALUES 
('17170', '8', '-1726.76', '-11432.4', '44.7744', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('17170', '1', '-1888.23', '-11050.4', '59.2996', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('17170', '2', '-1867.95', '-11076.6', '60.714', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('17170', '3', '-1828.12', '-11096.2', '63.7927', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('17170', '4', '-1777.13', '-11188.8', '63.9644', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('17170', '5', '-1785.68', '-11257.9', '59.5347', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('17170', '6', '-1776.69', '-11300.7', '57.2451', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('17170', '7', '-1741.33', '-11372.8', '53.7837', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('17170', '9', '-1706.11', '-11481.8', '40.863', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('17170', '10', '-1702.65', '-11514.1', '38.5342', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('17170', '11', '-1658.81', '-11560.2', '37.7236', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('17170', '12', '-1638.84', '-11612.1', '39.3336', '0', '0', '0', '0', '0', '0', '100', '0', '0');


DELETE FROM `waypoint_data` WHERE `id` = '17546';
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `delay_chance`, `move_flag`, `speed`, `action`, `action_chance`, `entry`, `wpguid`) VALUES 
('17546', '9', '-4136.2', '-12190.5', '-1.08422', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('17546', '8', '-4142.3', '-12207.7', '-0.960655', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('17546', '7', '-4161', '-12251.7', '-0.972611', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('17546', '6', '-4196.76', '-12293', '0.335497', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('17546', '5', '-4237.42', '-12363', '9.14411', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('17546', '4', '-4211.89', '-12317.8', '1.96244', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('17546', '3', '-4187.8', '-12277.7', '-0.170198', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('17546', '2', '-4162.87', '-12251.1', '-0.962983', '0', '0', '0', '0', '0', '0', '100', '0', '0'),
('17546', '1', '-4145.47', '-12214', '-0.962708', '0', '0', '0', '0', '0', '0', '100', '0', '0');


/* SYNC TABLE : `waypoints` */
DELETE FROM `waypoints` WHERE `entry` = '17865';
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES
('17865', '1', '-1953.06', '-11879.6', '49.935', 'matis'),
('17865', '2', '-1950.08', '-11875.6', '50.848', 'matis');

DELETE FROM `waypoints` WHERE `entry` = '17843';
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES
('17843', '1', '-1954.37', '-11885.9', '49.442', 'kuros'),
('17843', '2', '-1951.83', '-11877.2', '50.112', 'kuros');


DELETE FROM `waypoints` WHERE `entry` = '17312';
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES
('17312', '28', '-5354.19', '-11171.4', '7.89793', 'magwin'),
('17312', '27', '-5342.53', '-11160', '7.89095', 'magwin'),
('17312', '26', '-5330.92', '-11149.4', '7.22508', 'magwin'),
('17312', '25', '-5312.89', '-11131.9', '5.76826', 'magwin'),
('17312', '24', '-5289.96', '-11113.2', '5.63432', 'magwin'),
('17312', '23', '-5267.82', '-11099.1', '12.9138', 'magwin'),
('17312', '22', '-5238.27', '-11083.8', '18.9224', 'magwin'),
('17312', '21', '-5204.16', '-11092.9', '21.9959', 'magwin'),
('17312', '20', '-5186.91', '-11080.4', '19.9869', 'magwin'),
('17312', '19', '-5176.86', '-11041.1', '22.7645', 'magwin'),
('17312', '18', '-5164.26', '-11042.4', '28.0474', 'magwin'),
('17312', '17', '-5150.48', '-11033.1', '27.4736', 'magwin'),
('17312', '16', '-5137.74', '-11038', '28.7999', 'magwin'),
('17312', '15', '-5113.36', '-11046', '30.6914', 'magwin'),
('17312', '14', '-5097.25', '-11062.6', '30.5468', 'magwin'),
('17312', '13', '-5077.79', '-11067', '28.4788', 'magwin'),
('17312', '12', '-5046.12', '-11045.9', '26.1862', 'magwin'),
('17312', '11', '-5020.94', '-11054.8', '23.2024', 'magwin'),
('17312', '10', '-4991.53', '-11064.2', '20.2764', 'magwin'),
('17312', '9', '-4982.5', '-11029.8', '19.2861', 'magwin'),
('17312', '8', '-4967.5', '-11012.4', '19.6204', 'magwin'),
('17312', '7', '-4942.38', '-11012.9', '16.8877', 'magwin'),
('17312', '6', '-4930.51', '-11029.1', '13.6316', 'magwin'),
('17312', '5', '-4909.69', '-11039.5', '11.0751', 'magwin'),
('17312', '4', '-4890.39', '-11035.5', '8.66472', 'magwin'),
('17312', '3', '-4856.64', '-11037.5', '1.16504', 'magwin'),
('17312', '2', '-4810.52', '-11030.9', '2.04269', 'magwin'),
('17312', '1', '-4785.6', '-11050.3', '3.74738', 'magwin');

DELETE FROM `waypoints` WHERE `entry` = '44882';
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES
('44882', '9', '1313.73', '1212.25', '58.4994', 'Deathstalker Rane Yorick'),
('44882', '7', '1297.54', '1207.18', '58.4876', 'Deathstalker Rane Yorick'),
('44882', '6', '1298.48', '1221.09', '53.7464', 'Deathstalker Rane Yorick'),
('44882', '5', '1301.95', '1220.87', '53.7464', 'Deathstalker Rane Yorick'),
('44882', '4', '1298.27', '1207.11', '53.7464', 'Deathstalker Rane Yorick'),
('44882', '3', '1290.57', '1207.09', '52.6992', 'Deathstalker Rane Yorick'),
('44882', '2', '1289.77', '1196.78', '52.4214', 'Deathstalker Rane Yorick'),
('44882', '1', '1298.52', '1192.23', '52.2096', 'Deathstalker Rane Yorick'),
('44882', '8', '1311.4', '1205.98', '58.5102', 'Deathstalker Rane Yorick');
