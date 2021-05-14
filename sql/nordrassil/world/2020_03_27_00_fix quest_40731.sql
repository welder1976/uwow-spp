-- ya con esto te dan la mision
UPDATE `quest_template_addon` SET `PrevQuestID`=NULL WHERE (`ID`='40731');

-- prueba--corrigiendo escalado de level de los npc
UPDATE `creature_template` SET `minlevel`='100' WHERE (`entry`='97992');
UPDATE `creature_template` SET `minlevel`='100' WHERE (`entry`='97994');
UPDATE `creature_template` SET `minlevel`='100' WHERE (`entry`='98069');
