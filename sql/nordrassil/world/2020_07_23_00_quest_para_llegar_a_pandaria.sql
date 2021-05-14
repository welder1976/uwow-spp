UPDATE spell_target_position SET target_position_x = '1626.166' , target_position_y = '-4365.619' , target_position_z = '24.588' , target_orientation = '0.679' WHERE id = '130409';
UPDATE `creature_template` SET `ScriptName` = 'npc_general_nazim' WHERE `entry` = 54870; 
UPDATE `creature_template` SET `ScriptName` = 'npc_general_nazim_jadeforest_ship' WHERE `entry` = 55135; 
UPDATE `creature_template` SET `ScriptName` = 'npc_skyfire_Gyrocopter_Vehicle' WHERE `entry` = 66297; 
UPDATE `creature_template` SET `ScriptName` = 'npc_general_nazim_Ship' WHERE `entry` = 55054; 
UPDATE `creature_template` SET `ScriptName` = 'npc_gunship_machingun' WHERE `entry` = 100200; 
UPDATE  `creature_template_addon` SET auras=0 WHERE entry=55054;

SET @CREATURE  	:= 'Sully \"The Pickle\" McLeary';
SET @ENTRY 		:= '60147';
DELETE FROM creature WHERE  `id` = @ENTRY;
INSERT INTO `creature` (`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `MovementID`, `isActive`, `unit_flags3`) VALUES
(@ENTRY, '0', '1519', '6555', '1', '1', '0', '0', '-7990.2', '1239', '278.778', '4.82191', '300', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0'); 

SET @CREATURE  	:= 'General Nazgrim';
SET @ENTRY 		:= '54870';
DELETE FROM creature WHERE  `id` = @ENTRY;
INSERT INTO `creature` (`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `MovementID`, `isActive`, `unit_flags3`) VALUES
(@ENTRY, '1', '1637', '5356', '1', '1', '0', '0', '1620.61', '-4368.31', '25.2353', '0.345756', '300', '0', '0', '156000', '0', '0', '0', '0', '0', '0', '0', '0', '0'); 
DELETE FROM  `creature_queststarter` WHERE `id`= @ENTRY;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES 
('54870', '29612'),  /* Quest(29612): The Art of War ,QuestMinLevel: 85 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('54870', '31853');  /* Quest(31853): All Aboard! ,QuestMinLevel: 85 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
DELETE FROM  `creature_questender` WHERE `id`= @ENTRY;
INSERT INTO `creature_questender` (`id`, `quest`) VALUES 
('54870', '29611'),  /* Quest(29611): The Art of War ,QuestMinLevel: 85 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('54870', '29612');  /* Quest(29612): The Art of War ,QuestMinLevel: 85 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 

SET @CREATURE  	:= 'Gunship Turret';
SET @ENTRY 		:= '170200';
DELETE FROM creature WHERE  `id` = @ENTRY;
INSERT INTO `creature` (`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `MovementID`, `isActive`, `unit_flags3`) VALUES
(@ENTRY, '870', '5785', '6050', '1', '1', '0', '0', '3080.41', '-828.509', '283.783', '4.82476', '300', '0', '0', '433335', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6050', '1', '1', '0', '0', '3093.4', '-827.147', '283.201', '4.79728', '300', '0', '0', '433335', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6050', '1', '1', '0', '0', '3106.91', '-826.184', '283.786', '4.85618', '300', '0', '0', '433335', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6521', '1', '1', '0', '0', '3017.14', '-561', '251.206', '5.67666', '300', '0', '0', '433335', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3381.44', '-957.49', '293.518', '3.26575', '300', '0', '0', '433335', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3380.01', '-944.43', '292.941', '3.26968', '300', '0', '0', '433335', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3377.99', '-931.413', '293.508', '3.26575', '300', '0', '0', '433335', '0', '0', '0', '0', '0', '0', '0', '0', '0'); 
DELETE FROM npc_spellclick_spells WHERE  `npc_entry` = @ENTRY;
INSERT INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`cast_flags`,`user_type`) VALUES 
(@ENTRY, '94354', '1', '0'); 

DELETE FROM creature WHERE  `id` = 100200;
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `PhaseId`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `AiID`, `MovementID`, `MeleeID`, `isActive`, `skipClone`, `personal_size`, `isTeemingSpawn`, `unit_flags3`) VALUES
('339599','100200','0','139','7638','1','1','4686','0','0','2381.89','-5388.9','51.7254','4.43014','180','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0'),
('11546513','100200','0','139','2268','1','1','7968','0','0','2381.89','-5388.9','51.7254','4.43014','180','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0');

SET @CREATURE  	:= 'Mishka';
SET @ENTRY 		:= '54904';
DELETE FROM creature WHERE  `id` = @ENTRY;
INSERT INTO `creature` (`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `MovementID`, `isActive`, `unit_flags3`) VALUES
(@ENTRY, '0', '1519', '6555', '1', '1', '0', '0', '-7984.43', '1227.35', '278.784', '5.23811', '300', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0'); 

SET @CREATURE  	:= 'Rell Nightwind';
SET @ENTRY 		:= '55789';
DELETE FROM creature WHERE  `id` = @ENTRY;
INSERT INTO `creature` (`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `MovementID`, `isActive`, `unit_flags3`) VALUES
(@ENTRY, '0', '1519', '1519', '1', '1', '0', '0', '-8458.74', '352.869', '135.572', '5.43504', '300', '0', '0', '156000', '0', '0', '0', '0', '0', '2048', '0', '0', '0'); 
DELETE FROM  `creature_queststarter` WHERE `id`= @ENTRY;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES 
('55789', '29547'),  /* Quest(29547): The King's Command ,QuestMinLevel: 85 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('55789', '29548');  /* Quest(29548): The Mission ,QuestMinLevel: 85 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
DELETE FROM  `creature_questender` WHERE `id`= @ENTRY;
INSERT INTO `creature_questender` (`id`, `quest`) VALUES 
('55789', '29547');  /* Quest(29547): The King's Command ,QuestMinLevel: 85 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 

SET @CREATURE  	:= 'General Nazgrim';
SET @ENTRY 		:= '55054';
DELETE FROM creature WHERE  `id` = @ENTRY;
DELETE FROM smart_scripts WHERE `entryorguid` = 55054 AND `source_type`= 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
('55054', '0', '0', '0', '19', '0', '100', '0', '29690', '0', '0', '0', '62', '870', '0', '0', '0', '0', '0', '7', '0', '0', '0', '3175', '-697', '231', '0', 'General Nazgrim - On Quest \'Into the Mists\' Taken - Teleport'); 
INSERT INTO `creature` (`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `MovementID`, `isActive`, `unit_flags3`) VALUES
(@ENTRY, '1', '14', '374', '1', '1', '0', '0', '1839.39', '-5470.92', '103.522', '2.25518', '120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0'); 
DELETE FROM  `creature_queststarter` WHERE `id`= @ENTRY;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES 
('55054', '29690');  /* Quest(29690): Into the Mists ,QuestMinLevel: 85 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
DELETE FROM  `creature_questender` WHERE `id`= @ENTRY;
INSERT INTO `creature_questender` (`id`, `quest`) VALUES 
('55054', '31853');  /* Quest(31853): All Aboard! ,QuestMinLevel: 85 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 

SET @CREATURE  	:= 'General Nazgrim';
SET @ENTRY 		:= '55135';
DELETE FROM smart_scripts WHERE `entryorguid` = 55135 AND `source_type`= 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
('55135', '0', '0', '0', '1', '0', '100', '0', '0', '0', '500', '500', '33', '67040', '0', '0', '0', '0', '0', '17', '0', '20', '0', '0', '0', '0', '0', 'General Nazgrim - Out of Combat - Quest Credit \'Into the Mists\''), 
('55135', '0', '1', '2', '62', '0', '50', '0', '55135', '0', '0', '0', '62', '870', '0', '0', '0', '0', '0', '7', '0', '0', '0', '3092', '-798', '307', '0', 'General Nazgrim - On Gossip Option 0 Selected - Teleport'), 
('55135', '0', '2', '1', '62', '0', '50', '0', '55135', '0', '0', '0', '62', '870', '0', '0', '0', '0', '0', '7', '0', '0', '0', '3414', '-942', '323', '0', 'General Nazgrim - On Gossip Option 0 Selected - Teleport'); 
DELETE FROM creature WHERE  `id` = @ENTRY;
INSERT INTO `creature` (`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `MovementID`, `isActive`, `unit_flags3`) VALUES
(@ENTRY, '870', '5785', '6521', '1', '1', '0', '0', '3002.1', '-549.787', '248.114', '3.6739', '300', '0', '0', '156000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6522', '1', '1', '0', '0', '3181.23', '-700.903', '231.27', '2.1141', '300', '0', '0', '156000', '0', '0', '0', '0', '0', '2048', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6522', '1', '1', '0', '0', '3048.03', '-798.359', '303.286', '0.0962827', '300', '0', '0', '156000', '0', '0', '0', '0', '0', '0', '0', '0', '0'); 
DELETE FROM gossip_menu_option WHERE  `MenuID` = 55135;
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionIndex`, `OptionNPC`, `OptionText`, `OptionType`, `OptionNpcflag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`) VALUES 
('55135', '0', '0', 'We are ready to go...', '1', '1', '0', '0', '0', '0', '');
DELETE FROM  `creature_queststarter` WHERE `id`= @ENTRY;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES 
('55135', '31765');  /* Quest(31765): Paint it Red! ,QuestMinLevel: 85 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
DELETE FROM  `creature_questender` WHERE `id`= @ENTRY;
INSERT INTO `creature_questender` (`id`, `quest`) VALUES 
('55135', '29690');  /* Quest(29690): Into the Mists ,QuestMinLevel: 85 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */

SET @CREATURE  	:= 'Skyfire Engineer';
SET @ENTRY 		:= '68829';
DELETE FROM creature WHERE  `id` = @ENTRY;
INSERT INTO `creature` (`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `MovementID`, `isActive`, `unit_flags3`) VALUES
(@ENTRY, '0', '1519', '6555', '1', '1', '0', '0', '-7990.15', '1236.32', '278.779', '1.61474', '300', '0', '0', '393941', '0', '0', '0', '0', '0', '0', '0', '0', '0'); 

SET @CREATURE  	:= 'Skyfire Marine';
SET @ENTRY 		:= '66300'; 
DELETE FROM creature WHERE  `id` = @ENTRY;
INSERT INTO `creature` (`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `MovementID`, `isActive`, `unit_flags3`) VALUES
(@ENTRY, '0', '1519', '6555', '1', '1', '0', '66300', '-7989.61', '1243.73', '278.773', '5.82424', '300', '0', '0', '468000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '0', '1519', '6555', '1', '1', '0', '66300', '-7977.62', '1239.44', '278.773', '2.70796', '300', '0', '0', '468000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '0', '1519', '6555', '1', '1', '0', '66300', '-7983.85', '1219.54', '278.781', '2.85378', '300', '0', '0', '468000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '0', '1519', '6555', '1', '1', '0', '66300', '-7996.93', '1224.23', '278.781', '6.0941', '300', '0', '0', '468000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '5853', '1', '1', '0', '0', '-584.455', '-1723.75', '12.1287', '2.66389', '300', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '5853', '1', '1', '0', '0', '-519.109', '-1631.58', '10.0723', '3.481', '300', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '5853', '1', '1', '0', '0', '-512.805', '-1644.24', '9.72164', '3.48967', '300', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '5853', '1', '1', '0', '0', '-521.42', '-1670.17', '10.1786', '2.77417', '300', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '5853', '1', '1', '0', '0', '-519.375', '-1662.61', '10.0475', '3.15808', '300', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '5853', '1', '1', '0', '0', '-527.941', '-1629.11', '10.7007', '3.4035', '300', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '5853', '1', '1', '0', '0', '-577.859', '-1716.22', '12.1178', '1.49749', '300', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '5853', '1', '1', '0', '0', '-582.642', '-1721.07', '12.2949', '1.14002', '300', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '5853', '1', '1', '0', '0', '-579.668', '-1718.1', '12.1155', '3.8011', '300', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0'); 

SET @CREATURE  	:= 'Sky Admiral Rogers';
SET @ENTRY 		:= '66292'; 
DELETE FROM creature WHERE  `id` = @ENTRY;
INSERT INTO `creature` (`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `MovementID`, `isActive`, `unit_flags3`) VALUES
(@ENTRY, '0', '1519', '6555', '1', '1', '0', '0', '-7984.01', '1240.73', '278.774', '4.34884', '300', '0', '0', '156000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '5853', '1', '1', '0', '0', '-761.247', '-1382.63', '79.1918', '0.133182', '300', '0', '0', '156000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6516', '1', '1', '0', '0', '-462.939', '-1906.7', '53.8457', '1.22142', '300', '0', '0', '156000', '0', '0', '0', '0', '0', '0', '0', '0', '0'); 
DELETE FROM gossip_menu_option WHERE  `MenuID` = 61022;
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionIndex`, `OptionNPC`, `OptionText`, `OptionType`, `OptionNpcflag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`) VALUES 
('61022', '0', '0', 'I\'m ready to depart...', '1', '1', '0', '0', '0', '0', '');
DELETE FROM  `creature_queststarter` WHERE `id`= @ENTRY;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES 
('66292', '29555'),  /* Quest(29555): The White Pawn ,QuestMinLevel: 85 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('66292', '29556'),  /* Quest(29556): Hozen Aren't Your Friends, Hozen Are Your Enemies ,QuestMinLevel: 85 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('66292', '31732'),  /* Quest(31732): Unleash Hell ,QuestMinLevel: 85 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('66292', '31733');  /* Quest(31733): Touching Ground ,QuestMinLevel: 85 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
DELETE FROM  `creature_questender` WHERE `id`= @ENTRY;
INSERT INTO `creature_questender` (`id`, `quest`) VALUES 
('66292', '29548'),  /* Quest(29548): The Mission ,QuestMinLevel: 85 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('66292', '31732'),  /* Quest(31732): Unleash Hell ,QuestMinLevel: 85 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 
('66292', '31745');  /* Quest(31745): Onward and Inward ,QuestMinLevel: 85 ,QuestProfession ID: 0[THIS SKILL DONT EXIST] */ 

SET @CREATURE  	:= 'Skyfire Gyrocopter';
SET @ENTRY 		:= '66297'; 
DELETE FROM creature WHERE  `id` = @ENTRY;
INSERT INTO `creature` (`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `MovementID`, `isActive`, `unit_flags3`) VALUES
(@ENTRY, '870', '5785', '5853', '1', '1', '0', '0', '-765.188', '-1389.04', '79.4835', '1.68042', '300', '0', '0', '156000', '0', '0', '0', '0', '0', '0', '0', '0', '0'); 

SET @CREATURE  	:= '7th Legion Paratrooper';
SET @ENTRY 		:= '67905';
DELETE FROM creature WHERE  `id` = @ENTRY;
INSERT INTO `creature` (`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `MovementID`, `isActive`, `unit_flags3`) VALUES
(@ENTRY, '870', '5785', '5853', '1', '1', '0', '0', '-752.156', '-1390.77', '79.2018', '3.33721', '300', '0', '0', '393941', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '5853', '1', '1', '0', '0', '-752.625', '-1386.66', '79.475', '3.26259', '300', '0', '0', '393941', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '5853', '1', '1', '0', '0', '-753.175', '-1382.38', '79.2002', '3.29401', '300', '0', '0', '393941', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '5853', '1', '1', '0', '0', '-748.349', '-1381.64', '79.1329', '3.29401', '300', '0', '0', '393941', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '5853', '1', '1', '0', '0', '-747.635', '-1386.02', '79.4899', '3.30301', '300', '0', '0', '393941', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '5853', '1', '1', '0', '0', '-747.255', '-1390.18', '79.1583', '3.2284', '300', '0', '0', '393941', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '5853', '1', '1', '0', '0', '-742.356', '-1389.31', '79.139', '3.25981', '300', '0', '0', '393941', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '5853', '1', '1', '0', '0', '-742.819', '-1385.41', '79.4682', '3.25589', '300', '0', '0', '393941', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '5853', '1', '1', '0', '0', '-743.492', '-1380.98', '79.1367', '3.30301', '300', '0', '0', '393941', '0', '0', '0', '0', '0', '0', '0', '0', '0'); 
DELETE FROM `creature_loot_template` WHERE `entry` = 67905;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES 
('67905', '72988', '19.17', '1', '0', '1', '3'), 
('67905', '74841', '24.93', '1', '0', '1', '3'), 
('67905', '74844', '23.17', '1', '0', '1', '3'), 
('67905', '82248', '0.13', '1', '0', '1', '1'), 
('67905', '88567', '0.26', '1', '0', '1', '1'), 
('67905', '89112', '7.28', '1', '0', '1', '1'), 
('67905', '90808', '0.13', '1', '0', '1', '1'), 
('67905', '91838', '9.95', '1', '0', '1', '2'); 
DELETE FROM pickpocketing_loot_template WHERE `entry` = @ENTRY;
INSERT INTO `pickpocketing_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES 
(@ENTRY, '87530', '0.15', '1', '0', '1', '1'), 
(@ENTRY, '88154', '0.09', '1', '0', '1', '1'), 
(@ENTRY, '88158', '0.12', '1', '0', '1', '1'), 
(@ENTRY, '88165', '0.06', '1', '0', '1', '1'); 

SET @CREATURE  	:= 'Gunship Fire Bunny';
SET @ENTRY 		:= '66795'; 
UPDATE `creature_template` SET `ScriptName` = 'npc_gunship_fire_bunny' WHERE `entry` = @ENTRY;
DELETE FROM creature WHERE  `id` = @ENTRY;
INSERT INTO `creature` (`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `MovementID`, `isActive`, `unit_flags3`) VALUES
(@ENTRY, '870', '5785', '6050', '1', '1', '0', '0', '3125.66', '-816.503', '296.06', '3.77878', '300', '0', '0', '1', '0', '0', '0', '0', '33554432', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6050', '1', '1', '0', '0', '3112.43', '-804.038', '308.025', '0.721732', '300', '0', '0', '1', '0', '0', '0', '0', '33554432', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6050', '1', '1', '0', '0', '3067.34', '-824.218', '310.352', '3.84422', '300', '0', '0', '1', '0', '0', '0', '0', '33554432', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6050', '1', '1', '0', '0', '3096.85', '-826.544', '308.123', '2.76822', '300', '0', '0', '1', '0', '0', '0', '0', '33554432', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6050', '1', '1', '0', '0', '3125.3', '-816.629', '296.23', '4.15838', '300', '0', '0', '1', '0', '0', '0', '0', '33554432', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6050', '1', '1', '0', '0', '3086.67', '-818.58', '294.093', '4.64533', '300', '0', '0', '1', '0', '0', '0', '0', '33554432', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6050', '1', '1', '0', '0', '3072.51', '-813.512', '282.32', '5.94255', '300', '0', '0', '1', '0', '0', '0', '0', '33554432', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6050', '1', '1', '0', '0', '3074.35', '-813.668', '284.258', '3.39654', '300', '0', '0', '1', '0', '0', '0', '0', '33554432', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6522', '1', '1', '0', '0', '3107.72', '-766.26', '302.122', '0.152313', '300', '0', '0', '1', '0', '0', '0', '0', '33554432', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6522', '1', '1', '0', '0', '3124.96', '-769.716', '292.907', '6.11349', '300', '0', '0', '1', '0', '0', '0', '0', '33554432', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6522', '1', '1', '0', '0', '3146.59', '-788.932', '287.806', '5.34828', '300', '0', '0', '1', '0', '0', '0', '0', '33554432', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6522', '1', '1', '0', '0', '3147.18', '-799.627', '287.931', '4.75923', '300', '0', '0', '1', '0', '0', '0', '0', '33554432', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6522', '1', '1', '0', '0', '3069.05', '-783.926', '281.305', '1.90822', '300', '0', '0', '1', '0', '0', '0', '0', '33554432', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6522', '1', '1', '0', '0', '3110.82', '-779.014', '281.455', '1.17519', '300', '0', '0', '1', '0', '0', '0', '0', '33554432', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6522', '1', '1', '0', '0', '3083.24', '-770.653', '309.108', '2.07261', '300', '0', '0', '1', '0', '0', '0', '0', '33554432', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6522', '1', '1', '0', '0', '3111.84', '-782.27', '309.684', '6.247', '300', '0', '0', '1', '0', '0', '0', '0', '33554432', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6522', '1', '1', '0', '0', '3087.99', '-793.96', '308.831', '4.50735', '300', '0', '0', '1', '0', '0', '0', '0', '33554432', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6522', '1', '1', '0', '0', '3092.86', '-778.506', '309.045', '2.36321', '300', '0', '0', '1', '0', '0', '0', '0', '33554432', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6522', '1', '1', '0', '0', '3118.95', '-786.456', '284.176', '1.82576', '300', '0', '0', '1', '0', '0', '0', '0', '33554432', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6522', '1', '1', '0', '0', '3110.15', '-778.471', '283.614', '0.902906', '300', '0', '0', '1', '0', '0', '0', '0', '33554432', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6522', '1', '1', '0', '0', '3056.21', '-785.724', '287.336', '0.726193', '300', '0', '0', '1', '0', '0', '0', '0', '33554432', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6522', '1', '1', '0', '0', '3064.04', '-784.695', '285.85', '0.0311151', '300', '0', '0', '1', '0', '0', '0', '0', '33554432', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6522', '1', '1', '0', '0', '3082.41', '-771.285', '294.672', '2.32055', '300', '0', '0', '1', '0', '0', '0', '0', '33554432', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6522', '1', '1', '0', '0', '3035.23', '-781.06', '312.282', '0.675136', '300', '0', '0', '1', '0', '0', '0', '0', '33554432', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6522', '1', '1', '0', '0', '3120.04', '-786.279', '282.744', '2.91014', '300', '0', '0', '1', '0', '0', '0', '0', '33554432', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6522', '1', '1', '0', '0', '3146.81', '-791.988', '286.097', '1.2498', '300', '0', '0', '1', '0', '0', '0', '0', '33554432', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6522', '1', '1', '0', '0', '3108.81', '-755.536', '344.983', '1.78647', '300', '0', '0', '1', '0', '0', '0', '0', '33554432', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3044.87', '-804.319', '285.179', '2.63864', '300', '0', '0', '1', '0', '0', '0', '0', '33554432', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3057.8', '-810.267', '284.158', '4.18195', '300', '0', '0', '1', '0', '0', '0', '0', '33554432', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3065.85', '-808.317', '290.295', '5.46607', '300', '0', '0', '1', '0', '0', '0', '0', '33554432', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3033.42', '-814.526', '312.928', '2.39516', '300', '0', '0', '1', '0', '0', '0', '0', '33554432', '0', '0', '0', '0'); 
 
SET @CREATURE  	:= 'Skyfire Gyrocopter';
SET @ENTRY 		:= '66473'; 
DELETE FROM creature WHERE  `id` = @ENTRY;
INSERT INTO `creature` (`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `MovementID`, `isActive`, `unit_flags3`) VALUES
(@ENTRY, '0', '1519', '6555', '1', '1', '0', '0', '-7976.4', '1305.4', '260.283', '5.96974', '300', '0', '0', '1350000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '0', '1519', '6555', '1', '1', '0', '0', '-7982.42', '1289.57', '260.387', '5.94618', '300', '0', '0', '1350000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '0', '1519', '6555', '1', '1', '0', '0', '-7987.58', '1275.37', '259.804', '5.94224', '300', '0', '0', '1350000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '0', '1519', '6555', '1', '1', '0', '0', '-7958.42', '1264.9', '260.323', '2.83207', '300', '0', '0', '1350000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '0', '1519', '6555', '1', '1', '0', '0', '-7953.26', '1279.6', '260.22', '2.78102', '300', '0', '0', '1350000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '0', '1519', '6555', '1', '1', '0', '0', '-7947.46', '1295.59', '260.238', '2.75353', '300', '0', '0', '1350000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '5853', '1', '1', '0', '0', '-729.506', '-1399.26', '80.5', '1.7079', '300', '0', '0', '1350000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '5853', '1', '1', '0', '0', '-763.087', '-1372.37', '80.5', '4.81023', '300', '0', '0', '1350000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '5853', '1', '1', '0', '0', '-758.506', '-1403.26', '80.5', '1.7079', '300', '0', '0', '1350000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '5853', '1', '1', '0', '0', '-742.018', '-1400.98', '80.5', '1.7079', '300', '0', '0', '1350000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '5853', '1', '1', '0', '0', '-746.854', '-1369.31', '80.5', '4.88902', '300', '0', '0', '1350000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '5853', '1', '1', '0', '0', '-734.252', '-1367.73', '80.5', '4.90448', '300', '0', '0', '1350000', '0', '0', '0', '0', '0', '0', '0', '0', '0'); 

SET @CREATURE  	:= 'Skyfire Engineer';
SET @ENTRY 		:= '66480'; 
DELETE FROM creature WHERE  `id` = @ENTRY;
INSERT INTO `creature` (`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `MovementID`, `isActive`, `unit_flags3`) VALUES
(@ENTRY, '0', '1519', '6555', '1', '1', '0', '66480', '-7950.04', '1293.26', '259.139', '0.574555', '300', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '0', '1519', '6555', '1', '1', '0', '66480', '-7953.21', '1276.07', '259.101', '1.51706', '300', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '0', '1519', '6555', '1', '1', '0', '66480', '-7955.95', '1266.83', '259.149', '3.65189', '300', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '0', '1519', '6555', '1', '1', '0', '66480', '-7988.16', '1279.38', '259.142', '4.97893', '300', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '0', '1519', '6555', '1', '1', '0', '66480', '-7984.55', '1286.86', '259.104', '0.796188', '300', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '0', '1519', '6555', '1', '1', '0', '66480', '-7977.09', '1302.6', '259.134', '1.68962', '300', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '5853', '1', '1', '0', '66480', '-760.296', '-1372.96', '79.1273', '2.62699', '300', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '5853', '1', '1', '0', '66480', '-748.804', '-1371.01', '79.0843', '0.851694', '300', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '5853', '1', '1', '0', '66480', '-766.231', '-1386.26', '79.447', '0.141036', '300', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '5853', '1', '1', '0', '66480', '-736.204', '-1369.52', '79.1374', '0.88882', '300', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '5853', '1', '1', '0', '66480', '-761.145', '-1402.36', '79.1513', '6.12801', '300', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '5853', '1', '1', '0', '66480', '-744.723', '-1399.59', '79.0903', '5.92101', '300', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '5853', '1', '1', '0', '66480', '-732.143', '-1397.63', '79.1402', '5.71738', '300', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'); 

SET @CREATURE  	:= 'Skyfire Gyrocopter Pilot';
SET @ENTRY 		:= '66460';
DELETE FROM creature WHERE  `id` = @ENTRY;
INSERT INTO `creature` (`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `MovementID`, `isActive`, `unit_flags3`) VALUES
(@ENTRY, '0', '1519', '4411', '1', '1', '0', '66460', '-8025.93', '1250.13', '263.726', '2.75751', '300', '0', '0', '468000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '0', '1519', '6555', '1', '1', '0', '66460', '-7986.99', '1280.63', '259.136', '4.68793', '300', '0', '0', '468000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '0', '1519', '6555', '1', '1', '0', '66460', '-7976.48', '1286.67', '259.123', '2.57525', '300', '0', '0', '468000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '0', '1519', '6555', '1', '1', '0', '66460', '-7972.89', '1299.85', '259.164', '1.98416', '300', '0', '0', '468000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '0', '1519', '6555', '1', '1', '0', '66460', '-7963.57', '1266.36', '259.162', '6.10764', '300', '0', '0', '468000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '0', '1519', '6555', '1', '1', '0', '66460', '-7947.04', '1222.4', '263.725', '6.04312', '300', '0', '0', '468000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '0', '1519', '6555', '1', '1', '0', '66460', '-7961.46', '1275.83', '259.139', '0.534982', '300', '0', '0', '468000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '0', '1519', '6555', '1', '1', '0', '66460', '-7954.89', '1295.91', '259.172', '0.00380373', '300', '0', '0', '468000', '0', '0', '0', '0', '0', '0', '0', '0', '0'); 

SET @CREATURE  	:= 'Bath';
SET @ENTRY 		:= '200296';
DELETE FROM `gameobject_template` WHERE `entry` = @ENTRY;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`,  `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `data32`, `AIName`, `ScriptName`, `VerifiedBuild`) VALUES 
(@ENTRY, '5', '7483', 'Bath', '', '', '', '0', '0', '0.8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '15595'); 
DELETE FROM `gameobject` WHERE `id` = @ENTRY;
INSERT INTO `gameobject` (`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `phaseId`, `position_x`, `position_y`, `position_z`, `orientation`,`rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `personal_size`) VALUES 
(@ENTRY, '870', '5785', '6522', '1', '1', '0', '3057.2', '-795.298', '283.333', '1.59706', '0', '0', '0.716333', '0.697759', '300', '0', '1', '0', '0'), 
(@ENTRY, '870', '5785', '6522', '1', '1', '0', '3082.15', '-782.729', '307.756', '3.55851', '0', '0', '0.978351', '-0.206951', '300', '0', '1', '0', '0'), 
(@ENTRY, '870', '5785', '6050', '1', '1', '0', '3083.13', '-808.298', '307.795', '3.20115', '0', '0', '0.999557', '-0.0297746', '300', '0', '1', '0', '0'), 
(@ENTRY, '571', '4395', '4553', '1', '1', '0', '5797.04', '694.071', '657.949', '-1.44862', '0', '0', '0', '0', '120', '0', '1', '0', '0'); 

SET @CREATURE  	:= 'Alarm Fury of Hellscream';
SET @ENTRY 		:= '215711';
DELETE FROM `gameobject_template` WHERE `entry` = @ENTRY;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`,  `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `data32`, `AIName`, `ScriptName`, `VerifiedBuild`) VALUES 
(@ENTRY, '5', '13042', 'Alarm Fury of Hellscream', '', '', '', '0', '0', '0.6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '17538'); 
DELETE FROM `gameobject` WHERE `id` = @ENTRY;
INSERT INTO `gameobject` (`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `phaseId`, `position_x`, `position_y`, `position_z`, `orientation`,`rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `personal_size`) VALUES 
(@ENTRY, '870', '5785', '6050', '1', '1', '0', '3117.77', '-810.188', '309.864', '3.33741', '0', '0', '0.995211', '-0.0977536', '300', '0', '1', '0', '0'), 
(@ENTRY, '870', '5785', '6522', '1', '1', '0', '3064.45', '-793.268', '283.702', '1.7757', '0', '0', '0.775718', '0.63108', '300', '0', '1', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '3064.58', '-800.612', '283.621', '4.99976', '0', '0', '0.598567', '-0.801073', '300', '0', '1', '0', '0'), 
(@ENTRY, '870', '5785', '6522', '1', '1', '0', '3133.7', '-783.723', '285.722', '1.59899', '0', '0', '0.717005', '0.697068', '300', '0', '1', '0', '0'), 
(@ENTRY, '870', '5785', '6050', '1', '1', '0', '3135.2', '-800.145', '286.11', '4.60197', '0', '0', '0.745048', '-0.667011', '300', '0', '1', '0', '0'), 
(@ENTRY, '870', '5785', '6522', '1', '1', '0', '3115.19', '-775.518', '309.149', '6.28271', '0', '0', '0.00023547', '-1', '300', '0', '1', '0', '0'), 
(@ENTRY, '870', '5785', '6050', '1', '1', '0', '3072.89', '-805.971', '313.53', '0.337251', '0', '0', '0.167827', '0.985816', '300', '0', '1', '0', '0'), 
(@ENTRY, '870', '5785', '6522', '1', '1', '0', '3072.71', '-786.524', '313.429', '6.24344', '0', '0', '0.0198691', '-0.999803', '300', '0', '1', '0', '0'), 
(@ENTRY, '870', '5785', '6050', '1', '1', '0', '3101.63', '-801.976', '308.584', '3.33301', '0', '0', '0.995423', '-0.0955632', '300', '0', '1', '0', '0'), 
(@ENTRY, '870', '5785', '6522', '1', '1', '0', '3100.12', '-786.783', '308.41', '2.94871', '0', '0', '0.995353', '0.096293', '300', '0', '1', '0', '0'); 

SET @CREATURE  	:= 'Fuel Cell Fury of Hellscream';
SET @ENTRY 		:= '215718';
DELETE FROM `gameobject_template` WHERE `entry` = @ENTRY;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`,  `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `data32`, `AIName`, `ScriptName`, `VerifiedBuild`) VALUES 
(@ENTRY, '5', '8099', 'Fuel Cell Fury of Hellscream', '', '', '', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '17538'); 
DELETE FROM `gameobject` WHERE `id` = @ENTRY;
INSERT INTO `gameobject` (`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `phaseId`, `position_x`, `position_y`, `position_z`, `orientation`,`rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `personal_size`) VALUES 
(@ENTRY, '870', '5785', '6050', '1', '1', '0', '3073.11', '-814.509', '282.363', '2.39171', '0', '0', '0.930529', '0.366219', '300', '0', '1', '0', '0'), 
(@ENTRY, '870', '5785', '6050', '1', '1', '0', '3074.22', '-813.941', '282.614', '3.50996', '0', '0', '0.983086', '-0.183143', '300', '0', '1', '0', '0'), 
(@ENTRY, '870', '5785', '6050', '1', '1', '0', '3073.58', '-813.072', '282.548', '4.51346', '0', '0', '0.773829', '-0.633395', '300', '0', '1', '0', '0'), 
(@ENTRY, '870', '5785', '6522', '1', '1', '0', '3068.49', '-782.826', '281.531', '1.06948', '0', '0', '0.509619', '0.8604', '300', '0', '1', '0', '0'), 
(@ENTRY, '870', '5785', '6522', '1', '1', '0', '3067.61', '-784.434', '281.262', '1.06948', '0', '0', '0.509619', '0.8604', '300', '0', '1', '0', '0'), 
(@ENTRY, '870', '5785', '6522', '1', '1', '0', '3070.17', '-782.7', '281.645', '3.04723', '0', '0', '0.998887', '0.0471614', '300', '0', '1', '0', '0'), 
(@ENTRY, '870', '5785', '6522', '1', '1', '0', '3067.29', '-782.427', '281.649', '3.04723', '0', '0', '0.998887', '0.0471614', '300', '0', '1', '0', '0'), 
(@ENTRY, '870', '5785', '6522', '1', '1', '0', '3109.6', '-778.36', '281.97', '0.859903', '0', '0', '0.416827', '0.908986', '300', '0', '1', '0', '0'), 
(@ENTRY, '870', '5785', '6522', '1', '1', '0', '3111.78', '-778.541', '281.509', '1.60982', '0', '0', '0.720769', '0.693175', '300', '0', '1', '0', '0'), 
(@ENTRY, '870', '5785', '6522', '1', '1', '0', '3111.71', '-776.611', '282.118', '1.60982', '0', '0', '0.720769', '0.693175', '300', '0', '1', '0', '0'), 
(@ENTRY, '870', '5785', '6522', '1', '1', '0', '3117.68', '-785.127', '282.508', '4.68465', '0', '0', '0.716844', '-0.697233', '300', '0', '1', '0', '0'), 
(@ENTRY, '870', '5785', '6522', '1', '1', '0', '3119.3', '-785.474', '282.723', '3.19632', '0', '0', '0.999626', '-0.0273603', '300', '0', '1', '0', '0'), 
(@ENTRY, '870', '5785', '6522', '1', '1', '0', '3119.08', '-786.795', '282.532', '3.07458', '0', '0', '0.999439', '0.0334984', '300', '0', '1', '0', '0'), 
(@ENTRY, '870', '5785', '6050', '1', '1', '0', '3146.74', '-800.709', '286.498', '5.39151', '0', '0', '0.431214', '-0.90225', '300', '0', '1', '0', '0'), 
(@ENTRY, '870', '5785', '6522', '1', '1', '0', '3147.96', '-799.859', '286.544', '5.92165', '0', '0', '0.179784', '-0.983706', '300', '0', '1', '0', '0'), 
(@ENTRY, '870', '5785', '6050', '1', '1', '0', '3149.25', '-800.505', '288.356', '4.13487', '0', '0', '0.879188', '-0.476474', '300', '0', '1', '0', '0'), 
(@ENTRY, '870', '5785', '6522', '1', '1', '0', '3146.92', '-789.953', '286.1', '5.43135', '0', '0', '0.413156', '-0.91066', '300', '0', '1', '0', '0'), 
(@ENTRY, '870', '5785', '6522', '1', '1', '0', '3148.5', '-791.414', '286.245', '2.39972', '0', '0', '0.931988', '0.36249', '300', '0', '1', '0', '0'), 
(@ENTRY, '870', '5785', '6522', '1', '1', '0', '3145.54', '-788.92', '286.007', '5.69839', '0', '0', '0.28825', '-0.957555', '300', '0', '1', '0', '0'), 
(@ENTRY, '870', '5785', '6522', '1', '1', '0', '3146.06', '-790.805', '286.014', '0.891748', '0', '0', '0.431247', '0.902234', '300', '0', '1', '0', '0'), 
(@ENTRY, '870', '5785', '6522', '1', '1', '0', '3147.82', '-789.286', '286.198', '5.58058', '0', '0', '0.344123', '-0.938925', '300', '0', '1', '0', '0'), 
(@ENTRY, '870', '5785', '6522', '1', '1', '0', '3147.28', '-788.825', '286.162', '5.58058', '0', '0', '0.344123', '-0.938925', '300', '0', '1', '0', '0'), 
(@ENTRY, '870', '5785', '6050', '1', '1', '0', '3113.38', '-803.689', '308.071', '0.00816697', '0', '0', '0.00408348', '0.999992', '300', '0', '1', '0', '0'), 
(@ENTRY, '870', '5785', '6522', '1', '1', '0', '3087.06', '-793.831', '307.565', '5.58842', '0', '0', '0.340439', '-0.940267', '300', '0', '1', '0', '0'), 
(@ENTRY, '870', '5785', '6522', '1', '1', '0', '3089.18', '-794.216', '307.486', '3.91945', '0', '0', '0.925316', '-0.379198', '300', '0', '1', '0', '0'), 
(@ENTRY, '870', '5785', '6522', '1', '1', '0', '3087.73', '-795.643', '307.546', '3.91945', '0', '0', '0.925316', '-0.379198', '300', '0', '1', '0', '0'), 
(@ENTRY, '870', '5785', '6522', '1', '1', '0', '3092.18', '-779.191', '307.548', '1.64179', '0', '0', '0.731756', '0.681566', '300', '0', '1', '0', '0'), 
(@ENTRY, '870', '5785', '6522', '1', '1', '0', '3091.84', '-776.871', '307.629', '4.82265', '0', '0', '0.667068', '-0.744997', '300', '0', '1', '0', '0'), 
(@ENTRY, '870', '5785', '6522', '1', '1', '0', '3090.52', '-778.383', '307.642', '0.165241', '0', '0', '0.0825268', '0.996589', '300', '0', '1', '0', '0'), 
(@ENTRY, '870', '5785', '6522', '1', '1', '0', '3093.55', '-777.82', '307.511', '3.44462', '0', '0', '0.988544', '-0.150936', '300', '0', '1', '0', '0'); 

SET @CREATURE  	:= 'Horde Gunship Hellscream Fist';
SET @ENTRY 		:= '510000';
DELETE FROM `gameobject_template` WHERE `entry` = @ENTRY;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`,  `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `data32`, `AIName`, `ScriptName`, `VerifiedBuild`) VALUES 
(@ENTRY, '43', '8253', 'Horde Gunship Hellscream Fist', '', '', '', '114', '32', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '15595'); 
DELETE FROM `gameobject` WHERE `id` = @ENTRY;
INSERT INTO `gameobject` (`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `phaseId`, `position_x`, `position_y`, `position_z`, `orientation`,`rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `personal_size`) VALUES 
(@ENTRY, '1', '14', '374', '1', '1', '0', '1837.77', '-5469.1', '69.4696', '2.28659', '0', '0', '0.910005', '0.414597', '300', '0', '1', '0', '0'); 

SET @CREATURE  	:= 'Horde Gunship Jade Forest';
SET @ENTRY 		:= '510001';
DELETE FROM `gameobject_template` WHERE `entry` = @ENTRY;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`,  `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `data32`, `AIName`, `ScriptName`, `VerifiedBuild`) VALUES 
(@ENTRY, '43', '8253', 'Horde Gunship Jade Forest', '', '', '', '114', '32', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '15595'); 
DELETE FROM `gameobject` WHERE `id` = @ENTRY;
INSERT INTO `gameobject` (`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `phaseId`, `position_x`, `position_y`, `position_z`, `orientation`,`rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `personal_size`) VALUES 
(@ENTRY, '870', '5785', '5785', '1', '1', '0', '3411.72', '-938.052', '282.932', '4.84442', '0', '0', '0.658922', '-0.752212', '300', '0', '1', '0', '0'), 
(@ENTRY, '870', '5785', '6522', '1', '1', '0', '3093.15', '-794.652', '273.19', '3.21994', '0', '0', '0.999233', '-0.0391626', '300', '0', '1', '0', '0'); 

SET @ENTRY 		:= '246274';
DELETE FROM `gameobject` WHERE `id` = @ENTRY;
INSERT INTO `gameobject` (`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `phaseId`, `position_x`, `position_y`, `position_z`, `orientation`,`rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `personal_size`) VALUES 
(@ENTRY, '0', '1519', '6555', '1', '1', '0', -7972.52, 1272.5, 238.694, 4.36837, 0,0, 0.817702,-0.575642, '300', '0', '1', '0', '0'), 
(@ENTRY, '870', '5785', '5853', '1', '1', '0', '-732.432', '-1383.89', '58.6926', '0.138857', '0', '0', '0.0693728', '0.997591', '300', '0', '1', '0', '0');
replace into `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `PhaseId`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `AiID`, `state`, `isActive`, `personal_size`) values
('128510','246274','0','1519','4411','1','1','7053 6821 6481 5686 5513 4070 4064 1231 1139','-8412.87','1376.47','114.691','3.14941','0','0','0','1','180','255','0','1','0','0'),
('25300408','246274','870','5842','6479','1','65535','','5917.98','6473.89','87.8998','0.120137','0','0','-0.0600323','-0.998196','300','0','0','1','1','0');

SET @CREATURE  	:= 'Gyrocopter Beacon';
SET @ENTRY 		:= '510007';
DELETE FROM `gameobject_template` WHERE `entry` = @ENTRY;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`,  `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `data32`, `AIName`, `ScriptName`, `VerifiedBuild`) VALUES 
(@ENTRY, '33', '9086', 'Gyrocopter Beacon', '', '', '', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '15595'); 
DELETE FROM `gameobject` WHERE `id` = @ENTRY;
INSERT INTO `gameobject` (`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `phaseId`, `position_x`, `position_y`, `position_z`, `orientation`,`rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `personal_size`) VALUES 
(@ENTRY, '0', '1519', '6555', '1', '1', '0', '-7976.42', '1305.44', '259.147', '1.22527', '0', '0', '0.575024', '0.818137', '300', '0', '1', '0', '0'), 
(@ENTRY, '0', '1519', '6555', '1', '1', '0', '-7976.42', '1305.44', '259.147', '1.22527', '0', '0', '0.575024', '0.818137', '300', '0', '1', '0', '0'), 
(@ENTRY, '0', '1519', '6555', '1', '1', '0', '-7982.19', '1289.39', '259.093', '1.22527', '0', '0', '0.575024', '0.818137', '300', '0', '1', '0', '0'), 
(@ENTRY, '0', '1519', '6555', '1', '1', '0', '-7953.23', '1279.69', '259.085', '2.79712', '0', '0', '0.985204', '0.171384', '300', '0', '1', '0', '0'), 
(@ENTRY, '0', '1519', '6555', '1', '1', '0', '-7947.54', '1295.56', '259.144', '2.79712', '0', '0', '0.985204', '0.171384', '300', '0', '1', '0', '0'), 
(@ENTRY, '0', '1519', '6555', '1', '1', '0', '-7958.49', '1265.01', '259.159', '2.77462', '0', '0', '0.983214', '0.182456', '300', '0', '1', '0', '0'), 
(@ENTRY, '870', '5785', '5853', '1', '1', '0', '-742.156', '-1400.93', '79.0905', '1.70176', '0', '0', '0.751861', '0.659322', '300', '0', '1', '0', '0'), 
(@ENTRY, '870', '5785', '5853', '1', '1', '0', '-758.438', '-1403.08', '79.1341', '1.70176', '0', '0', '0.751861', '0.659322', '300', '0', '1', '0', '0'), 
(@ENTRY, '870', '5785', '5853', '1', '1', '0', '-734.224', '-1368.11', '79.1488', '4.83551', '0', '0', '0.662267', '-0.749268', '300', '0', '1', '0', '0'), 
(@ENTRY, '870', '5785', '5853', '1', '1', '0', '-746.678', '-1369.83', '79.0893', '4.83551', '0', '0', '0.662267', '-0.749268', '300', '0', '1', '0', '0'), 
(@ENTRY, '870', '5785', '5853', '1', '1', '0', '-729.519', '-1399.27', '79.149', '1.70176', '0', '0', '0.751861', '0.659322', '300', '0', '1', '0', '0'), 
(@ENTRY, '0', '1519', '6555', '1', '1', '0', '-7987.3', '1275.19', '259.162', '1.22527', '0', '0', '0.575024', '0.818137', '300', '0', '1', '0', '0'), 
(@ENTRY, '870', '5785', '5853', '1', '1', '0', '-762.95', '-1372.52', '79.1364', '4.83551', '0', '0', '0.662267', '-0.749268', '300', '0', '1', '0', '0'); 

 REPLACE INTO `creature_template` (`entry`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `npcflag2`, `speed_walk`, `speed_run`, `speed_fly`, `scale`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Mana_mod_extra`, `Armor_mod`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES
('54870','0','85','85','4','35','3','0','1','1.14286','1.14286','1','425','510','0','43','1','2000','2000','1','0','0','0','0','0','0','0','425','510','43','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','3','1','1','1','1','0','0','npc_general_nazim'),
('54904','0','1','1','4','35','0','0','1','1.14286','1.14286','1','1','2','0','1','1','2000','2000','1','0','0','0','0','0','0','0','1','2','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','3','1','1','1','1','0','0',''),
('55054','0','85','85','4','35','3','0','1','1.14286','1.14286','1','425','510','0','43','1','2000','2000','1','0','0','0','0','0','0','0','425','510','43','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','4','1','1','1','1','0','0','npc_general_nazim_Ship'),
('55135','55135','85','85','4','35','3','0','1','1.14286','1.14286','1','425','510','0','43','1','2000','2000','1','0','0','0','0','0','0','0','425','510','43','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','3','1','1','1','1','0','0','npc_general_nazim_jadeforest_ship'),
('55789','0','85','85','4','35','2','0','1','1.14286','1.14286','1','425','510','0','43','1','2000','2000','1','0','0','0','0','0','0','0','425','510','43','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','3','1','1','1','1','0','0',''),
('60147','0','1','1','4','35','0','0','1','1.14286','1.14286','1','1','2','0','1','1','2000','2000','1','0','0','0','0','0','0','0','1','2','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','4','1','1','1','1','0','0',''),
('66292','61022','85','85','4','1732','3','0','1','1.14286','1.14286','1','9839','14339','0','42299','1','2000','2000','1','33538','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','4','1','1','1','1','0','0','npc_sky_admiral_roger'),
('66297','0','85','85','4','35','0','0','1','1.14286','1.14286','1','9839','14339','0','42299','1','2000','2000','1','16777986','2048','8','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','2458','0','0','','0','4','1','1','1','1','0','0','npc_skyfire_Gyrocopter_Vehicle'),
('66300','0','85','85','4','1733','0','0','1','1.14286','1.14286','1','9839','14339','0','42299','1','2000','2000','1','32768','2048','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','130418','15655','6660','0','0','0','0','0','0','0','0','0','','0','4','1','1','1','1','0','0',''),
('66460','0','85','85','4','1733','0','0','1','1.14286','1.14286','1','9839','14339','0','42299','1','2000','2000','1','32768','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','6660','0','0','0','0','0','0','0','0','0','0','0','','0','4','1','1','1','1','0','0',''),
('66473','0','84','84','4','84','0','0','1','1.14286','1.14286','1','11839','17339','0','45299','2','2000','2000','1','33554432','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','2471','0','0','','0','4','1','1','1','1','1783','0',''),
('66480','0','84','84','4','1732','0','0','1','1.14286','1.14286','1','9839','14339','0','42299','1','2000','2000','1','32768','2048','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','4','1','1','1','1','0','0',''),
('66795','0','1','1','4','35','0','0','1','1.14286','1.14286','1','9839','14339','0','42299','1','2000','2000','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','3','1','1','1','1','0','128','npc_gunship_fire_bunny'),
('67905','0','90','90','4','35','0','0','1','1.14286','1.14286','1','9839','14339','0','42299','1','2000','2000','1','0','0','0','0','0','0','0','0','0','0','67905','67905','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','3518','3518','','0','4','1','1','1','1','0','0',''),
('68829','0','90','90','4','35','0','0','1','1.14286','1.14286','1','9839','14339','0','42299','1','2000','2000','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','4','1','1','1','1','0','0',''),
('170200','0','90','90','0','35','16777220','0','1','1.14286','1.14286','1','9839','14339','0','42299','1','2000','2000','1','16777224','2048','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','130163','130994','0','0','0','0','0','0','0','1314','0','0','','0','3','1','1','1','1','0','0','npc_gunship_machingun');

REPLACE INTO `creature_template_wdb` (`Entry`, `Name1`, `NameAlt1`, `CursorName`, `TypeFlags`, `TypeFlags2`, `Type`, `Family`, `KillCredit1`, `KillCredit2`, `Displayid1`, `Displayid2`, `Displayid3`, `Displayid4`, `Leader`, `QuestItem1`, `QuestItem2`, `QuestItem3`, `QuestItem4`, `QuestItem5`, `QuestItem6`, `VerifiedBuild`) VALUES
('54870','General Nazgrim','','','262144','0','7','0','0','0','42562','0','0','0','0','0','0','0','0','0','0','16048'),
('54904','Mishka','SI:7','','0','0','7','0','0','0','38870','0','0','0','0','0','0','0','0','0','0','16048'),
('55054','General Nazgrim','','','262144','0','7','0','0','0','42562','0','0','0','0','0','0','0','0','0','0','16048'),
('55135','General Nazgrim','','','262144','0','7','0','0','0','42562','0','0','0','0','0','0','0','0','0','0','16048'),
('55789','Rell Nightwind','SI:7','','0','0','7','0','0','0','45707','0','0','0','0','0','0','0','0','0','0','16048'),
('60147','Sully \"The Pickle\" McLeary','SI:7','','4096','0','7','0','0','0','38872','0','0','0','0','0','0','0','0','0','0','16048'),
('66292','Sky Admiral Rogers','','','0','0','7','0','0','0','45220','0','0','0','0','0','0','0','0','0','0','16048'),
('66297','Skyfire Gyrocopter','','vehichlecursor','0','0','9','0','0','0','25587','0','0','0','0','0','0','0','0','0','0','16048'),
('66300','Skyfire Marine','','','0','0','7','0','0','0','44977','44978','44979','44980','0','0','0','0','0','0','0','16048'),
('66460','Skyfire Gyrocopter Pilot','','','0','0','7','0','0','0','45156','45157','45158','45159','0','0','0','0','0','0','0','16048'),
('66473','Skyfire Gyrocopter','','','1048576','0','9','0','0','0','44634','0','0','0','0','0','0','0','0','0','0','16048'),
('66480','Skyfire Engineer','','','0','0','7','0','0','0','45185','45191','45192','45193','0','0','0','0','0','0','0','16048'),
('66795','Gunship Fire Bunny','','','1024','0','10','0','0','0','20570','39810','0','0','0','0','0','0','0','0','0','16048'),
('67905','7th Legion Paratrooper','','','4096','0','7','0','67354','67971','45799','43210','45802','45800','0','0','0','0','0','0','0','17614'),
('68829','Skyfire Engineer','','','0','0','7','0','0','0','45185','45191','45192','45193','0','0','0','0','0','0','0','17614'),
('170200','Gunship Turret','','Gunner','0','0','9','0','0','0','44851','0','0','0','0','0','0','0','0','0','0','16048');

SET @ENTRY := 55054;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,19,0,100,0,29690,0,0,0,85,130937,0,0,0,0,0,7,0,0,0,0,0,0,0,"Npc_AI"),
(@ENTRY,0,1,2,61,0,100,0,15000,15000,0,0,62,870,0,0,0,0,0,7,0,0,0,3084.793,-795.518,307.70,3.042,"Npc_AI"),
(@ENTRY,0,2,0,61,0,100,0,5000,6000,0,0,33,67040,0,0,0,0,0,7,0,0,0,0,0,0,0,"Npc_AI");

-- Sky Admiral Rogers SAI
SET @ENTRY := 66292;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,62,0,100,0,61022,0,0,0,62,870,0,0,0,0,0,7,8,0,0,-755,-1384,81,0,"Sky Admiral Rogers - On Gossip Option 0 Selected - Teleport"),
(@ENTRY,0,1,0,62,0,100,0,61022,0,0,0,33,66292,0,0,0,0,0,7,0,0,0,0,0,0,0,"Sky Admiral Rogers - On Gossip Option 0 Selected - Quest Credit 'The Mission'");

UPDATE spell_target_position SET target_position_x = '1626.166' , target_position_y = '-4365.619' , target_position_z = '24.588' , target_orientation = '0.679' WHERE id = '130409';

SET @CREATURE  	:= 'Thunder Hold Soldier';
SET @ENTRY 		:= '66291';
DELETE FROM `creature_template` WHERE `entry` = @ENTRY;
REPLACE INTO `creature_template` (`entry`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `npcflag2`, `speed_walk`, `speed_run`, `speed_fly`, `scale`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Mana_mod_extra`, `Armor_mod`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES
(@ENTRY ,'0','84','84','4','32','0','0','1','1.14286','1.14286','1','9839','14339','0','42299','1','2000','2000','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','130265','0','0','0','0','0','0','0','0','0','0','0','','0','3','1','1','1','1','0','64','');
DELETE FROM `creature_template_wdb` WHERE `entry` = @ENTRY;
INSERT INTO  `creature_template_wdb` (`Entry`, `Name1`, `NameAlt1`, `CursorName`, `TypeFlags`, `TypeFlags2`, `TYPE`, `Family`, `KillCredit1`, `KillCredit2`, `Displayid1`, `Displayid2`, `Displayid3`, `Displayid4`, `Leader`, `QuestItem1`, `QuestItem2`, `QuestItem3`, `QuestItem4`, `QuestItem5`, `QuestItem6`, `VerifiedBuild`) VALUES
(@ENTRY ,'Thunder Hold Soldier','','','0','0','7','0','66200','66285','44861','44862','44863','44864','0','0','0','0','0','0','0','16048');
DELETE FROM creature WHERE  `id` = @ENTRY;
INSERT INTO `creature` (`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `MovementID`, `isActive`, `unit_flags3`) VALUES
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3316.31', '-851.345', '245.997', '3.42673', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3317.31', '-855.977', '246.01', '3.42673', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3318.75', '-860.883', '246.048', '3.42673', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3320.19', '-865.796', '246.004', '3.42673', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3311.54', '-852.371', '245.996', '3.42673', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3312.99', '-857.33', '245.996', '3.42673', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3314.43', '-862.228', '245.996', '3.42673', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3315.06', '-867.487', '245.996', '3.42673', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3311.27', '-868.598', '245.996', '3.42673', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3309.8', '-863.577', '245.996', '3.42673', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3308.43', '-858.919', '245.996', '3.42673', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3306.86', '-853.565', '245.996', '3.42673', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3302.45', '-854.858', '245.996', '3.42673', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3303.76', '-859.323', '245.996', '3.42673', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3305.21', '-864.251', '245.996', '3.42673', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3306.44', '-868.438', '245.996', '3.42673', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3306.78', '-829.337', '245.996', '4.82866', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3300.84', '-830.031', '245.996', '4.82866', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3291.45', '-842.474', '245.996', '0.752445', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3289.72', '-850.457', '245.997', '5.55516', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3301.39', '-953.905', '257.444', '1.61638', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3295.55', '-954.171', '257.444', '1.61638', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3290.23', '-954.414', '257.444', '1.61638', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3285.58', '-953.869', '257.444', '1.61638', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3284.35', '-942.348', '257.444', '1.61638', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3289.37', '-942.119', '257.444', '1.61638', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3295.1', '-941.858', '257.444', '1.61638', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3300.87', '-941.595', '257.451', '1.61638', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3301.22', '-948.541', '257.445', '1.61638', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3295.34', '-948.809', '257.445', '1.61638', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3289.92', '-949.056', '257.445', '1.61638', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3285', '-949.281', '257.445', '1.61638', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3306.5', '-969.511', '257.445', '1.8363', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3301.17', '-970.962', '257.445', '1.8363', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3297.59', '-971.936', '257.445', '1.8363', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3292.93', '-973.203', '257.445', '1.8363', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3288.31', '-974.458', '257.445', '1.8363', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3289.79', '-979.88', '257.445', '1.8363', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3293.99', '-978.737', '257.445', '1.8363', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3298.81', '-977.425', '257.445', '1.8363', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3302.29', '-976.479', '257.445', '1.8363', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3307.04', '-975.188', '257.445', '1.8363', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3309.99', '-974.385', '257.445', '1.8363', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3311.76', '-980.903', '257.445', '1.8363', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3308.94', '-981.669', '257.445', '1.8363', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3305.04', '-982.73', '257.445', '1.8363', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3301.13', '-983.794', '257.445', '1.8363', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3297.17', '-984.872', '257.445', '1.8363', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3292.47', '-986.15', '257.445', '1.8363', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3293.82', '-991.106', '257.445', '1.8363', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3298.42', '-990.779', '257.445', '1.8363', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3302.67', '-989.623', '257.445', '1.8363', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3306.34', '-988.626', '257.445', '1.8363', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3309.78', '-987.69', '257.445', '1.8363', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3312.76', '-986.879', '257.445', '1.8363', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3265.3', '-913.886', '257.446', '6.1874', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3264.91', '-917.949', '257.446', '6.1874', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3264.87', '-922.676', '257.446', '6.1874', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3264.49', '-926.675', '257.446', '6.1874', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3257.69', '-925.907', '257.446', '6.1874', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3258.08', '-921.884', '257.446', '6.1874', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3258.49', '-917.557', '257.446', '6.1874', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3252.98', '-924.648', '257.446', '6.1874', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3253.36', '-920.722', '257.446', '6.1874', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3253.71', '-917.076', '257.446', '6.1874', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3254.03', '-913.75', '257.446', '6.1874', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3257.56', '-914.089', '257.446', '6.1874', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3217.23', '-912.048', '268.263', '5.10748', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3186.96', '-867.963', '268.235', '6.27379', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3130.3', '-867.797', '268.265', '1.12551', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3116.52', '-870.899', '268.262', '1.12551', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3081.44', '-897.656', '257.444', '1.55748', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3078.11', '-897.612', '257.444', '1.55748', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3073.65', '-897.552', '257.444', '1.55748', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3069.08', '-897.491', '257.444', '1.55748', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3069', '-903.512', '257.444', '1.55748', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3073.18', '-903.568', '257.444', '1.55748', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3077.21', '-903.621', '257.444', '1.55748', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3080.61', '-903.667', '257.444', '1.55748', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3080.54', '-908.673', '257.444', '1.55748', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3076.96', '-908.626', '257.444', '1.55748', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3073.01', '-908.573', '257.45', '1.55748', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3068.64', '-908.515', '257.48', '1.55748', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3087.11', '-902.138', '257.445', '1.36113', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3051.69', '-909.918', '257.446', '1.55356', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3048.89', '-909.87', '257.446', '1.55356', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3044.37', '-909.792', '257.446', '1.55356', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3040.83', '-909.731', '257.446', '1.55356', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3041.03', '-898.147', '257.446', '1.55356', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3044.91', '-898.214', '257.446', '1.55356', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3049.16', '-898.287', '257.446', '1.55356', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3052.43', '-898.344', '257.446', '1.55356', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3052.36', '-902.706', '257.446', '1.55356', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3048.97', '-902.648', '257.446', '1.55356', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3045.02', '-902.579', '257.446', '1.55356', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3040.91', '-902.509', '257.446', '1.55356', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3040.85', '-906.163', '257.446', '1.55356', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3044.76', '-906.23', '257.446', '1.55356', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3051.97', '-906.355', '257.446', '1.54963', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '1', '0', '0', '3048.94', '-906.302', '257.446', '1.55356', '120', '0', '0', '135000', '0', '0', '0', '0', '0', '0', '0', '0', '0'); 

SET @CREATURE  	:= 'Thunder Hold Cannon';
SET @ENTRY 		:= '66203';
DELETE FROM `creature_template` WHERE `entry` = @ENTRY;
REPLACE INTO `creature_template` (`entry`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `npcflag2`, `speed_walk`, `speed_run`, `speed_fly`, `scale`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Mana_mod_extra`, `Armor_mod`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES
(@ENTRY,'0','1','1','4','35','0','0','1','1.14286','1.14286','1','9839','14339','0','42299','1','2000','2000','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','3','1','1','1','1','0','64','');
DELETE FROM `creature_template_wdb` WHERE `entry` = @ENTRY;
INSERT INTO `creature_template_wdb` (`Entry`, `Name1`, `NameAlt1`, `CursorName`, `TypeFlags`, `TypeFlags2`, `TYPE`, `Family`, `KillCredit1`, `KillCredit2`, `Displayid1`, `Displayid2`, `Displayid3`, `Displayid4`, `Leader`, `QuestItem1`, `QuestItem2`, `QuestItem3`, `QuestItem4`, `QuestItem5`, `QuestItem6`, `VerifiedBuild`) VALUES
(@ENTRY,'Thunder Hold Cannon','','','1611661328','6','10','0','0','0','45101','0','0','0','0','0','0','0','0','0','0','16048');
DELETE FROM creature WHERE  `id` = @ENTRY;
INSERT INTO `creature` (`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `MovementID`, `isActive`, `unit_flags3`) VALUES
(@ENTRY, '870', '5785', '6524', '1', '65535', '0', '0', '3069.65', '-874.361', '256.965', '1.47503', '300', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '65535', '0', '0', '3089.32', '-877.355', '256.759', '1.14517', '300', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '65535', '0', '0', '3116.89', '-850.246', '268.271', '1.57714', '300', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '65535', '0', '0', '3127.61', '-850.849', '268.271', '1.67924', '300', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '65535', '0', '0', '3079', '-873.56', '256.97', '1.32493', '300', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '65535', '0', '0', '3179.54', '-849.438', '268.269', '1.03042', '300', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '65535', '0', '0', '3139.05', '-850.401', '268.268', '2.34989', '300', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '65535', '0', '0', '3152.6', '-839.743', '268.26', '1.91007', '300', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '65535', '0', '0', '3168.75', '-838.604', '268.267', '1.66267', '300', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '65535', '0', '0', '3189.85', '-852.748', '268.27', '1.57628', '300', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '65535', '0', '0', '3261.56', '-897.628', '257.553', '1.07755', '300', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '65535', '0', '0', '3277.4', '-825.169', '245.893', '2.47949', '300', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '65535', '0', '0', '3306.75', '-811.859', '246.057', '1.93756', '300', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '65535', '0', '0', '3354.79', '-774.105', '246.13', '1.55272', '300', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '65535', '0', '0', '3387.27', '-789.112', '246.178', '0.429601', '300', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '65535', '0', '0', '3392.81', '-826.797', '246.16', '0.05261', '300', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '65535', '0', '0', '3388.78', '-861.827', '246.101', '5.67606', '300', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '65535', '0', '0', '3348.97', '-907.122', '246.041', '6.10017', '300', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '65535', '0', '0', '3347.53', '-941.584', '246.058', '0.0133331', '300', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '65535', '0', '0', '3333.97', '-996.405', '257.515', '6.26118', '300', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '65535', '0', '0', '3326.82', '-969.026', '257.596', '0.449232', '300', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
(@ENTRY, '870', '5785', '6524', '1', '65535', '0', '0', '3308.22', '-943.135', '257.717', '0.625948', '300', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0'); 
 
SET @CREATURE  	:= 'Horde Gunship Portal';
SET @ENTRY 		:= '195326';
DELETE FROM `gameobject_template` WHERE `entry` = @ENTRY;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`,  `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `data32`, `AIName`, `ScriptName`, `VerifiedBuild`) VALUES 
(@ENTRY, '22', '9088', 'Horde Gunship Portal', '', '', '', '0', '32', '1', '0', '0', '0', '0', '0', '0', '131469', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '15595'); 
DELETE FROM `gameobject` WHERE `id` = @ENTRY;
INSERT INTO `gameobject` (`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `phaseId`, `position_x`, `position_y`, `position_z`, `orientation`,`rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `personal_size`) VALUES 
(@ENTRY, '870', '5785', '6522', '1', '1', '0', '3108.25', '-748.153', '227.368', '6.13214', '0', '0', '0', '0', '0', '0', '0', '0', '0'); 

SET @CREATURE  	:= 'Gunship Portal';
SET @ENTRY 		:= '215834';
DELETE FROM `gameobject_template` WHERE `entry` = @ENTRY;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`,  `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `data32`, `AIName`, `ScriptName`, `VerifiedBuild`) VALUES 
(@ENTRY, '22', '9086', 'Gunship Portal', '', '', '', '1732', '32', '1', '0', '0', '0', '0', '0', '0', '131603', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'SmartGameObjectAI', '', '16048'); 
DELETE FROM `gameobject` WHERE `id` = @ENTRY;
INSERT INTO `gameobject` (`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `phaseId`, `position_x`, `position_y`, `position_z`, `orientation`,`rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `personal_size`) VALUES 
(@ENTRY, '870', '5785', '5853', '1', '1', '0', '-703.17', '-1366.82', '2.53878', '1.20813', '0', '0', '0', '1', '300', '255', '1', '0', '0'); 

REPLACE INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES
('131469','870',3048.29,-810.03,303.286,0.740177),
('131603','870',-757.365,-1387.72,79.334,3.30401);
