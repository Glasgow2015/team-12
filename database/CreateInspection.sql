DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `CreateInspection`(
                                IN IDHive int(11),
                                IN DateInspection datetime,
                                IN WeatherCondT int(11),
                                IN HiveStateT int(11),
                                IN ColStrengthT int(11),
                                IN HiveTemperT int(11),
                                IN QueenCellInBrood tinyint(1),
                                IN CombsCondArr int(11),
                                IN DeasPestArr int(11),
                                IN HiveCondT int(11),
                                IN BeeToolsCondT int(11))
    DETERMINISTIC
BEGIN
    DECLARE IDCombsCond INT;
    DECLARE IDDeasPest INT;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
        ROLLBACK;
        -- SET errorCode = 1;
        -- SET errorMsg = "Tried to insert NULL to not null";
    END;

    START TRANSACTION;
    -- SET errorCode = 0;
    -- SET errorMsg = 'OK';

    INSERT INTO `fbwu`.`CombsCond` () VALUES ();
    SET IDCombsCond = LAST_INSERT_ID();

    INSERT INTO `fbwu`.`DeasPest` () VALUES ();
    SET IDDeasPest = LAST_INSERT_ID();

    SET @separator = ',';
    SET @separatorLength = CHAR_LENGTH(@separator);
    
    -- Get CombsCond
    SET @currentValue = SUBSTRING_INDEX(CombsCondArr, @separator, 1);
    UPDATE `fbwu`.`CombsCond` SET `CombsCond`.`HoneyStoresT` = @currentValue WHERE `CombsCond`.`IDCombsCond` = IDCombsCond;
    SET CombsCondArr = SUBSTRING(CombsCondArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
    SET @currentValue = SUBSTRING_INDEX(CombsCondArr, @separator, 1);
    UPDATE `fbwu`.`CombsCond` SET `CombsCond`.`PollenStoresT` = @currentValue WHERE `CombsCond`.`IDCombsCond` = IDCombsCond;
    SET CombsCondArr = SUBSTRING(CombsCondArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);

    -- Get DeasPest
    SET @currentValue = SUBSTRING_INDEX(DeasPestArr, @separator, 1);
    UPDATE `fbwu`.`DeasPest` SET `DeasPest`.`SmallBeeT` = @currentValue WHERE `DeasPest`.`IDDeasPest` = IDDeasPest;
    SET DeasPestArr = SUBSTRING(DeasPestArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
        SET @currentValue = SUBSTRING_INDEX(DeasPestArr, @separator, 1);
    UPDATE `fbwu`.`DeasPest` SET `DeasPest`.`VarraoT` = @currentValue WHERE `DeasPest`.`IDDeasPest` = IDDeasPest;
    SET DeasPestArr = SUBSTRING(DeasPestArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
        SET @currentValue = SUBSTRING_INDEX(DeasPestArr, @separator, 1);
    UPDATE `fbwu`.`DeasPest` SET `DeasPest`.`Ant` = @currentValue WHERE `DeasPest`.`IDDeasPest` = IDDeasPest;
    SET DeasPestArr = SUBSTRING(DeasPestArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);
        SET @currentValue = SUBSTRING_INDEX(DeasPestArr, @separator, 1);
    UPDATE `fbwu`.`DeasPest` SET `DeasPest`.`Brood` = @currentValue WHERE `DeasPest`.`IDDeasPest` = IDDeasPest;
    SET DeasPestArr = SUBSTRING(DeasPestArr, CHAR_LENGTH(@currentValue) + @separatorLength + 1);

    -- Final Insert
    INSERT INTO `fbwu`.`Inspection` (`IDHive`, `DateInspection`, `WeatherCondT`, `HiveStateT`, `ColStrengthT`, `HiveTemperT`, `QueenCellInBrood`, `IDCombsCond`, `IDDeasPest`, `HiveCondT`, `BeeToolsCondT`)
    VALUES (IDHive, DateInspection, WeatherCondT, HiveStateT, ColStrengthT, HiveTemperT, QueenCellInBrood, IDCombsCond, IDDeasPest, HiveCondT, BeeToolsCondT);
    COMMIT;
END$$
DELIMITER ;