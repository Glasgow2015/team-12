CREATE TABLE `Apiary` (
	`IDApiary` int(11) NOT NULL AUTO_INCREMENT,
	`NameApiary` varchar(30) NOT NULL,
	`IDGPS` int(11) NOT NULL,
	`DateCreated` DATETIME NOT NULL,
	`IDHarvMonth` int(11) NOT NULL,
	`IDEnviroment` int(11) NOT NULL,
	`IDAccess` int(11) NOT NULL,
	PRIMARY KEY (`IDApiary`)
);

CREATE TABLE `Hive` (
	`IDHive` int(11) NOT NULL AUTO_INCREMENT,
	`IDApiary` int(11) NOT NULL,
	`HiveNumber` int(11) NOT NULL,
	`IDGPS` int(11) NOT NULL,
	`PictureName` varchar(36) NOT NULL,
	`DateCreated` DATETIME NOT NULL,
	`HiveTypeT` int(11) NOT NULL,
	`SunExpT` int(11) NOT NULL,
	PRIMARY KEY (`IDHive`)
);

CREATE TABLE `GPS` (
	`IDGPS` int NOT NULL AUTO_INCREMENT,
	`LAT` FLOAT(11) NOT NULL,
	`LNG` FLOAT(11) NOT NULL,
	PRIMARY KEY (`IDGPS`)
);

CREATE TABLE `HiveStateT` (
	`IDHiveState` int(11) NOT NULL AUTO_INCREMENT,
	`NameType` varchar(60) NOT NULL,
	PRIMARY KEY (`IDHiveState`)
);

CREATE TABLE `WeatherCondT` (
	`IDWeatherCond` int(11) NOT NULL AUTO_INCREMENT,
	`NameType` varchar(15) NOT NULL,
	PRIMARY KEY (`IDWeatherCond`)
);

CREATE TABLE `SunExpT` (
	`IDSunExp` int(11) NOT NULL AUTO_INCREMENT,
	`NameType` varchar(15) NOT NULL,
	PRIMARY KEY (`IDSunExp`)
);

CREATE TABLE `HiveTypeT` (
	`IDHiveType` int(11) NOT NULL AUTO_INCREMENT,
	`NameType` varchar(60) NOT NULL,
	PRIMARY KEY (`IDHiveType`)
);

CREATE TABLE `Access` (
	`IDAccess` int(11) NOT NULL AUTO_INCREMENT,
	`Vehicle` tinyint(1) NOT NULL,
	`BiMotorCycle` tinyint(1) NOT NULL,
	`Foot` tinyint(1) NOT NULL,
	`NaturalNest` tinyint(1) NOT NULL,
	`Tree` tinyint(1) NOT NULL,
	`BreastHeight` tinyint(1) NOT NULL,
	`BeeHouse` tinyint(1) NOT NULL,
	`HoneyBadger` tinyint(1) NOT NULL,
	PRIMARY KEY (`IDAccess`)
);

CREATE TABLE `Enviroment` (
	`IDEnviroment` int(11) NOT NULL AUTO_INCREMENT,
	`Water` tinyint(1) NOT NULL,
	`MiomboWoodland` tinyint(1) NOT NULL,
	`ClosedForest` tinyint(1) NOT NULL,
	`Grassland` tinyint(1) NOT NULL,
	`ForestPlantation` tinyint(1) NOT NULL,
	`SisalPlantation` tinyint(1) NOT NULL,
	`Orchard` tinyint(1) NOT NULL,
	`MixedCrops` tinyint(1) NOT NULL,
	`Pestisides` tinyint(1) NOT NULL,
	PRIMARY KEY (`IDEnviroment`)
);

CREATE TABLE `HarvMonth` (
	`IDHarvMonth` int(11) NOT NULL AUTO_INCREMENT,
	`JAN` tinyint(1) NOT NULL,
	`FEB` tinyint(1) NOT NULL,
	`MAR` tinyint(1) NOT NULL,
	`APR` tinyint(1) NOT NULL,
	`MAY` tinyint(1) NOT NULL,
	`JUN` tinyint(1) NOT NULL,
	`JUL` tinyint(1) NOT NULL,
	`AUG` tinyint(1) NOT NULL,
	`SEP` tinyint(1) NOT NULL,
	`OCT` tinyint(1) NOT NULL,
	`NOV` tinyint(1) NOT NULL,
	`DEC` tinyint(1) NOT NULL,
	PRIMARY KEY (`IDHarvMonth`)
);

CREATE TABLE `Harvest` (
	`IDHarvest` int(11) NOT NULL AUTO_INCREMENT,
	`DateHarvest` DATETIME NOT NULL,
	`Quantity` int(11) NOT NULL,
	`BeeKeeperClothes` tinyint(1) NOT NULL,
	`AllAssistantTools` tinyint(1) NOT NULL,
	`Smoker` tinyint(1) NOT NULL,
	`BucketNumber` int(11) NOT NULL,
	PRIMARY KEY (`IDHarvest`)
);

CREATE TABLE `StoresT` (
	`IDStores` int(11) NOT NULL AUTO_INCREMENT,
	`NameType` varchar(10) NOT NULL,
	PRIMARY KEY (`IDStores`)
);

CREATE TABLE `ColStrengthT` (
	`IDColStrength` int(11) NOT NULL AUTO_INCREMENT,
	`NameType` varchar(10) NOT NULL,
	PRIMARY KEY (`IDColStrength`)
);

CREATE TABLE `Inspection` (
	`IDInspection` int(11) NOT NULL AUTO_INCREMENT,
	`IDHive` int(11) NOT NULL,
	`DateInspection` DATETIME NOT NULL,
	`WeatherCondT` int(11) NOT NULL,
	`HiveStateT` int(11) NOT NULL,
	`ColStrengthT` int(11) NOT NULL,
	`HiveTemperT` int(11) NOT NULL,
	`QueenCellInBrood` tinyint(1) NOT NULL,
	`IDCombsCond` int(11) NOT NULL,
	`IDDeasPest` int(11) NOT NULL,
	`HiveCondT` int(11) NOT NULL,
	`BeeToolsCondT` int(11) NOT NULL,
	PRIMARY KEY (`IDInspection`)
);

CREATE TABLE `HiveTemperT` (
	`IDHiveTemper` int(11) NOT NULL AUTO_INCREMENT,
	`NameType` varchar(20) NOT NULL,
	PRIMARY KEY (`IDHiveTemper`)
);

CREATE TABLE `CombsCond` (
	`IDCombsCond` int(11) NOT NULL AUTO_INCREMENT,
	`HoneyStoresT` int(11) NOT NULL,
	`PollenStoresT` int(11) NOT NULL,
	PRIMARY KEY (`IDCombsCond`)
);

CREATE TABLE `DeasPest` (
	`IDDeasPest` int(11) NOT NULL AUTO_INCREMENT,
	`SmallBeeT` int(11) NOT NULL,
	`VarraoT` int(11) NOT NULL,
	`Ant` tinyint(1) NOT NULL,
	`Brood` tinyint(1) NOT NULL,
	PRIMARY KEY (`IDDeasPest`)
);

CREATE TABLE `DeasPestValT` (
	`IDDeasPestVal` int(11) NOT NULL AUTO_INCREMENT,
	`NameType` varchar(10) NOT NULL,
	PRIMARY KEY (`IDDeasPestVal`)
);

CREATE TABLE `BeeToolsCondT` (
	`IDBeeToolsCond` int(11) NOT NULL AUTO_INCREMENT,
	`NameType` varchar(10) NOT NULL,
	PRIMARY KEY (`IDBeeToolsCond`)
);

CREATE TABLE `HiveCondT` (
	`IDHiveCond` int(11) NOT NULL AUTO_INCREMENT,
	`NameType` varchar(10) NOT NULL,
	PRIMARY KEY (`IDHiveCond`)
);

CREATE TABLE `User` (
	`IDUser` int(11) NOT NULL AUTO_INCREMENT,
	`NameUser` varchar(30) NOT NULL,
	`Login` varchar(30) NOT NULL,
	`Password` varchar(30) NOT NULL,
	`UserRoleT` int(11) NOT NULL,
	PRIMARY KEY (`IDUser`)
);

CREATE TABLE `UserRoleT` (
	`IDUserRole` int(11) NOT NULL AUTO_INCREMENT,
	`UserRoleName` varchar(25) NOT NULL,
	PRIMARY KEY (`IDUserRole`)
);

CREATE TABLE `OwnedApiary` (
	`IDUser` int(11) NOT NULL AUTO_INCREMENT,
	`IDApiary` int(11) NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`IDUser`,`IDApiary`)
);

CREATE TABLE `OwnedHive` (
	`IDUser` int(11) NOT NULL AUTO_INCREMENT,
	`IDHive` int(11) NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`IDUser`,`IDHive`)
);

ALTER TABLE `Apiary` ADD CONSTRAINT `Apiary_fk0` FOREIGN KEY (`IDGPS`) REFERENCES `GPS`(`IDGPS`);

ALTER TABLE `Apiary` ADD CONSTRAINT `Apiary_fk1` FOREIGN KEY (`IDHarvMonth`) REFERENCES `HarvMonth`(`IDHarvMonth`);

ALTER TABLE `Apiary` ADD CONSTRAINT `Apiary_fk2` FOREIGN KEY (`IDEnviroment`) REFERENCES `Enviroment`(`IDEnviroment`);

ALTER TABLE `Apiary` ADD CONSTRAINT `Apiary_fk3` FOREIGN KEY (`IDAccess`) REFERENCES `Access`(`IDAccess`);

ALTER TABLE `Hive` ADD CONSTRAINT `Hive_fk0` FOREIGN KEY (`IDApiary`) REFERENCES `Apiary`(`IDApiary`);

ALTER TABLE `Hive` ADD CONSTRAINT `Hive_fk1` FOREIGN KEY (`IDGPS`) REFERENCES `GPS`(`IDGPS`);

ALTER TABLE `Hive` ADD CONSTRAINT `Hive_fk2` FOREIGN KEY (`HiveTypeT`) REFERENCES `HiveTypeT`(`IDHiveType`);

ALTER TABLE `Hive` ADD CONSTRAINT `Hive_fk3` FOREIGN KEY (`SunExpT`) REFERENCES `SunExpT`(`IDSunExp`);

ALTER TABLE `Inspection` ADD CONSTRAINT `Inspection_fk0` FOREIGN KEY (`IDHive`) REFERENCES `Hive`(`IDHive`);

ALTER TABLE `Inspection` ADD CONSTRAINT `Inspection_fk1` FOREIGN KEY (`WeatherCondT`) REFERENCES `WeatherCondT`(`IDWeatherCond`);

ALTER TABLE `Inspection` ADD CONSTRAINT `Inspection_fk2` FOREIGN KEY (`HiveStateT`) REFERENCES `HiveStateT`(`IDHiveState`);

ALTER TABLE `Inspection` ADD CONSTRAINT `Inspection_fk3` FOREIGN KEY (`ColStrengthT`) REFERENCES `ColStrengthT`(`IDColStrength`);

ALTER TABLE `Inspection` ADD CONSTRAINT `Inspection_fk4` FOREIGN KEY (`HiveTemperT`) REFERENCES `HiveTemperT`(`IDHiveTemper`);

ALTER TABLE `Inspection` ADD CONSTRAINT `Inspection_fk5` FOREIGN KEY (`IDCombsCond`) REFERENCES `CombsCond`(`IDCombsCond`);

ALTER TABLE `Inspection` ADD CONSTRAINT `Inspection_fk6` FOREIGN KEY (`IDDeasPest`) REFERENCES `DeasPestValT`(`IDDeasPestVal`);

ALTER TABLE `Inspection` ADD CONSTRAINT `Inspection_fk7` FOREIGN KEY (`HiveCondT`) REFERENCES `HiveCondT`(`IDHiveCond`);

ALTER TABLE `Inspection` ADD CONSTRAINT `Inspection_fk8` FOREIGN KEY (`BeeToolsCondT`) REFERENCES `BeeToolsCondT`(`IDBeeToolsCond`);

ALTER TABLE `CombsCond` ADD CONSTRAINT `CombsCond_fk0` FOREIGN KEY (`HoneyStoresT`) REFERENCES `StoresT`(`IDStores`);

ALTER TABLE `CombsCond` ADD CONSTRAINT `CombsCond_fk1` FOREIGN KEY (`PollenStoresT`) REFERENCES `StoresT`(`IDStores`);

ALTER TABLE `DeasPest` ADD CONSTRAINT `DeasPest_fk0` FOREIGN KEY (`SmallBeeT`) REFERENCES `DeasPestValT`(`IDDeasPestVal`);

ALTER TABLE `DeasPest` ADD CONSTRAINT `DeasPest_fk1` FOREIGN KEY (`VarraoT`) REFERENCES `DeasPestValT`(`IDDeasPestVal`);

ALTER TABLE `User` ADD CONSTRAINT `User_fk0` FOREIGN KEY (`UserRoleT`) REFERENCES `UserRoleT`(`IDUserRole`);

ALTER TABLE `OwnedApiary` ADD CONSTRAINT `OwnedApiary_fk0` FOREIGN KEY (`IDUser`) REFERENCES `User`(`IDUser`);

ALTER TABLE `OwnedApiary` ADD CONSTRAINT `OwnedApiary_fk1` FOREIGN KEY (`IDApiary`) REFERENCES `Apiary`(`IDApiary`);

ALTER TABLE `OwnedHive` ADD CONSTRAINT `OwnedHive_fk0` FOREIGN KEY (`IDUser`) REFERENCES `User`(`IDUser`);

ALTER TABLE `OwnedHive` ADD CONSTRAINT `OwnedHive_fk1` FOREIGN KEY (`IDHive`) REFERENCES `Hive`(`IDHive`);

