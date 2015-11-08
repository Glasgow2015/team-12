-- CALL Destroy();



CALL CreateUser ('Patrick', 'pshrempf', '0cc175b9c0f1b6a831c399e269772661', 2, 'pshrempf@google.co.uk', '072321232112');
CALL CreateUser ('Bato', 'batousik',  '0cc175b9c0f1b6a831c399e269772661', 1, 'batousik@yandex.ru', NULL);
CALL CreateUser ('Greg', 'gregory',  '0cc175b9c0f1b6a831c399e269772661', 2, NULL, NULL);
CALL CreateUser ('Robert', 'rob',  '0cc175b9c0f1b6a831c399e269772661', 1, 'rob@google.co.uk', '+7 (917) 521-11-75');

CALL CreateApiary ('Beeezz', -8.5464359, 32.9972109,'2015-11-08 02:34:57', '0,0,0,1,1,1,0,0,0,0,0,1', '1,0,0,1,0,1,1,0,1', '1,1,1,0,0,0,0,1');
CALL CreateApiary ('True Beeezz', -2.9720789,31.4947336,'2015-10-08 18:34:57', '1,1,0,0,0,0,0,0,1,0,0,1', '0,0,0,0,0,1,1,0,1', '1,0,0,0,0,0,0,1');
CALL CreateApiary ('Best Beeezz', -13.3423747,35.7016699,'2014-08-15 06:34:57', '1,0,0,0,1,0,0,0,0,0,0,0', '0,0,1,0,0,0,1,0,1', '1,0,0,0,0,0,0,0');

CALL `fbwu`.`AssignApiary`(86, 40);
CALL `fbwu`.`AssignApiary`(84, 42);
CALL `fbwu`.`AssignApiary`(85, 42);

CALL CreateHive (84, 458112, -8.1464359, 32.9972109, '12823d04-7f93-4a41-9bb7-2f693271a012', '2015-11-08 00:34:57', 1, 1);
CALL CreateHive (84, 698415, -8.2464359, 32.8972109, 'fb21eedb-03a0-441f-8f8c-0d43055456af', '2015-11-08 02:34:57', 2, 2);
CALL CreateHive (84, 416828, -8.3464359, 32.7972109, '7b873dbd-9b7a-4607-a798-a04198472f72', '2015-11-08 04:34:57', 3, 1);
CALL CreateHive (84, 329468, -8.4464359, 32.6972109, 'ad54f108-80c9-4474-8c1f-a57648291e43', '2015-11-08 05:34:57', 4, 2);
CALL CreateHive (84, 465892, -8.5464359, 32.5972109, 'ee733e0e-a146-440f-a5f8-786ee7efaf10', '2015-11-08 06:34:57', 1, 1);
CALL CreateHive (84, 543622, -8.6464359, 32.9972109, '5e0e6e2c-c4a2-47d5-8346-363e5986c273', '2015-11-08 07:34:57', 1, 3);
CALL CreateHive (84, 696654, -8.7464359, 32.9972109, '1e5a94ff-7495-40c4-9d4b-6681d8566627', '2015-11-08 08:34:57', 5, 3);

CALL `fbwu`.`AssignHive`(84, 39);
CALL `fbwu`.`AssignHive`(85, 39);
CALL `fbwu`.`AssignHive`(86, 39);
CALL `fbwu`.`AssignHive`(87, 39);
CALL `fbwu`.`AssignHive`(88, 39);
CALL `fbwu`.`AssignHive`(89, 39);
CALL `fbwu`.`AssignHive`(90, 39);


CALL CreateHive (85, 731799, -2.9720789,31.4947336, 'a591c6ad-572c-4343-aed6-8c78bf376692', '2015-10-08 18:59:59', 1, 1);
CALL CreateHive (85, 527826, -2.9720789,31.4947336, '81c8b276-9b73-4efe-afd1-acd09f95ebe1', '2015-10-18 18:59:59', 2, 2);
CALL CreateHive (85, 367222, -2.9720789,31.4947336, 'd4fe0ac0-1393-4695-bff5-2574bd6b8533', '2015-10-28 18:59:59', 3, 1);
CALL CreateHive (85, 763526, -2.9720789,31.4947336, '70e4ed40-703f-4737-98e7-1197f13f35c0', '2015-10-08 18:59:59', 4, 2);
CALL CreateHive (85, 557281, -2.9720789,31.4947336, '2037852a-10c6-43ca-b818-7f55011eaa98', '2015-10-22 18:59:59', 1, 1);
CALL CreateHive (85, 612356, -2.9720789,31.4947336, '60a04985-0de4-43fa-a338-eb827caa7c58', '2015-10-21 18:59:59', 1, 3);
CALL CreateHive (85, 597534, -2.9720789,31.4947336, '9d91162c-e1b7-4aa2-ba84-041b2c9d22f8', '2015-10-25 18:59:59', 5, 3);

CALL `fbwu`.`AssignHive`(91, 41);
CALL `fbwu`.`AssignHive`(92, 41);
CALL `fbwu`.`AssignHive`(93, 41);
CALL `fbwu`.`AssignHive`(94, 41);
CALL `fbwu`.`AssignHive`(95, 41);
CALL `fbwu`.`AssignHive`(96, 41);
CALL `fbwu`.`AssignHive`(97, 41);


CALL CreateHive (86, 113322, -13.1423747,35.6016699, '4b0466b3-5870-4293-948e-8cb4aa8d0e3a', '2014-09-15 06:34:57', 1, 1);
CALL CreateHive (86, 435432, -13.5423747,35.6016699, 'bf5babbc-f199-4f45-81fc-57b0b2d38136', '2014-10-15 06:34:57', 5, 3);
CALL CreateHive (86, 675483, -13.3423747,35.7516699, '8fc9e0e8-3c44-48e3-bbe6-0723216f8696', '2014-11-15 06:34:57', 4, 1);
CALL CreateHive (86, 653652, -13.2423747,35.7016699, '94a5eba1-1d4c-48c3-b72f-a59b21964c54', '2014-12-15 06:04:07', 3, 2);
CALL CreateHive (86, 545652, -13.1423747,35.7716699, '5f973a39-1318-47f6-89bc-74b7ac14c41f', '2015-01-15 06:34:57', 2, 2);
CALL CreateHive (86, 143424, -13.4123747,35.5116699, 'a64dba33-42a4-49c7-a9db-9976bfc064d6', '2015-02-15 06:34:57', 1, 2);
CALL CreateHive (86, 752112, -13.0023747,36.7016699, '4370e7fe-8e54-4ce3-9c46-cf8eac2bef4f', '2015-03-15 06:34:57', 3, 3);

CALL `fbwu`.`AssignHive`(98, 41);
CALL `fbwu`.`AssignHive`(99, 41);
CALL `fbwu`.`AssignHive`(100, 41);
CALL `fbwu`.`AssignHive`(101, 41);
CALL `fbwu`.`AssignHive`(102, 41);
CALL `fbwu`.`AssignHive`(103, 41);
CALL `fbwu`.`AssignHive`(104, 41);


CALL CreateInspection (84, '2014-12-11 06:04:07', 1,1, 1, 1, 1, '1,1','2,3,1,2',1,1);
CALL CreateHarvest (85, '2014-12-15 12:04:07', 5, 1, 1, 1, 1);
CALL CreateInspection (86, '2014-12-13 06:04:07', 1,1, 1, 1, 1, '1,1','1,1,1,1',1,1);
CALL CreateHarvest (87, '2014-12-14 06:04:07', 5, 1, 1, 1, 1);
CALL CreateInspection (88, '2014-12-15 06:04:07', 1,1, 1, 1, 1, '1,1','1,1,1,1',1,1);
CALL CreateHarvest (89, '2014-12-15 06:04:07', 5, 1, 1, 1, 1);
CALL CreateInspection (84, '2014-12-15 06:04:07', 1,1, 1, 1, 1, '1,1','1,1,1,1',1,1);
CALL CreateHarvest (85, '2014-12-16 06:04:07', 5, 1, 1, 1, 1);
CALL CreateInspection (84, '2014-12-15 06:04:07', 1,1, 1, 1, 1, '1,1','1,1,1,1',1,1);
CALL CreateHarvest (85, '2014-12-17 06:04:07', 5, 1, 1, 1, 1);
CALL CreateInspection (84, '2014-12-15 06:04:07', 1,1, 1, 1, 1, '1,1','1,1,1,1',1,1);
CALL CreateHarvest (85, '2014-12-18 06:04:07', 5, 1, 1, 1, 1);
CALL CreateInspection (84, '2014-12-15 06:04:07', 1,1, 1, 1, 1, '1,1','1,1,1,1',1,1);
CALL CreateHarvest (85, '2014-12-19 06:04:07', 5, 1, 1, 1, 1);
CALL CreateInspection (90, '2014-12-15 06:04:07', 1,1, 1, 1, 1, '1,1','1,1,1,1',1,1);
CALL CreateHarvest (91, '2014-12-25 06:04:07', 5, 1, 1, 1, 1);
CALL CreateInspection (100, '2014-12-15 06:04:07', 1,1, 1, 1, 1, '1,1','1,1,1,1',1,1);
CALL CreateHarvest (100, '2014-12-15 06:04:07', 5, 1, 1, 1, 1);
CALL CreateInspection (100, '2014-12-15 06:04:07', 1,1, 1, 1, 1, '1,1','1,1,1,1',1,1);
CALL CreateHarvest (100, '2014-12-15 06:04:07', 5, 1, 1, 1, 1);
CALL CreateInspection (100, '2014-12-15 06:04:07', 1,1, 1, 1, 1, '1,1','1,1,1,1',1,1);
CALL CreateHarvest (85, '2014-12-15 06:04:07', 5, 1, 1, 1, 1);
CALL CreateInspection (84, '2014-12-15 06:04:07', 1,1, 1, 1, 1, '1,1','1,1,1,1',1,1);
CALL CreateHarvest (104, '2014-12-15 06:04:07', 5, 1, 1, 1, 1);
CALL CreateInspection (104, '2014-12-15 06:04:07', 1,1, 1, 1, 1, '1,1','1,1,1,1',1,1);
CALL CreateHarvest (104, '2014-12-15 06:04:07', 5, 1, 1, 1, 1);
CALL CreateInspection (104, '2014-12-15 06:04:07', 1,1, 1, 1, 1, '1,1','1,1,1,1',1,1);
CALL CreateHarvest (104, '2014-12-15 06:04:07', 5, 1, 1, 1, 1);
CALL CreateInspection (104, '2014-12-15 06:04:07', 1,1, 1, 1, 1, '1,1','1,1,1,1',1,1);
CALL CreateHarvest (95, '2014-12-15 06:04:07', 5, 1, 1, 1, 1);
CALL CreateInspection (95, '2014-12-15 06:04:07', 1,1, 1, 1, 1, '1,1','1,1,1,1',1,1);
CALL CreateHarvest (95, '2014-12-15 06:04:07', 5, 1, 1, 1, 1);
CALL CreateInspection (95, '2014-12-15 06:04:07', 1,1, 1, 1, 1, '1,1','1,1,1,1',1,1);
CALL CreateHarvest (95, '2014-12-15 06:04:07', 5, 1, 1, 1, 1);
CALL CreateInspection (95, '2014-12-15 06:04:07', 1,1, 1, 1, 1, '1,1','1,1,1,1',1,1);
CALL CreateHarvest (95, '2014-12-15 06:04:07', 5, 1, 1, 1, 1);
CALL CreateInspection (99, '2014-12-15 06:04:07', 1,1, 1, 1, 1, '1,1','1,1,1,1',1,1);
CALL CreateHarvest (99, '2014-12-15 06:04:07', 5, 1, 1, 1, 1);
CALL CreateInspection (99, '2014-12-15 06:04:07', 1,1, 1, 1, 1, '1,1','1,1,1,1',1,1);
CALL CreateHarvest (99, '2014-12-15 06:04:07', 5, 1, 1, 1, 1);
CALL CreateInspection (99, '2014-12-15 06:04:07', 1,1, 1, 1, 1, '1,1','1,1,1,1',1,1);
CALL CreateHarvest (99, '2014-12-15 06:04:07', 5, 1, 1, 1, 1);
CALL CreateInspection (88, '2014-12-15 06:04:07', 1,1, 1, 1, 1, '1,1','1,1,1,1',1,1);
CALL CreateHarvest (88, '2014-12-15 06:04:07', 5, 1, 1, 1, 1);
CALL CreateInspection (88, '2014-12-15 06:04:07', 1,1, 1, 1, 1, '1,1','1,1,1,1',1,1);
CALL CreateHarvest (88, '2014-12-15 06:04:07', 5, 1, 1, 1, 1);
CALL CreateInspection (88, '2014-12-15 06:04:07', 1,1, 1, 1, 1, '1,1','1,1,1,1',1,1);
CALL CreateHarvest (88, '2014-12-15 06:04:07', 5, 1, 1, 1, 1);

IN IDHive int(11),
                                IN DateInspection datetime,
                                IN WeatherCondT int(11),
                                IN HiveStateT int(11),
                                IN ColStrengthT int(11),
                                IN HiveTemperT int(11),
                                IN QueenCellInBrood tinyint(1),
                                IN CombsCondArr varchar(30),
                                IN DeasPestArr varchar(30),
                                IN HiveCondT int(11),
                                IN BeeToolsCondT int(11))
    DETERMINISTIC
IN IDApiary int(11),
                            IN HiveNumber int(11),
                            IN LAT float,
                            IN LNG float,
                            IN PictureName varchar(36),
                            IN DateCreated datetime,
                            IN HiveTypeT int(11),
                            IN SunExpT int(11))
                            
select * from Apiary
select * from User
select * from UserRoleDict
select * from OwnedApiaryView
select * from HiveTypeDict
select * from SunExpDict
select * from Hive
select * from WeatherCondDict
select * from HiveStateDict
select * from ColStrengthDict
select * from 
select * from 
select * from 
select * from 
select * from 
select * from 
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `CreateApiary`(
                                IN NameApiary varchar(30),
                                IN LAT float,
                                IN LNG float,
                                IN DateCreated datetime,
                                IN HarvMonthArr varchar(30),
                                IN EnviromentArr varchar(30),
                                IN AccessArr varchar(30))
    DETERMINISTIC
BEGIN
    DECLARE IDGPS INT;
    DECLARE IDHarvMonth INT;
    DECLARE IDEnviroment INT;
    DECLARE IDAccess INT;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
        ROLLBACK;
        -- SET errorCode = 1;
        -- SET errorMsg = "Tried to insert NULL to not null";
    END;

    START TRANSACTION;
    -- SET errorCode = 0;
    -- SET errorMsg = 'OK';
    
    INSERT INTO `fbwu`.`GPS` (LAT, LNG) VALUES (LAT, LNG);
    SET IDGPS = LAST_INSERT_ID();

    INSERT INTO `fbwu`.`HarvMonth` () VALUES ();
    SET IDHarvMonth = LAST_INSERT_ID();

    INSERT INTO `fbwu`.`Enviroment` () VALUES ();
    SET IDEnviroment = LAST_INSERT_ID();

    INSERT INTO `fbwu`.`Access` () VALUES ();
    SET IDAccess = LAST_INSERT_ID();

    SET @separator = ',';
    SET @separatorLength = CHAR_LENGTH(@separator);
    
    -- Get Harvest Months
    SET @currentValue = SUBSTRING_INDEX(HarvMonthArr, @separator, 1);
UPDATE `fbwu`.`HarvMonth` 
SET 
    `HarvMonth`.`JAN` = @currentValue
WHERE
    `HarvMonth`.`IDHarvMonth` = IDHarvMonth;
    SET HarvMonthArr = SUBSTRING(HarvMonthArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(HarvMonthArr, @separator, 1);
UPDATE `fbwu`.`HarvMonth` 
SET 
    `HarvMonth`.`FEB` = @currentValue
WHERE
    `HarvMonth`.`IDHarvMonth` = IDHarvMonth;
    SET HarvMonthArr = SUBSTRING(HarvMonthArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(HarvMonthArr, @separator, 1);
UPDATE `fbwu`.`HarvMonth` 
SET 
    `HarvMonth`.`MAR` = @currentValue
WHERE
    `HarvMonth`.`IDHarvMonth` = IDHarvMonth;
    SET HarvMonthArr = SUBSTRING(HarvMonthArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(HarvMonthArr, @separator, 1);
UPDATE `fbwu`.`HarvMonth` 
SET 
    `HarvMonth`.`APR` = @currentValue
WHERE
    `HarvMonth`.`IDHarvMonth` = IDHarvMonth;
    SET HarvMonthArr = SUBSTRING(HarvMonthArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(HarvMonthArr, @separator, 1);
UPDATE `fbwu`.`HarvMonth` 
SET 
    `HarvMonth`.`MAY` = @currentValue
WHERE
    `HarvMonth`.`IDHarvMonth` = IDHarvMonth;
    SET HarvMonthArr = SUBSTRING(HarvMonthArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(HarvMonthArr, @separator, 1);
UPDATE `fbwu`.`HarvMonth` 
SET 
    `HarvMonth`.`JUN` = @currentValue
WHERE
    `HarvMonth`.`IDHarvMonth` = IDHarvMonth;
    SET HarvMonthArr = SUBSTRING(HarvMonthArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(HarvMonthArr, @separator, 1);
UPDATE `fbwu`.`HarvMonth` 
SET 
    `HarvMonth`.`JUL` = @currentValue
WHERE
    `HarvMonth`.`IDHarvMonth` = IDHarvMonth;
    SET HarvMonthArr = SUBSTRING(HarvMonthArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(HarvMonthArr, @separator, 1);
UPDATE `fbwu`.`HarvMonth` 
SET 
    `HarvMonth`.`AUG` = @currentValue
WHERE
    `HarvMonth`.`IDHarvMonth` = IDHarvMonth;
    SET HarvMonthArr = SUBSTRING(HarvMonthArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(HarvMonthArr, @separator, 1);
UPDATE `fbwu`.`HarvMonth` 
SET 
    `HarvMonth`.`SEP` = @currentValue
WHERE
    `HarvMonth`.`IDHarvMonth` = IDHarvMonth;
    SET HarvMonthArr = SUBSTRING(HarvMonthArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(HarvMonthArr, @separator, 1);
UPDATE `fbwu`.`HarvMonth` 
SET 
    `HarvMonth`.`OCT` = @currentValue
WHERE
    `HarvMonth`.`IDHarvMonth` = IDHarvMonth;
    SET HarvMonthArr = SUBSTRING(HarvMonthArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(HarvMonthArr, @separator, 1);
UPDATE `fbwu`.`HarvMonth` 
SET 
    `HarvMonth`.`NOV` = @currentValue
WHERE
    `HarvMonth`.`IDHarvMonth` = IDHarvMonth;
    SET HarvMonthArr = SUBSTRING(HarvMonthArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(HarvMonthArr, @separator, 1);
UPDATE `fbwu`.`HarvMonth` 
SET 
    `HarvMonth`.`DEC` = @currentValue
WHERE
    `HarvMonth`.`IDHarvMonth` = IDHarvMonth;

    -- Get Enviroment vars
    SET @currentValue = SUBSTRING_INDEX(EnviromentArr, @separator, 1);
UPDATE `fbwu`.`Enviroment` 
SET 
    `Enviroment`.`Water` = @currentValue
WHERE
    `Enviroment`.`IDEnviroment` = IDEnviroment;
    SET EnviromentArr = SUBSTRING(EnviromentArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(EnviromentArr, @separator, 1);
UPDATE `fbwu`.`Enviroment` 
SET 
    `Enviroment`.`MiomboWoodland` = @currentValue
WHERE
    `Enviroment`.`IDEnviroment` = IDEnviroment;
    SET EnviromentArr = SUBSTRING(EnviromentArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(EnviromentArr, @separator, 1);
UPDATE `fbwu`.`Enviroment` 
SET 
    `Enviroment`.`ClosedForest` = @currentValue
WHERE
    `Enviroment`.`IDEnviroment` = IDEnviroment;
    SET EnviromentArr = SUBSTRING(EnviromentArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(EnviromentArr, @separator, 1);
UPDATE `fbwu`.`Enviroment` 
SET 
    `Enviroment`.`Grassland` = @currentValue
WHERE
    `Enviroment`.`IDEnviroment` = IDEnviroment;
    SET EnviromentArr = SUBSTRING(EnviromentArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(EnviromentArr, @separator, 1);
UPDATE `fbwu`.`Enviroment` 
SET 
    `Enviroment`.`ForestPlantation` = @currentValue
WHERE
    `Enviroment`.`IDEnviroment` = IDEnviroment;
    SET EnviromentArr = SUBSTRING(EnviromentArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(EnviromentArr, @separator, 1);
UPDATE `fbwu`.`Enviroment` 
SET 
    `Enviroment`.`SisalPlantation` = @currentValue
WHERE
    `Enviroment`.`IDEnviroment` = IDEnviroment;
    SET EnviromentArr = SUBSTRING(EnviromentArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(EnviromentArr, @separator, 1);
UPDATE `fbwu`.`Enviroment` 
SET 
    `Enviroment`.`Orchard` = @currentValue
WHERE
    `Enviroment`.`IDEnviroment` = IDEnviroment;
    SET EnviromentArr = SUBSTRING(EnviromentArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(EnviromentArr, @separator, 1);
UPDATE `fbwu`.`Enviroment` 
SET 
    `Enviroment`.`MixedCrops` = @currentValue
WHERE
    `Enviroment`.`IDEnviroment` = IDEnviroment;
    SET EnviromentArr = SUBSTRING(EnviromentArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(EnviromentArr, @separator, 1);
UPDATE `fbwu`.`Enviroment` 
SET 
    `Enviroment`.`Pestisides` = @currentValue
WHERE
    `Enviroment`.`IDEnviroment` = IDEnviroment;

    -- Get Enviroment vars
    SET @currentValue = SUBSTRING_INDEX(AccessArr, @separator, 1);
UPDATE `fbwu`.`Access` 
SET 
    `Access`.`Vehicle` = @currentValue
WHERE
    `Access`.`IDAccess` = IDAccess;
    SET AccessArr = SUBSTRING(AccessArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(AccessArr, @separator, 1);
UPDATE `fbwu`.`Access` 
SET 
    `Access`.`BiMotorCycle` = @currentValue
WHERE
    `Access`.`IDAccess` = IDAccess;
    SET AccessArr = SUBSTRING(AccessArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(AccessArr, @separator, 1);
UPDATE `fbwu`.`Access` 
SET 
    `Access`.`Foot` = @currentValue
WHERE
    `Access`.`IDAccess` = IDAccess;
    SET AccessArr = SUBSTRING(AccessArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(AccessArr, @separator, 1);
UPDATE `fbwu`.`Access` 
SET 
    `Access`.`NaturalNest` = @currentValue
WHERE
    `Access`.`IDAccess` = IDAccess;
    SET AccessArr = SUBSTRING(AccessArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(AccessArr, @separator, 1);
UPDATE `fbwu`.`Access` 
SET 
    `Access`.`Tree` = @currentValue
WHERE
    `Access`.`IDAccess` = IDAccess;
    SET AccessArr = SUBSTRING(AccessArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(AccessArr, @separator, 1);
UPDATE `fbwu`.`Access` 
SET 
    `Access`.`BreastHeight` = @currentValue
WHERE
    `Access`.`IDAccess` = IDAccess;
    SET AccessArr = SUBSTRING(AccessArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(AccessArr, @separator, 1);
UPDATE `fbwu`.`Access` 
SET 
    `Access`.`BeeHouse` = @currentValue
WHERE
    `Access`.`IDAccess` = IDAccess;
    SET AccessArr = SUBSTRING(AccessArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(AccessArr, @separator, 1);
UPDATE `fbwu`.`Access` 
SET 
    `Access`.`HoneyBadger` = @currentValue
WHERE
    `Access`.`IDAccess` = IDAccess;
        
    -- Final Insert
    INSERT INTO `fbwu`.`Apiary` (`NameApiary`, `IDGPS`, `DateCreated`, `IDHarvMonth`, `IDEnviroment`, `IDAccess`)
    VALUES(NameApiary, IDGPS, DateCreated, IDHarvMonth, IDEnviroment, IDAccess);

    COMMIT;
END$$
DELIMITER ;
