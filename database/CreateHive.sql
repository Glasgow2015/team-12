CREATE DEFINER=`root`@`localhost` PROCEDURE `CreateHive`(
                            IN IDApiary int(11),
                            IN HiveNumber int(11),
                            IN LAT float,
                            IN LNG float,
                            IN PictureName varchar(36),
                            IN DateCreated datetime,
                            IN HiveTypeT int(11),
                            IN SunExpT int(11))
    DETERMINISTIC
BEGIN
    DECLARE IDGPS INT;
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

    -- Final Insert
    INSERT INTO `fbwu`.`Hive` (`IDApiary`, `HiveNumber`, `IDGPS`, `PictureName`, `DateCreated`, `HiveTypeT`, `SunExpT`)
    VALUES (IDApiary, HiveNumber, IDGPS, PictureName, DateCreated, HiveTypeT, SunExpT);


    COMMIT;
END