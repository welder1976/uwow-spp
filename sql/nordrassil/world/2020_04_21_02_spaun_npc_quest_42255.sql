/* npc spawn https://es.wowhead.com/quest=42255/deprecated-bloody-note  */
delete from creature_template where entry in (111470);
INSERT INTO creature_template (entry, gossip_menu_id, minlevel, maxlevel, faction, npcflag, speed_walk, speed_run, scale, dmgschool, baseattacktime, rangeattacktime, unit_class, unit_flags, unit_flags2, unit_flags3, dynamicflags, trainer_type, trainer_class, trainer_race, lootid, pickpocketloot, skinloot, resistance1, resistance2, resistance3, resistance4, resistance5, resistance6, spell1, spell2, spell3, spell4, spell5, spell6, spell7, spell8, VehicleId, mingold, maxgold, AIName, MovementType, InhabitType, HoverHeight, RegenHealth, mechanic_immune_mask, flags_extra, ScriptName) VALUES
(111470, 0, 1, 1, 35, 0, 1, 1.14286, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 0, 0, '');
delete from creature where guid in (670030);
insert into creature (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `PhaseId`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `AiID`, `MovementID`, `MeleeID`, `isActive`, `skipClone`, `personal_size`, `isTeemingSpawn`, `unit_flags3`) values
("670030", "111470", "1220", "7334", "8662", "1", "1", "", "0", "0", "912.45", "7005.34", "426.788", "5.43123", "300", "0", "0", "87", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0");

