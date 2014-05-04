/*
Navicat MySQL Data Transfer

Source Server         : ridehop
Source Server Version : 50536
Source Host           : database.ridehop.me:3306
Source Database       : ridehop_main

Target Server Type    : MYSQL
Target Server Version : 50536
File Encoding         : 65001

Date: 2014-04-28 21:22:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `rh_locations`
-- ----------------------------
DROP TABLE IF EXISTS `rh_locations`;
CREATE TABLE `rh_locations` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `country` varchar(128) NOT NULL,
  `province` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=795 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of rh_locations
-- ----------------------------
INSERT INTO `rh_locations` VALUES ('353', 'Canada', 'British Columbia', '100 Mile House');
INSERT INTO `rh_locations` VALUES ('354', 'Canada', 'British Columbia', 'Abbotsford');
INSERT INTO `rh_locations` VALUES ('355', 'Canada', 'Alberta', 'Airdrie');
INSERT INTO `rh_locations` VALUES ('356', 'Canada', 'Ontario', 'Ajax');
INSERT INTO `rh_locations` VALUES ('357', 'Canada', 'Prince Edward Island', 'Alberton');
INSERT INTO `rh_locations` VALUES ('358', 'Canada', 'British Columbia', 'Aldergrove');
INSERT INTO `rh_locations` VALUES ('359', 'Canada', 'British Columbia', 'Alert Bay');
INSERT INTO `rh_locations` VALUES ('360', 'Canada', 'Ontario', 'Algonquin Park');
INSERT INTO `rh_locations` VALUES ('361', 'Canada', 'Quebec', 'Alma');
INSERT INTO `rh_locations` VALUES ('362', 'Canada', 'Nova Scotia', 'Amherst');
INSERT INTO `rh_locations` VALUES ('363', 'Canada', 'Ontario', 'Amherstburg');
INSERT INTO `rh_locations` VALUES ('364', 'Canada', 'Quebec', 'Ancienne Lorette');
INSERT INTO `rh_locations` VALUES ('365', 'Canada', 'Quebec', 'Anjou');
INSERT INTO `rh_locations` VALUES ('366', 'Canada', 'Nova Scotia', 'Annapolis Royal');
INSERT INTO `rh_locations` VALUES ('367', 'Canada', 'Nova Scotia', 'Antigonish');
INSERT INTO `rh_locations` VALUES ('368', 'Canada', 'Ontario', 'Arnprior');
INSERT INTO `rh_locations` VALUES ('369', 'Canada', 'Alberta', 'Athabasca');
INSERT INTO `rh_locations` VALUES ('370', 'Canada', 'Ontario', 'Aurora');
INSERT INTO `rh_locations` VALUES ('371', 'Canada', 'Nova Scotia', 'Baddeck');
INSERT INTO `rh_locations` VALUES ('372', 'Canada', 'Quebec', 'Baie Comeau');
INSERT INTO `rh_locations` VALUES ('373', 'Canada', 'Quebec', 'Baie-Saint-Paul');
INSERT INTO `rh_locations` VALUES ('374', 'Canada', 'Ontario', 'Bancroft');
INSERT INTO `rh_locations` VALUES ('375', 'Canada', 'Alberta', 'Banff');
INSERT INTO `rh_locations` VALUES ('376', 'Canada', 'Ontario', 'Barrie');
INSERT INTO `rh_locations` VALUES ('377', 'Canada', 'New Brunswick', 'Bathurst');
INSERT INTO `rh_locations` VALUES ('378', 'Canada', 'New Brunswick', 'Bayside');
INSERT INTO `rh_locations` VALUES ('379', 'Canada', 'Quebec', 'Beauport');
INSERT INTO `rh_locations` VALUES ('380', 'Canada', 'Quebec', 'Beaupre');
INSERT INTO `rh_locations` VALUES ('381', 'Canada', 'Manitoba', 'Beausejour');
INSERT INTO `rh_locations` VALUES ('382', 'Canada', 'Quebec', 'Becancour');
INSERT INTO `rh_locations` VALUES ('383', 'Canada', 'Prince Edward Island', 'Bedeque');
INSERT INTO `rh_locations` VALUES ('384', 'Canada', 'Ontario', 'Belleville');
INSERT INTO `rh_locations` VALUES ('385', 'Canada', 'Quebec', 'Berthierville');
INSERT INTO `rh_locations` VALUES ('386', 'Canada', 'Quebec', 'Blainville');
INSERT INTO `rh_locations` VALUES ('387', 'Canada', 'Nova Scotia', 'Blandford');
INSERT INTO `rh_locations` VALUES ('388', 'Canada', 'Quebec', 'Boucherville');
INSERT INTO `rh_locations` VALUES ('389', 'Canada', 'New Brunswick', 'Bouctouche');
INSERT INTO `rh_locations` VALUES ('390', 'Canada', 'Nova Scotia', 'Boutiliers Point');
INSERT INTO `rh_locations` VALUES ('391', 'Canada', 'Ontario', 'Bowmanville');
INSERT INTO `rh_locations` VALUES ('392', 'Canada', 'Ontario', 'Bracebridge');
INSERT INTO `rh_locations` VALUES ('393', 'Canada', 'Alberta', 'Bragg Creek');
INSERT INTO `rh_locations` VALUES ('394', 'Canada', 'Ontario', 'Brampton');
INSERT INTO `rh_locations` VALUES ('395', 'Canada', 'Manitoba', 'Brandon');
INSERT INTO `rh_locations` VALUES ('396', 'Canada', 'Ontario', 'Brantford');
INSERT INTO `rh_locations` VALUES ('397', 'Canada', 'Nova Scotia', 'Bridgewater');
INSERT INTO `rh_locations` VALUES ('398', 'Canada', 'Ontario', 'Brockville');
INSERT INTO `rh_locations` VALUES ('399', 'Canada', 'Alberta', 'Brooks');
INSERT INTO `rh_locations` VALUES ('400', 'Canada', 'Quebec', 'Brossard');
INSERT INTO `rh_locations` VALUES ('401', 'Canada', 'Ontario', 'Burlington');
INSERT INTO `rh_locations` VALUES ('402', 'Canada', 'British Columbia', 'Burnaby');
INSERT INTO `rh_locations` VALUES ('403', 'Canada', 'Nova Scotia', 'Burntcoat');
INSERT INTO `rh_locations` VALUES ('404', 'Canada', 'British Columbia', 'Cache Creek');
INSERT INTO `rh_locations` VALUES ('405', 'Canada', 'Alberta', 'Calgary');
INSERT INTO `rh_locations` VALUES ('406', 'Canada', 'Ontario', 'Cambridge');
INSERT INTO `rh_locations` VALUES ('407', 'Canada', 'British Columbia', 'Campbell River');
INSERT INTO `rh_locations` VALUES ('408', 'Canada', 'New Brunswick', 'Campbellton');
INSERT INTO `rh_locations` VALUES ('409', 'Canada', 'Alberta', 'Canmore');
INSERT INTO `rh_locations` VALUES ('410', 'Canada', 'Nova Scotia', 'Cape Breton');
INSERT INTO `rh_locations` VALUES ('411', 'Canada', 'New Brunswick', 'Caraquet');
INSERT INTO `rh_locations` VALUES ('412', 'Canada', 'Newfoundland & Labrador', 'Carbonear');
INSERT INTO `rh_locations` VALUES ('413', 'Canada', 'Prince Edward Island', 'Cardigan');
INSERT INTO `rh_locations` VALUES ('414', 'Canada', 'British Columbia', 'Castlegar');
INSERT INTO `rh_locations` VALUES ('415', 'Canada', 'Prince Edward Island', 'Cavendish');
INSERT INTO `rh_locations` VALUES ('416', 'Canada', 'Prince Edward Island', 'Charlottetown');
INSERT INTO `rh_locations` VALUES ('417', 'Canada', 'British Columbia', 'Chase');
INSERT INTO `rh_locations` VALUES ('418', 'Canada', 'Ontario', 'Chatham');
INSERT INTO `rh_locations` VALUES ('419', 'Canada', 'Nova Scotia', 'Ch?ticamp');
INSERT INTO `rh_locations` VALUES ('420', 'Canada', 'Quebec', 'Chevery');
INSERT INTO `rh_locations` VALUES ('421', 'Canada', 'Quebec', 'Chicoutimi');
INSERT INTO `rh_locations` VALUES ('422', 'Canada', 'British Columbia', 'Chilliwack');
INSERT INTO `rh_locations` VALUES ('423', 'Canada', 'Manitoba', 'Churchill');
INSERT INTO `rh_locations` VALUES ('424', 'Canada', 'Alberta', 'Clairmont');
INSERT INTO `rh_locations` VALUES ('425', 'Canada', 'Alberta', 'Claresholm');
INSERT INTO `rh_locations` VALUES ('426', 'Canada', 'Ontario', 'Cobourg');
INSERT INTO `rh_locations` VALUES ('427', 'Canada', 'Alberta', 'Cochrane');
INSERT INTO `rh_locations` VALUES ('428', 'Canada', 'Ontario', 'Cochrane');
INSERT INTO `rh_locations` VALUES ('429', 'Canada', 'Alberta', 'Cold Lake');
INSERT INTO `rh_locations` VALUES ('430', 'Canada', 'Ontario', 'Collingwood');
INSERT INTO `rh_locations` VALUES ('431', 'Canada', 'British Columbia', 'Comox');
INSERT INTO `rh_locations` VALUES ('432', 'Canada', 'British Columbia', 'Coquitlam');
INSERT INTO `rh_locations` VALUES ('433', 'Canada', 'Newfoundland & Labrador', 'Corner Brook');
INSERT INTO `rh_locations` VALUES ('434', 'Canada', 'Ontario', 'Cornwall');
INSERT INTO `rh_locations` VALUES ('435', 'Canada', 'Prince Edward Island', 'Cornwall');
INSERT INTO `rh_locations` VALUES ('436', 'Canada', 'British Columbia', 'Courtenay');
INSERT INTO `rh_locations` VALUES ('437', 'Canada', 'Quebec', 'Cowansville');
INSERT INTO `rh_locations` VALUES ('438', 'Canada', 'British Columbia', 'Cranbrook');
INSERT INTO `rh_locations` VALUES ('439', 'Canada', 'New Brunswick', 'Dalhousie');
INSERT INTO `rh_locations` VALUES ('440', 'Canada', 'Nova Scotia', 'Dartmouth');
INSERT INTO `rh_locations` VALUES ('441', 'Canada', 'Manitoba', 'Dauphin');
INSERT INTO `rh_locations` VALUES ('442', 'Canada', 'Yukon Territory', 'Dawson');
INSERT INTO `rh_locations` VALUES ('443', 'Canada', 'British Columbia', 'Dawson Creek');
INSERT INTO `rh_locations` VALUES ('444', 'Canada', 'British Columbia', 'Delta');
INSERT INTO `rh_locations` VALUES ('445', 'Canada', 'New Brunswick', 'Dieppe');
INSERT INTO `rh_locations` VALUES ('446', 'Canada', 'Nova Scotia', 'Digby');
INSERT INTO `rh_locations` VALUES ('447', 'Canada', 'Quebec', 'Dorval');
INSERT INTO `rh_locations` VALUES ('448', 'Canada', 'Ontario', 'Downsview');
INSERT INTO `rh_locations` VALUES ('449', 'Canada', 'Alberta', 'Drayton Valley');
INSERT INTO `rh_locations` VALUES ('450', 'Canada', 'Alberta', 'Drumheller');
INSERT INTO `rh_locations` VALUES ('451', 'Canada', 'Quebec', 'Drummondville');
INSERT INTO `rh_locations` VALUES ('452', 'Canada', 'Ontario', 'Dryden');
INSERT INTO `rh_locations` VALUES ('453', 'Canada', 'British Columbia', 'Duncan');
INSERT INTO `rh_locations` VALUES ('454', 'Canada', 'Alberta', 'Edmonton');
INSERT INTO `rh_locations` VALUES ('455', 'Canada', 'New Brunswick', 'Edmundston');
INSERT INTO `rh_locations` VALUES ('456', 'Canada', 'Alberta', 'Edson');
INSERT INTO `rh_locations` VALUES ('457', 'Canada', 'Ontario', 'Elliot Lake');
INSERT INTO `rh_locations` VALUES ('458', 'Canada', 'British Columbia', 'Enderby');
INSERT INTO `rh_locations` VALUES ('459', 'Canada', 'Saskatchewan', 'Estevan');
INSERT INTO `rh_locations` VALUES ('460', 'Canada', 'Ontario', 'Etobicoke');
INSERT INTO `rh_locations` VALUES ('461', 'Canada', 'British Columbia', 'Fairmont Hot Springs');
INSERT INTO `rh_locations` VALUES ('462', 'Canada', 'British Columbia', 'Fernie');
INSERT INTO `rh_locations` VALUES ('463', 'Canada', 'British Columbia', 'Field');
INSERT INTO `rh_locations` VALUES ('464', 'Canada', 'Ontario', 'Flamborough');
INSERT INTO `rh_locations` VALUES ('465', 'Canada', 'Ontario', 'Flesherton');
INSERT INTO `rh_locations` VALUES ('466', 'Canada', 'Quebec', 'Forestville');
INSERT INTO `rh_locations` VALUES ('467', 'Canada', 'Alberta', 'Fort Assiniboine');
INSERT INTO `rh_locations` VALUES ('468', 'Canada', 'Ontario', 'Fort Erie');
INSERT INTO `rh_locations` VALUES ('469', 'Canada', 'Ontario', 'Fort Frances');
INSERT INTO `rh_locations` VALUES ('470', 'Canada', 'Alberta', 'Fort McMurray');
INSERT INTO `rh_locations` VALUES ('471', 'Canada', 'British Columbia', 'Fort Nelson');
INSERT INTO `rh_locations` VALUES ('472', 'Canada', 'Alberta', 'Fort Saskatchewan');
INSERT INTO `rh_locations` VALUES ('473', 'Canada', 'British Columbia', 'Fort St John');
INSERT INTO `rh_locations` VALUES ('474', 'Canada', 'New Brunswick', 'Fredericton');
INSERT INTO `rh_locations` VALUES ('475', 'Canada', 'New Brunswick', 'French Village');
INSERT INTO `rh_locations` VALUES ('476', 'Canada', 'Ontario', 'Gananoque');
INSERT INTO `rh_locations` VALUES ('477', 'Canada', 'Newfoundland & Labrador', 'Gander');
INSERT INTO `rh_locations` VALUES ('478', 'Canada', 'Quebec', 'Gaspe');
INSERT INTO `rh_locations` VALUES ('479', 'Canada', 'Quebec', 'Gatineau');
INSERT INTO `rh_locations` VALUES ('480', 'Canada', 'Ontario', 'Georgetown');
INSERT INTO `rh_locations` VALUES ('481', 'Canada', 'Prince Edward Island', 'Georgetown');
INSERT INTO `rh_locations` VALUES ('482', 'Canada', 'British Columbia', 'Gibsons');
INSERT INTO `rh_locations` VALUES ('483', 'Canada', 'Manitoba', 'Gimli');
INSERT INTO `rh_locations` VALUES ('484', 'Canada', 'Nova Scotia', 'Glace Bay');
INSERT INTO `rh_locations` VALUES ('485', 'Canada', 'Ontario', 'Gloucester');
INSERT INTO `rh_locations` VALUES ('486', 'Canada', 'Nova Scotia', 'Goffs');
INSERT INTO `rh_locations` VALUES ('487', 'Canada', 'British Columbia', 'Golden');
INSERT INTO `rh_locations` VALUES ('488', 'Canada', 'British Columbia', 'Grand Forks');
INSERT INTO `rh_locations` VALUES ('489', 'Canada', 'Alberta', 'Grande Cache');
INSERT INTO `rh_locations` VALUES ('490', 'Canada', 'Alberta', 'Grande Prairie');
INSERT INTO `rh_locations` VALUES ('491', 'Canada', 'Ontario', 'Gravenhurst');
INSERT INTO `rh_locations` VALUES ('492', 'Canada', 'Ontario', 'Grimsby');
INSERT INTO `rh_locations` VALUES ('493', 'Canada', 'Ontario', 'Guelph');
INSERT INTO `rh_locations` VALUES ('494', 'Canada', 'Ontario', 'Haliburton');
INSERT INTO `rh_locations` VALUES ('495', 'Canada', 'Nova Scotia', 'Halifax');
INSERT INTO `rh_locations` VALUES ('496', 'Canada', 'Ontario', 'Hamilton');
INSERT INTO `rh_locations` VALUES ('497', 'Canada', 'Alberta', 'Hanna');
INSERT INTO `rh_locations` VALUES ('498', 'Canada', 'British Columbia', 'Harrison Hot Springs');
INSERT INTO `rh_locations` VALUES ('499', 'Canada', 'Ontario', 'Hawkesbury');
INSERT INTO `rh_locations` VALUES ('500', 'Canada', 'British Columbia', 'Hedley');
INSERT INTO `rh_locations` VALUES ('501', 'Canada', 'Alberta', 'High Level');
INSERT INTO `rh_locations` VALUES ('502', 'Canada', 'Alberta', 'High River');
INSERT INTO `rh_locations` VALUES ('503', 'Canada', 'Alberta', 'Hinton');
INSERT INTO `rh_locations` VALUES ('504', 'Canada', 'British Columbia', 'Hope');
INSERT INTO `rh_locations` VALUES ('505', 'Canada', 'Nova Scotia', 'Hubbards');
INSERT INTO `rh_locations` VALUES ('506', 'Canada', 'Quebec', 'Hull');
INSERT INTO `rh_locations` VALUES ('507', 'Canada', 'Prince Edward Island', 'Hunter River');
INSERT INTO `rh_locations` VALUES ('508', 'Canada', 'Ontario', 'Huntsville');
INSERT INTO `rh_locations` VALUES ('509', 'Canada', 'Ontario', 'Ingersoll');
INSERT INTO `rh_locations` VALUES ('510', 'Canada', 'Nova Scotia', 'Ingonish');
INSERT INTO `rh_locations` VALUES ('511', 'Canada', 'Northwest Territories', 'Inuvik');
INSERT INTO `rh_locations` VALUES ('512', 'Canada', 'British Columbia', 'Invermere');
INSERT INTO `rh_locations` VALUES ('513', 'Canada', 'Nunavut', 'Iqaluit');
INSERT INTO `rh_locations` VALUES ('514', 'Canada', 'Alberta', 'Irricana');
INSERT INTO `rh_locations` VALUES ('515', 'Canada', 'Alberta', 'Jasper');
INSERT INTO `rh_locations` VALUES ('516', 'Canada', 'Quebec', 'Jonquiere');
INSERT INTO `rh_locations` VALUES ('517', 'Canada', 'Ontario', 'Jordan');
INSERT INTO `rh_locations` VALUES ('518', 'Canada', 'British Columbia', 'Kamloops');
INSERT INTO `rh_locations` VALUES ('519', 'Canada', 'Alberta', 'Kananaskis Village');
INSERT INTO `rh_locations` VALUES ('520', 'Canada', 'Ontario', 'Kanata');
INSERT INTO `rh_locations` VALUES ('521', 'Canada', 'Ontario', 'Kapuskasing');
INSERT INTO `rh_locations` VALUES ('522', 'Canada', 'British Columbia', 'Kelowna');
INSERT INTO `rh_locations` VALUES ('523', 'Canada', 'Ontario', 'Kemptville');
INSERT INTO `rh_locations` VALUES ('524', 'Canada', 'Ontario', 'Kenora');
INSERT INTO `rh_locations` VALUES ('525', 'Canada', 'Prince Edward Island', 'Kensington');
INSERT INTO `rh_locations` VALUES ('526', 'Canada', 'British Columbia', 'Keremeos');
INSERT INTO `rh_locations` VALUES ('527', 'Canada', 'Ontario', 'Killarney');
INSERT INTO `rh_locations` VALUES ('528', 'Canada', 'British Columbia', 'Kimberley');
INSERT INTO `rh_locations` VALUES ('529', 'Canada', 'Ontario', 'Kincardine');
INSERT INTO `rh_locations` VALUES ('530', 'Canada', 'Saskatchewan', 'Kindersley');
INSERT INTO `rh_locations` VALUES ('531', 'Canada', 'Nova Scotia', 'Kingsport');
INSERT INTO `rh_locations` VALUES ('532', 'Canada', 'Ontario', 'Kingston');
INSERT INTO `rh_locations` VALUES ('533', 'Canada', 'Nova Scotia', 'Kingston');
INSERT INTO `rh_locations` VALUES ('534', 'Canada', 'Ontario', 'Kirkland Lake');
INSERT INTO `rh_locations` VALUES ('535', 'Canada', 'Ontario', 'Kitchener');
INSERT INTO `rh_locations` VALUES ('536', 'Canada', 'Quebec', 'La Malbaie');
INSERT INTO `rh_locations` VALUES ('537', 'Canada', 'Alberta', 'Lacombe');
INSERT INTO `rh_locations` VALUES ('538', 'Canada', 'British Columbia', 'Ladysmith');
INSERT INTO `rh_locations` VALUES ('539', 'Canada', 'Alberta', 'Lake Louise');
INSERT INTO `rh_locations` VALUES ('540', 'Canada', 'British Columbia', 'Langley');
INSERT INTO `rh_locations` VALUES ('541', 'Canada', 'Quebec', 'Laval');
INSERT INTO `rh_locations` VALUES ('542', 'Canada', 'Ontario', 'Leamington');
INSERT INTO `rh_locations` VALUES ('543', 'Canada', 'Alberta', 'Leduc');
INSERT INTO `rh_locations` VALUES ('544', 'Canada', 'Alberta', 'Lethbridge');
INSERT INTO `rh_locations` VALUES ('545', 'Canada', 'Quebec', 'Levis');
INSERT INTO `rh_locations` VALUES ('546', 'Canada', 'British Columbia', 'Lillooet');
INSERT INTO `rh_locations` VALUES ('547', 'Canada', 'Alberta', 'Lloydminster');
INSERT INTO `rh_locations` VALUES ('548', 'Canada', 'Nova Scotia', 'Lockeport');
INSERT INTO `rh_locations` VALUES ('549', 'Canada', 'Ontario', 'London');
INSERT INTO `rh_locations` VALUES ('550', 'Canada', 'Quebec', 'Longueuil');
INSERT INTO `rh_locations` VALUES ('551', 'Canada', 'Nova Scotia', 'Louisbourg');
INSERT INTO `rh_locations` VALUES ('552', 'Canada', 'British Columbia', 'Lund');
INSERT INTO `rh_locations` VALUES ('553', 'Canada', 'Nova Scotia', 'Lunenburg');
INSERT INTO `rh_locations` VALUES ('554', 'Canada', 'Ontario', 'Mactier');
INSERT INTO `rh_locations` VALUES ('555', 'Canada', 'Quebec', 'Magog');
INSERT INTO `rh_locations` VALUES ('556', 'Canada', 'British Columbia', 'Maple Ridge');
INSERT INTO `rh_locations` VALUES ('557', 'Canada', 'Ontario', 'Marathon');
INSERT INTO `rh_locations` VALUES ('558', 'Canada', 'Ontario', 'Markham');
INSERT INTO `rh_locations` VALUES ('559', 'Canada', 'Newfoundland & Labrador', 'Marystown');
INSERT INTO `rh_locations` VALUES ('560', 'Canada', 'Quebec', 'Matane');
INSERT INTO `rh_locations` VALUES ('561', 'Canada', 'Prince Edward Island', 'Mayfield');
INSERT INTO `rh_locations` VALUES ('562', 'Canada', 'Saskatchewan', 'Meadow Lake');
INSERT INTO `rh_locations` VALUES ('563', 'Canada', 'Alberta', 'Medicine Hat');
INSERT INTO `rh_locations` VALUES ('564', 'Canada', 'Saskatchewan', 'Melfort');
INSERT INTO `rh_locations` VALUES ('565', 'Canada', 'Saskatchewan', 'Melville');
INSERT INTO `rh_locations` VALUES ('566', 'Canada', 'British Columbia', 'Merritt');
INSERT INTO `rh_locations` VALUES ('567', 'Canada', 'Quebec', 'M?tis-Sur-Mer');
INSERT INTO `rh_locations` VALUES ('568', 'Canada', 'Ontario', 'Midland');
INSERT INTO `rh_locations` VALUES ('569', 'Canada', 'Ontario', 'Milton');
INSERT INTO `rh_locations` VALUES ('570', 'Canada', 'New Brunswick', 'Miramichi');
INSERT INTO `rh_locations` VALUES ('571', 'Canada', 'British Columbia', 'Mission');
INSERT INTO `rh_locations` VALUES ('572', 'Canada', 'Ontario', 'Mississauga');
INSERT INTO `rh_locations` VALUES ('573', 'Canada', 'New Brunswick', 'Moncton');
INSERT INTO `rh_locations` VALUES ('574', 'Canada', 'Quebec', 'Mont Laurier');
INSERT INTO `rh_locations` VALUES ('575', 'Canada', 'Quebec', 'Mont Tremblant');
INSERT INTO `rh_locations` VALUES ('576', 'Canada', 'Prince Edward Island', 'Montague');
INSERT INTO `rh_locations` VALUES ('577', 'Canada', 'Quebec', 'Montebello');
INSERT INTO `rh_locations` VALUES ('578', 'Canada', 'Quebec', 'Montreal');
INSERT INTO `rh_locations` VALUES ('579', 'Canada', 'Saskatchewan', 'Moose Jaw');
INSERT INTO `rh_locations` VALUES ('580', 'Canada', 'Manitoba', 'Morden');
INSERT INTO `rh_locations` VALUES ('581', 'Canada', 'Prince Edward Island', 'Morell');
INSERT INTO `rh_locations` VALUES ('582', 'Canada', 'Manitoba', 'Morris');
INSERT INTO `rh_locations` VALUES ('583', 'Canada', 'Ontario', 'Mount Hope');
INSERT INTO `rh_locations` VALUES ('584', 'Canada', 'Prince Edward Island', 'Murray River');
INSERT INTO `rh_locations` VALUES ('585', 'Canada', 'Ontario', 'Muskoka');
INSERT INTO `rh_locations` VALUES ('586', 'Canada', 'British Columbia', 'Nanaimo');
INSERT INTO `rh_locations` VALUES ('587', 'Canada', 'Ontario', 'Napanee');
INSERT INTO `rh_locations` VALUES ('588', 'Canada', 'Quebec', 'Natashquan');
INSERT INTO `rh_locations` VALUES ('589', 'Canada', 'Nova Scotia', 'Neils Harbour');
INSERT INTO `rh_locations` VALUES ('590', 'Canada', 'British Columbia', 'Nelson');
INSERT INTO `rh_locations` VALUES ('591', 'Canada', 'Ontario', 'Nepean');
INSERT INTO `rh_locations` VALUES ('592', 'Canada', 'Nova Scotia', 'New Glasgow');
INSERT INTO `rh_locations` VALUES ('593', 'Canada', 'Ontario', 'New Liskeard');
INSERT INTO `rh_locations` VALUES ('594', 'Canada', 'British Columbia', 'New Westminster');
INSERT INTO `rh_locations` VALUES ('595', 'Canada', 'Ontario', 'Newmarket');
INSERT INTO `rh_locations` VALUES ('596', 'Canada', 'Ontario', 'Niagara Falls');
INSERT INTO `rh_locations` VALUES ('597', 'Canada', 'Ontario', 'Niagara-on-the-Lake');
INSERT INTO `rh_locations` VALUES ('598', 'Canada', 'Alberta', 'Nisku');
INSERT INTO `rh_locations` VALUES ('599', 'Canada', 'Alberta', 'Nordegg');
INSERT INTO `rh_locations` VALUES ('600', 'Canada', 'Saskatchewan', 'North Battleford');
INSERT INTO `rh_locations` VALUES ('601', 'Canada', 'Ontario', 'North Bay');
INSERT INTO `rh_locations` VALUES ('602', 'Canada', 'Prince Edward Island', 'North Rustico');
INSERT INTO `rh_locations` VALUES ('603', 'Canada', 'Nova Scotia', 'North Sydney');
INSERT INTO `rh_locations` VALUES ('604', 'Canada', 'British Columbia', 'North Vancouver');
INSERT INTO `rh_locations` VALUES ('605', 'Canada', 'Ontario', 'North York');
INSERT INTO `rh_locations` VALUES ('606', 'Canada', 'Ontario', 'Oakville');
INSERT INTO `rh_locations` VALUES ('607', 'Canada', 'Alberta', 'Okotoks');
INSERT INTO `rh_locations` VALUES ('608', 'Canada', 'Alberta', 'Olds');
INSERT INTO `rh_locations` VALUES ('609', 'Canada', 'Ontario', 'Orangeville');
INSERT INTO `rh_locations` VALUES ('610', 'Canada', 'Quebec', 'Orford');
INSERT INTO `rh_locations` VALUES ('611', 'Canada', 'Ontario', 'Orillia');
INSERT INTO `rh_locations` VALUES ('612', 'Canada', 'Ontario', 'Oshawa');
INSERT INTO `rh_locations` VALUES ('613', 'Canada', 'British Columbia', 'Osoyoos');
INSERT INTO `rh_locations` VALUES ('614', 'Canada', 'Ontario', 'Ottawa');
INSERT INTO `rh_locations` VALUES ('615', 'Canada', 'Ontario', 'Owen Sound');
INSERT INTO `rh_locations` VALUES ('616', 'Canada', 'British Columbia', 'Panorama');
INSERT INTO `rh_locations` VALUES ('617', 'Canada', 'British Columbia', 'Parksville');
INSERT INTO `rh_locations` VALUES ('618', 'Canada', 'Ontario', 'Parry Sound');
INSERT INTO `rh_locations` VALUES ('619', 'Canada', 'Alberta', 'Peace River');
INSERT INTO `rh_locations` VALUES ('620', 'Canada', 'Ontario', 'Pelee Island');
INSERT INTO `rh_locations` VALUES ('621', 'Canada', 'British Columbia', 'Pemberton');
INSERT INTO `rh_locations` VALUES ('622', 'Canada', 'Ontario', 'Pembroke');
INSERT INTO `rh_locations` VALUES ('623', 'Canada', 'British Columbia', 'Penticton');
INSERT INTO `rh_locations` VALUES ('624', 'Canada', 'Quebec', 'Perce');
INSERT INTO `rh_locations` VALUES ('625', 'Canada', 'Ontario', 'Perth');
INSERT INTO `rh_locations` VALUES ('626', 'Canada', 'Ontario', 'Petawawa');
INSERT INTO `rh_locations` VALUES ('627', 'Canada', 'Ontario', 'Peterborough');
INSERT INTO `rh_locations` VALUES ('628', 'Canada', 'Quebec', 'Petite Rivi?re St-Fran?ois');
INSERT INTO `rh_locations` VALUES ('629', 'Canada', 'Ontario', 'Pickering');
INSERT INTO `rh_locations` VALUES ('630', 'Canada', 'Ontario', 'Picton');
INSERT INTO `rh_locations` VALUES ('631', 'Canada', 'Nova Scotia', 'Pictou');
INSERT INTO `rh_locations` VALUES ('632', 'Canada', 'Alberta', 'Pincher Creek');
INSERT INTO `rh_locations` VALUES ('633', 'Canada', 'British Columbia', 'Pitt Meadows');
INSERT INTO `rh_locations` VALUES ('634', 'Canada', 'Quebec', 'Pointe Claire');
INSERT INTO `rh_locations` VALUES ('635', 'Canada', 'British Columbia', 'Port Alberni');
INSERT INTO `rh_locations` VALUES ('636', 'Canada', 'Newfoundland & Labrador', 'Port aux Basques');
INSERT INTO `rh_locations` VALUES ('637', 'Canada', 'Ontario', 'Port Carling');
INSERT INTO `rh_locations` VALUES ('638', 'Canada', 'British Columbia', 'Port Coquitlam');
INSERT INTO `rh_locations` VALUES ('639', 'Canada', 'Ontario', 'Port Elgin');
INSERT INTO `rh_locations` VALUES ('640', 'Canada', 'British Columbia', 'Port Hardy');
INSERT INTO `rh_locations` VALUES ('641', 'Canada', 'Nova Scotia', 'Port Hastings');
INSERT INTO `rh_locations` VALUES ('642', 'Canada', 'Ontario', 'Port Hope');
INSERT INTO `rh_locations` VALUES ('643', 'Canada', 'Ontario', 'Port Loring');
INSERT INTO `rh_locations` VALUES ('644', 'Canada', 'British Columbia', 'Port Moody');
INSERT INTO `rh_locations` VALUES ('645', 'Canada', 'Ontario', 'Port Perry');
INSERT INTO `rh_locations` VALUES ('646', 'Canada', 'Manitoba', 'Portage La Prairie');
INSERT INTO `rh_locations` VALUES ('647', 'Canada', 'British Columbia', 'Powell River');
INSERT INTO `rh_locations` VALUES ('648', 'Canada', 'Saskatchewan', 'Prince Albert');
INSERT INTO `rh_locations` VALUES ('649', 'Canada', 'British Columbia', 'Prince George');
INSERT INTO `rh_locations` VALUES ('650', 'Canada', 'British Columbia', 'Prince Rupert');
INSERT INTO `rh_locations` VALUES ('651', 'Canada', 'British Columbia', 'Princeton');
INSERT INTO `rh_locations` VALUES ('652', 'Canada', 'British Columbia', 'Qualicum Beach');
INSERT INTO `rh_locations` VALUES ('653', 'Canada', 'Quebec', 'Quebec City');
INSERT INTO `rh_locations` VALUES ('654', 'Canada', 'Nova Scotia', 'Queensland');
INSERT INTO `rh_locations` VALUES ('655', 'Canada', 'British Columbia', 'Quesnel');
INSERT INTO `rh_locations` VALUES ('656', 'Canada', 'British Columbia', 'Radium Hot Springs');
INSERT INTO `rh_locations` VALUES ('657', 'Canada', 'Nunavut', 'Rankin Inlet');
INSERT INTO `rh_locations` VALUES ('658', 'Canada', 'Alberta', 'Red Deer');
INSERT INTO `rh_locations` VALUES ('659', 'Canada', 'Saskatchewan', 'Regina');
INSERT INTO `rh_locations` VALUES ('660', 'Canada', 'Nunavut', 'Resolute');
INSERT INTO `rh_locations` VALUES ('661', 'Canada', 'British Columbia', 'Revelstoke');
INSERT INTO `rh_locations` VALUES ('662', 'Canada', 'Ontario', 'Rexdale');
INSERT INTO `rh_locations` VALUES ('663', 'Canada', 'British Columbia', 'Richmond');
INSERT INTO `rh_locations` VALUES ('664', 'Canada', 'Ontario', 'Richmond Hill');
INSERT INTO `rh_locations` VALUES ('665', 'Canada', 'Ontario', 'Ridgetown');
INSERT INTO `rh_locations` VALUES ('666', 'Canada', 'Quebec', 'Rimouski');
INSERT INTO `rh_locations` VALUES ('667', 'Canada', 'Quebec', 'Riviere Du Loup');
INSERT INTO `rh_locations` VALUES ('668', 'Canada', 'Quebec', 'Roberval');
INSERT INTO `rh_locations` VALUES ('669', 'Canada', 'Quebec', 'Rock Forest');
INSERT INTO `rh_locations` VALUES ('670', 'Canada', 'Alberta', 'Rocky Mountain House');
INSERT INTO `rh_locations` VALUES ('671', 'Canada', 'British Columbia', 'Rogers Pass');
INSERT INTO `rh_locations` VALUES ('672', 'Canada', 'British Columbia', 'Rossland');
INSERT INTO `rh_locations` VALUES ('673', 'Canada', 'Quebec', 'Rouyn Noranda');
INSERT INTO `rh_locations` VALUES ('674', 'Canada', 'British Columbia', 'Saanichton');
INSERT INTO `rh_locations` VALUES ('675', 'Canada', 'New Brunswick', 'Sackville');
INSERT INTO `rh_locations` VALUES ('676', 'Canada', 'New Brunswick', 'Saint John');
INSERT INTO `rh_locations` VALUES ('677', 'Canada', 'New Brunswick', 'Saint-Gr?goire');
INSERT INTO `rh_locations` VALUES ('678', 'Canada', 'Quebec', 'Saint-Joseph-de-la-Rive');
INSERT INTO `rh_locations` VALUES ('679', 'Canada', 'Quebec', 'Sainte Catherine');
INSERT INTO `rh_locations` VALUES ('680', 'Canada', 'Quebec', 'Sainte-Adele');
INSERT INTO `rh_locations` VALUES ('681', 'Canada', 'Quebec', 'Sainte-Foy');
INSERT INTO `rh_locations` VALUES ('682', 'Canada', 'British Columbia', 'Salmon Arm');
INSERT INTO `rh_locations` VALUES ('683', 'Canada', 'British Columbia', 'Saltspring Island');
INSERT INTO `rh_locations` VALUES ('684', 'Canada', 'Ontario', 'Sarnia');
INSERT INTO `rh_locations` VALUES ('685', 'Canada', 'Saskatchewan', 'Saskatoon');
INSERT INTO `rh_locations` VALUES ('686', 'Canada', 'Ontario', 'Sault Ste Marie');
INSERT INTO `rh_locations` VALUES ('687', 'Canada', 'Ontario', 'Scarborough');
INSERT INTO `rh_locations` VALUES ('688', 'Canada', 'Ontario', 'Schomberg');
INSERT INTO `rh_locations` VALUES ('689', 'Canada', 'British Columbia', 'Sechelt');
INSERT INTO `rh_locations` VALUES ('690', 'Canada', 'Quebec', 'Sept-?les');
INSERT INTO `rh_locations` VALUES ('691', 'Canada', 'Quebec', 'Shawinigan');
INSERT INTO `rh_locations` VALUES ('692', 'Canada', 'New Brunswick', 'Shemogue');
INSERT INTO `rh_locations` VALUES ('693', 'Canada', 'Quebec', 'Sherbrooke');
INSERT INTO `rh_locations` VALUES ('694', 'Canada', 'Alberta', 'Sherwood Park');
INSERT INTO `rh_locations` VALUES ('695', 'Canada', 'British Columbia', 'Sicamous');
INSERT INTO `rh_locations` VALUES ('696', 'Canada', 'British Columbia', 'Sidney');
INSERT INTO `rh_locations` VALUES ('697', 'Canada', 'Ontario', 'Simcoe');
INSERT INTO `rh_locations` VALUES ('698', 'Canada', 'Ontario', 'Sioux Lookout');
INSERT INTO `rh_locations` VALUES ('699', 'Canada', 'Alberta', 'Slave Lake');
INSERT INTO `rh_locations` VALUES ('700', 'Canada', 'British Columbia', 'Smithers');
INSERT INTO `rh_locations` VALUES ('701', 'Canada', 'Ontario', 'Smiths Falls');
INSERT INTO `rh_locations` VALUES ('702', 'Canada', 'British Columbia', 'Squamish');
INSERT INTO `rh_locations` VALUES ('703', 'Canada', 'Alberta', 'St Albert');
INSERT INTO `rh_locations` VALUES ('704', 'Canada', 'New Brunswick', 'St Andrews');
INSERT INTO `rh_locations` VALUES ('705', 'Canada', 'Newfoundland & Labrador', 'St Bride\'s');
INSERT INTO `rh_locations` VALUES ('706', 'Canada', 'Ontario', 'St Catharines');
INSERT INTO `rh_locations` VALUES ('707', 'Canada', 'Quebec', 'St Jerome');
INSERT INTO `rh_locations` VALUES ('708', 'Canada', 'Quebec', 'St Jovite');
INSERT INTO `rh_locations` VALUES ('709', 'Canada', 'Quebec', 'St Laurent');
INSERT INTO `rh_locations` VALUES ('710', 'Canada', 'New Brunswick', 'St Martins');
INSERT INTO `rh_locations` VALUES ('711', 'Canada', 'Ontario', 'St Thomas');
INSERT INTO `rh_locations` VALUES ('712', 'Canada', 'Quebec', 'St-sauveur');
INSERT INTO `rh_locations` VALUES ('713', 'Canada', 'Quebec', 'St. Georges De Beauce');
INSERT INTO `rh_locations` VALUES ('714', 'Canada', 'Quebec', 'St. Jean-Sur-Richelieu');
INSERT INTO `rh_locations` VALUES ('715', 'Canada', 'Newfoundland & Labrador', 'St. John\'s');
INSERT INTO `rh_locations` VALUES ('716', 'Canada', 'Quebec', 'St. Liboire');
INSERT INTO `rh_locations` VALUES ('717', 'Canada', 'Alberta', 'St. Paul');
INSERT INTO `rh_locations` VALUES ('718', 'Canada', 'Quebec', 'Ste Anne De Beaupre');
INSERT INTO `rh_locations` VALUES ('719', 'Canada', 'Quebec', 'Ste-helene-de-bagot');
INSERT INTO `rh_locations` VALUES ('720', 'Canada', 'Newfoundland & Labrador', 'Stephenville');
INSERT INTO `rh_locations` VALUES ('721', 'Canada', 'Alberta', 'Stettler');
INSERT INTO `rh_locations` VALUES ('722', 'Canada', 'Alberta', 'Stony Plain');
INSERT INTO `rh_locations` VALUES ('723', 'Canada', 'Ontario', 'Stratford');
INSERT INTO `rh_locations` VALUES ('724', 'Canada', 'Prince Edward Island', 'Stratford');
INSERT INTO `rh_locations` VALUES ('725', 'Canada', 'Alberta', 'Strathmore');
INSERT INTO `rh_locations` VALUES ('726', 'Canada', 'Ontario', 'Sudbury');
INSERT INTO `rh_locations` VALUES ('727', 'Canada', 'Prince Edward Island', 'Summerside');
INSERT INTO `rh_locations` VALUES ('728', 'Canada', 'British Columbia', 'Sun Peaks');
INSERT INTO `rh_locations` VALUES ('729', 'Canada', 'Ontario', 'Sundridge');
INSERT INTO `rh_locations` VALUES ('730', 'Canada', 'British Columbia', 'Surrey');
INSERT INTO `rh_locations` VALUES ('731', 'Canada', 'New Brunswick', 'Sussex');
INSERT INTO `rh_locations` VALUES ('732', 'Canada', 'Manitoba', 'Swan River');
INSERT INTO `rh_locations` VALUES ('733', 'Canada', 'Saskatchewan', 'Swift Current');
INSERT INTO `rh_locations` VALUES ('734', 'Canada', 'Nova Scotia', 'Sydney');
INSERT INTO `rh_locations` VALUES ('735', 'Canada', 'Alberta', 'Taber');
INSERT INTO `rh_locations` VALUES ('736', 'Canada', 'Quebec', 'Tadoussac');
INSERT INTO `rh_locations` VALUES ('737', 'Canada', 'British Columbia', 'Terrace');
INSERT INTO `rh_locations` VALUES ('738', 'Canada', 'Ontario', 'Thamesford');
INSERT INTO `rh_locations` VALUES ('739', 'Canada', 'Manitoba', 'The Pas');
INSERT INTO `rh_locations` VALUES ('740', 'Canada', 'Quebec', 'Thetford Mines');
INSERT INTO `rh_locations` VALUES ('741', 'Canada', 'Manitoba', 'Thompson');
INSERT INTO `rh_locations` VALUES ('742', 'Canada', 'Ontario', 'Thorold');
INSERT INTO `rh_locations` VALUES ('743', 'Canada', 'Alberta', 'Three Hills');
INSERT INTO `rh_locations` VALUES ('744', 'Canada', 'Ontario', 'Thunder Bay');
INSERT INTO `rh_locations` VALUES ('745', 'Canada', 'Alberta', 'Tignish');
INSERT INTO `rh_locations` VALUES ('746', 'Canada', 'Ontario', 'Tillsonburg');
INSERT INTO `rh_locations` VALUES ('747', 'Canada', 'Ontario', 'Timmins');
INSERT INTO `rh_locations` VALUES ('748', 'Canada', 'British Columbia', 'Tofino');
INSERT INTO `rh_locations` VALUES ('749', 'Canada', 'Ontario', 'Toronto');
INSERT INTO `rh_locations` VALUES ('750', 'Canada', 'British Columbia', 'Trail');
INSERT INTO `rh_locations` VALUES ('751', 'Canada', 'Ontario', 'Trenton');
INSERT INTO `rh_locations` VALUES ('752', 'Canada', 'Quebec', 'Trois Rivi?res');
INSERT INTO `rh_locations` VALUES ('753', 'Canada', 'Nova Scotia', 'Truro');
INSERT INTO `rh_locations` VALUES ('754', 'Canada', 'British Columbia', 'Ucluelet');
INSERT INTO `rh_locations` VALUES ('755', 'Canada', 'Quebec', 'Val D\'or');
INSERT INTO `rh_locations` VALUES ('756', 'Canada', 'Quebec', 'Val-des-Lacs');
INSERT INTO `rh_locations` VALUES ('757', 'Canada', 'British Columbia', 'Valemount');
INSERT INTO `rh_locations` VALUES ('758', 'Canada', 'British Columbia', 'Vancouver');
INSERT INTO `rh_locations` VALUES ('759', 'Canada', 'British Columbia', 'Vanderhoof');
INSERT INTO `rh_locations` VALUES ('760', 'Canada', 'Quebec', 'Vaudreuil');
INSERT INTO `rh_locations` VALUES ('761', 'Canada', 'Ontario', 'Vaughan');
INSERT INTO `rh_locations` VALUES ('762', 'Canada', 'Alberta', 'Vermilion');
INSERT INTO `rh_locations` VALUES ('763', 'Canada', 'British Columbia', 'Vernon');
INSERT INTO `rh_locations` VALUES ('764', 'Canada', 'British Columbia', 'Victoria');
INSERT INTO `rh_locations` VALUES ('765', 'Canada', 'Ontario', 'Wallaceburg');
INSERT INTO `rh_locations` VALUES ('766', 'Canada', 'Nova Scotia', 'Walton');
INSERT INTO `rh_locations` VALUES ('767', 'Canada', 'Ontario', 'Wasaga Beach');
INSERT INTO `rh_locations` VALUES ('768', 'Canada', 'Ontario', 'Waterloo');
INSERT INTO `rh_locations` VALUES ('769', 'Canada', 'Alberta', 'Waterton Lakes');
INSERT INTO `rh_locations` VALUES ('770', 'Canada', 'Ontario', 'Wawa');
INSERT INTO `rh_locations` VALUES ('771', 'Canada', 'Ontario', 'Welland');
INSERT INTO `rh_locations` VALUES ('772', 'Canada', 'British Columbia', 'West Vancouver');
INSERT INTO `rh_locations` VALUES ('773', 'Canada', 'British Columbia', 'Westbank');
INSERT INTO `rh_locations` VALUES ('774', 'Canada', 'Nova Scotia', 'Western Shore');
INSERT INTO `rh_locations` VALUES ('775', 'Canada', 'Alberta', 'Wetaskiwin');
INSERT INTO `rh_locations` VALUES ('776', 'Canada', 'Saskatchewan', 'Weyburn');
INSERT INTO `rh_locations` VALUES ('777', 'Canada', 'British Columbia', 'Whistler');
INSERT INTO `rh_locations` VALUES ('778', 'Canada', 'Ontario', 'Whitby');
INSERT INTO `rh_locations` VALUES ('779', 'Canada', 'British Columbia', 'White Rock');
INSERT INTO `rh_locations` VALUES ('780', 'Canada', 'Alberta', 'Whitecourt');
INSERT INTO `rh_locations` VALUES ('781', 'Canada', 'Yukon Territory', 'Whitehorse');
INSERT INTO `rh_locations` VALUES ('782', 'Canada', 'Ontario', 'Wiarton');
INSERT INTO `rh_locations` VALUES ('783', 'Canada', 'British Columbia', 'Williams Lake');
INSERT INTO `rh_locations` VALUES ('784', 'Canada', 'Ontario', 'Windsor');
INSERT INTO `rh_locations` VALUES ('785', 'Canada', 'British Columbia', 'Winfield');
INSERT INTO `rh_locations` VALUES ('786', 'Canada', 'Manitoba', 'Winkler');
INSERT INTO `rh_locations` VALUES ('787', 'Canada', 'Manitoba', 'Winnipeg');
INSERT INTO `rh_locations` VALUES ('788', 'Canada', 'Newfoundland & Labrador', 'Witless Bay');
INSERT INTO `rh_locations` VALUES ('789', 'Canada', 'Nova Scotia', 'Wolfville');
INSERT INTO `rh_locations` VALUES ('790', 'Canada', 'New Brunswick', 'Woodstock');
INSERT INTO `rh_locations` VALUES ('791', 'Canada', 'Ontario', 'Woodstock');
INSERT INTO `rh_locations` VALUES ('792', 'Canada', 'Nova Scotia', 'Yarmouth');
INSERT INTO `rh_locations` VALUES ('793', 'Canada', 'Northwest Territories', 'Yellowknife');
INSERT INTO `rh_locations` VALUES ('794', 'Canada', 'Saskatchewan', 'Yorkton');

-- ----------------------------
-- Table structure for `rh_reviews`
-- ----------------------------
DROP TABLE IF EXISTS `rh_reviews`;
CREATE TABLE `rh_reviews` (
  `reviewid` bigint(32) NOT NULL AUTO_INCREMENT,
  `reviewtoid` bigint(32) DEFAULT NULL,
  `reviewerid` bigint(32) NOT NULL,
  `hostsessionreviewid` bigint(32) DEFAULT NULL,
  `rating` int(1) NOT NULL,
  `message` varchar(255) NOT NULL,
  `recommend` int(1) NOT NULL,
  PRIMARY KEY (`reviewid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of rh_reviews
-- ----------------------------
INSERT INTO `rh_reviews` VALUES ('1', '100003947405807', '863810166', '1', '1', 'he cant even smile when I talk to him', '0');

-- ----------------------------
-- Table structure for `rh_ridehostsessions`
-- ----------------------------
DROP TABLE IF EXISTS `rh_ridehostsessions`;
CREATE TABLE `rh_ridehostsessions` (
  `sessionid` int(64) NOT NULL AUTO_INCREMENT,
  `ridehostid` int(64) DEFAULT NULL,
  `postedtime` datetime NOT NULL,
  `departtime` datetime NOT NULL,
  `estimatedarrivaltime` datetime NOT NULL,
  `locationfrom` varchar(128) NOT NULL,
  `locationto` varchar(128) NOT NULL,
  `riders` varchar(255) NOT NULL,
  `riderequests` varchar(255) NOT NULL,
  `price` double(8,0) NOT NULL,
  `additionalmessage` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`sessionid`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of rh_ridehostsessions
-- ----------------------------
INSERT INTO `rh_ridehostsessions` VALUES ('29', '863810166', '2014-01-25 11:50:29', '2014-01-25 11:50:29', '2014-01-25 11:50:29', 'Waterloo', 'Toronto', '606060', '71717171', '12', 'no');
INSERT INTO `rh_ridehostsessions` VALUES ('30', '2147483647', '2014-01-25 11:50:29', '2014-01-25 11:50:29', '2014-01-25 11:50:29', 'Waterloo', 'Markham', '606060', '71717171', '123', 'no');
INSERT INTO `rh_ridehostsessions` VALUES ('31', '666', '2014-01-25 13:35:13', '2014-01-25 13:35:13', '2014-01-25 13:35:13', 'Waterloo', 'Toronto', '606060', '71717171', '12', 'no');
INSERT INTO `rh_ridehostsessions` VALUES ('32', '666', '2014-01-25 13:35:22', '2014-01-25 13:35:22', '2014-01-25 13:35:22', 'Waterloo', 'Toronto', '606060', '71717171', '12', 'no');
INSERT INTO `rh_ridehostsessions` VALUES ('33', '666', '2014-01-25 14:39:32', '2014-01-25 14:39:32', '2014-01-25 14:39:32', 'Waterloo', 'Toronto', '606060', '71717171', '12', 'no');

-- ----------------------------
-- Table structure for `rh_riderequests`
-- ----------------------------
DROP TABLE IF EXISTS `rh_riderequests`;
CREATE TABLE `rh_riderequests` (
  `requestid` int(128) NOT NULL AUTO_INCREMENT,
  `requestedbyid` bigint(128) NOT NULL,
  `requestedtoid` bigint(128) NOT NULL,
  `sessionid` int(128) NOT NULL,
  `additionalmessage` varchar(255) NOT NULL,
  `accepted` int(1) NOT NULL,
  `seenbyhost` int(1) NOT NULL,
  `seenbyrequestor` int(1) NOT NULL,
  PRIMARY KEY (`requestid`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of rh_riderequests
-- ----------------------------
INSERT INTO `rh_riderequests` VALUES ('50', '863810166', '100003947405807', '0', 'hey', '1', '1', '0');
INSERT INTO `rh_riderequests` VALUES ('51', '863810166', '100003947405807', '0', 'heyyo', '1', '1', '0');
INSERT INTO `rh_riderequests` VALUES ('52', '667', '777', '0', 'hey', '0', '1', '0');
INSERT INTO `rh_riderequests` VALUES ('53', '668', '666', '0', 'heyyo', '0', '1', '0');
INSERT INTO `rh_riderequests` VALUES ('54', '667', '666', '0', 'hey', '0', '0', '0');
INSERT INTO `rh_riderequests` VALUES ('55', '668', '666', '0', 'heyyo', '0', '0', '0');

-- ----------------------------
-- Table structure for `rh_users`
-- ----------------------------
DROP TABLE IF EXISTS `rh_users`;
CREATE TABLE `rh_users` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `fbid` int(32) NOT NULL,
  `name` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL DEFAULT '',
  `phone` varchar(11) DEFAULT NULL,
  `aboutme` varchar(255) DEFAULT NULL,
  `fbpictureurl` varchar(255) NOT NULL,
  PRIMARY KEY (`id`,`fbid`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of rh_users
-- ----------------------------
INSERT INTO `rh_users` VALUES ('85', '863810166', 'AHILAN', 'IAME@GMAIL.COM', '905-411-123', 'I am a man', 'YYY1');
INSERT INTO `rh_users` VALUES ('86', '2147483647', 'AHILAN2', 'IAMDRIVE@GMAIL.COM', '226-123-123', 'I drive well', 'YYY2');
INSERT INTO `rh_users` VALUES ('87', '1188373977', 'AHILAN3', 'IDRIVE@GMAIL.COM', '305-234-123', 'I drive ok', 'YYY3');
INSERT INTO `rh_users` VALUES ('88', '2147483647', 'AHILAN4', 'MAYB@GMAIL.COM', '606-226-775', 'I am capable of driving tho', 'YYY4');
INSERT INTO `rh_users` VALUES ('89', '2147483647', 'AHILAN2', 'IAMDRIVE@GMAIL.COM', '226-123-123', 'I drive well', 'YYY2');
INSERT INTO `rh_users` VALUES ('90', '2147483647', 'AHILAN4', 'MAYB@GMAIL.COM', '606-226-775', 'I am capable of driving tho', 'YYY4');
INSERT INTO `rh_users` VALUES ('91', '666', 'AHILAN', 'IAME@GMAIL.COM', '911', 'werwer', 'YYYY');
INSERT INTO `rh_users` VALUES ('92', '667', 'AHILAN2', 'IAME2@GMAIL.COM', '911', 'werwer', 'YYYY');
INSERT INTO `rh_users` VALUES ('93', '668', 'AHILAN3', 'IAME3@GMAIL.COM', '911', 'werwer', 'YYYY');
