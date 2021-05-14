/*Traducion de los grupos de tienda */
/* descripcion de articulos*/
INSERT INTO `battlepay_product_group_locales` (`GroupID`, `Locale`, `Name`) VALUES('1','esES','Monturas');
INSERT INTO `battlepay_product_group_locales` (`GroupID`, `Locale`, `Name`) VALUES('2','esES','Mascotas');
INSERT INTO `battlepay_product_group_locales` (`GroupID`, `Locale`, `Name`) VALUES('3','esES','Servicios');
INSERT INTO `battlepay_product_group_locales` (`GroupID`, `Locale`, `Name`) VALUES('4','esES','Oro');
INSERT INTO `battlepay_product_group_locales` (`GroupID`, `Locale`, `Name`) VALUES('5','esES','Profesiones');
INSERT INTO `battlepay_product_group_locales` (`GroupID`, `Locale`, `Name`) VALUES('7','esES','Armaduras');
INSERT INTO `battlepay_product_group_locales` (`GroupID`, `Locale`, `Name`) VALUES('8','esES','Armas');
INSERT INTO `battlepay_product_group_locales` (`GroupID`, `Locale`, `Name`) VALUES('9','esES','Juguetes');
INSERT INTO `battlepay_product_group_locales` (`GroupID`, `Locale`, `Name`) VALUES('11','esES','Bolsas');
INSERT INTO `battlepay_product_group_locales` (`GroupID`, `Locale`, `Name`) VALUES('12','esES','Reliquias');
/*Traducion de los grupos de tienda */
/* descripcion de articulos*/
REPLACE into `battlepay_product_group` (`GroupID`, `Name`, `IconFileDataID`, `DisplayType`, `Ordering`) values('1','Mounts','345787','0','1');
REPLACE into `battlepay_product_group` (`GroupID`, `Name`, `IconFileDataID`, `DisplayType`, `Ordering`) values('2','Pets','132599','0','2');
REPLACE into `battlepay_product_group` (`GroupID`, `Name`, `IconFileDataID`, `DisplayType`, `Ordering`) values('3','Services','136243','0','3');
REPLACE into `battlepay_product_group` (`GroupID`, `Name`, `IconFileDataID`, `DisplayType`, `Ordering`) values('4','Gold','133789','0','4');
REPLACE into `battlepay_product_group` (`GroupID`, `Name`, `IconFileDataID`, `DisplayType`, `Ordering`) values('5','Professions','134939','0','5');
REPLACE into `battlepay_product_group` (`GroupID`, `Name`, `IconFileDataID`, `DisplayType`, `Ordering`) values('7','Armor','801524','0','8');
REPLACE into `battlepay_product_group` (`GroupID`, `Name`, `IconFileDataID`, `DisplayType`, `Ordering`) values('8','Weapons','313914','0','9');
REPLACE into `battlepay_product_group` (`GroupID`, `Name`, `IconFileDataID`, `DisplayType`, `Ordering`) values('9','Toys','133865','0','10');
REPLACE into `battlepay_product_group` (`GroupID`, `Name`, `IconFileDataID`, `DisplayType`, `Ordering`) values('11','Bag','133643','0','12');
REPLACE into `battlepay_product_group` (`GroupID`, `Name`, `IconFileDataID`, `DisplayType`, `Ordering`) values('12','Heirlooms','134863','0','8');

DELETE FROM `battlepay_product_group` WHERE Groupid = 10;

/* precios de reputaciones exaltadas, productos y profesiones */
UPDATE `battlepay_product` SET `NormalPriceFixedPoint`='10', `CurrentPriceFixedPoint`='10' WHERE (`ProductID`='1606'); -- 5k sede
UPDATE `battlepay_product` SET `NormalPriceFixedPoint`='10', `CurrentPriceFixedPoint`='10' WHERE (`ProductID`='1607'); -- esencia despertar
UPDATE `battlepay_product` SET `NormalPriceFixedPoint`='10', `CurrentPriceFixedPoint`='10' WHERE (`ProductID`='1608'); -- sello del destino
UPDATE `battlepay_product` SET `NormalPriceFixedPoint`='10', `CurrentPriceFixedPoint`='10' WHERE (`ProductID`='1609'); -- Argunita velada
UPDATE `battlepay_product` SET `NormalPriceFixedPoint`='10', `CurrentPriceFixedPoint`='10' WHERE (`ProductID`='1610'); -- Ecos de Batalla
UPDATE `battlepay_product` SET `NormalPriceFixedPoint`='10', `CurrentPriceFixedPoint`='10' WHERE (`ProductID`='1611'); -- fragmento del vacio
UPDATE `battlepay_product` SET `NormalPriceFixedPoint`='10', `CurrentPriceFixedPoint`='10' WHERE (`ProductID`='1612'); -- Suministros del ocaso de la legion
UPDATE `battlepay_product` SET `NormalPriceFixedPoint`='10', `CurrentPriceFixedPoint`='10' WHERE (`ProductID`='1613'); -- ojo vidente
UPDATE `battlepay_product` SET `NormalPriceFixedPoint`='4', `CurrentPriceFixedPoint`='4' WHERE (`ProductID`='1645'); -- promo
UPDATE `battlepay_product` SET `NormalPriceFixedPoint`='45', `CurrentPriceFixedPoint`='30' WHERE (`ProductID`='1635'); -- prefabricado
UPDATE `battlepay_product` SET `NormalPriceFixedPoint`='16', `CurrentPriceFixedPoint`='16' WHERE (`ProductID`='1660'); -- Alquimia
UPDATE `battlepay_product` SET `NormalPriceFixedPoint`='16', `CurrentPriceFixedPoint`='16' WHERE (`ProductID`='1661'); -- Arqueología
UPDATE `battlepay_product` SET `NormalPriceFixedPoint`='16', `CurrentPriceFixedPoint`='16' WHERE (`ProductID`='1662'); -- Herrería
UPDATE `battlepay_product` SET `NormalPriceFixedPoint`='16', `CurrentPriceFixedPoint`='16' WHERE (`ProductID`='1663'); -- cocina
UPDATE `battlepay_product` SET `NormalPriceFixedPoint`='16', `CurrentPriceFixedPoint`='16' WHERE (`ProductID`='1664'); -- encantamiento
UPDATE `battlepay_product` SET `NormalPriceFixedPoint`='16', `CurrentPriceFixedPoint`='16' WHERE (`ProductID`='1665'); -- ingenieria
UPDATE `battlepay_product` SET `NormalPriceFixedPoint`='16', `CurrentPriceFixedPoint`='16' WHERE (`ProductID`='1666'); -- primeros aux
UPDATE `battlepay_product` SET `NormalPriceFixedPoint`='16', `CurrentPriceFixedPoint`='16' WHERE (`ProductID`='1667'); -- pesca
UPDATE `battlepay_product` SET `NormalPriceFixedPoint`='16', `CurrentPriceFixedPoint`='16' WHERE (`ProductID`='1668'); -- Herboristeria
UPDATE `battlepay_product` SET `NormalPriceFixedPoint`='16', `CurrentPriceFixedPoint`='16' WHERE (`ProductID`='1669'); -- inscripcion
UPDATE `battlepay_product` SET `NormalPriceFixedPoint`='16', `CurrentPriceFixedPoint`='16' WHERE (`ProductID`='1670'); -- joyeria
UPDATE `battlepay_product` SET `NormalPriceFixedPoint`='16', `CurrentPriceFixedPoint`='16' WHERE (`ProductID`='1671'); -- desuello
UPDATE `battlepay_product` SET `NormalPriceFixedPoint`='16', `CurrentPriceFixedPoint`='16' WHERE (`ProductID`='1672'); -- sastreria
UPDATE `battlepay_product` SET `NormalPriceFixedPoint`='16', `CurrentPriceFixedPoint`='16' WHERE (`ProductID`='1673'); -- mineria
UPDATE `battlepay_product` SET `NormalPriceFixedPoint`='16', `CurrentPriceFixedPoint`='16' WHERE (`ProductID`='1674'); -- peleteria
UPDATE `battlepay_product` SET `NormalPriceFixedPoint`='10', `CurrentPriceFixedPoint`='10' WHERE (`ProductID`='1630'); -- subida 110
UPDATE `battlepay_product` SET `NormalPriceFixedPoint`='6', `CurrentPriceFixedPoint`='6' WHERE (`ProductID`='1631'); -- cambio de nombre
UPDATE `battlepay_product` SET `NormalPriceFixedPoint`='6', `CurrentPriceFixedPoint`='6' WHERE (`ProductID`='1632'); -- cambio de faccion
UPDATE `battlepay_product` SET `NormalPriceFixedPoint`='6', `CurrentPriceFixedPoint`='6' WHERE (`ProductID`='1633'); -- cambio de raza
UPDATE `battlepay_product` SET `NormalPriceFixedPoint`='6', `CurrentPriceFixedPoint`='6' WHERE (`ProductID`='1634'); -- cambio de apariencia
UPDATE `battlepay_product` SET `NormalPriceFixedPoint`='16', `CurrentPriceFixedPoint`='16' WHERE (`ProductID`='1637'); -- rep classic
UPDATE `battlepay_product` SET `NormalPriceFixedPoint`='16', `CurrentPriceFixedPoint`='16' WHERE (`ProductID`='1638'); -- rep BC
UPDATE `battlepay_product` SET `NormalPriceFixedPoint`='16', `CurrentPriceFixedPoint`='16' WHERE (`ProductID`='1639'); -- rep lk
UPDATE `battlepay_product` SET `NormalPriceFixedPoint`='16', `CurrentPriceFixedPoint`='16' WHERE (`ProductID`='1640'); -- rep cata
UPDATE `battlepay_product` SET `NormalPriceFixedPoint`='16', `CurrentPriceFixedPoint`='16' WHERE (`ProductID`='1641'); -- rep mop
UPDATE `battlepay_product` SET `NormalPriceFixedPoint`='16', `CurrentPriceFixedPoint`='16' WHERE (`ProductID`='1642'); -- rep draenor
UPDATE `battlepay_product` SET `NormalPriceFixedPoint`='16', `CurrentPriceFixedPoint`='16' WHERE (`ProductID`='1643'); -- rep legion
UPDATE `battlepay_product` SET `NormalPriceFixedPoint`='26', `CurrentPriceFixedPoint`='26' WHERE (`ProductID`='1644'); -- reset instan
UPDATE `battlepay_product` SET `NormalPriceFixedPoint`='8', `CurrentPriceFixedPoint`='8' WHERE (`ProductID`='1646'); -- apariencias 
UPDATE `battlepay_product` SET `NormalPriceFixedPoint`='8', `CurrentPriceFixedPoint`='8' WHERE (`ProductID`='1647'); -- Aliado Elfo del Vacío
UPDATE `battlepay_product` SET `NormalPriceFixedPoint`='8', `CurrentPriceFixedPoint`='8' WHERE (`ProductID`='1648'); -- Draenei forjado por la Luz
UPDATE `battlepay_product` SET `NormalPriceFixedPoint`='8', `CurrentPriceFixedPoint`='8' WHERE (`ProductID`='1649'); -- Elfos Nocheterna
UPDATE `battlepay_product` SET `NormalPriceFixedPoint`='8', `CurrentPriceFixedPoint`='8' WHERE (`ProductID`='1650'); -- Tauren Monte Alto

/*precio de oro */
UPDATE `battlepay_product` SET `NormalPriceFixedPoint`='8', `CurrentPriceFixedPoint`='8' WHERE (`ProductID`='1600'); -- oro 20k
UPDATE `battlepay_product` SET `NormalPriceFixedPoint`='12', `CurrentPriceFixedPoint`='12' WHERE (`ProductID`='1601'); -- oro 50k
UPDATE `battlepay_product` SET `NormalPriceFixedPoint`='18', `CurrentPriceFixedPoint`='18' WHERE (`ProductID`='1602'); -- oro 100k
UPDATE `battlepay_product` SET `NormalPriceFixedPoint`='24', `CurrentPriceFixedPoint`='24' WHERE (`ProductID`='1603'); -- oro 250k
UPDATE `battlepay_product` SET `NormalPriceFixedPoint`='30', `CurrentPriceFixedPoint`='30' WHERE (`ProductID`='1604'); -- oro 500k
UPDATE `battlepay_product` SET `NormalPriceFixedPoint`='45', `CurrentPriceFixedPoint`='38' WHERE (`ProductID`='1605'); -- oro 1000k
