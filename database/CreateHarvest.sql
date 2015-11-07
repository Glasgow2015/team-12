DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `CreateHarvest`(
                                IDHive int(11),
                                DateHarvest datetime,
                                Quantity int(11),
                                BeeKeeperClothes tinyint(1),
                                AllAssistantTools tinyint(1),
                                Smoker tinyint(1),
                                BucketNumber int(11))
    DETERMINISTIC
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
        ROLLBACK;
        -- SET errorCode = 1;
        -- SET errorMsg = "Tried to insert NULL to not null";
    END;

    START TRANSACTION;
    -- SET errorCode = 0;
    -- SET errorMsg = 'OK';

    -- Final Insert
    INSERT INTO `fbwu`.`Harvest` (IDHive, DateHarvest, Quantity, BeeKeeperClothes, AllAssistantTools, Smoker, BucketNumber)
    VALUES (IDHive, DateHarvest, Quantity, BeeKeeperClothes, AllAssistantTools, Smoker, BucketNumber);

    COMMIT;
END$$
DELIMITER ;
