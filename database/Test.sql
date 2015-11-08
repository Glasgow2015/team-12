CALL CreateApiary('ROb', 1,1,'0000-00-00', '1,1,1,1,1,1,1,1,1,1,1,1', '1,1,1,1,1,1,1,1,1', '1,1,1,1,1,1,1,1');
CALL CreateInspection(73, '0000-00-00', 1,1, 1, 1, 1, '1,1','1,1,1,1',1,1);
CALL CreateHive (4, 123, 1, 1, '23123wfe23t', '0000-00-00', 1, 1);
CALL `fbwu`.`CreateHarvest`(73, '0000-00-00', 5, 1, 1, 1, 1);
CALL `fbwu`.`CreateUser`('wfer41', '123', '123', 1, '123', NULL);
CALL DeleteUserByID(10);
CALL DeleteApiaryByID(36);
CALL DeleteInspectionByID(10);
CALL DeleteHiveByID(2);
CALL DeleteUserByID(10);
SET SQL_SAFE_UPDATES = 0;
select * from InspectionView;
select * from ApiaryView;

Select LAST_INSERT_ID();
select * from test2;
INSERT INTO `fbwu`.`DeasPest` () VALUES ();
SELECT `Hive`.`IDHive`,
    `Hive`.`IDApiary`,
    `Hive`.`HiveNumber`,
    `Hive`.`IDGPS`,
    `Hive`.`PictureName`,
    `Hive`.`DateCreated`,
    `Hive`.`HiveTypeT`,
    `Hive`.`SunExpT`
FROM `fbwu`.`Hive`;

SELECT `DeasPestValT`.`IDDeasPestVal`,
    `DeasPestValT`.`NameType`
FROM `fbwu`.`DeasPestValT`;


SELECT `Apiary`.`IDApiary`,
    `Apiary`.`NameApiary`,
    `Apiary`.`IDGPS`,
    `Apiary`.`DateCreated`,
    `Apiary`.`IDHarvMonth`,
    `Apiary`.`IDEnviroment`,
    `Apiary`.`IDAccess`
FROM `fbwu`.`Apiary`;

SELECT `InspectionView`.`IDInspection`,
    `InspectionView`.`IDHive`,
    `InspectionView`.`DateInspection`,
    `InspectionView`.`WeatherCond`,
    `InspectionView`.`HiveState`,
    `InspectionView`.`ColStrength`,
    `InspectionView`.`HiveTemper`,
    `InspectionView`.`Name_exp_8`,
    `InspectionView`.`IDCombsCond`,
    `InspectionView`.`IDDeasPest`,
    `InspectionView`.`HiveCond`,
    `InspectionView`.`NameType`
FROM `fbwu`.`InspectionView`;

SELECT `UserView`.`IDUser`,
    `UserView`.`NameUser`,
    `UserView`.`Login`,
    `UserView`.`UserPassword`,
    `UserView`.`UserRole`,
    `UserView`.`Email`,
    `UserView`.`Phone`
FROM `fbwu`.`UserView`;

SELECT `UserRoleDict`.`IDUserRole`,
    `UserRoleDict`.`NameType`
FROM `fbwu`.`UserRoleDict`;

select user from mysql.user where user  like  '%';
