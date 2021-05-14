UPDATE `npc_text` SET `Probability0`='100' WHERE (`ID`='300001');
UPDATE `gossip_menu_option` SET `OptionText`='Quiero ver tus recompensas.' WHERE (`MenuID`='542000') AND (`OptionIndex`='2');
UPDATE `gossip_menu_option` SET `OptionText`='Información' WHERE (`MenuID`='542000') AND (`OptionIndex`='3');
UPDATE `gossip_menu_option` SET `OptionText`='Muestrame las recompensas disponibles.' WHERE (`MenuID`='542000') AND (`OptionIndex`='1');


UPDATE `gossip_menu_option_locale` SET `Locale`='esES', `OptionText`='Cabo de las mil estrellas' WHERE (`MenuID`='542002') AND (`ID`='13') AND (`Locale`='ruRU');
UPDATE `gossip_menu_option_locale` SET `Locale`='esES', `OptionText`='Camisa de fuerza de hielo' WHERE (`MenuID`='542002') AND (`ID`='15') AND (`Locale`='ruRU');
UPDATE `gossip_menu_option_locale` SET `Locale`='esES', `OptionText`='Cabo de magia arcana' WHERE (`MenuID`='542002') AND (`ID`='14') AND (`Locale`='ruRU');
UPDATE `gossip_menu_option_locale` SET `Locale`='esES', `OptionText`='Demostración de vuelo' WHERE (`MenuID`='542002') AND (`ID`='12') AND (`Locale`='ruRU');
UPDATE `gossip_menu_option` SET `OptionText`='Ocasionalmente sobrio' WHERE (`MenuID`='542002') AND (`OptionIndex`='4');
UPDATE `gossip_menu_option` SET `OptionText`='Riendas de Loke\'nahak' WHERE (`MenuID`='542002') AND (`OptionIndex`='6');
UPDATE `gossip_menu_option` SET `OptionText`='Escuadrón Iliridari' WHERE (`MenuID`='542002') AND (`OptionIndex`='7');
UPDATE `gossip_menu_option` SET `OptionText`='Hipogrifo fantasma' WHERE (`MenuID`='542002') AND (`OptionIndex`='8');
UPDATE `gossip_menu_option` SET `OptionText`='Corcel Kul-Tiras' WHERE (`MenuID`='542002') AND (`OptionIndex`='9');
UPDATE `gossip_menu_option` SET `OptionText`='Yasher Zuldazara' WHERE (`MenuID`='542002') AND (`OptionIndex`='10');
UPDATE `gossip_menu_option` SET `OptionText`='Muéstrame volar' WHERE (`MenuID`='542002') AND (`OptionIndex`='12');
UPDATE `gossip_menu_option` SET `OptionText`='Tabardo de mil estrellas' WHERE (`MenuID`='542002') AND (`OptionIndex`='13');
UPDATE `gossip_menu_option` SET `OptionText`='Tabardo de magia arcana' WHERE (`MenuID`='542002') AND (`OptionIndex`='14');
UPDATE `gossip_menu_option` SET `OptionText`='Tabardo de poder de hielo' WHERE (`MenuID`='542002') AND (`OptionIndex`='15');
UPDATE `gossip_menu_option` SET `OptionText`='Fénix llameante' WHERE (`MenuID`='542002') AND (`OptionIndex`='3');
UPDATE `gossip_menu_option` SET `OptionText`='Fénix lila' WHERE (`MenuID`='542002') AND (`OptionIndex`='2');
UPDATE `gossip_menu_option` SET `OptionText`='Fénix azul' WHERE (`MenuID`='542002') AND (`OptionIndex`='1');
UPDATE `gossip_menu_option` SET `OptionText`='Ave de fuego golpeada por el abismo' WHERE (`MenuID`='542002') AND (`OptionIndex`='0');

UPDATE `creature_template_wdb` SET `Name1`='Eredar Soul Caster', `NameAlt1`='Eredar Soul Caster' WHERE (`Entry`='127114');
UPDATE `creature_template_wdb` SET `Name1`='Fredarsky obediente', `NameAlt1`='Novato Eredar' WHERE (`Entry`='123130');
UPDATE `creature_template_wdb` SET `Name1`='Eredar Soul Caster' WHERE (`Entry`='122835');
