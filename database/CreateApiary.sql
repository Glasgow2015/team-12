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
    UPDATE `fbwu`.`HarvMonth` SET `HarvMonth`.`JAN` = @currentValue WHERE `HarvMonth`.`IDHarvMonth` = IDHarvMonth;
    SET HarvMonthArr = SUBSTRING(HarvMonthArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(HarvMonthArr, @separator, 1);
    UPDATE `fbwu`.`HarvMonth` SET `HarvMonth`.`FEB` = @currentValue WHERE `HarvMonth`.`IDHarvMonth` = IDHarvMonth;
    SET HarvMonthArr = SUBSTRING(HarvMonthArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(HarvMonthArr, @separator, 1);
    UPDATE `fbwu`.`HarvMonth` SET `HarvMonth`.`MAR` = @currentValue WHERE `HarvMonth`.`IDHarvMonth` = IDHarvMonth;
    SET HarvMonthArr = SUBSTRING(HarvMonthArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(HarvMonthArr, @separator, 1);
    UPDATE `fbwu`.`HarvMonth` SET `HarvMonth`.`APR` = @currentValue WHERE `HarvMonth`.`IDHarvMonth` = IDHarvMonth;
    SET HarvMonthArr = SUBSTRING(HarvMonthArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(HarvMonthArr, @separator, 1);
    UPDATE `fbwu`.`HarvMonth` SET `HarvMonth`.`MAY` = @currentValue WHERE `HarvMonth`.`IDHarvMonth` = IDHarvMonth;
    SET HarvMonthArr = SUBSTRING(HarvMonthArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(HarvMonthArr, @separator, 1);
    UPDATE `fbwu`.`HarvMonth` SET `HarvMonth`.`JUN` = @currentValue WHERE `HarvMonth`.`IDHarvMonth` = IDHarvMonth;
    SET HarvMonthArr = SUBSTRING(HarvMonthArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(HarvMonthArr, @separator, 1);
    UPDATE `fbwu`.`HarvMonth` SET `HarvMonth`.`JUL` = @currentValue WHERE `HarvMonth`.`IDHarvMonth` = IDHarvMonth;
    SET HarvMonthArr = SUBSTRING(HarvMonthArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(HarvMonthArr, @separator, 1);
    UPDATE `fbwu`.`HarvMonth` SET `HarvMonth`.`AUG` = @currentValue WHERE `HarvMonth`.`IDHarvMonth` = IDHarvMonth;
    SET HarvMonthArr = SUBSTRING(HarvMonthArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(HarvMonthArr, @separator, 1);
    UPDATE `fbwu`.`HarvMonth` SET `HarvMonth`.`SEP` = @currentValue WHERE `HarvMonth`.`IDHarvMonth` = IDHarvMonth;
    SET HarvMonthArr = SUBSTRING(HarvMonthArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(HarvMonthArr, @separator, 1);
    UPDATE `fbwu`.`HarvMonth` SET `HarvMonth`.`OCT` = @currentValue WHERE `HarvMonth`.`IDHarvMonth` = IDHarvMonth;
    SET HarvMonthArr = SUBSTRING(HarvMonthArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(HarvMonthArr, @separator, 1);
    UPDATE `fbwu`.`HarvMonth` SET `HarvMonth`.`NOV` = @currentValue WHERE `HarvMonth`.`IDHarvMonth` = IDHarvMonth;
    SET HarvMonthArr = SUBSTRING(HarvMonthArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(HarvMonthArr, @separator, 1);
    UPDATE `fbwu`.`HarvMonth` SET `HarvMonth`.`DEC` = @currentValue WHERE `HarvMonth`.`IDHarvMonth` = IDHarvMonth;
    SET HarvMonthArr = SUBSTRING(HarvMonthArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);

    -- Get Enviroment vars
    SET @currentValue = SUBSTRING_INDEX(EnviromentArr, @separator, 1);
    UPDATE `fbwu`.`Enviroment` SET `Enviroment`.`Water` = @currentValue WHERE `Enviroment`.`IDEnviroment` = IDEnviroment;
    SET EnviromentArr = SUBSTRING(EnviromentArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(EnviromentArr, @separator, 1);
    UPDATE `fbwu`.`Enviroment` SET `Enviroment`.`MiomboWoodland` = @currentValue WHERE `Enviroment`.`IDEnviroment` = IDEnviroment;
    SET EnviromentArr = SUBSTRING(EnviromentArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(EnviromentArr, @separator, 1);
    UPDATE `fbwu`.`Enviroment` SET `Enviroment`.`ClosedForest` = @currentValue WHERE `Enviroment`.`IDEnviroment` = IDEnviroment;
    SET EnviromentArr = SUBSTRING(EnviromentArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(EnviromentArr, @separator, 1);
    UPDATE `fbwu`.`Enviroment` SET `Enviroment`.`Grassland` = @currentValue WHERE `Enviroment`.`IDEnviroment` = IDEnviroment;
    SET EnviromentArr = SUBSTRING(EnviromentArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(EnviromentArr, @separator, 1);
    UPDATE `fbwu`.`Enviroment` SET `Enviroment`.`ForestPlantation` = @currentValue WHERE `Enviroment`.`IDEnviroment` = IDEnviroment;
    SET EnviromentArr = SUBSTRING(EnviromentArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(EnviromentArr, @separator, 1);
    UPDATE `fbwu`.`Enviroment` SET `Enviroment`.`SisalPlantation` = @currentValue WHERE `Enviroment`.`IDEnviroment` = IDEnviroment;
    SET EnviromentArr = SUBSTRING(EnviromentArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(EnviromentArr, @separator, 1);
    UPDATE `fbwu`.`Enviroment` SET `Enviroment`.`Orchard` = @currentValue WHERE `Enviroment`.`IDEnviroment` = IDEnviroment;
    SET EnviromentArr = SUBSTRING(EnviromentArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(EnviromentArr, @separator, 1);
    UPDATE `fbwu`.`Enviroment` SET `Enviroment`.`MixedCrops` = @currentValue WHERE `Enviroment`.`IDEnviroment` = IDEnviroment;
    SET EnviromentArr = SUBSTRING(EnviromentArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(EnviromentArr, @separator, 1);
    UPDATE `fbwu`.`Enviroment` SET `Enviroment`.`Pestisides` = @currentValue WHERE `Enviroment`.`IDEnviroment` = IDEnviroment;
    SET EnviromentArr = SUBSTRING(EnviromentArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);

    -- Get Enviroment vars
    SET @currentValue = SUBSTRING_INDEX(AccessArr, @separator, 1);
    UPDATE `fbwu`.`Access` SET `Access`.`Vehicle` = @currentValue WHERE `Access`.`IDAccess` = IDAccess;
    SET AccessArr = SUBSTRING(AccessArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(AccessArr, @separator, 1);
    UPDATE `fbwu`.`Access` SET `Access`.`BiMotorCycle` = @currentValue WHERE `Access`.`IDAccess` = IDAccess;
    SET AccessArr = SUBSTRING(AccessArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(AccessArr, @separator, 1);
    UPDATE `fbwu`.`Access` SET `Access`.`Foot` = @currentValue WHERE `Access`.`IDAccess` = IDAccess;
    SET AccessArr = SUBSTRING(AccessArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(AccessArr, @separator, 1);
    UPDATE `fbwu`.`Access` SET `Access`.`NaturalNest` = @currentValue WHERE `Access`.`IDAccess` = IDAccess;
    SET AccessArr = SUBSTRING(AccessArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(AccessArr, @separator, 1);
    UPDATE `fbwu`.`Access` SET `Access`.`Tree` = @currentValue WHERE `Access`.`IDAccess` = IDAccess;
    SET AccessArr = SUBSTRING(AccessArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(AccessArr, @separator, 1);
    UPDATE `fbwu`.`Access` SET `Access`.`BreastHeight` = @currentValue WHERE `Access`.`IDAccess` = IDAccess;
    SET AccessArr = SUBSTRING(AccessArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(AccessArr, @separator, 1);
    UPDATE `fbwu`.`Access` SET `Access`.`BeeHouse` = @currentValue WHERE `Access`.`IDAccess` = IDAccess;
    SET AccessArr = SUBSTRING(AccessArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(AccessArr, @separator, 1);
    UPDATE `fbwu`.`Access` SET `Access`.`HoneyBadger` = @currentValue WHERE `Access`.`IDAccess` = IDAccess;
    SET AccessArr = SUBSTRING(AccessArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
        
    -- Final Insert
    INSERT INTO `fbwu`.`Apiary` (`IDApiary`, `NameApiary`, `IDGPS`, `DateCreated`, `IDHarvMonth`, `IDEnviroment`, `IDAccess`)
    VALUES(NameApiary, IDGPS, DateCreated, IDHarvMonth, IDEnviroment, IDAccess);

    COMMIT;
END$$
DELIMITER ;
