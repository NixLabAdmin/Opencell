/*------INSERTS OF TABLE LANGUAGE----*/
INSERT INTO ADM_LANGUAGE (id, version, created, updated, language_code, description_en, creator_id,  updater_id) VALUES (1, 1, now(), NULL, 'DEU', 'allemand', NULL, NULL);
INSERT INTO ADM_LANGUAGE (id, version, created, updated, language_code, description_en, creator_id,  updater_id) VALUES (2, 1, now(), NULL, 'ENG','anglais', NULL, NULL);
INSERT INTO ADM_LANGUAGE (id, version, created, updated, language_code, description_en, creator_id,  updater_id) VALUES (3, 1, now(), NULL, 'ARA','arabe', NULL, NULL);
INSERT INTO ADM_LANGUAGE (id, version, created, updated, language_code, description_en, creator_id,  updater_id) VALUES (4, 1, now(), NULL, 'BUL','bulgare', NULL, NULL);
INSERT INTO ADM_LANGUAGE (id, version, created, updated, language_code, description_en, creator_id,  updater_id) VALUES (5, 1, now(), NULL, 'CAT','catalan', NULL, NULL);
INSERT INTO ADM_LANGUAGE (id, version, created, updated, language_code, description_en, creator_id,  updater_id) VALUES (6, 1, now(), NULL, 'ZHO','chinois', NULL, NULL);
INSERT INTO ADM_LANGUAGE (id, version, created, updated, language_code, description_en, creator_id,  updater_id) VALUES (7, 1, now(), NULL, 'DAN','danois', NULL, NULL);
INSERT INTO ADM_LANGUAGE (id, version, created, updated, language_code, description_en, creator_id,  updater_id) VALUES (8, 1, now(), NULL, 'SPA','espagnol', NULL, NULL);
INSERT INTO ADM_LANGUAGE (id, version, created, updated, language_code, description_en, creator_id,  updater_id) VALUES (9, 1, now(), NULL, 'EST','estonien', NULL, NULL);
INSERT INTO ADM_LANGUAGE (id, version, created, updated, language_code, description_en, creator_id,  updater_id) VALUES (10, 1, now(), NULL, 'FAO','féroïen', NULL, NULL);
INSERT INTO ADM_LANGUAGE (id, version, created, updated, language_code, description_en, creator_id,  updater_id) VALUES (11, 1, now(), NULL, 'FIN','finlandais', NULL, NULL);
INSERT INTO ADM_LANGUAGE (id, version, created, updated, language_code, description_en, creator_id,  updater_id) VALUES (12, 1, now(), NULL, 'FRA','français', NULL, NULL);
INSERT INTO ADM_LANGUAGE (id, version, created, updated, language_code, description_en, creator_id,  updater_id) VALUES (13, 1, now(), NULL, 'ELL','grec', NULL, NULL);
INSERT INTO ADM_LANGUAGE (id, version, created, updated, language_code, description_en, creator_id,  updater_id) VALUES (14, 1, now(), NULL, 'HIN','hindi', NULL, NULL);
INSERT INTO ADM_LANGUAGE (id, version, created, updated, language_code, description_en, creator_id,  updater_id) VALUES (15, 1, now(), NULL, 'HUN','hongrois', NULL, NULL);
INSERT INTO ADM_LANGUAGE (id, version, created, updated, language_code, description_en, creator_id,  updater_id) VALUES (16, 1, now(), NULL, 'ISL','islandais', NULL, NULL);
INSERT INTO ADM_LANGUAGE (id, version, created, updated, language_code, description_en, creator_id,  updater_id) VALUES (17, 1, now(), NULL, 'ITA','italien', NULL, NULL);
INSERT INTO ADM_LANGUAGE (id, version, created, updated, language_code, description_en, creator_id,  updater_id) VALUES (18, 1, now(), NULL, 'JPN','japonais', NULL, NULL);
INSERT INTO ADM_LANGUAGE (id, version, created, updated, language_code, description_en, creator_id,  updater_id) VALUES (19, 1, now(), NULL, 'LAV','letton', NULL, NULL);
INSERT INTO ADM_LANGUAGE (id, version, created, updated, language_code, description_en, creator_id,  updater_id) VALUES (20, 1, now(), NULL, 'LIT','lituanien', NULL, NULL);
INSERT INTO ADM_LANGUAGE (id, version, created, updated, language_code, description_en, creator_id,  updater_id) VALUES (21, 1, now(), NULL, 'NLD','néerlandais', NULL, NULL);
INSERT INTO ADM_LANGUAGE (id, version, created, updated, language_code, description_en, creator_id,  updater_id) VALUES (22, 1, now(), NULL, 'NOR','norvégien', NULL, NULL);
INSERT INTO ADM_LANGUAGE (id, version, created, updated, language_code, description_en, creator_id,  updater_id) VALUES (23, 1, now(), NULL, 'POL','polonais', NULL, NULL);
INSERT INTO ADM_LANGUAGE (id, version, created, updated, language_code, description_en, creator_id,  updater_id) VALUES (24, 1, now(), NULL, 'POR','portugais', NULL, NULL);
INSERT INTO ADM_LANGUAGE (id, version, created, updated, language_code, description_en, creator_id,  updater_id) VALUES (25, 1, now(), NULL, 'RON','roumain', NULL, NULL);
INSERT INTO ADM_LANGUAGE (id, version, created, updated, language_code, description_en, creator_id,  updater_id) VALUES (26, 1, now(), NULL, 'RUS','russe', NULL, NULL);
INSERT INTO ADM_LANGUAGE (id, version, created, updated, language_code, description_en, creator_id,  updater_id) VALUES (27, 1, now(), NULL, 'SRP','serbe', NULL, NULL);
INSERT INTO ADM_LANGUAGE (id, version, created, updated, language_code, description_en, creator_id,  updater_id) VALUES (28, 1, now(), NULL, 'SLK','slovaque', NULL, NULL);
INSERT INTO ADM_LANGUAGE (id, version, created, updated, language_code, description_en, creator_id,  updater_id) VALUES (29, 1, now(), NULL, 'SLV','slovène', NULL, NULL);
INSERT INTO ADM_LANGUAGE (id, version, created, updated, language_code, description_en, creator_id,  updater_id) VALUES (30, 1, now(), NULL, 'SWE','suédois', NULL, NULL);
INSERT INTO ADM_LANGUAGE (id, version, created, updated, language_code, description_en, creator_id,  updater_id) VALUES (31, 1, now(), NULL, 'CES','tchèque', NULL, NULL);
INSERT INTO ADM_LANGUAGE (id, version, created, updated, language_code, description_en, creator_id,  updater_id) VALUES (32, 1, now(), NULL, 'TUR','turc', NULL, NULL);

DROP SEQUENCE ADM_LANGUAGE_SEQ;
CREATE SEQUENCE ADM_LANGUAGE_SEQ start with 33 increment by 1;

/*------INSERTS OF TABLE CURRENCY----*/

INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (1,1,'AFA','Afghani',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (2,1,'ZAR','Rand',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (3,1,'ALL','Lek',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (4,1,'DZD','Dinar algérien',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (5,1,'EUR','Euro',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (6,1,'AOA','Kwanza',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (7,1,'XCD','Dollar des Cara bes de lEst',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (8,1,'ANG','Florin des Antilles',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (9,1,'SAR','Riyal saoudien',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (10,1,'ARS','Peso',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (11,1,'AMD','Dram',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (12,1,'AWG','Florin d Aruba',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (13,1,'AUD','Dollar australien',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (14,1,'AZM','Manat azerbaïdjanais',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (15,1,'BSD','Dollar des Bahamas',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (16,1,'BHD','Dinar de Bahreïn',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (17,1,'BDT','Taka',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (18,1,'BBD','Dollar de Barbade',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (19,1,'BZD','Dollar de Belize',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (20,1,'XOF','Franc CFA - BCEAO',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (21,1,'BMD','Dollar des Bermudes',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (22,1,'BTN','Ngultrum',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (23,1,'BYR','Rouble biãlorussie',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (24,1,'BOB','Boliviano',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (25,1,'BAM','Mark bosniaque convertible',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (26,1,'BWP','Pula',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (27,1,'BRL','Real',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (28,1,'BND','Dollar de Brunéi',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (29,1,'BGN','Lev',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (30,1,'BIF','Franc du Burundi',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (31,1,'NOK','Couronne norvégienne',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (32,1,'KYD','Dollar des îles Caïmanes',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (33,1,'KHR','Riel',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (34,1,'XAF','Franc CFA - BEAC',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (35,1,'CAD','Dollar canadien',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (36,1,'CVE','Escudo du Cap-Vert',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (37,1,'CFA','FRANC CFA-BEAC',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (38,1,'CLP','Peso chilien',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (39,1,'CNY','Yuan Ren-Min-Bi',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (40,1,'CYP','Livre chypriote',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (41,1,'COP','Peso colombien',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (42,1,'KMF','Franc des Comores',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (43,1,'CDF','FRANC DU CONGO DEMOCRATIQUE',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (44,1,'KRW','Won',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (45,1,'KPW','Won de la Corée du Nord',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (46,1,'CRC','Colon de Costa Rica',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (47,1,'HRK','Kuna',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (48,1,'CUP','Peso cubain',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (49,1,'USD','Dollar des Etats-unis',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (50,1,'DKK','Couronne danoise',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (51,1,'DJF','Franc de Djibouti',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (52,1,'DOP','Peso dominicain',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (53,1,'EGP','Livre égyptienne',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (54,1,'AED','Dirham des émirats arabes unis',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (55,1,'ERN','Nafka',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (56,1,'EEK','Couronne d Estonie',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (57,1,'ETB','Birr éthiopien',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (58,1,'FKP','Livre de Falkland',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (59,1,'FJD','Dollar des Fidji',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (60,1,'GMD','Dalasie',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (61,1,'GEL','Lari',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (62,1,'GHC','Cedi ghanéen',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (63,1,'GIP','Livre de Gibraltar',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (64,1,'GTQ','Quetzal',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (65,1,'GBP','Livre sterling',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (66,1,'GNF','Franc guinéen',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (67,1,'GYD','Dollar de Guyane',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (68,1,'HTG','Gourde',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (69,1,'HNL','Lempira',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (70,1,'HKD','Dollar de Hong-Kong',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (71,1,'HUF','Forint',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (72,1,'NZD','Dollar néo-zélandais',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (73,1,'INR','Roupie indienne',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (74,1,'IDR','Rupiah',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (75,1,'IRR','Rial iranien',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (76,1,'IQD','Dinar iraquien',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (77,1,'ISK','Couronne islandaise',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (78,1,'ILS','Sheqel',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (79,1,'JMD','Dollar jamaïcain',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (80,1,'JPY','Yen',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (81,1,'JOD','Dinar jordanien',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (82,1,'KZT','Tenge',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (83,1,'KES','Shilling du Kenya',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (84,1,'KGS','Som',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (85,1,'KWD','Dinar koweïtien',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (86,1,'LAK','Kip',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (87,1,'LSL','Loti',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (88,1,'LVL','Lats letton',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (89,1,'LBP','Livre libanaise',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (90,1,'LRD','Dollar libérien',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (91,1,'LYD','Dinar libyen',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (92,1,'CHF','Franc suisse',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (93,1,'LTL','Litas lituanien',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (94,1,'MOP','Pataca',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (95,1,'MKD','Denar',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (96,1,'MGA','Ariary malgache',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (97,1,'MGF','Franc malgache',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (98,1,'MYR','Ringgit de Malaisie',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (99,1,'MWK','Kwacha',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (100,1,'MVR','Rufiyaa',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (101,1,'MTL','Livre maltaise',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (102,1,'MAD','Dirham marocain',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (103,1,'MUR','Roupie mauricienne',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (104,1,'MRO','Ouguija',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (105,1,'MXN','Peso mexicain',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (106,1,'MDL','Leu de Moldave',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (107,1,'MNT','Tugrik',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (108,1,'MZM','Metical',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (109,1,'MMK','Kyat',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (110,1,'NAD','Dollar namibien',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (111,1,'NPR','Roupie Népalaise',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (112,1,'NIO','Cordoba oro',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (113,1,'NGN','Naira',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (114,1,'XPF','Franc CFP',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (115,1,'OMR','Rial Omani',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (116,1,'XAU','Opérations sur or',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (117,1,'UGX','Shilling ougandais',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (118,1,'UZS','Soum ouzbek',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (119,1,'PKR','Roupie pakistanaise',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (120,1,'PAB','Balboa',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (121,1,'PGK','Kina',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (122,1,'PYG','Guarani',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (123,1,'PEN','Nouveau sol',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (124,1,'PHP','Peso philippin',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (125,1,'PLN','Zloty',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (126,1,'QAR','Riyal du Qatar',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (127,1,'RON','LEI (Nouveau Leu)',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (128,1,'ROL','Leu',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (129,1,'RUB','Rouble russe (nouveau)',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (130,1,'RWF','Franc du Rwanda',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (131,1,'SBD','Dollar des îles Salomon',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (132,1,'SVC','Colon salvadorien',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (133,1,'WST','Tala',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (134,1,'STD','Dobra',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (135,1,'CSD','Dinar Serbe',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (136,1,'SCR','Roupie des Seychelles',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (137,1,'SLL','Leone',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (138,1,'SGD','Dollar de Singapour',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (139,1,'SKK','Couronne slovaque',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (140,1,'SIT','Tolar',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (141,1,'SOS','Shilling Somalien',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (142,1,'SDG','Livre soudanaise',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (143,1,'LKR','Roupie de Sri Lanka',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (144,1,'SHP','Livre de Sainte-Hélène',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (145,1,'SEK','Couronne suédoise',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (146,1,'SRD','Florin du suriname',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (147,1,'SZL','Lilangeni',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (148,1,'SYP','Livre syrienne',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (149,1,'TJS','Somoni',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (150,1,'TWD','Nouveau dollar de Taïwan',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (151,1,'TZS','Shilling tanzanien',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (152,1,'CZK','Couronne tchèque',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (153,1,'THB','Baht',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (154,1,'TOP','Pa anga',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (155,1,'TTD','Dollar de Trinité et de Tobago',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (156,1,'TND','Dinar tunisien',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (157,1,'TMM','Manat turkmène',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (158,1,'TRY','Nouvelle Livre turque',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (159,1,'TRL','Livre turque',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (160,1,'UAH','HRYVNIA',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (161,1,'UYU','Nouveau Peso uruguayen',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (162,1,'VUV','Vatu',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (163,1,'VEF','Bolivar Fuerte',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (164,1,'VND','Dong',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (165,1,'YER','Riyal yéménite',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (166,1,'ZMK','Kwacha de Zambie',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (167,1,'ZWD','Dollar du Zimbabwe',true,now(),null,null,null);
INSERT INTO ADM_CURRENCY (id, version, currency_code, description_en, system_currency, created, updated, creator_id,  updater_id) VALUES (168,1,'GHS','Cedi ghanéen',true,now(),null,null,null);

DROP SEQUENCE ADM_CURRENCY_SEQ;
CREATE SEQUENCE ADM_CURRENCY_SEQ start with 169 increment by 1;

/*-------INSERTS OF TABLE COUNTRY------*/

INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(1,1,now(),null,'AD','Andorra',null,null,8,5);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(2,1,now(),null,'AE','United Arab Emirates',null,null,3,54);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(3,1,now(),null,'AF','Afghanistan',null,null,2,1);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(4,1,now(),null,'AG','Antigua and Barbuda',null,null,2,7);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(5,1,now(),null,'AI','Anguilla',null,null,2,7);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(6,1,now(),null,'AL','Albania',null,null,2,3);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(7,1,now(),null,'AM','Armenia',null,null,2,11);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(8,1,now(),null,'AN','Netherlands Antilles',null,null,21,8);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(9,1,now(),null,'AO','Angola',null,null,2,6);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(10,1,now(),null,'AR','Argentina',null,null,8,10);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(11,1,now(),null,'AS','American Samoa',null,null,1,49);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(12,1,now(),null,'AT','Austria',null,null,1,5);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(13,1,now(),null,'AU','Australia',null,null,2,13);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(14,1,now(),null,'AW','Aruba',null,null,2,12);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(15,1,now(),null,'AZ','Azerbaijan',null,null,2,6);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(16,1,now(),null,'BA','Bosnia and Herzegovina',null,null,2,25);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(17,1,now(),null,'BB','Barbados',null,null,2,18);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(18,1,now(),null,'BD','Bangladesh',null,null,2,17);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(19,1,now(),null,'BE','Belgium',null,null,12,5);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(20,1,now(),null,'BF','Burkina Faso',null,null,2,20);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(21,1,now(),null,'BG','Bulgaria',null,null,2,5);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(22,1,now(),null,'BH','Bahrain',null,null,2,16);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(23,1,now(),null,'BI','Burundi',null,null,2,30);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(24,1,now(),null,'BJ','Benin',null,null,2,20);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(25,1,now(),null,'BM','Bermuda',null,null,2,21);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(26,1,now(),null,'BN','Brunei Darussalam',null,null,2,28);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(27,1,now(),null,'BO','Bolivia',null,null,2,24);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(28,1,now(),null,'BR','Brazil',null,null,2,27);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(29,1,now(),null,'BS','The Bahamas',null,null,2,15);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(30,1,now(),null,'BT','Bhutan',null,null,2,16);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(31,1,now(),null,'BV','Bouvet Island',null,null,2,31);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(32,1,now(),null,'BW','Botswana',null,null,2,26);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(33,1,now(),null,'BY','Belarus',null,null,2,23);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(34,1,now(),null,'BZ','Belize',null,null,2,19);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(35,1,now(),null,'CA','Canada',null,null,2,35);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(36,1,now(),null,'CC','Cocos (Keeling) Islands',null,null,2,13);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(37,1,now(),null,'CD','Congo, Democratic Republic of th',null,null,12,43);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(38,1,now(),null,'CF','Central African Republic',null,null,12,34);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(39,1,now(),null,'CG','Congo, Republic of the',null,null,12,34);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(40,1,now(),null,'CH','Switzerland',null,null,2,92);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(41,1,now(),null,'CI','Cote Ivoire',null,null,12,20);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(42,1,now(),null,'CK','Cook Islands',null,null,2,72);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(43,1,now(),null,'CL','Chile',null,null,2,38);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(44,1,now(),null,'CM','Cameroon',null,null,12,34);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(45,1,now(),null,'CN','China',null,null,6,39);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(46,1,now(),null,'CO','Colombia',null,null,8,41);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(47,1,now(),null,'CR','Costa Rica',null,null,8,46);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(48,1,now(),null,'CU','Cuba',null,null,8,48);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(49,1,now(),null,'CV','Cape Verde',null,null,8,36);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(50,1,now(),null,'CX','Christmas Island',null,null,2,13);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(51,1,now(),null,'CY','Cyprus',null,null,2,40);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(52,1,now(),null,'CZ','Czech Republic',null,null,2,152);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(53,1,now(),null,'DE','Germany',null,null,1,5);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(54,1,now(),null,'DJ','Djibouti',null,null,12,51);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(55,1,now(),null,'DK','Denmark',null,null,2,50);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(56,1,now(),null,'DM','Dominica',null,null,2,7);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(57,1,now(),null,'DO','Dominican Republic',null,null,2,52);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(58,1,now(),null,'DZ','Algeria',null,null,8,4);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(59,1,now(),null,'EC','Ecuador',null,null,2,49);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(60,1,now(),null,'EE','Estonia',null,null,2,56);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(61,1,now(),null,'EG','Egypt',null,null,8,53);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(62,1,now(),null,'ER','Eritrea',null,null,2,55);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(63,1,now(),null,'ES','Spain',null,null,8,5);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(64,1,now(),null,'ET','Ethiopia',null,null,2,57);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(65,1,now(),null,'FI','Finland',null,null,2,5);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(66,1,now(),null,'FJ','Fiji',null,null,2,59);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(67,1,now(),null,'FK','Falkland Islands (Islas Malvinas',null,null,2,58);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(68,1,now(),null,'FM','Micronesia, Federated States of',null,null,2,49);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(69,1,now(),null,'FO','Faroe Islands',null,null,2,50);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(70,1,now(),null,'FR','France',null,null,12,5);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(71,1,now(),null,'GA','Gabon',null,null,12,34);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(72,1,now(),null,'GD','Grenada',null,null,2,7);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(73,1,now(),null,'GE','Georgia',null,null,2,61);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(74,1,now(),null,'GF','French Guiana',null,null,2,5);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(75,1,now(),null,'GH','Ghana',null,null,2,62);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(76,1,now(),null,'GI','Gibraltar',null,null,2,63);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(77,1,now(),null,'GL','Greenland',null,null,2,50);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(78,1,now(),null,'GM','The Gambia',null,null,2,60);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(79,1,now(),null,'GN','Guinea',null,null,2,66);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(80,1,now(),null,'GP','Guadeloupe',null,null,12,5);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(81,1,now(),null,'GQ','Equatorial Guinea',null,null,2,34);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(82,1,now(),null,'GR','Greece',null,null,2,5);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(83,1,now(),null,'GS','South Georgia and the South Sand',null,null,2,65);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(84,1,now(),null,'GT','Guatemala',null,null,2,64);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(85,1,now(),null,'GU','Guam',null,null,2,49);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(86,1,now(),null,'GW','Guinea-Bissau',null,null,2,20);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(87,1,now(),null,'GY','Guyana',null,null,2,67);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(88,1,now(),null,'HK','Hong Kong (SAR)',null,null,2,70);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(89,1,now(),null,'HM','Heard Island and McDonald Island',null,null,2,13);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(90,1,now(),null,'HN','Honduras',null,null,2,69);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(91,1,now(),null,'HR','Croatia',null,null,2,47);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(92,1,now(),null,'HT','Haiti',null,null,2,68);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(93,1,now(),null,'HU','Hungary',null,null,2,71);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(94,1,now(),null,'ID','Indonesia',null,null,2,74);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(95,1,now(),null,'IE','Ireland',null,null,2,5);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(96,1,now(),null,'IL','Israel',null,null,2,78);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(97,1,now(),null,'IN','India',null,null,2,73);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(98,1,now(),null,'IO','British Indian Ocean Territory',null,null,2,49);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(99,1,now(),null,'IQ','Iraq',null,null,8,76);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(100,1,now(),null,'IR','Iran',null,null,2,75);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(101,1,now(),null,'IS','Iceland',null,null,2,77);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(102,1,now(),null,'IT','Italy',null,null,2,5);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(103,1,now(),null,'JM','Jamaica',null,null,2,79);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(104,1,now(),null,'JO','Jordan',null,null,2,81);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(105,1,now(),null,'JP','Japan',null,null,2,80);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(106,1,now(),null,'KE','Kenya',null,null,2,83);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(107,1,now(),null,'KG','Kyrgyzstan',null,null,2,84);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(108,1,now(),null,'KH','Cambodia',null,null,2,33);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(109,1,now(),null,'KI','Kiribati',null,null,2,13);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(110,1,now(),null,'KM','Comoros',null,null,2,42);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(111,1,now(),null,'KN','Saint Kitts and Nevis',null,null,2,7);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(112,1,now(),null,'KP','Korea, North',null,null,2,45);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(113,1,now(),null,'KR','Korea, South',null,null,2,44);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(114,1,now(),null,'KW','Kuwait',null,null,2,85);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(115,1,now(),null,'KY','Cayman Islands',null,null,2,32);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(116,1,now(),null,'KZ','Kazakhstan',null,null,2,82);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(117,1,now(),null,'LA','Laos',null,null,2,86);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(118,1,now(),null,'LB','Lebanon',null,null,2,89);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(119,1,now(),null,'LC','Saint Lucia',null,null,2,7);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(120,1,now(),null,'LI','Liechtenstein',null,null,2,92);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(121,1,now(),null,'LK','Sri Lanka',null,null,2,143);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(122,1,now(),null,'LR','Liberia',null,null,2,90);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(123,1,now(),null,'LS','Lesotho',null,null,2,87);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(124,1,now(),null,'LT','Lithuania',null,null,2,93);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(125,1,now(),null,'LU','Luxembourg',null,null,12,5);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(126,1,now(),null,'LV','Latvia',null,null,2,88);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(127,1,now(),null,'LY','Libya',null,null,2,91);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(128,1,now(),null,'MA','Morocco',null,null,3,102);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(129,1,now(),null,'MC','Monaco',null,null,2,5);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(130,1,now(),null,'MD','Moldova',null,null,2,106);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(131,1,now(),null,'MG','Madagascar',null,null,2,97);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(132,1,now(),null,'MH','Marshall Islands',null,null,2,49);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(133,1,now(),null,'MK','Macedonia, The Former Yugoslav R',null,null,2,95);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(134,1,now(),null,'ML','Mali',null,null,12,20);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(135,1,now(),null,'MM','Burma',null,null,2,109);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(136,1,now(),null,'MN','Mongolia',null,null,2,107);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(137,1,now(),null,'MO','Macao',null,null,2,94);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(138,1,now(),null,'MP','Northern Mariana Islands',null,null,2,49);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(139,1,now(),null,'MQ','Martinique',null,null,2,5);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(140,1,now(),null,'MR','Mauritania',null,null,2,104);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(141,1,now(),null,'MS','Montserrat',null,null,2,7);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(142,1,now(),null,'MT','Malta',null,null,2,101);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(143,1,now(),null,'MU','Mauritius',null,null,2,103);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(144,1,now(),null,'MV','Maldives',null,null,2,100);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(145,1,now(),null,'MW','Malawi',null,null,2,99);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(146,1,now(),null,'MX','Mexico',null,null,2,105);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(147,1,now(),null,'MY','Malaysia',null,null,2,98);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(148,1,now(),null,'MZ','Mozambique',null,null,2,108);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(149,1,now(),null,'NA','Namibia',null,null,2,110);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(150,1,now(),null,'NC','New Caledonia',null,null,2,114);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(151,1,now(),null,'NE','Niger',null,null,12,20);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(152,1,now(),null,'NF','Norfolk Island',null,null,2,13);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(153,1,now(),null,'NG','Nigeria',null,null,2,113);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(154,1,now(),null,'NI','Nicaragua',null,null,8,112);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(155,1,now(),null,'NL','Netherlands',null,null,2,5);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(156,1,now(),null,'NO','Norway',null,null,2,31);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(157,1,now(),null,'NP','Nepal',null,null,2,111);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(158,1,now(),null,'NR','Nauru',null,null,2,13);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(159,1,now(),null,'NU','Niue',null,null,2,72);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(160,1,now(),null,'NZ','New Zealand',null,null,2,72);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(161,1,now(),null,'OM','Oman',null,null,2,115);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(162,1,now(),null,'PA','Panama',null,null,8,120);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(163,1,now(),null,'PE','Peru',null,null,8,123);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(164,1,now(),null,'PF','French Polynesia',null,null,12,114);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(165,1,now(),null,'PG','Papua New Guinea',null,null,12,121);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(166,1,now(),null,'PH','Philippines',null,null,2,124);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(167,1,now(),null,'PK','Pakistan',null,null,2,119);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(168,1,now(),null,'PL','Poland',null,null,2,125);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(169,1,now(),null,'PM','Saint Pierre and Miquelon',null,null,2,5);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(170,1,now(),null,'PN','Pitcairn Islands',null,null,2,72);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(171,1,now(),null,'PR','Puerto Rico',null,null,8,49);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(172,1,now(),null,'PS','Palestinian Territory, Occupied',null,null,2,5);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(173,1,now(),null,'PT','Portugal',null,null,2,5);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(174,1,now(),null,'PW','Palau',null,null,2,49);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(175,1,now(),null,'PY','Paraguay',null,null,2,122);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(176,1,now(),null,'QA','Qatar',null,null,2,126);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(177,1,now(),null,'RE','RÃ©union',null,null,2,5);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(178,1,now(),null,'RO','Romania',null,null,2,128);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(179,1,now(),null,'RU','Russia',null,null,2,129);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(180,1,now(),null,'RW','Rwanda',null,null,2,130);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(181,1,now(),null,'SA','Saudi Arabia',null,null,2,9);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(182,1,now(),null,'SB','Solomon Islands',null,null,2,131);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(183,1,now(),null,'SC','Seychelles',null,null,2,136);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(184,1,now(),null,'SD','Sudan',null,null,2,21);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(185,1,now(),null,'SE','Sweden',null,null,2,145);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(186,1,now(),null,'SG','Singapore',null,null,2,138);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(187,1,now(),null,'SH','Saint Helena',null,null,2,144);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(188,1,now(),null,'SI','Slovenia',null,null,2,140);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(189,1,now(),null,'SJ','Svalbard',null,null,2,31);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(190,1,now(),null,'SK','Slovakia',null,null,2,139);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(191,1,now(),null,'SL','Sierra Leone',null,null,2,137);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(192,1,now(),null,'SM','San Marino',null,null,2,5);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(193,1,now(),null,'SN','Senegal',null,null,2,20);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(194,1,now(),null,'SO','Somalia',null,null,2,141);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(195,1,now(),null,'SR','Suriname',null,null,2,5);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(196,1,now(),null,'ST','SÃ£o TomÃ© and PrÃ_ncipe',null,null,2,134);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(197,1,now(),null,'SV','El Salvador',null,null,2,132);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(198,1,now(),null,'SY','Syria',null,null,2,148);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(199,1,now(),null,'SZ','Swaziland',null,null,2,147);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(200,1,now(),null,'TC','Turks and Caicos Islands',null,null,2,49);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(201,1,now(),null,'TD','Chad',null,null,2,34);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(202,1,now(),null,'TF','French Southern and Antarctic La',null,null,2,5);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(203,1,now(),null,'TG','Togo',null,null,2,20);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(204,1,now(),null,'TH','Thailand',null,null,2,153);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(205,1,now(),null,'TJ','Tajikistan',null,null,2,149);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(206,1,now(),null,'TK','Tokelau',null,null,2,72);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(207,1,now(),null,'TM','Turkmenistan',null,null,2,157);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(208,1,now(),null,'TN','Tunisia',null,null,2,156);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(209,1,now(),null,'TO','Tonga',null,null,2,154);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(210,1,now(),null,'TL','East timor',null,null,2,5);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(211,1,now(),null,'TR','Turkey',null,null,2,159);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(212,1,now(),null,'TT','Trinidad and Tobago',null,null,2,155);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(213,1,now(),null,'TV','Tuvalu',null,null,2,13);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(214,1,now(),null,'TW','Taiwan',null,null,2,150);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(215,1,now(),null,'TZ','Tanzania',null,null,2,151);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(216,1,now(),null,'UA','Ukraine',null,null,2,160);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(217,1,now(),null,'UG','Uganda',null,null,2,117);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(218,1,now(),null,'GB','United Kingdom',null,null,2,65);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(219,1,now(),null,'UM','United States Minor Outlying Isl',null,null,2,49);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(220,1,now(),null,'US','United States',null,null,2,49);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(221,1,now(),null,'UY','Uruguay',null,null,2,161);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(222,1,now(),null,'UZ','Uzbekistan',null,null,2,118);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(223,1,now(),null,'VA','Holy See Vatican City',null,null,2,5);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(224,1,now(),null,'VC','Saint Vincent and the Grenadines',null,null,2,7);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(225,1,now(),null,'VE','Venezuela',null,null,2,5);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(226,1,now(),null,'VG','British Virgin Islands',null,null,2,49);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(227,1,now(),null,'VI','Virgin Islands',null,null,2,49);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(228,1,now(),null,'VN','Vietnam',null,null,2,164);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(229,1,now(),null,'VU','Vanuatu',null,null,2,162);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(230,1,now(),null,'WF','Wallis and Futuna',null,null,2,114);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(231,1,now(),null,'WS','Samoa',null,null,2,133);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(232,1,now(),null,'YE','Yemen',null,null,2,165);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(233,1,now(),null,'YT','Mayotte',null,null,2,5);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(234,1,now(),null,'YU','Yugoslavia',null,null,2,5);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(235,1,now(),null,'ZA','South Africa',null,null,2,2);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(236,1,now(),null,'ZM','Zambia',null,null,2,166);
INSERT INTO ADM_COUNTRY (id, version, created, updated, country_code, description_en,creator_id, updater_id, language_id,currency_id) VALUES(237,1,now(),null,'ZW','Zimbabwe',null,null,2,167);

DROP SEQUENCE ADM_COUNTRY_SEQ;
CREATE SEQUENCE ADM_COUNTRY_SEQ start with 238 increment by 1;

/*------INSERTS OF TABLE CRM PROVIDER----*/

INSERT INTO CRM_PROVIDER (id, version, disabled, created, updated, code, description, multicountry_flag, multicurrency_flag, multilanguage_flag, payment_methods, logo, invoice_prefix, current_invoice_nb, rating_rounding, bank_code, branch_code, account_number, hash_key, iban, bic, account_owner, bank_name, bank_id, issuer_number, issuer_name, entreprise, automatic_invoicing, display_free_tx_in_invoice, nne, address_1, address_2, address_3, address_zipcode, address_city, address_country, address_state, amount_validation, level_duplication, email, country_id, provider_id, currency_id, updater_id,creator_id,language_id) VALUES (1, 1, false, now(), NULL, 'DEMO', NULL, true, true, true, NULL, NULL, NULL, NULL, NULL, 'SGMB', '12345', '33333333333', '11', '11', '11', 'owner', 'SGMB', '11', '1111', 'DEMO', false, false, true, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, false, false, NULL, 1, NULL, 1, NULL,NULL, 1);

DROP SEQUENCE CRM_PROVIDER_SEQ;
CREATE SEQUENCE CRM_PROVIDER_SEQ start with 2 increment by 1;

/*------INSERTS OF TABLE ADM_TITLE----*/

INSERT INTO ADM_TITLE (ID, VERSION, DISABLED, CREATED, PROVIDER_ID, UPDATED, CODE, IS_COMPANY, CREATOR_ID, UPDATER_ID) VALUES (1, 0, false, now(), 1, null, 'AGCE', true, null, null);
INSERT INTO ADM_TITLE (ID, VERSION, DISABLED, CREATED, PROVIDER_ID, UPDATED, CODE, IS_COMPANY, CREATOR_ID, UPDATER_ID) VALUES (2, 0, false, now(), 1, null, 'ASSO', true, null, null);
INSERT INTO ADM_TITLE (ID, VERSION, DISABLED, CREATED, PROVIDER_ID, UPDATED, CODE, IS_COMPANY, CREATOR_ID, UPDATER_ID) VALUES (3, 0, false, now(), 1, null, 'CAB', true, null, null);
INSERT INTO ADM_TITLE (ID, VERSION, DISABLED, CREATED, PROVIDER_ID, UPDATED, CODE, IS_COMPANY, CREATOR_ID, UPDATER_ID) VALUES (4, 0, false, now(), 1, null, 'COLL', true, null, null);
INSERT INTO ADM_TITLE (ID, VERSION, DISABLED, CREATED, PROVIDER_ID, UPDATED, CODE, IS_COMPANY, CREATOR_ID, UPDATER_ID) VALUES (5, 0, false, now(), 1, null, 'COM', true, null, null);
INSERT INTO ADM_TITLE (ID, VERSION, DISABLED, CREATED, PROVIDER_ID, UPDATED, CODE, IS_COMPANY, CREATOR_ID, UPDATER_ID) VALUES (6, 0, false, now(), 1, null, 'COPR', true, null, null);
INSERT INTO ADM_TITLE (ID, VERSION, DISABLED, CREATED, PROVIDER_ID, UPDATED, CODE, IS_COMPANY, CREATOR_ID, UPDATER_ID) VALUES (7, 0, false, now(), 1, null, 'CSSE', true, null, null);
INSERT INTO ADM_TITLE (ID, VERSION, DISABLED, CREATED, PROVIDER_ID, UPDATED, CODE, IS_COMPANY, CREATOR_ID, UPDATER_ID) VALUES (8, 0, false, now(), 1, null, 'EARL', true, null, null);
INSERT INTO ADM_TITLE (ID, VERSION, DISABLED, CREATED, PROVIDER_ID, UPDATED, CODE, IS_COMPANY, CREATOR_ID, UPDATER_ID) VALUES (9, 0, false, now(), 1, null, 'ETS', true, null, null);
INSERT INTO ADM_TITLE (ID, VERSION, DISABLED, CREATED, PROVIDER_ID, UPDATED, CODE, IS_COMPANY, CREATOR_ID, UPDATER_ID) VALUES (10, 0, false, now(), 1, null, 'EURL', true, null, null);
INSERT INTO ADM_TITLE (ID, VERSION, DISABLED, CREATED, PROVIDER_ID, UPDATED, CODE, IS_COMPANY, CREATOR_ID, UPDATER_ID) VALUES (11, 0, false, now(), 1, null, 'GAEC', true, null, null);
INSERT INTO ADM_TITLE (ID, VERSION, DISABLED, CREATED, PROVIDER_ID, UPDATED, CODE, IS_COMPANY, CREATOR_ID, UPDATER_ID) VALUES (12, 0, false, now(), 1, null, 'HLM', true, null, null);
INSERT INTO ADM_TITLE (ID, VERSION, DISABLED, CREATED, PROVIDER_ID, UPDATED, CODE, IS_COMPANY, CREATOR_ID, UPDATER_ID) VALUES (13, 0, false, now(), 1, null, 'HOPI', true, null, null);
INSERT INTO ADM_TITLE (ID, VERSION, DISABLED, CREATED, PROVIDER_ID, UPDATED, CODE, IS_COMPANY, CREATOR_ID, UPDATER_ID) VALUES (14, 0, false, now(), 1, null, 'INST', true, null, null);
INSERT INTO ADM_TITLE (ID, VERSION, DISABLED, CREATED, PROVIDER_ID, UPDATED, CODE, IS_COMPANY, CREATOR_ID, UPDATER_ID) VALUES (15, 0, false, now(), 1, null, 'LABO', true, null, null);
INSERT INTO ADM_TITLE (ID, VERSION, DISABLED, CREATED, PROVIDER_ID, UPDATED, CODE, IS_COMPANY, CREATOR_ID, UPDATER_ID) VALUES (16, 0, false, now(), 1, null, 'M', false, null, null);
INSERT INTO ADM_TITLE (ID, VERSION, DISABLED, CREATED, PROVIDER_ID, UPDATED, CODE, IS_COMPANY, CREATOR_ID, UPDATER_ID) VALUES (17, 0, false, now(), 1, null, 'MLLES', false, null, null);
INSERT INTO ADM_TITLE (ID, VERSION, DISABLED, CREATED, PROVIDER_ID, UPDATED, CODE, IS_COMPANY, CREATOR_ID, UPDATER_ID) VALUES (18, 0, false, now(), 1, null, 'MLLE_M', false, null, null);
INSERT INTO ADM_TITLE (ID, VERSION, DISABLED, CREATED, PROVIDER_ID, UPDATED, CODE, IS_COMPANY, CREATOR_ID, UPDATER_ID) VALUES (19, 0, false, now(), 1, null, 'MLLE', false, null, null);
INSERT INTO ADM_TITLE (ID, VERSION, DISABLED, CREATED, PROVIDER_ID, UPDATED, CODE, IS_COMPANY, CREATOR_ID, UPDATER_ID) VALUES (20, 0, false, now(), 1, null, 'MM', false, null, null);
INSERT INTO ADM_TITLE (ID, VERSION, DISABLED, CREATED, PROVIDER_ID, UPDATED, CODE, IS_COMPANY, CREATOR_ID, UPDATER_ID) VALUES (21, 0, false, now(), 1, null, 'MME', false, null, null);
INSERT INTO ADM_TITLE (ID, VERSION, DISABLED, CREATED, PROVIDER_ID, UPDATED, CODE, IS_COMPANY, CREATOR_ID, UPDATER_ID) VALUES (22, 0, false, now(), 1, null, 'MME_M', false, null, null);
INSERT INTO ADM_TITLE (ID, VERSION, DISABLED, CREATED, PROVIDER_ID, UPDATED, CODE, IS_COMPANY, CREATOR_ID, UPDATER_ID) VALUES (23, 0, false, now(), 1, null, 'MMES', false, null, null);
INSERT INTO ADM_TITLE (ID, VERSION, DISABLED, CREATED, PROVIDER_ID, UPDATED, CODE, IS_COMPANY, CREATOR_ID, UPDATER_ID) VALUES (24, 0, false, now(), 1, null, 'MTRE', true, null, null);
INSERT INTO ADM_TITLE (ID, VERSION, DISABLED, CREATED, PROVIDER_ID, UPDATED, CODE, IS_COMPANY, CREATOR_ID, UPDATER_ID) VALUES (25, 0, false, now(), 1, null, 'SA', true, null, null);
INSERT INTO ADM_TITLE (ID, VERSION, DISABLED, CREATED, PROVIDER_ID, UPDATED, CODE, IS_COMPANY, CREATOR_ID, UPDATER_ID) VALUES (26, 0, false, now(), 1, null, 'SARL', true, null, null);
INSERT INTO ADM_TITLE (ID, VERSION, DISABLED, CREATED, PROVIDER_ID, UPDATED, CODE, IS_COMPANY, CREATOR_ID, UPDATER_ID) VALUES (27, 0, false, now(), 1, null, 'SCEA', true, null, null);
INSERT INTO ADM_TITLE (ID, VERSION, DISABLED, CREATED, PROVIDER_ID, UPDATED, CODE, IS_COMPANY, CREATOR_ID, UPDATER_ID) VALUES (28, 0, false, now(), 1, null, 'SCI', true, null, null);
INSERT INTO ADM_TITLE (ID, VERSION, DISABLED, CREATED, PROVIDER_ID, UPDATED, CODE, IS_COMPANY, CREATOR_ID, UPDATER_ID) VALUES (29, 0, false, now(), 1, null, 'SCM', true, null, null);
INSERT INTO ADM_TITLE (ID, VERSION, DISABLED, CREATED, PROVIDER_ID, UPDATED, CODE, IS_COMPANY, CREATOR_ID, UPDATER_ID) VALUES (30, 0, false, now(), 1, null, 'SCP', true, null, null);
INSERT INTO ADM_TITLE (ID, VERSION, DISABLED, CREATED, PROVIDER_ID, UPDATED, CODE, IS_COMPANY, CREATOR_ID, UPDATER_ID) VALUES (31, 0, false, now(), 1, null, 'SELARL', true, null, null);
INSERT INTO ADM_TITLE (ID, VERSION, DISABLED, CREATED, PROVIDER_ID, UPDATED, CODE, IS_COMPANY, CREATOR_ID, UPDATER_ID) VALUES (32, 0, false, now(), 1, null, 'SNC', true, null, null);
INSERT INTO ADM_TITLE (ID, VERSION, DISABLED, CREATED, PROVIDER_ID, UPDATED, CODE, IS_COMPANY, CREATOR_ID, UPDATER_ID) VALUES (33, 0, false, now(), 1, null, 'SNI', true, null, null);
INSERT INTO ADM_TITLE (ID, VERSION, DISABLED, CREATED, PROVIDER_ID, UPDATED, CODE, IS_COMPANY, CREATOR_ID, UPDATER_ID) VALUES (34, 0, false, now(), 1, null, 'STE', true, null, null);
INSERT INTO ADM_TITLE (ID, VERSION, DISABLED, CREATED, PROVIDER_ID, UPDATED, CODE, IS_COMPANY, CREATOR_ID, UPDATER_ID) VALUES (35, 0, false, now(), 1, null, 'SUCC', true, null, null);
INSERT INTO ADM_TITLE (ID, VERSION, DISABLED, CREATED, PROVIDER_ID, UPDATED, CODE, IS_COMPANY, CREATOR_ID, UPDATER_ID) VALUES (36, 0, false, now(), 1, null, 'SYNDIC', true, null, null);
INSERT INTO ADM_TITLE (ID, VERSION, DISABLED, CREATED, PROVIDER_ID, UPDATED, CODE, IS_COMPANY, CREATOR_ID, UPDATER_ID) VALUES (37, 0, false, now(), 1, null, 'SYNDCOP', true, null, null);

DROP SEQUENCE ADM_TITLE_SEQ;
CREATE SEQUENCE ADM_TITLE_SEQ start with 38 increment by 1;

/*------INSERTS OF TABLE ADM_USER----*/
INSERT INTO ADM_USER (ID, VERSION, DISABLED, CREATED, USERNAME, PASSWORD, LAST_PASSWORD_MODIFICATION, CREATOR_ID, PROVIDER_ID) VALUES ('1', 0, false, now(),  'MEVEO.ADMIN', 'fb93a3221422999ba49eb103977a6d736376505b', now(), 1, 1);
INSERT INTO ADM_USER (ID, VERSION, DISABLED, CREATED, USERNAME, PASSWORD, LAST_PASSWORD_MODIFICATION, CREATOR_ID, PROVIDER_ID) VALUES ('2', 0, false, now(),  'MEVEO.SUPERADMIN', 'fb93a3221422999ba49eb103977a6d736376505b', now() , 1, 1);

DROP SEQUENCE ADM_USER_SEQ;
CREATE SEQUENCE ADM_USER_SEQ start with 3 increment by 1;

/*------INSERTS OF TABLE ADM_ROLE----*/

INSERT INTO ADM_ROLE (ID, ROLE_NAME, ROLE_DESCRIPTION) VALUES (1, 'administrateur', 'Administrateur');
INSERT INTO ADM_ROLE (ID, ROLE_NAME, ROLE_DESCRIPTION) VALUES (2, 'superAdministrateur', 'Super Administrateur');
  
DROP SEQUENCE ADM_ROLE_SEQ;
CREATE SEQUENCE ADM_ROLE_SEQ start with 3 increment by 1;

/*------INSERTS OF TABLE ADM_USER_ROLE----*/

INSERT INTO ADM_USER_ROLE (USER_ID, ROLE_ID) VALUES (1, 1);
INSERT INTO ADM_USER_ROLE (USER_ID, ROLE_ID) VALUES (2, 2);

INSERT INTO ADM_USER_PROVIDER (PROVIDER_ID, USER_ID) VALUES (1, 1);
INSERT INTO ADM_USER_PROVIDER (PROVIDER_ID, USER_ID) VALUES (1, 2);

/*------INSERTS OF TABLE ADM_PERMISSION----*/

INSERT INTO ADM_PERMISSION (ID,NAME,RESSOURCE,PERMISSION) VALUES (1,'administrationVisualization','administration','administrationVisualization');
INSERT INTO ADM_PERMISSION (ID,NAME,RESSOURCE,PERMISSION) VALUES (2,'administrationManagement','administration','administrationManagement');
INSERT INTO ADM_PERMISSION (ID,NAME,RESSOURCE,PERMISSION) VALUES (3,'catalogVisualization','catalog','catalogVisualization');
INSERT INTO ADM_PERMISSION (ID,NAME,RESSOURCE,PERMISSION) VALUES (4,'catalogManagement','catalog','catalogManagement');
INSERT INTO ADM_PERMISSION (ID,NAME,RESSOURCE,PERMISSION) VALUES (5,'accountVisualization','account','accountVisualization');
INSERT INTO ADM_PERMISSION (ID,NAME,RESSOURCE,PERMISSION) VALUES (6,'accountManagement','account','accountManagement');
INSERT INTO ADM_PERMISSION (ID,NAME,RESSOURCE,PERMISSION) VALUES (7,'reportingVisualization','reporting','reportingVisualization');
INSERT INTO ADM_PERMISSION (ID,NAME,RESSOURCE,PERMISSION) VALUES (8,'reportingManagement','reporting','reportingManagement');
INSERT INTO ADM_PERMISSION (ID,NAME,RESSOURCE,PERMISSION) VALUES (9,'customerSummaryVisualization','customerSummary','customerSummaryVisualization');
INSERT INTO ADM_PERMISSION (ID,NAME,RESSOURCE,PERMISSION) VALUES (10,'adv','billing','billingVisualization');
INSERT INTO ADM_PERMISSION (ID,NAME,RESSOURCE,PERMISSION) VALUES (11,'adv','billing','billingManagement');
INSERT INTO ADM_PERMISSION (ID,NAME,RESSOURCE,PERMISSION) VALUES (12,'superAdminManagement','superAdmin','superAdminManagement');
  
DROP SEQUENCE ADM_PERMISSION_SEQ;
CREATE SEQUENCE ADM_PERMISSION_SEQ start with 13 increment by 1;

/*------INSERTS OF TABLE ADM_ROLE_PERMISSION----*/

insert into ADM_ROLE_PERMISSION (role_id, permission_id) values (1, 1);
insert into ADM_ROLE_PERMISSION (role_id, permission_id) values (1, 2);
insert into ADM_ROLE_PERMISSION (role_id, permission_id) values (1, 3);
insert into ADM_ROLE_PERMISSION (role_id, permission_id) values (1, 4);
insert into ADM_ROLE_PERMISSION (role_id, permission_id) values (1, 5);
insert into ADM_ROLE_PERMISSION (role_id, permission_id) values (1, 6);
insert into ADM_ROLE_PERMISSION (role_id, permission_id) values (1, 7);
insert into ADM_ROLE_PERMISSION (role_id, permission_id) values (1, 8);
insert into ADM_ROLE_PERMISSION (role_id, permission_id) values (1, 9);
insert into ADM_ROLE_PERMISSION (role_id, permission_id) values (1, 10);
insert into ADM_ROLE_PERMISSION (role_id, permission_id) values (1, 11);
insert into ADM_ROLE_PERMISSION (role_id, permission_id) values (2, 1);
insert into ADM_ROLE_PERMISSION (role_id, permission_id) values (2, 12);

/*------INSERTS OF TABLE CAT_DAY_IN_YEAR----*/

INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (1, 1, 'JANUARY', 1, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (2, 1, 'JANUARY', 2, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (3, 1, 'JANUARY', 3, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (4, 1, 'JANUARY', 4, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (5, 1, 'JANUARY', 5, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (6, 1, 'JANUARY', 6, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (7, 1, 'JANUARY', 7, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (8, 1, 'JANUARY', 8, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (9, 1, 'JANUARY', 9, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (10, 1, 'JANUARY', 10, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (11, 1, 'JANUARY', 11, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (12, 1, 'JANUARY', 12, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (13, 1, 'JANUARY', 13, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (14, 1, 'JANUARY', 14, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (15, 1, 'JANUARY', 15, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (16, 1, 'JANUARY', 16, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (17, 1, 'JANUARY', 17, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (18, 1, 'JANUARY', 18, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (19, 1, 'JANUARY', 19, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (20, 1, 'JANUARY', 20, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (21, 1, 'JANUARY', 21, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (22, 1, 'JANUARY', 22, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (23, 1, 'JANUARY', 23, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (24, 1, 'JANUARY', 24, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (25, 1, 'JANUARY', 25, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (26, 1, 'JANUARY', 26, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (27, 1, 'JANUARY', 27, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (28, 1, 'JANUARY', 28, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (29, 1, 'JANUARY', 29, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (30, 1, 'JANUARY', 30, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (31, 1, 'JANUARY', 31, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (101, 1, 'FEBRUARY', 1, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (102, 1, 'FEBRUARY', 2, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (103, 1, 'FEBRUARY', 3, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (104, 1, 'FEBRUARY', 4, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (105, 1, 'FEBRUARY', 5, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (106, 1, 'FEBRUARY', 6, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (107, 1, 'FEBRUARY', 7, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (108, 1, 'FEBRUARY', 8, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (109, 1, 'FEBRUARY', 9, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (110, 1, 'FEBRUARY', 10, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (111, 1, 'FEBRUARY', 11, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (112, 1, 'FEBRUARY', 12, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (113, 1, 'FEBRUARY', 13, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (114, 1, 'FEBRUARY', 14, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (115, 1, 'FEBRUARY', 15, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (116, 1, 'FEBRUARY', 16, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (117, 1, 'FEBRUARY', 17, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (118, 1, 'FEBRUARY', 18, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (119, 1, 'FEBRUARY', 19, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (120, 1, 'FEBRUARY', 20, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (121, 1, 'FEBRUARY', 21, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (122, 1, 'FEBRUARY', 22, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (123, 1, 'FEBRUARY', 23, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (124, 1, 'FEBRUARY', 24, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (125, 1, 'FEBRUARY', 25, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (126, 1, 'FEBRUARY', 26, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (127, 1, 'FEBRUARY', 27, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (128, 1, 'FEBRUARY', 28, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (129, 1, 'FEBRUARY', 29, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (201, 1, 'MARCH', 1, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (202, 1, 'MARCH', 2, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (203, 1, 'MARCH', 3, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (204, 1, 'MARCH', 4, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (205, 1, 'MARCH', 5, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (206, 1, 'MARCH', 6, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (207, 1, 'MARCH', 7, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (208, 1, 'MARCH', 8, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (209, 1, 'MARCH', 9, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (210, 1, 'MARCH', 10, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (211, 1, 'MARCH', 11, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (212, 1, 'MARCH', 12, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (213, 1, 'MARCH', 13, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (214, 1, 'MARCH', 14, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (215, 1, 'MARCH', 15, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (216, 1, 'MARCH', 16, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (217, 1, 'MARCH', 17, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (218, 1, 'MARCH', 18, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (219, 1, 'MARCH', 19, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (220, 1, 'MARCH', 20, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (221, 1, 'MARCH', 21, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (222, 1, 'MARCH', 22, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (223, 1, 'MARCH', 23, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (224, 1, 'MARCH', 24, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (225, 1, 'MARCH', 25, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (226, 1, 'MARCH', 26, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (227, 1, 'MARCH', 27, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (228, 1, 'MARCH', 28, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (229, 1, 'MARCH', 29, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (230, 1, 'MARCH', 30, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (231, 1, 'MARCH', 31, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (301, 1, 'APRIL', 1, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (302, 1, 'APRIL', 2, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (303, 1, 'APRIL', 3, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (304, 1, 'APRIL', 4, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (305, 1, 'APRIL', 5, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (306, 1, 'APRIL', 6, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (307, 1, 'APRIL', 7, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (308, 1, 'APRIL', 8, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (309, 1, 'APRIL', 9, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (310, 1, 'APRIL', 10, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (311, 1, 'APRIL', 11, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (312, 1, 'APRIL', 12, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (313, 1, 'APRIL', 13, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (314, 1, 'APRIL', 14, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (315, 1, 'APRIL', 15, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (316, 1, 'APRIL', 16, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (317, 1, 'APRIL', 17, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (318, 1, 'APRIL', 18, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (319, 1, 'APRIL', 19, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (320, 1, 'APRIL', 20, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (321, 1, 'APRIL', 21, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (322, 1, 'APRIL', 22, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (323, 1, 'APRIL', 23, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (324, 1, 'APRIL', 24, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (325, 1, 'APRIL', 25, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (326, 1, 'APRIL', 26, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (327, 1, 'APRIL', 27, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (328, 1, 'APRIL', 28, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (329, 1, 'APRIL', 29, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (330, 1, 'APRIL', 30, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (401, 1, 'MAY', 1, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (402, 1, 'MAY', 2, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (403, 1, 'MAY', 3, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (404, 1, 'MAY', 4, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (405, 1, 'MAY', 5, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (406, 1, 'MAY', 6, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (407, 1, 'MAY', 7, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (408, 1, 'MAY', 8, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (409, 1, 'MAY', 9, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (410, 1, 'MAY', 10, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (411, 1, 'MAY', 11, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (412, 1, 'MAY', 12, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (413, 1, 'MAY', 13, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (414, 1, 'MAY', 14, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (415, 1, 'MAY', 15, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (416, 1, 'MAY', 16, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (417, 1, 'MAY', 17, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (418, 1, 'MAY', 18, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (419, 1, 'MAY', 19, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (420, 1, 'MAY', 20, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (421, 1, 'MAY', 21, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (422, 1, 'MAY', 22, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (423, 1, 'MAY', 23, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (424, 1, 'MAY', 24, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (425, 1, 'MAY', 25, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (426, 1, 'MAY', 26, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (427, 1, 'MAY', 27, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (428, 1, 'MAY', 28, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (429, 1, 'MAY', 29, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (430, 1, 'MAY', 30, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (431, 1, 'MAY', 31, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (501, 1, 'JUNE', 1, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (502, 1, 'JUNE', 2, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (503, 1, 'JUNE', 3, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (504, 1, 'JUNE', 4, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (505, 1, 'JUNE', 5, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (506, 1, 'JUNE', 6, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (507, 1, 'JUNE', 7, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (508, 1, 'JUNE', 8, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (509, 1, 'JUNE', 9, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (510, 1, 'JUNE', 10, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (511, 1, 'JUNE', 11, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (512, 1, 'JUNE', 12, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (513, 1, 'JUNE', 13, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (514, 1, 'JUNE', 14, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (515, 1, 'JUNE', 15, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (516, 1, 'JUNE', 16, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (517, 1, 'JUNE', 17, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (518, 1, 'JUNE', 18, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (519, 1, 'JUNE', 19, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (520, 1, 'JUNE', 20, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (521, 1, 'JUNE', 21, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (522, 1, 'JUNE', 22, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (523, 1, 'JUNE', 23, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (524, 1, 'JUNE', 24, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (525, 1, 'JUNE', 25, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (526, 1, 'JUNE', 26, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (527, 1, 'JUNE', 27, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (528, 1, 'JUNE', 28, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (529, 1, 'JUNE', 29, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (530, 1, 'JUNE', 30, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (601, 1, 'JULY', 1, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (602, 1, 'JULY', 2, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (603, 1, 'JULY', 3, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (604, 1, 'JULY', 4, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (605, 1, 'JULY', 5, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (606, 1, 'JULY', 6, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (607, 1, 'JULY', 7, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (608, 1, 'JULY', 8, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (609, 1, 'JULY', 9, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (610, 1, 'JULY', 10, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (611, 1, 'JULY', 11, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (612, 1, 'JULY', 12, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (613, 1, 'JULY', 13, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (614, 1, 'JULY', 14, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (615, 1, 'JULY', 15, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (616, 1, 'JULY', 16, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (617, 1, 'JULY', 17, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (618, 1, 'JULY', 18, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (619, 1, 'JULY', 19, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (620, 1, 'JULY', 20, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (621, 1, 'JULY', 21, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (622, 1, 'JULY', 22, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (623, 1, 'JULY', 23, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (624, 1, 'JULY', 24, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (625, 1, 'JULY', 25, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (626, 1, 'JULY', 26, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (627, 1, 'JULY', 27, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (628, 1, 'JULY', 28, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (629, 1, 'JULY', 29, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (630, 1, 'JULY', 30, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (631, 1, 'JULY', 31, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (701, 1, 'AUGUST', 1, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (702, 1, 'AUGUST', 2, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (703, 1, 'AUGUST', 3, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (704, 1, 'AUGUST', 4, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (705, 1, 'AUGUST', 5, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (706, 1, 'AUGUST', 6, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (707, 1, 'AUGUST', 7, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (708, 1, 'AUGUST', 8, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (709, 1, 'AUGUST', 9, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (710, 1, 'AUGUST', 10, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (711, 1, 'AUGUST', 11, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (712, 1, 'AUGUST', 12, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (713, 1, 'AUGUST', 13, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (714, 1, 'AUGUST', 14, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (715, 1, 'AUGUST', 15, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (716, 1, 'AUGUST', 16, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (717, 1, 'AUGUST', 17, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (718, 1, 'AUGUST', 18, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (719, 1, 'AUGUST', 19, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (720, 1, 'AUGUST', 20, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (721, 1, 'AUGUST', 21, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (722, 1, 'AUGUST', 22, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (723, 1, 'AUGUST', 23, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (724, 1, 'AUGUST', 24, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (725, 1, 'AUGUST', 25, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (726, 1, 'AUGUST', 26, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (727, 1, 'AUGUST', 27, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (728, 1, 'AUGUST', 28, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (729, 1, 'AUGUST', 29, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (730, 1, 'AUGUST', 30, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (731, 1, 'AUGUST', 31, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (801, 1, 'SEPTEMBER', 1, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (802, 1, 'SEPTEMBER', 2, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (803, 1, 'SEPTEMBER', 3, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (804, 1, 'SEPTEMBER', 4, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (805, 1, 'SEPTEMBER', 5, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (806, 1, 'SEPTEMBER', 6, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (807, 1, 'SEPTEMBER', 7, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (808, 1, 'SEPTEMBER', 8, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (809, 1, 'SEPTEMBER', 9, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (810, 1, 'SEPTEMBER', 10, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (811, 1, 'SEPTEMBER', 11, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (812, 1, 'SEPTEMBER', 12, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (813, 1, 'SEPTEMBER', 13, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (814, 1, 'SEPTEMBER', 14, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (815, 1, 'SEPTEMBER', 15, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (816, 1, 'SEPTEMBER', 16, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (817, 1, 'SEPTEMBER', 17, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (818, 1, 'SEPTEMBER', 18, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (819, 1, 'SEPTEMBER', 19, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (820, 1, 'SEPTEMBER', 20, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (821, 1, 'SEPTEMBER', 21, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (822, 1, 'SEPTEMBER', 22, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (823, 1, 'SEPTEMBER', 23, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (824, 1, 'SEPTEMBER', 24, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (825, 1, 'SEPTEMBER', 25, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (826, 1, 'SEPTEMBER', 26, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (827, 1, 'SEPTEMBER', 27, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (828, 1, 'SEPTEMBER', 28, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (829, 1, 'SEPTEMBER', 29, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (830, 1, 'SEPTEMBER', 30, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (901, 1, 'OCTOBER', 1, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (902, 1, 'OCTOBER', 2, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (903, 1, 'OCTOBER', 3, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (904, 1, 'OCTOBER', 4, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (905, 1, 'OCTOBER', 5, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (906, 1, 'OCTOBER', 6, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (907, 1, 'OCTOBER', 7, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (908, 1, 'OCTOBER', 8, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (909, 1, 'OCTOBER', 9, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (910, 1, 'OCTOBER', 10, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (911, 1, 'OCTOBER', 11, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (912, 1, 'OCTOBER', 12, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (913, 1, 'OCTOBER', 13, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (914, 1, 'OCTOBER', 14, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (915, 1, 'OCTOBER', 15, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (916, 1, 'OCTOBER', 16, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (917, 1, 'OCTOBER', 17, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (918, 1, 'OCTOBER', 18, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (919, 1, 'OCTOBER', 19, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (920, 1, 'OCTOBER', 20, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (921, 1, 'OCTOBER', 21, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (922, 1, 'OCTOBER', 22, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (923, 1, 'OCTOBER', 23, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (924, 1, 'OCTOBER', 24, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (925, 1, 'OCTOBER', 25, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (926, 1, 'OCTOBER', 26, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (927, 1, 'OCTOBER', 27, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (928, 1, 'OCTOBER', 28, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (929, 1, 'OCTOBER', 29, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (930, 1, 'OCTOBER', 30, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (931, 1, 'OCTOBER', 31, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (1001, 1, 'NOVEMBER', 1, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (1002, 1, 'NOVEMBER', 2, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (1003, 1, 'NOVEMBER', 3, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (1004, 1, 'NOVEMBER', 4, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (1005, 1, 'NOVEMBER', 5, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (1006, 1, 'NOVEMBER', 6, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (1007, 1, 'NOVEMBER', 7, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (1008, 1, 'NOVEMBER', 8, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (1009, 1, 'NOVEMBER', 9, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (1010, 1, 'NOVEMBER', 10, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (1011, 1, 'NOVEMBER', 11, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (1012, 1, 'NOVEMBER', 12, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (1013, 1, 'NOVEMBER', 13, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (1014, 1, 'NOVEMBER', 14, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (1015, 1, 'NOVEMBER', 15, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (1016, 1, 'NOVEMBER', 16, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (1017, 1, 'NOVEMBER', 17, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (1018, 1, 'NOVEMBER', 18, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (1019, 1, 'NOVEMBER', 19, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (1020, 1, 'NOVEMBER', 20, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (1021, 1, 'NOVEMBER', 21, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (1022, 1, 'NOVEMBER', 22, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (1023, 1, 'NOVEMBER', 23, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (1024, 1, 'NOVEMBER', 24, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (1025, 1, 'NOVEMBER', 25, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (1026, 1, 'NOVEMBER', 26, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (1027, 1, 'NOVEMBER', 27, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (1028, 1, 'NOVEMBER', 28, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (1029, 1, 'NOVEMBER', 29, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (1030, 1, 'NOVEMBER', 30, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (1101, 1, 'DECEMBER', 1, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (1102, 1, 'DECEMBER', 2, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (1103, 1, 'DECEMBER', 3, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (1104, 1, 'DECEMBER', 4, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (1105, 1, 'DECEMBER', 5, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (1106, 1, 'DECEMBER', 6, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (1107, 1, 'DECEMBER', 7, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (1108, 1, 'DECEMBER', 8, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (1109, 1, 'DECEMBER', 9, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (1110, 1, 'DECEMBER', 10, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (1111, 1, 'DECEMBER', 11, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (1112, 1, 'DECEMBER', 12, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (1113, 1, 'DECEMBER', 13, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (1114, 1, 'DECEMBER', 14, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (1115, 1, 'DECEMBER', 15, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (1116, 1, 'DECEMBER', 16, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (1117, 1, 'DECEMBER', 17, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (1118, 1, 'DECEMBER', 18, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (1119, 1, 'DECEMBER', 19, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (1120, 1, 'DECEMBER', 20, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (1121, 1, 'DECEMBER', 21, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (1122, 1, 'DECEMBER', 22, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (1123, 1, 'DECEMBER', 23, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (1124, 1, 'DECEMBER', 24, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (1125, 1, 'DECEMBER', 25, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (1126, 1, 'DECEMBER', 26, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (1127, 1, 'DECEMBER', 27, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (1128, 1, 'DECEMBER', 28, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (1129, 1, 'DECEMBER', 29, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (1130, 1, 'DECEMBER', 30, 1);
INSERT INTO CAT_DAY_IN_YEAR(ID, VERSION, MONTH, DAY, PROVIDER_ID) VALUES (1131, 1, 'DECEMBER', 31, 1);

DROP SEQUENCE CAT_DAY_IN_YEAR_SEQ;
CREATE SEQUENCE CAT_DAY_IN_YEAR_SEQ start with 367 increment by 1;

--Customer Category
INSERT INTO CRM_CUSTOMER_CATEGORY (id, disabled, version, created, code, description, provider_id, creator_id) VALUES (1, false, 0, now(), 'PROSPECT', 'Prospect', 1, 1);
INSERT INTO CRM_CUSTOMER_CATEGORY (id, disabled, version, created, code, description, provider_id, creator_id) VALUES (2, false, 0, now(), 'CLIENT', 'Client', 1, 1);

DROP SEQUENCE CRM_CUSTOMER_CATEGORY_SEQ;
CREATE SEQUENCE CRM_CUSTOMER_CATEGORY_SEQ start with 3 increment by 1;

--Customer Brand
INSERT INTO CRM_CUSTOMER_BRAND (id, disabled, version, created, code, description, provider_id, creator_id) VALUES (1, false, 0, now(), 'DEFAULT', 'Demo Product and Services', 1, 1);

DROP SEQUENCE CRM_CUSTOMER_BRAND_SEQ;
CREATE SEQUENCE CRM_CUSTOMER_BRAND_SEQ start with 3 increment by 1;

--Trading Language
insert into billing_trading_language (id, version, disabled, created, provider_id, creator_id, language_id, pr_description) values (1, 0, false, now(), 1, 1, 2, 'English');
insert into billing_trading_language (id, version, disabled, created, provider_id, creator_id, language_id, pr_description) values (2, 0, false, now(), 1, 1, 12, 'French');

DROP SEQUENCE billing_trading_language_SEQ;
CREATE SEQUENCE billing_trading_language_SEQ start with 3 increment by 1;

--Trading Currency
insert into billing_trading_currency (id, version, disabled, created, provider_id, creator_id, currency_id, pr_description) values (1, 0, false, now(), 1, 1, 49, 'US Dollar');
insert into billing_trading_currency (id, version, disabled, created, provider_id, creator_id, currency_id, pr_description) values (2, 0, false, now(), 1, 1, 5, 'France');

DROP SEQUENCE billing_trading_currency_SEQ;
CREATE SEQUENCE billing_trading_currency_SEQ start with 3 increment by 1;

--Trading Country
insert into billing_trading_country (id, version, disabled, created, provider_id, creator_id, country_id, pr_description) values (1, 0, false, now(), 1, 1, 220, 'United States');
insert into billing_trading_country (id, version, disabled, created, provider_id, creator_id, country_id, pr_description) values (2, 0, false, now(), 1, 1, 70, 'France');

DROP SEQUENCE billing_trading_country_SEQ;
CREATE SEQUENCE billing_trading_country_SEQ start with 3 increment by 1;

--Counter Calendar
insert into cat_calendar (id, version, disabled, created, provider_id, creator_id, name, description, calendar_type) values (1, 0, false, now(), 1, 1, 'CAL_COUNTER', 'Counter Calendar', 'COUNTER');
insert into cat_calendar_days (calendar_id, day_id) values (1, 1);
insert into cat_calendar_days (calendar_id, day_id) values (1, 101);
insert into cat_calendar_days (calendar_id, day_id) values (1, 201);
insert into cat_calendar_days (calendar_id, day_id) values (1, 301);
insert into cat_calendar_days (calendar_id, day_id) values (1, 401);
insert into cat_calendar_days (calendar_id, day_id) values (1, 501);
insert into cat_calendar_days (calendar_id, day_id) values (1, 601);
insert into cat_calendar_days (calendar_id, day_id) values (1, 701);
insert into cat_calendar_days (calendar_id, day_id) values (1, 801);
insert into cat_calendar_days (calendar_id, day_id) values (1, 901);
insert into cat_calendar_days (calendar_id, day_id) values (1, 1001);
insert into cat_calendar_days (calendar_id, day_id) values (1, 1101);

--Billing Calendar
insert into cat_calendar (id, version, disabled, created, provider_id, creator_id, name, description, calendar_type) values (2, 0, false, now(), 1, 1, 'CAL_INV_MONTHLY', 'Billing Calendar', 'BILLING');
insert into cat_calendar_days (calendar_id, day_id) values (2, 1);
insert into cat_calendar_days (calendar_id, day_id) values (2, 101);
insert into cat_calendar_days (calendar_id, day_id) values (2, 201);
insert into cat_calendar_days (calendar_id, day_id) values (2, 301);
insert into cat_calendar_days (calendar_id, day_id) values (2, 401);
insert into cat_calendar_days (calendar_id, day_id) values (2, 501);
insert into cat_calendar_days (calendar_id, day_id) values (2, 601);
insert into cat_calendar_days (calendar_id, day_id) values (2, 701);
insert into cat_calendar_days (calendar_id, day_id) values (2, 801);
insert into cat_calendar_days (calendar_id, day_id) values (2, 901);
insert into cat_calendar_days (calendar_id, day_id) values (2, 1001);
insert into cat_calendar_days (calendar_id, day_id) values (2, 1101);

--Charge Imputation
insert into cat_calendar (id, version, disabled, created, provider_id, creator_id, name, description, calendar_type) values (3, 0, false, now(), 1, 1, 'CAL_VAL_MONTHLY', 'Charge Imputation Calendar', 'CHARGE_IMPUTATION');
insert into cat_calendar_days (calendar_id, day_id) values (3, 1);
insert into cat_calendar_days (calendar_id, day_id) values (3, 101);
insert into cat_calendar_days (calendar_id, day_id) values (3, 201);
insert into cat_calendar_days (calendar_id, day_id) values (3, 301);
insert into cat_calendar_days (calendar_id, day_id) values (3, 401);
insert into cat_calendar_days (calendar_id, day_id) values (3, 501);
insert into cat_calendar_days (calendar_id, day_id) values (3, 601);
insert into cat_calendar_days (calendar_id, day_id) values (3, 701);
insert into cat_calendar_days (calendar_id, day_id) values (3, 801);
insert into cat_calendar_days (calendar_id, day_id) values (3, 901);
insert into cat_calendar_days (calendar_id, day_id) values (3, 1001);
insert into cat_calendar_days (calendar_id, day_id) values (3, 1101);

DROP SEQUENCE cat_calendar_SEQ;
CREATE SEQUENCE cat_calendar_SEQ start with 4 increment by 1;

--Tax
insert into billing_tax (id, version, disabled, created, provider_id, creator_id, code, description, tax_percentage) values (1, 0, false, now(), 1, 1, 'TAX_05', '0 Percent Tax', 0);
insert into billing_tax (id, version, disabled, created, provider_id, creator_id, code, description, tax_percentage) values (2, 0, false, now(), 1, 1, 'TAX_00', '5 Percent Tax', 5);
insert into billing_tax (id, version, disabled, created, provider_id, creator_id, code, description, tax_percentage) values (3, 0, false, now(), 1, 1, 'TAX_18', '18 Percent Tax', 18);

DROP SEQUENCE billing_tax_SEQ;
CREATE SEQUENCE billing_tax_SEQ start with 4 increment by 1;

--Invoice Category
insert into BILLING_INVOICE_CAT (id, version, disabled, created, provider_id, creator_id, code, description, sort_index) values (1, 0, false, now(), 1, 1, 'CONSUMPTION', 'Consumption', 1);
insert into BILLING_INVOICE_CAT (id, version, disabled, created, provider_id, creator_id, code, description, sort_index) values (2, 0, false, now(), 1, 1, 'SUBSCRIPTION', 'Subscription', 2);

DROP SEQUENCE BILLING_INVOICE_CAT_SEQ;
CREATE SEQUENCE BILLING_INVOICE_CAT_SEQ start with 3 increment by 1;

--Invoice Sub Category
insert into BILLING_INVOICE_SUB_CAT (id, version, disabled, created, provider_id, creator_id, code, description, accounting_code, discount, invoice_category_id) values (1, 0, false, now(), 1, 1, 'CMP_DATA', 'Consumption Data', '120.121.21.2', 0, 1);
insert into BILLING_INVOICE_SUB_CAT (id, version, disabled, created, provider_id, creator_id, code, description, accounting_code, discount, invoice_category_id) values (2, 0, false, now(), 1, 1, 'SUB_DATA', 'Subscription Data', '120.121.21.4', 0, 2);

DROP SEQUENCE BILLING_INVOICE_SUB_CAT_SEQ;
CREATE SEQUENCE BILLING_INVOICE_SUB_CAT_SEQ start with 3 increment by 1;

insert into BILLING_INV_SUB_CAT_COUNTRY (id, version, disabled, created, provider_id, creator_id, discount_code, invoice_sub_category_id, tax_id, trading_country_id) values (1, 0, false, now(), 1, 1, '', 1, 1, 1);
insert into BILLING_INV_SUB_CAT_COUNTRY (id, version, disabled, created, provider_id, creator_id, discount_code, invoice_sub_category_id, tax_id, trading_country_id) values (2, 0, false, now(), 1, 1, '', 1, 2, 2);
insert into BILLING_INV_SUB_CAT_COUNTRY (id, version, disabled, created, provider_id, creator_id, discount_code, invoice_sub_category_id, tax_id, trading_country_id) values (3, 0, false, now(), 1, 1, '', 2, 1, 1);
insert into BILLING_INV_SUB_CAT_COUNTRY (id, version, disabled, created, provider_id, creator_id, discount_code, invoice_sub_category_id, tax_id, trading_country_id) values (4, 0, false, now(), 1, 1, '', 2, 2, 2);

DROP SEQUENCE BILLING_INV_SUB_CAT_COUNTRY_SEQ;
CREATE SEQUENCE BILLING_INV_SUB_CAT_COUNTRY_SEQ start with 5 increment by 1;

--Billing Cycle
insert into BILLING_CYCLE (id, version, disabled, created, provider_id, creator_id, code, description, billing_template_name, due_date_delay, invoice_date_delay, calendar) values (1, 0, false, now(), 1, 1, 'CYC_INV_MT_1', 'Monthly Invoice Cycle 1', '1', 2, 4, 2);
insert into BILLING_CYCLE (id, version, disabled, created, provider_id, creator_id, code, description, billing_template_name, due_date_delay, invoice_date_delay, calendar) values (2, 0, false, now(), 1, 1, 'CYC_INV_MT_2', 'Monthly Invoice Cycle 2', '1', 2, 4, 2);

DROP SEQUENCE BILLING_CYCLE_SEQ;
CREATE SEQUENCE BILLING_CYCLE_SEQ start with 3 increment by 1;

--Primary Contact
insert into CRM_PROVIDER_CONTACT (id, version, disabled, created, provider_id, creator_id, code, description, lastname, firstname, email, phone, address_zipcode, address_city) values (1, 0, false, now(), 1, 1, 'DEMO_ADMIN', 'Demo Administrator', 'Admin', 'Admin', 'contact@manaty.net', '09152154716', '21000', 'DIJON');

DROP SEQUENCE CRM_PROVIDER_CONTACT_SEQ;
CREATE SEQUENCE CRM_PROVIDER_CONTACT_SEQ start with 2 increment by 1;

--Seller
insert into crm_seller (id, version, disabled, created, provider_id, creator_id, code, description, parent_seller_id, trading_currency_id, trading_language_id) values (1, 0, false, now(), 1, 1, 'MAIN_SELLER', 'Demo Distributor', null, 1, 1);
insert into crm_seller (id, version, disabled, created, provider_id, creator_id, code, description, parent_seller_id, trading_currency_id, trading_language_id) values (2, 0, false, now(), 1, 1, 'SELLER_US', 'US Seller',1, 1, 1);
insert into crm_seller (id, version, disabled, created, provider_id, creator_id, code, description, parent_seller_id, trading_currency_id, trading_language_id) values (3, 0, false, now(), 1, 1, 'SELLER_FR', 'France Seller',1, 2, 2);

DROP SEQUENCE crm_seller_SEQ;
CREATE SEQUENCE crm_seller_SEQ start with 4 increment by 1;

--Termination Reasons
insert into BILLING_SUBSCRIP_TERMIN_REASON (id, version, provider_id, code, description, apply_agreement, apply_reimbursment, apply_termination_charges) values (1, 0, 1, 'TERM_REASON_1', 'Agreement Reimbursement Charge', true, true, true);
insert into BILLING_SUBSCRIP_TERMIN_REASON (id, version, provider_id, code, description, apply_agreement, apply_reimbursment, apply_termination_charges) values (2, 0, 1, 'TERM_REASON_2', 'Agreement', true, false, false);
insert into BILLING_SUBSCRIP_TERMIN_REASON (id, version, provider_id, code, description, apply_agreement, apply_reimbursment, apply_termination_charges) values (3, 0, 1, 'TERM_REASON_3', 'Charge', false, true, false);

DROP SEQUENCE BILLING_SUB_TERM_REASON_SEQ;
CREATE SEQUENCE BILLING_SUB_TERM_REASON_SEQ start with 4 increment by 1;

--Offer Template
INSERT INTO cat_offer_template (id, version, disabled, created, code, description, provider_id, creator_id) VALUES (1, 0, false, now(), 'OF_DEF', 'Default Offer', 1, 1);

DROP SEQUENCE cat_offer_template_SEQ;
CREATE SEQUENCE cat_offer_template_SEQ start with 2 increment by 1;

--Service Template
INSERT INTO cat_service_template (id, version, disabled, created, code, description, provider_id, creator_id) VALUES (1, 0, false, now(), 'SVC_DEF', 'Default Service', 1, 1);

DROP SEQUENCE cat_offer_template_SEQ;
CREATE SEQUENCE cat_offer_template_SEQ start with 2 increment by 1;

INSERT INTO CAT_OFFER_SERV_TEMPLATES (offer_template_id, service_template_id) values (1, 1);

--Charge Template
insert into CAT_CHARGE_TEMPLATE (id, version, disabled, created, code, description, amount_editable, provider_id, creator_id, invoice_sub_category) values (1, 0, false, now(), 'RC_DEFAULT', 'Default Recurring Charge', false, 1, 1, 1);
insert into CAT_CHARGE_TEMPLATE (id, version, disabled, created, code, description, amount_editable, provider_id, creator_id, invoice_sub_category) values (2, 0, false, now(), 'SUB_DEFAULT', 'Default Subscription Charge', false, 1, 1, 1);
insert into CAT_CHARGE_TEMPLATE values (3, 0, false, '2014-10-01 14:13:42.764', NULL, 'UC_DEFAULT', 'Default usage charge', false, NULL, 1, 1, NULL, 1);

DROP SEQUENCE CAT_CHARGE_TEMPLATE_SEQ;
CREATE SEQUENCE CAT_CHARGE_TEMPLATE_SEQ start with 4 increment by 1;

insert into CAT_RECURRING_CHARGE_TEMPL (apply_in_advance, recurrence_type, subscription_prorata, termination_prorata, id, calendar_id) values (false, 'CALENDAR', false, false, 1, 3);
insert into CAT_ONE_SHOT_CHARGE_TEMPL (immediate_invoicing, type, id) values (true, 'SUBSCRIPTION', 2);

insert into CAT_SERV_RECCHARGE_TEMPLATES (service_template_id, charge_template_id) values (1, 1);
insert into CAT_SERV_ONECHARGE_S_TEMPLATES (service_template_id, charge_template_id) values (1, 2);
insert into CAT_USAGE_CHARGE_TEMPLATE values (NULL, NULL, NULL, NULL, NULL, 1, 'KBYTE', 'INTEGER', 1.000000000000, 0, 1);

--Price Plan Matrix
insert into cat_price_plan_matrix (id, version, disabled, created, amount_without_tax, event_code, max_subscr_age, min_subscr_age, priority, provider_id, creator_id, seller_id, trading_country_id, trading_currency_id) values (1, 0, false, now(), 2, 'RC_DEFAULT', 9999, 0, 1, 1, 1, 2, 1, 1);
insert into cat_price_plan_matrix (id, version, disabled, created, amount_without_tax, event_code, max_subscr_age, min_subscr_age, priority, provider_id, creator_id, seller_id, trading_country_id, trading_currency_id) values (2, 0, false, now(), 2, 'SUB_DEFAULT', 9999, 0, 1, 1, 1, 2, 1, 1);

DROP SEQUENCE cat_price_plan_matrix_SEQ;
CREATE SEQUENCE cat_price_plan_matrix_SEQ start with 3 increment by 1;

--Account Entity
insert into ACCOUNT_ENTITY (id, version, disabled, created, code, default_level, lastname, provider_id, creator_id, primary_contact) values (1, 0, false, now(), 'CUST_DEFAULT', true, '', 1, 1, null);
insert into ACCOUNT_ENTITY (id, version, disabled, created, code, default_level, lastname, provider_id, creator_id, primary_contact) values (2, 0, false, now(), 'CA_DEFAULT', true, 'Legaspi', 1, 1, 1);
insert into ACCOUNT_ENTITY (id, version, disabled, created, code, default_level, lastname, provider_id, creator_id, primary_contact) values (3, 0, false, now(), 'BA_DEFAULT', true, '', 1, 1, null);
insert into ACCOUNT_ENTITY (id, version, disabled, created, code, default_level, lastname, provider_id, creator_id, primary_contact) values (4, 0, false, now(), 'UA_DEFAULT', true, '', 1, 1, null);

DROP SEQUENCE ACCOUNT_ENTITY_SEQ;
CREATE SEQUENCE ACCOUNT_ENTITY_SEQ start with 5 increment by 1;

--Customer, CustomerAccount, Billing and Billing User Account
insert into CRM_CUSTOMER (id, customer_brand_id, customer_category_id, seller_id) values (1, 1, 1, 2);
insert into AR_CUSTOMER_ACCOUNT (date_dunning_level, dunning_level, password, status, id, customer_id, trading_currency_id) values (now(), 'R0', 'bDGtBrEn', 'ACTIVE', 2, 1, 1);
insert into BILLING_BILLING_ACCOUNT (electronic_billing, next_invoice_date, payment_method, status, status_date, subscription_date, id, billing_cycle, customer_account_id, trading_country_id, trading_language_id) values (false, (select now() + '30 days'::interval), 'CHECK', 'ACTIVE', now(), now(), 3, 1, 2, 1, 1);
insert into BILLING_USER_ACCOUNT (status, status_date, subscription_date, id, billing_account_id) values ('ACTIVE', now(), now(), 4, 3);
insert into BILLING_SUBSCRIPTION values (1, 0, false, '2014-10-01 14:16:12.101', NULL, 'SUB_DEFAULT', NULL, true, NULL, 'CREATED', '2014-10-01 14:15:54.058', '2014-10-01 00:00:00', NULL, 1, 1, NULL, 1, NULL, 4);
insert into MEDINA_ACCESS values (1, 0, false, 'MSISDN1', NULL, NULL, 1, 1);


DROP SEQUENCE CRM_CUSTOMER_SEQ;
CREATE SEQUENCE CRM_CUSTOMER_SEQ start with 2 increment by 1;

DROP SEQUENCE CRM_AR_CUSTOMER_ACCOUNT_SEQ;
CREATE SEQUENCE CRM_AR_CUSTOMER_ACCOUNT_SEQ start with 2 increment by 1;

DROP SEQUENCE BILLING_BILLING_ACCOUNT_SEQ;
CREATE SEQUENCE BILLING_BILLING_ACCOUNT_SEQ start with 2 increment by 1;

DROP SEQUENCE BILLING_USER_ACCOUNT_SEQ;
CREATE SEQUENCE BILLING_USER_ACCOUNT_SEQ start with 2 increment by 1;

DROP SEQUENCE BILLING_SUBSCRIPTION_SEQ;
CREATE SEQUENCE BILLING_USER_ACCOUNT_SEQ start with 2 increment by 1;

DROP SEQUENCE MEDINA_ACCESS_SEQ;
CREATE SEQUENCE MEDINA_ACCESS_SEQ start with 2 increment by 1;


—-Billing charge instance
insert into BILLING_CHARGE_INSTANCE values (1, 1, false, '2014-10-01 14:16:43.116', '2014-10-01 14:16:48.67', 'RC_DEFAULT', 'Default Recurring Charge', NULL, NULL, '2014-10-01', NULL, NULL, NULL, NULL, 'ACTIVE', '2014-10-01 14:16:48.67', NULL, 1, 1, 1, 1, 1, 1, 2, 1);
insert into BILLING_CHARGE_INSTANCE values (2, 1, false, '2014-10-01 14:16:43.118', '2014-10-01 14:16:48.721', 'SUB_DEFAULT', 'Default Subscription Charge', NULL, NULL, '2014-10-01', NULL, NULL, NULL, NULL, 'CLOSED', '2014-10-01 14:16:48.721', NULL, 1, 1, 1, 2, 1, 1, 2, 1);
insert into BILLING_CHARGE_INSTANCE values (3, 1, false, '2014-10-01 14:16:43.124', '2014-10-01 14:16:48.722', 'UC_DEFAULT', 'Usage charge default', NULL, NULL, '2014-10-01', NULL, NULL, NULL, NULL, 'ACTIVE', '2014-10-01 14:16:48.722', NULL, 1, 1, 1, 3, 1, 1, 2, 1);

INSERT INTO billing_one_shot_charge_inst VALUES (2, 1, NULL);
INSERT INTO billing_recurring_charge_inst VALUES ('2014-11-01 00:00:00', '2014-10-01 00:00:00', 1, 1, 1);
INSERT INTO billing_usage_charge_inst VALUES (NULL, 3, NULL, 1);

DROP SEQUENCE BILLING_CHARGE_INSTANCE_SEQ;
CREATE SEQUENCE BILLING_CHARGE_INSTANCE_SEQ start with 4 increment by 1;


--Billing Wallet
insert into BILLING_WALLET (id, version, disabled, created, code, provider_id, creator_id, user_account_id) values (1, 0, false, now(), 'PRINCIPAL', 1, 1, 4);

DROP SEQUENCE billing_wallet_SEQ;
CREATE SEQUENCE billing_wallet_SEQ start with 2 increment by 1;

update BILLING_USER_ACCOUNT set wallet_id=1 where id=4;


—-billing_wallet_operation
insert into BILLING_WALLET_OPERATION values ('W', 1, 0, false, '2014-10-01 14:16:48.718', NULL, 'SUB_DEFAULT', 'Default Subscription Charge', 0.000000000000, 2.000000000000, 2.000000000000, NULL, 'OF_DEF', '2014-10-01 00:00:00', NULL, NULL, NULL, 1.000000000000, NULL, 'OPEN', NULL, 0.000000000000, NULL, NULL, NULL, 2.000000000000, 1, 1, NULL, 2, NULL, 49, 2, NULL, NULL);

DROP SEQUENCE billing_wallet_operation_SEQ;
CREATE SEQUENCE billing_wallet_operation_SEQ start with 2 increment by 1;

DROP SEQUENCE rating_edr_SEQ;
CREATE SEQUENCE rating_edr_SEQ start with 2 increment by 1;

insert into RATING_EDR values (1, 0, '2014-10-01 16:20:24.417', '2014-03-29 21:50:40.144', NULL, 'ASG_RatedCDR_100.csv', 'MSISDN1_SVC_DEF_1396126240144', 'SVC_DEF', 'MSISDN1', 'DATA', 'KBYTE', 44.00, NULL, 'OPEN', 1, 1);

DROP SEQUENCE rating_edr_SEQ;
CREATE SEQUENCE rating_edr_SEQ start with 2 increment by 1;