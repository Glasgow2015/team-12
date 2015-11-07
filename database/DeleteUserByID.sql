DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteUserByID`(
						IN userID INT(11) 
						-- OUT errorCode INT(11),
						-- OUT errorMsg VARCHAR(50)
                        )
    DETERMINISTIC
BEGIN
	DECLARE EXIT HANDLER FOR SQLEXCEPTION 
	BEGIN
		ROLLBACK;
		-- SET errorCode = 1;
        -- SET errorMsg = "User was not deleted";
	END;
    START TRANSACTION;
	-- SET errorCode = 0;
    -- SET errorMsg = 'OK';
    DELETE FROM User WHERE IDUser = userID;
	COMMIT;
END$$
DELIMITER ;
