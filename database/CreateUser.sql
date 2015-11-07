DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `CreateUser`(  
							IN NameUser varchar(30),
							IN Login varchar(30),
							IN UserPassword varchar(30),
							IN UserRoleT int(11),
							IN Email varchar(30),
							IN Phone varchar(30)
							-- OUT errorCode INT(11),
							-- OUT errorMsg VARCHAR(50)
                            )
    DETERMINISTIC
BEGIN
	DECLARE EXIT HANDLER FOR 1048 
	BEGIN
		ROLLBACK;
		-- SET errorCode = 1;
        -- SET errorMsg = "Tried to insert NULL to not null";
	END;
    START TRANSACTION;
	-- SET errorCode = 0;
    -- SET errorMsg = 'OK';
    INSERT INTO `fbwu`.`User` (`NameUser`, `Login`, `UserPassword`, `UserRoleT`, `Email`, `Phone`)
	VALUES (NameUser, Login, UserPassword, UserRoleT, Email, Phone);
	COMMIT;
END$$
DELIMITER ;
