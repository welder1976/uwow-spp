-- Fix Valley of Trials Quests
-- Quest Starters 

DELETE FROM `creature_queststarter` WHERE `id`=3143 AND `quest`IN (25126,25127,25172);
DELETE FROM `creature_queststarter` WHERE `id`=3145 AND `quest`IN (25131,25132,25133);
DELETE FROM `creature_queststarter` WHERE `id`=3287 AND `quest`IN (25129,25130);
DELETE FROM `creature_queststarter` WHERE `id`=5887 AND `quest`IN (25128);
DELETE FROM `creature_queststarter` WHERE `id`=9796 AND `quest`IN (25136);
DELETE FROM `creature_queststarter` WHERE `id`=10176 AND `quest`IN (25152);
DELETE FROM `creature_queststarter` WHERE `id`=11378 AND `quest`IN (37446,25135,25134);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
(3143, 25126),
(3143, 25127),
(3143, 25172),
(3145, 25131),
(3145, 25132),
(3145, 25133),
(3287, 25129),
(3287, 25130), 
(5887, 25128), 
(9796, 25136), 
(10176, 25152),
(11378, 37446),
(11378, 25135);

-- Quest Enders

DELETE FROM `creature_questender` WHERE `id`=3143 AND `quest` IN (787,788,789,804,4641,25126,25127,25130,25152,25172);
DELETE FROM `creature_questender` WHERE `id`=3145 AND `quest` IN (792,794,1499,25131,25132);
DELETE FROM `creature_questender` WHERE `id`=3287 AND `quest` IN (790,25128,25129);
DELETE FROM `creature_questender` WHERE `id`=5887 AND `quest` IN (1463,1516,1518);
DELETE FROM `creature_questender` WHERE `id`=9796 AND `quest` IN (4402,25136);
DELETE FROM `creature_questender` WHERE `id`=11378 AND `quest` IN (5441,6394,25134,25135,37446);
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
(3143, 25126),
(3143, 25127),
(3143, 25130),
(3143, 25152),
(3143, 25172),
(3145, 25131),
(3145, 25132),
(3287, 25128),
(3287, 25129),
(9796, 25136),
(11378, 25135),
(11378, 37446);


-- Quest_Template_Addon Fixs


DELETE FROM `quest_template_addon` WHERE `ID` IN (25126, 25127, 25128, 25129, 25130, 25131, 25133, 25135, 25136, 25172, 37446);
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES 
(25126, 0, 0, 0, 25152, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(25127, 0, 0, 0, 25172, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(25128, 0, 0, 0, 37446, 25129, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(25129, 0, 0, 0, 25128, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(25130, 0, 0, 0, 25129, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(25131, 0, 0, 0, 25127, 25132, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(25133, 0, 0, 0, 25132, 25167, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(25135, 0, 0, 0, 25131, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(25136, 0, 0, 0, 25126, 37446, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(25172, 0, 0, 0, 25126, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(37446, 0, 0, 0, 25136, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0);



/*fix loot npc */
UPDATE `creature_template` SET `lootid`=3098 WHERE `entry`=3098;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(3098, 117, 90, 1, 0, 1, 3) /* ough Jerky */, 
(3098, 771, 6, 1, 0, 1, 1) /* hipped Boar Tusk */, 
(3098, 774, 0.19, 1, 0, 1, 1) /* alachite */, 
(3098, 805, 0.09, 1, 0, 1, 1) /* mall Red Pouch */, 
(3098, 828, 0.07, 1, 0, 1, 1) /* mall Blue Pouch */, 
(3098, 1364, 0.03, 1, 0, 1, 1) /* agged Leather Vest */, 
(3098, 1366, 0.03, 1, 0, 1, 1) /* agged Leather Pants */, 
(3098, 1367, 0.04, 1, 0, 1, 1) /* agged Leather Boots */, 
(3098, 1368, 0.04, 1, 0, 1, 1) /* agged Leather Gloves */, 
(3098, 1369, 0.04, 1, 0, 1, 1) /* agged Leather Belt */, 
(3098, 1370, 0.03, 1, 0, 1, 1) /* agged Leather Bracers */, 
(3098, 1372, 0.05, 1, 0, 1, 1) /* agged Cloak */, 
(3098, 1374, 0.04, 1, 0, 1, 1) /* rayed Shoes */, 
(3098, 1376, 0.04, 1, 0, 1, 1) /* rayed Cloak */, 
(3098, 1377, 0.03, 1, 0, 1, 1) /* rayed Gloves */, 
(3098, 1378, 0.07, 1, 0, 1, 1) /* rayed Pants */, 
(3098, 1380, 0.04, 1, 0, 1, 1) /* rayed Robe */, 
(3098, 2210, 0.02, 1, 0, 1, 1) /* attered Buckler */, 
(3098, 2211, 0.03, 1, 0, 1, 1) /* ent Large Shield */, 
(3098, 2295, 0.89, 1, 0, 1, 1) /* arge Boar Tusk */, 
(3098, 2598, 0.01, 1, 0, 1, 1) /* attern: Red Linen Robe */, 
(3098, 2649, 0.04, 1, 0, 1, 1) /* limsy Chain Belt */, 
(3098, 2650, 0.06, 1, 0, 1, 1) /* limsy Chain Boots */, 
(3098, 2651, 0.04, 1, 0, 1, 1) /* limsy Chain Bracers */, 
(3098, 2652, 0.06, 1, 0, 1, 1) /* limsy Chain Cloak */, 
(3098, 2653, 0.02, 1, 0, 1, 1) /* limsy Chain Gloves */, 
(3098, 2654, 0.04, 1, 0, 1, 1) /* limsy Chain Pants */, 
(3098, 2656, 0.02, 1, 0, 1, 1) /* limsy Chain Vest */, 
(3098, 3169, 0.01, 1, 0, 1, 1) /* hipped Bear Tooth */, 
(3098, 3171, 0.04, 1, 0, 1, 1) /* roken Boar Tusk */, 
(3098, 3173, 0.01, 1, 0, 1, 1) /* ear Meat */, 
(3098, 3288, 0.01, 1, 0, 1, 1) /* ribal Vest */, 
(3098, 3363, 0.07, 1, 0, 1, 1) /* rayed Belt */, 
(3098, 3365, 0.04, 1, 0, 1, 1) /* rayed Bracers */, 
(3098, 3403, 0.01, 1, 0, 1, 1) /* vory Boar Tusk */, 
(3098, 3609, 0.01, 1, 0, 1, 1) /* lans: Copper Chain Vest */, 
(3098, 4496, 0.09, 1, 0, 1, 1) /* mall Brown Pouch */, 
(3098, 4563, 0.01, 1, 0, 1, 1) /* illy Club */, 
(3098, 4865, 2, 1, 0, 1, 2) /* uined Pelt */, 
(3098, 5466, 0.01, 1, 0, 1, 1) /* corpid Stinger */, 
(3098, 5571, 0.07, 1, 0, 1, 1) /* mall Black Pouch */, 
(3098, 5572, 0.1, 1, 0, 1, 1) /* mall Green Pouch */, 
(3098, 7074, 0.01, 1, 0, 1, 1) /* hipped Claw */, 
(3098, 7098, 2, 1, 0, 1, 2) /* plintered Tusk */, 
(3098, 25440, 0.04, 1, 0, 1, 1) /* racked Boar Tusk */, 
(3098, 25441, 0.04, 1, 0, 1, 1) /* narled Boar Tusk */, 
(3098, 25442, 0.24, 1, 0, 1, 1) /* angled Snout */, 
(3098, 44754, 0.28, 1, 0, 1, 1) /* evered Boar Tusk */, 
(3098, 62514, 0.01, 1, 0, 1, 1) /* racked Pincer */;

UPDATE `creature_template` SET `lootid`=3101 WHERE `entry`=3101;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(3101, 117, 2, 1, 0, 1, 1) /* ough Jerky */, 
(3101, 159, 0.97, 1, 0, 1, 1) /* efreshing Spring Water */, 
(3101, 766, 0.01, 1, 0, 1, 1) /* langed Mace */, 
(3101, 767, 0.01, 1, 0, 1, 1) /* ong Bo Staff */, 
(3101, 768, 0.01, 1, 0, 1, 1) /* umberjack Axe */, 
(3101, 774, 0.82, 1, 0, 1, 1) /* alachite */, 
(3101, 805, 0.55, 1, 0, 1, 1) /* mall Red Pouch */, 
(3101, 818, 0.25, 1, 0, 1, 1) /* igerseye */, 
(3101, 828, 0.58, 1, 0, 1, 1) /* mall Blue Pouch */, 
(3101, 1364, 0.26, 1, 0, 1, 1) /* agged Leather Vest */, 
(3101, 1366, 0.26, 1, 0, 1, 1) /* agged Leather Pants */, 
(3101, 1367, 0.22, 1, 0, 1, 1) /* agged Leather Boots */, 
(3101, 1368, 0.32, 1, 0, 1, 1) /* agged Leather Gloves */, 
(3101, 1369, 0.43, 1, 0, 1, 1) /* agged Leather Belt */, 
(3101, 1370, 0.47, 1, 0, 1, 1) /* agged Leather Bracers */, 
(3101, 1372, 0.31, 1, 0, 1, 1) /* agged Cloak */, 
(3101, 1374, 0.27, 1, 0, 1, 1) /* rayed Shoes */, 
(3101, 1376, 0.46, 1, 0, 1, 1) /* rayed Cloak */, 
(3101, 1377, 0.33, 1, 0, 1, 1) /* rayed Gloves */, 
(3101, 1378, 0.42, 1, 0, 1, 1) /* rayed Pants */, 
(3101, 1380, 0.38, 1, 0, 1, 1) /* rayed Robe */, 
(3101, 1414, 0.01, 1, 0, 1, 1) /* racked Sledge */, 
(3101, 1415, 0.03, 1, 0, 1, 1) /* arpenter's Mallet */, 
(3101, 1431, 0.01, 1, 0, 1, 1) /* atchwork Pants */, 
(3101, 2070, 0.05, 1, 0, 1, 1) /* arnassian Bleu */, 
(3101, 2075, 0.01, 1, 0, 1, 1) /* eavy Mace */, 
(3101, 2210, 0.26, 1, 0, 1, 1) /* attered Buckler */, 
(3101, 2211, 0.37, 1, 0, 1, 1) /* ent Large Shield */, 
(3101, 2406, 0.13, 1, 0, 1, 1) /* attern: Fine Leather Boots */, 
(3101, 2589, 0.09, 1, 0, 1, 2) /* inen Cloth */, 
(3101, 2649, 0.19, 1, 0, 1, 1) /* limsy Chain Belt */, 
(3101, 2650, 0.24, 1, 0, 1, 1) /* limsy Chain Boots */, 
(3101, 2651, 0.35, 1, 0, 1, 1) /* limsy Chain Bracers */, 
(3101, 2652, 0.27, 1, 0, 1, 1) /* limsy Chain Cloak */, 
(3101, 2653, 0.34, 1, 0, 1, 1) /* limsy Chain Gloves */, 
(3101, 2654, 0.22, 1, 0, 1, 1) /* limsy Chain Pants */, 
(3101, 2656, 0.22, 1, 0, 1, 1) /* limsy Chain Vest */, 
(3101, 3173, 0.03, 1, 0, 1, 1) /* ear Meat */, 
(3101, 3190, 0.01, 1, 0, 1, 1) /* eatstick */, 
(3101, 3300, 0.5, 1, 0, 1, 1) /* abbit's Foot */, 
(3101, 3363, 0.32, 1, 0, 1, 1) /* rayed Belt */, 
(3101, 3365, 0.33, 1, 0, 1, 1) /* rayed Bracers */, 
(3101, 3609, 0.01, 1, 0, 1, 1) /* lans: Copper Chain Vest */, 
(3101, 4496, 0.5, 1, 0, 1, 1) /* mall Brown Pouch */, 
(3101, 4565, 0.01, 1, 0, 1, 1) /* imple Dagger */, 
(3101, 4674, 0.01, 1, 0, 1, 1) /* ribal Cloak */, 
(3101, 4757, 0.01, 1, 0, 1, 1) /* racked Egg Shells */, 
(3101, 4873, 0.04, 1, 0, 1, 1) /* ry Hardened Barnacle */, 
(3101, 4905, -0.07, 1, 0, 1, 1) /* arkoth's Mangled Claw */, 
(3101, 5571, 0.45, 1, 0, 1, 1) /* mall Black Pouch */, 
(3101, 5572, 0.37, 1, 0, 1, 1) /* mall Green Pouch */, 
(3101, 7099, 0.26, 1, 0, 1, 1) /* evered Pincer */, 
(3101, 8178, 0.01, 1, 0, 1, 1) /* raining Sword */, 
(3101, 8182, 0.01, 1, 0, 1, 1) /* ellet Rifle */, 
(3101, 11583, -0.07, 1, 0, 1, 1) /* actus Apple */, 
(3101, 15472, 0.01, 1, 0, 1, 1) /* harger's Belt */, 
(3101, 15944, 0.01, 1, 0, 1, 1) /* ncestral Orb */, 
(3101, 55974, 0.01, 1, 0, 1, 1) /* nert Elemental Particle */, 
(3101, 56968, 0.97, 1, 0, 1, 1) /* ug Juice */, 
(3101, 60743, 0.03, 1, 0, 1, 1) /* iseased Beast Guts */, 
(3101, 62328, 1, 1, 0, 1, 1) /* hed Fur */, 
(3101, 62514, 0.07, 1, 0, 1, 1) /* racked Pincer */;

UPDATE `creature_template` SET `lootid`=3102 WHERE `entry`=3102;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(3102, 805, 0.09, 1, 0, 1, 1) /* mall Red Pouch */, 
(3102, 828, 0.12, 1, 0, 1, 1) /* mall Blue Pouch */, 
(3102, 1367, 0.01, 1, 0, 1, 1) /* agged Leather Boots */, 
(3102, 1369, 0.01, 1, 0, 1, 1) /* agged Leather Belt */, 
(3102, 1370, 0.04, 1, 0, 1, 1) /* agged Leather Bracers */, 
(3102, 1374, 0.03, 1, 0, 1, 1) /* rayed Shoes */, 
(3102, 1376, 0.01, 1, 0, 1, 1) /* rayed Cloak */, 
(3102, 1377, 0.02, 1, 0, 1, 1) /* rayed Gloves */, 
(3102, 1476, 0.01, 1, 0, 1, 1) /* napped Spider Limb */, 
(3102, 2210, 0.08, 1, 0, 1, 1) /* attered Buckler */, 
(3102, 2211, 0.01, 1, 0, 1, 1) /* ent Large Shield */, 
(3102, 2589, 0.04, 1, 0, 1, 2) /* inen Cloth */, 
(3102, 2649, 0.02, 1, 0, 1, 1) /* limsy Chain Belt */, 
(3102, 2653, 0.01, 1, 0, 1, 1) /* limsy Chain Gloves */, 
(3102, 2656, 0.01, 1, 0, 1, 1) /* limsy Chain Vest */, 
(3102, 2924, 0.01, 1, 0, 1, 1) /* rocolisk Meat */, 
(3102, 3169, 0.01, 1, 0, 1, 1) /* hipped Bear Tooth */, 
(3102, 3170, 0.01, 1, 0, 1, 1) /* arge Bear Tooth */, 
(3102, 3173, 0.01, 1, 0, 1, 1) /* ear Meat */, 
(3102, 3299, 0.24, 1, 0, 1, 1) /* ractured Canine */, 
(3102, 3300, 24, 1, 0, 1, 1) /* abbit's Foot */, 
(3102, 3301, 0.02, 1, 0, 1, 1) /* harp Canine */, 
(3102, 3402, 0.01, 1, 0, 1, 1) /* oft Patch of Fur */, 
(3102, 3685, 0.01, 1, 0, 1, 1) /* aptor Egg */, 
(3102, 4496, 0.09, 1, 0, 1, 1) /* mall Brown Pouch */, 
(3102, 4582, 0.01, 1, 0, 1, 1) /* oft Bushy Tail */, 
(3102, 4865, 0.45, 1, 0, 1, 2) /* uined Pelt */, 
(3102, 4905, -0.04, 1, 0, 1, 1) /* arkoth's Mangled Claw */, 
(3102, 5165, -0.01, 1, 0, 1, 1) /* unscale Feather */, 
(3102, 5465, 0.01, 1, 0, 1, 1) /* mall Spider Leg */, 
(3102, 5571, 0.09, 1, 0, 1, 1) /* mall Black Pouch */, 
(3102, 5572, 0.09, 1, 0, 1, 1) /* mall Green Pouch */, 
(3102, 7073, 0.39, 1, 0, 1, 2) /* roken Fang */, 
(3102, 7074, 0.49, 1, 0, 1, 2) /* hipped Claw */, 
(3102, 7099, 0.03, 1, 0, 1, 1) /* evered Pincer */, 
(3102, 7101, 0.01, 1, 0, 1, 1) /* ug Eye */, 
(3102, 25421, 0.01, 1, 0, 1, 1) /* narled Claw */, 
(3102, 33547, 0.06, 1, 0, 1, 1) /* ardened Claw */, 
(3102, 52067, 0.01, 1, 0, 1, 1) /* arrowpetal */, 
(3102, 54833, 0.02, 1, 0, 1, 1) /* hed Raptor Scale */, 
(3102, 55983, 0.08, 1, 0, 1, 1) /* nert Elemental Scintilla */, 
(3102, 56968, 0.15, 1, 0, 1, 1) /* ug Juice */, 
(3102, 60743, 0.01, 1, 0, 1, 1) /* iseased Beast Guts */, 
(3102, 62328, 74, 1, 0, 1, 1) /* hed Fur */, 
(3102, 62525, 0.03, 1, 0, 1, 1) /* loudy Crocolisk Eye */;

UPDATE `creature_template` SET `lootid`=3183 WHERE `entry`=3183;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(3183, 117, 1, 1, 0, 1, 1) /* ough Jerky */, 
(3183, 118, 0.02, 1, 0, 1, 1) /* inor Healing Potion */, 
(3183, 159, 0.6, 1, 0, 1, 1) /* efreshing Spring Water */, 
(3183, 766, 0.01, 1, 0, 1, 1) /* langed Mace */, 
(3183, 768, 0.01, 1, 0, 1, 1) /* umberjack Axe */, 
(3183, 805, 0.08, 1, 0, 1, 1) /* mall Red Pouch */, 
(3183, 828, 0.05, 1, 0, 1, 1) /* mall Blue Pouch */, 
(3183, 1366, 0.03, 1, 0, 1, 1) /* agged Leather Pants */, 
(3183, 1367, 0.03, 1, 0, 1, 1) /* agged Leather Boots */, 
(3183, 1370, 0.07, 1, 0, 1, 1) /* agged Leather Bracers */, 
(3183, 1372, 0.03, 1, 0, 1, 1) /* agged Cloak */, 
(3183, 1374, 0.07, 1, 0, 1, 1) /* rayed Shoes */, 
(3183, 1377, 0.05, 1, 0, 1, 1) /* rayed Gloves */, 
(3183, 1380, 0.05, 1, 0, 1, 1) /* rayed Robe */, 
(3183, 2287, 0.01, 1, 0, 1, 1) /* aunch of Meat */, 
(3183, 2652, 0.07, 1, 0, 1, 1) /* limsy Chain Cloak */, 
(3183, 2654, 0.05, 1, 0, 1, 1) /* limsy Chain Pants */, 
(3183, 2656, 0.03, 1, 0, 1, 1) /* limsy Chain Vest */, 
(3183, 2774, 0.01, 1, 0, 1, 1) /* ust-Covered Blunderbuss */, 
(3183, 2924, 0.08, 1, 0, 1, 1) /* rocolisk Meat */, 
(3183, 3190, 0.01, 1, 0, 1, 1) /* eatstick */, 
(3183, 3609, 0.01, 1, 0, 1, 1) /* lans: Copper Chain Vest */, 
(3183, 3770, 0.01, 1, 0, 1, 1) /* utton Chop */, 
(3183, 4496, 0.08, 1, 0, 1, 1) /* mall Brown Pouch */, 
(3183, 4562, 0.01, 1, 0, 1, 1) /* evering Axe */, 
(3183, 4671, 0.01, 1, 0, 1, 1) /* ncestral Cloak */, 
(3183, 4859, -100, 1, 0, 1, 1) /* urning Blade Medallion */, 
(3183, 5571, 0.08, 1, 0, 1, 1) /* mall Black Pouch */, 
(3183, 5572, 0.09, 1, 0, 1, 1) /* mall Green Pouch */, 
(3183, 8766, 0.02, 1, 0, 1, 1) /* orning Glory Dew */, 
(3183, 8952, 0.01, 1, 0, 1, 1) /* oasted Quail */, 
(3183, 13446, 0.01, 1, 0, 1, 1) /* ajor Healing Potion */, 
(3183, 14089, 0.02, 1, 0, 1, 1) /* eaded Gloves */, 
(3183, 15302, 0.01, 1, 0, 1, 1) /* rizzly Belt */, 
(3183, 15473, 0.01, 1, 0, 1, 1) /* harger's Boots */;

UPDATE `creature_template` SET `lootid`=39317 WHERE `entry`=39317;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(39317, 117, 0.03, 1, 0, 1, 1) /* ough Jerky */, 
(39317, 159, 2, 1, 0, 1, 1) /* efreshing Spring Water */, 
(39317, 414, 0.05, 1, 0, 1, 1) /* alaran Sharp */, 
(39317, 422, 0.01, 1, 0, 1, 1) /* warven Mild */, 
(39317, 766, 0.01, 1, 0, 1, 1) /* langed Mace */, 
(39317, 768, 0.01, 1, 0, 1, 1) /* umberjack Axe */, 
(39317, 774, 0.44, 1, 0, 1, 1) /* alachite */, 
(39317, 805, 0.52, 1, 0, 1, 1) /* mall Red Pouch */, 
(39317, 828, 0.41, 1, 0, 1, 1) /* mall Blue Pouch */, 
(39317, 1179, 0.01, 1, 0, 1, 1) /* ce Cold Milk */, 
(39317, 1366, 0.08, 1, 0, 1, 1) /* agged Leather Pants */, 
(39317, 1367, 0.04, 1, 0, 1, 1) /* agged Leather Boots */, 
(39317, 1415, 0.03, 1, 0, 1, 1) /* arpenter's Mallet */, 
(39317, 1645, 0.01, 1, 0, 1, 1) /* oonberry Juice */, 
(39317, 1707, 0.01, 1, 0, 1, 1) /* tormwind Brie */, 
(39317, 1710, 0.01, 1, 0, 1, 1) /* reater Healing Potion */, 
(39317, 2070, 4, 1, 0, 1, 1) /* arnassian Bleu */, 
(39317, 2598, 0.02, 1, 0, 1, 1) /* attern: Red Linen Robe */, 
(39317, 3170, 0.03, 1, 0, 1, 1) /* arge Bear Tooth */, 
(39317, 3173, 0.03, 1, 0, 1, 1) /* ear Meat */, 
(39317, 3190, 0.01, 1, 0, 1, 1) /* eatstick */, 
(39317, 3363, 0.01, 1, 0, 1, 1) /* rayed Belt */, 
(39317, 3609, 0.08, 1, 0, 1, 1) /* lans: Copper Chain Vest */, 
(39317, 4496, 0.31, 1, 0, 1, 1) /* mall Brown Pouch */, 
(39317, 4540, 0.01, 1, 0, 1, 1) /* ough Hunk of Bread */, 
(39317, 4672, 0.01, 1, 0, 1, 1) /* ncestral Belt */, 
(39317, 5571, 0.53, 1, 0, 1, 1) /* mall Black Pouch */, 
(39317, 5572, 0.7, 1, 0, 1, 1) /* mall Green Pouch */, 
(39317, 7099, 0.01, 1, 0, 1, 1) /* evered Pincer */, 
(39317, 8932, 0.03, 1, 0, 1, 1) /* lterac Swiss */, 
(39317, 11583, -0.02, 1, 0, 1, 1) /* actus Apple */, 
(39317, 13446, 0.03, 1, 0, 1, 1) /* ajor Healing Potion */, 
(39317, 20843, 0.01, 1, 0, 1, 1) /* mashed Petal */, 
(39317, 21005, 0.01, 1, 0, 1, 1) /* nkempt Gloves */, 
(39317, 21011, 0.01, 1, 0, 1, 1) /* craggy Leather Bracers */, 
(39317, 21018, 0.01, 1, 0, 1, 1) /* hoddy Chain Gloves */, 
(39317, 56968, 0.15, 1, 0, 1, 1) /* ug Juice */, 
(39317, 62328, 0.04, 1, 0, 1, 1) /* hed Fur */, 
(39317, 67310, 0.01, 1, 0, 1, 1) /* emon Hair */;

UPDATE `creature_template` SET `lootid`=3124 WHERE `entry`=3124;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(3124, 774, 0.16, 1, 0, 1, 1) /* alachite */, 
(3124, 805, 0.08, 1, 0, 1, 1) /* mall Red Pouch */, 
(3124, 828, 0.1, 1, 0, 1, 1) /* mall Blue Pouch */, 
(3124, 1364, 0.03, 1, 0, 1, 1) /* agged Leather Vest */, 
(3124, 1366, 0.05, 1, 0, 1, 1) /* agged Leather Pants */, 
(3124, 1367, 0.02, 1, 0, 1, 1) /* agged Leather Boots */, 
(3124, 1368, 0.02, 1, 0, 1, 1) /* agged Leather Gloves */, 
(3124, 1369, 0.04, 1, 0, 1, 1) /* agged Leather Belt */, 
(3124, 1370, 0.03, 1, 0, 1, 1) /* agged Leather Bracers */, 
(3124, 1372, 0.02, 1, 0, 1, 1) /* agged Cloak */, 
(3124, 1374, 0.02, 1, 0, 1, 1) /* rayed Shoes */, 
(3124, 1376, 0.04, 1, 0, 1, 1) /* rayed Cloak */, 
(3124, 1377, 0.05, 1, 0, 1, 1) /* rayed Gloves */, 
(3124, 1378, 0.03, 1, 0, 1, 1) /* rayed Pants */, 
(3124, 1380, 0.04, 1, 0, 1, 1) /* rayed Robe */, 
(3124, 2210, 0.03, 1, 0, 1, 1) /* attered Buckler */, 
(3124, 2211, 0.04, 1, 0, 1, 1) /* ent Large Shield */, 
(3124, 2589, 0.02, 1, 0, 1, 3) /* inen Cloth */, 
(3124, 2598, 0.02, 1, 0, 1, 1) /* attern: Red Linen Robe */, 
(3124, 2649, 0.03, 1, 0, 1, 1) /* limsy Chain Belt */, 
(3124, 2650, 0.03, 1, 0, 1, 1) /* limsy Chain Boots */, 
(3124, 2651, 0.02, 1, 0, 1, 1) /* limsy Chain Bracers */, 
(3124, 2652, 0.04, 1, 0, 1, 1) /* limsy Chain Cloak */, 
(3124, 2653, 0.02, 1, 0, 1, 1) /* limsy Chain Gloves */, 
(3124, 2654, 0.02, 1, 0, 1, 1) /* limsy Chain Pants */, 
(3124, 2656, 0.03, 1, 0, 1, 1) /* limsy Chain Vest */, 
(3124, 3363, 0.02, 1, 0, 1, 1) /* rayed Belt */, 
(3124, 3365, 0.03, 1, 0, 1, 1) /* rayed Bracers */, 
(3124, 3609, 0.01, 1, 0, 1, 1) /* lans: Copper Chain Vest */, 
(3124, 4496, 0.12, 1, 0, 1, 1) /* mall Brown Pouch */, 
(3124, 4862, -88, 1, 0, 1, 1) /* corpid Worker Tail */, 
(3124, 4867, 0.67, 1, 0, 1, 2) /* roken Scorpid Leg */, 
(3124, 4872, 0.21, 1, 0, 1, 1) /* ry Scorpid Eye */, 
(3124, 5571, 0.15, 1, 0, 1, 1) /* mall Black Pouch */, 
(3124, 5572, 0.1, 1, 0, 1, 1) /* mall Green Pouch */, 
(3124, 7099, 38, 1, 0, 1, 2) /* evered Pincer */, 
(3124, 7100, 0.71, 1, 0, 1, 2) /* ticky Ichor */, 
(3124, 7101, 0.69, 1, 0, 1, 2) /* ug Eye */, 
(3124, 19935, 0.01, 1, 0, 1, 1) /* mpty Venom Sac */, 
(3124, 19936, 0.01, 1, 0, 1, 1) /* ried Scorpid Carapace */, 
(3124, 19938, 0.02, 1, 0, 1, 1) /* eavy Scorpid Leg */, 
(3124, 30821, 0.11, 1, 0, 1, 1) /* nvenomed Scorpid Stinger */, 
(3124, 56968, 57, 1, 0, 1, 1) /* ug Juice */, 
(3124, 62328, 0.01, 1, 0, 1, 1) /* hed Fur */;

UPDATE `creature_template` SET `lootid`=3281 WHERE `entry`=3281;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(3281, 805, 0.1, 1, 0, 1, 1) /* mall Red Pouch */, 
(3281, 828, 0.11, 1, 0, 1, 1) /* mall Blue Pouch */, 
(3281, 1364, 0.04, 1, 0, 1, 1) /* agged Leather Vest */, 
(3281, 1378, 0.03, 1, 0, 1, 1) /* rayed Pants */, 
(3281, 1411, 0.01, 1, 0, 1, 1) /* ithered Staff */, 
(3281, 2650, 0.05, 1, 0, 1, 1) /* limsy Chain Boots */, 
(3281, 2654, 0.04, 1, 0, 1, 1) /* limsy Chain Pants */, 
(3281, 2656, 0.05, 1, 0, 1, 1) /* limsy Chain Vest */, 
(3281, 2924, 0.05, 1, 0, 1, 1) /* rocolisk Meat */, 
(3281, 3190, 0.01, 1, 0, 1, 1) /* eatstick */, 
(3281, 3363, 0.08, 1, 0, 1, 1) /* rayed Belt */, 
(3281, 3365, 0.05, 1, 0, 1, 1) /* rayed Bracers */, 
(3281, 3609, 0.01, 1, 0, 1, 1) /* lans: Copper Chain Vest */, 
(3281, 4496, 0.07, 1, 0, 1, 1) /* mall Brown Pouch */, 
(3281, 4862, -6, 1, 0, 1, 1) /* corpid Worker Tail */, 
(3281, 4867, 0.57, 1, 0, 1, 1) /* roken Scorpid Leg */, 
(3281, 4872, 0.22, 1, 0, 1, 1) /* ry Scorpid Eye */, 
(3281, 4905, -97, 1, 0, 1, 1) /* arkoth's Mangled Claw */, 
(3281, 5069, 0.01, 1, 0, 1, 1) /* ire Wand */, 
(3281, 7099, 37, 1, 0, 1, 1) /* evered Pincer */, 
(3281, 7100, 0.89, 1, 0, 1, 1) /* ticky Ichor */, 
(3281, 7101, 0.61, 1, 0, 1, 1) /* ug Eye */, 
(3281, 8182, 0.01, 1, 0, 1, 1) /* ellet Rifle */, 
(3281, 19936, 0.02, 1, 0, 1, 1) /* ried Scorpid Carapace */, 
(3281, 19937, 0.01, 1, 0, 1, 1) /* mall Scorpid Claw */, 
(3281, 19938, 0.01, 1, 0, 1, 1) /* eavy Scorpid Leg */, 
(3281, 30821, 0.14, 1, 0, 1, 1) /* nvenomed Scorpid Stinger */, 
(3281, 56968, 57, 1, 0, 1, 1) /* ug Juice */, 
(3281, 62328, 0.05, 1, 0, 1, 1) /* hed Fur */;
