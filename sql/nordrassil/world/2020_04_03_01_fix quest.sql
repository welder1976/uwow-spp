/*
Fix quest 
26035
26720 
26620
26720
27152
8325

Fix NPC
46042
400007
400009

*/


DELETE FROM `creature_loot_template` WHERE `entry`=46042 AND `item`=61970;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`, `shared`) VALUES (46042, 61970, -100, 1, 0, 1, 1, 0);
DELETE FROM `creature_template_wdb` WHERE `Entry`=400007;
DELETE FROM `creature_template_wdb_locale` WHERE `ID`=400007 AND `Locale`='esMX';
INSERT INTO `creature_template_wdb` (`Entry`, `Name1`, `Name2`, `Name3`, `Name4`, `NameAlt1`, `NameAlt2`, `NameAlt3`, `NameAlt4`, `Title`, `TitleAlt`, `CursorName`, `TypeFlags`, `TypeFlags2`, `Type`, `Family`, `Classification`, `KillCredit1`, `KillCredit2`, `VignetteID`, `Displayid1`, `Displayid2`, `Displayid3`, `Displayid4`, `HpMulti`, `PowerMulti`, `Leader`, `QuestItem1`, `QuestItem2`, `QuestItem3`, `QuestItem4`, `QuestItem5`, `QuestItem6`, `QuestItem7`, `QuestItem8`, `QuestItem9`, `QuestItem10`, `MovementInfoID`, `RequiredExpansion`, `FlagQuest`, `VerifiedBuild`) VALUES (400007, 'Dreamgrove Acolyte', '', '', '', '', '', '', '', '', '???????????? ?? ???????? ??????', '', 0, 0, 7, 0, 0, 0, 0, 0, 73576, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 22566);
INSERT INTO `creature_template_wdb_locale` (`ID`, `Locale`, `Title`, `TitleAlt`, `Name1`, `Name2`, `Name3`, `Name4`, `NameAlt1`, `NameAlt2`, `NameAlt3`, `NameAlt4`, `VerifiedBuild`) VALUES (400007, 'esMX', '', '', 'Acolito del sueÃ±o', '', '', '', '', '', '', '', 26124);

DELETE FROM `creature_template_wdb_locale` WHERE `ID`=400009 AND `Locale`='esMX';
DELETE FROM `creature_template_wdb` WHERE `Entry`=400009;
INSERT INTO `creature_template_wdb_locale` (`ID`, `Locale`, `Title`, `TitleAlt`, `Name1`, `Name2`, `Name3`, `Name4`, `NameAlt1`, `NameAlt2`, `NameAlt3`, `NameAlt4`, `VerifiedBuild`) VALUES (400009, 'esMX', '', '', 'Guardian del corazón de Azeroth', '', '', '', '', '', '', '', 26124);
INSERT INTO `creature_template_wdb` (`Entry`, `Name1`, `Name2`, `Name3`, `Name4`, `NameAlt1`, `NameAlt2`, `NameAlt3`, `NameAlt4`, `Title`, `TitleAlt`, `CursorName`, `TypeFlags`, `TypeFlags2`, `Type`, `Family`, `Classification`, `KillCredit1`, `KillCredit2`, `VignetteID`, `Displayid1`, `Displayid2`, `Displayid3`, `Displayid4`, `HpMulti`, `PowerMulti`, `Leader`, `QuestItem1`, `QuestItem2`, `QuestItem3`, `QuestItem4`, `QuestItem5`, `QuestItem6`, `QuestItem7`, `QuestItem8`, `QuestItem9`, `QuestItem10`, `MovementInfoID`, `RequiredExpansion`, `FlagQuest`, `VerifiedBuild`) VALUES (400009, 'Heart Guardian of Azeroth', '', '', '', '', '', '', '', '', '???????????? ?? ???????? ??????', '', 0, 0, 7, 0, 0, 0, 0, 0, 72511, 72516, 71133, 72513, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 22566);
DELETE FROM `creature_loot_template` WHERE `entry`=43704 AND `item`=60989;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`, `shared`) VALUES (43704, 60989, -60, 0, 0, 1, 1, 0);
DELETE FROM `creature` WHERE `guid`=259797;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `PhaseId`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `AiID`, `MovementID`, `MeleeID`, `isActive`, `skipClone`, `personal_size`, `isTeemingSpawn`, `unit_flags3`) VALUES (259797, 34398, 1, 148, 4708, 1, 1, '', 0, 0, 5837.52, -225.753, 1.32057, 1.17805, 300, 0, 0, 441, 390, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
DELETE FROM `creature_loot_template` WHERE `entry`=2555 AND `item`=4522;
DELETE FROM `creature_loot_template` WHERE `entry`=2552 AND `item`=4503;
DELETE FROM `creature_loot_template` WHERE `entry`=2553 AND `item`=4503;
DELETE FROM `creature_loot_template` WHERE `entry`=2554 AND `item`=4503;
DELETE FROM `creature_loot_template` WHERE `entry`=2555 AND `item`=4503;
DELETE FROM `creature_loot_template` WHERE `entry`=2556 AND `item`=4503;
DELETE FROM `creature_loot_template` WHERE `entry`=2557 AND `item`=4503;
DELETE FROM `creature_loot_template` WHERE `entry`=2558 AND `item`=4503;
DELETE FROM `creature_loot_template` WHERE `entry`=2605 AND `item`=4503;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`, `shared`) VALUES (2555, 4522, -51.7277, 0, 0, 1, 1, 0);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`, `shared`) VALUES (2552, 4503, -16.2538, 0, 0, 1, 1, 0);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`, `shared`) VALUES (2553, 4503, -60.1973, 0, 0, 1, 1, 0);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`, `shared`) VALUES (2554, 4503, -37.5305, 0, 0, 1, 1, 0);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`, `shared`) VALUES (2555, 4503, -45.4377, 0, 0, 1, 1, 0);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`, `shared`) VALUES (2556, 4503, -47.8827, 0, 0, 1, 1, 0);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`, `shared`) VALUES (2557, 4503, -30.268, 0, 0, 1, 1, 0);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`, `shared`) VALUES (2558, 4503, -51.4669, 0, 0, 1, 1, 0);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`, `shared`) VALUES (2605, 4503, -40.454, 0, 0, 1, 1, 0);

DELETE FROM `creature_loot_template` WHERE `entry`=34398 AND `item`=46695;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`, `shared`) VALUES (34398, 46695, -100, 0, 0, 1, 1, 0);
DELETE FROM `creature_template_wdb` WHERE `Entry`=45155;
INSERT INTO `creature_template_wdb` (`Entry`, `Name1`, `Name2`, `Name3`, `Name4`, `NameAlt1`, `NameAlt2`, `NameAlt3`, `NameAlt4`, `Title`, `TitleAlt`, `CursorName`, `TypeFlags`, `TypeFlags2`, `Type`, `Family`, `Classification`, `KillCredit1`, `KillCredit2`, `VignetteID`, `Displayid1`, `Displayid2`, `Displayid3`, `Displayid4`, `HpMulti`, `PowerMulti`, `Leader`, `QuestItem1`, `QuestItem2`, `QuestItem3`, `QuestItem4`, `QuestItem5`, `QuestItem6`, `QuestItem7`, `QuestItem8`, `QuestItem9`, `QuestItem10`, `MovementInfoID`, `RequiredExpansion`, `FlagQuest`, `VerifiedBuild`) VALUES (45155, 'Moldfang', '', '', '', '', '', '', '', '', '', '', 2147483648, 0, 6, 0, 0, 45155, 0, 0, 34276, 0, 0, 0, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22566);
DELETE FROM `creature_template` WHERE `entry`=45155;
INSERT INTO `creature_template` (`entry`, `gossip_menu_id`, `minlevel`, `maxlevel`, `SandboxScalingID`, `ScaleLevelMin`, `ScaleLevelMax`, `ScaleLevelDelta`, `ScaleLevelDuration`, `exp`, `faction`, `npcflag`, `npcflag2`, `speed_walk`, `speed_run`, `speed_fly`, `scale`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Mana_mod_extra`, `Armor_mod`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ControllerID`, `WorldEffects`, `PassiveSpells`, `StateWorldEffectID`, `SpellStateVisualID`, `SpellStateAnimID`, `SpellStateAnimKitID`, `IgnoreLos`, `AffixState`, `MaxVisible`, `ScriptName`) VALUES (45155, 0, 38, 38, 0, 0, 0, 0, 0, 0, 15, 3, 0, 1, 1, 1.14286, 1, 58.8, 78, 0, 144, 1, 2000, 0, 2, 32832, 2048, 0, 0, 0, 0, 0, 0, 40.8, 60, 18, 45155, 45155, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 198, 198, 'SmartAI', 0, 3, 1, 1, 1, 1, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `quest_template_locale` WHERE `ID`=8325 AND `locale`='enGB';
DELETE FROM `quest_template_locale` WHERE `ID`=8325 AND `locale`='ruRU';
DELETE FROM `quest_offer_reward_locale` WHERE `ID`=8325 AND `Locale`='ruRU';