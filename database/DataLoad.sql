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

CALL CreateInspection (104,'15-02-22',5,2,2,2,1,'1,3','3,1,0,1',3,2);
CALL CreateInspection (86,'15-02-22',1,12,4,3,0,'1,1','1,2,1,0',4,3);
CALL CreateInspection (85,'15-09-09',2,1,1,2,0,'1,2','1,3,0,1',4,3);
CALL CreateInspection (101,'15-07-04',5,2,1,2,1,'3,2','1,3,1,1',3,3);
CALL CreateInspection (99,'14-12-11',1,2,1,1,1,'1,3','2,3,1,1',4,2);
CALL CreateInspection (86,'15-09-24',2,8,3,2,0,'3,1','3,3,0,0',1,1);
CALL CreateInspection (91,'15-01-19',2,2,2,2,1,'1,2','1,2,1,0',3,1);
CALL CreateInspection (99,'15-04-26',3,6,3,3,1,'3,1','3,3,0,1',3,4);
CALL CreateInspection (99,'15-02-27',4,5,1,2,0,'1,1','2,3,1,1',1,4);
CALL CreateInspection (94,'15-09-01',2,11,1,3,0,'1,1','3,3,0,0',3,3);
CALL CreateInspection (90,'15-10-18',2,4,3,1,1,'1,1','3,2,0,0',3,3);
CALL CreateInspection (98,'15-09-17',4,4,3,1,1,'2,1','3,2,0,0',3,2);
CALL CreateInspection (93,'15-08-21',5,6,2,1,1,'1,2','3,3,0,1',2,2);
CALL CreateInspection (91,'15-01-20',1,2,4,2,0,'1,2','2,1,1,1',3,2);
CALL CreateInspection (94,'15-09-29',5,6,4,1,0,'2,1','2,2,0,1',4,1);
CALL CreateInspection (92,'14-12-17',2,7,1,1,1,'3,3','1,1,1,0',3,4);
CALL CreateInspection (99,'15-01-07',2,12,2,1,'1,1','2,1,2,1',0,1,2);
CALL CreateInspection (93,'14-12-15',5,3,1,1,0,'2,2','1,2,0,0',4,2);
CALL CreateInspection (103,'15-09-30',2,7,3,1,1,'3,3','3,1,0,0',3,4);
CALL CreateInspection (89,'15-05-22',3,6,2,1,1,'2,2','1,2,1,0',2,4);
CALL CreateInspection (93,'15-10-30',4,1,4,1,1,'1,3','3,1,1,1',1,3);
CALL CreateInspection (97,'14-11-15',4,1,1,3,1,'2,2','2,3,1,1',2,2);
CALL CreateInspection (99,'14-11-10',2,1,3,1,1,'1,1','2,2,1,1',4,3);
CALL CreateInspection (92,'15-10-02',2,1,2,2,0,'2,3','2,2,1,0',1,1);
CALL CreateInspection (103,'15-01-15',1,1,3,1,0,'3,2','3,3,1,0',3,2);
CALL CreateInspection (99,'15-04-18',2,9,2,2,0,'1,3','2,3,0,1',1,4);
CALL CreateInspection (104,'15-04-16',4,7,3,3,1,'3,3','2,2,1,0',1,3);
CALL CreateInspection (84,'15-05-27',2,7,3,1,0,'2,1','3,1,0,1',3,1);
CALL CreateInspection (90,'14-12-12',3,10,3,3,1,'1,1','1,2,0,1',2,2);
CALL CreateInspection (103,'15-06-12',3,3,1,3,1,'3,1','1,1,0,1',4,4);
CALL CreateInspection (93,'15-01-14',3,4,1,2,0,'3,2','3,1,0,0',2,4);
CALL CreateInspection (91,'15-08-16',2,5,4,3,0,'1,3','2,3,0,0',2,2);
CALL CreateInspection (93,'15-05-18',4,1,1,2,0,'3,3','2,1,1,0',1,4);
CALL CreateInspection (88,'15-09-25',1,6,3,2,0,'3,1','1,3,0,1',1,1);
CALL CreateInspection (90,'15-05-31',2,12,4,3,'0,2','3,2,2,1',0,4,2);
CALL CreateInspection (88,'15-05-12',1,12,3,1,0,'2,2','1,3,0,0',3,4);
CALL CreateInspection (90,'14-11-23',3,1,2,3,0,'2,2','1,2,0,0',1,1);
CALL CreateInspection (86,'15-10-11',2,5,2,2,1,'1,1','1,1,1,1',2,3);
CALL CreateInspection (98,'15-09-18',2,5,3,3,1,'1,2','2,1,1,0',2,2);
CALL CreateInspection (97,'15-01-29',3,2,2,3,1,'1,3','1,1,0,0',3,2);
CALL CreateInspection (93,'15-08-28',3,8,3,1,0,'3,3','1,2,0,0',1,1);
CALL CreateInspection (101,'15-02-11',3,9,3,2,0,'2,1','1,3,0,1',3,4);
CALL CreateInspection (91,'15-07-30',1,8,2,2,1,'1,1','3,3,1,0',1,1);
CALL CreateInspection (103,'15-05-21',5,5,4,2,0,'2,3','2,3,0,0',2,4);
CALL CreateInspection (89,'15-10-24',5,7,1,3,0,'1,1','2,1,0,1',3,1);
CALL CreateInspection (96,'15-07-08',2,9,3,3,0,'3,2','2,3,1,1',1,4);
CALL CreateInspection (91,'15-09-10',3,12,2,2,0,'1,2','2,2,0,1',3,4);
CALL CreateInspection (94,'15-05-19',2,9,2,3,0,'1,2','3,2,0,0',1,3);
CALL CreateInspection (99,'14-12-27',2,11,1,1,0,'2,3','1,1,1,0',1,1);
CALL CreateInspection (97,'15-01-30',3,4,1,1,0,'3,1','1,1,0,1',2,2);
CALL CreateInspection (86,'15-07-11',1,8,3,1,0,'1,1','1,1,0,1',2,3);
CALL CreateInspection (90,'15-04-10',2,11,2,3,1,'2,3','2,1,1,1',1,4);
CALL CreateInspection (94,'15-04-28',4,6,2,3,1,'2,1','3,2,1,1',2,3);
CALL CreateInspection (93,'15-04-25',3,5,2,1,1,'1,2','1,2,0,1',3,4);
CALL CreateInspection (87,'15-09-04',5,10,3,1,0,'2,2','1,1,0,1',4,4);
CALL CreateInspection (102,'15-04-20',2,5,2,2,1,'2,3','2,1,0,0',4,2);
CALL CreateInspection (90,'15-08-09',1,9,4,2,0,'3,2','1,2,1,1',4,1);
CALL CreateInspection (96,'15-10-04',5,12,3,1,0,'3,1','1,3,0,0',2,4);
CALL CreateInspection (85,'15-03-18',3,11,4,2,1,'2,1','1,2,0,0',4,3);
CALL CreateInspection (97,'15-02-27',1,9,2,3,0,'2,1','3,1,1,1',1,2);
CALL CreateInspection (90,'15-06-12',4,1,1,3,1,'2,2','2,2,0,1',2,1);
CALL CreateInspection (99,'15-03-12',3,9,2,1,1,'2,2','3,2,0,0',2,1);
CALL CreateInspection (103,'15-05-23',2,11,4,2,0,'3,2','2,1,1,1',1,2);
CALL CreateInspection (92,'15-06-11',4,1,3,1,0,'3,1','2,2,0,0',2,2);
CALL CreateInspection (94,'15-09-06',4,7,4,1,0,'1,1','2,1,0,0',2,2);
CALL CreateInspection (95,'15-11-06',5,11,3,3,0,'3,3','2,3,0,0',2,4);
CALL CreateInspection (92,'15-09-04',4,10,3,1,0,'1,1','2,3,1,1',1,4);
CALL CreateInspection (99,'14-11-15',5,3,4,2,1,'1,3','3,3,0,0',2,4);
CALL CreateInspection (101,'15-11-06',4,8,4,1,1,'3,1','1,3,0,0',1,1);
CALL CreateInspection (89,'14-12-20',2,1,3,3,0,'1,2','2,2,0,0',4,3);
CALL CreateInspection (86,'15-01-16',2,11,4,3,0,'1,1','1,3,0,0',1,4);
CALL CreateInspection (88,'15-04-04',2,11,4,3,0,'2,2','2,2,0,1',1,3);
CALL CreateInspection (96,'15-11-04',5,9,1,2,0,'2,1','1,2,0,0',1,1);
CALL CreateInspection (92,'14-11-30',2,9,3,2,0,'3,1','2,3,1,0',1,1);
CALL CreateInspection (89,'15-10-17',1,11,4,2,0,'1,2','2,1,1,0',3,3);
CALL CreateInspection (90,'15-05-08',2,11,1,3,0,'2,1','1,2,0,1',1,4);
CALL CreateInspection (89,'14-12-11',1,2,1,2,1,'3,3','3,3,0,1',4,2);
CALL CreateInspection (94,'15-01-25',4,11,1,2,1,'2,3','2,3,0,0',4,1);
CALL CreateInspection (92,'15-08-26',4,11,4,3,0,'2,1','2,1,1,1',3,1);
CALL CreateInspection (101,'15-05-20',3,3,4,2,0,'1,1','1,1,1,1',1,2);
CALL CreateInspection (98,'15-06-21',3,5,2,2,1,'1,1','1,3,0,1',2,3);
CALL CreateInspection (99,'15-08-08',4,7,4,3,0,'2,2','3,1,0,1',4,1);
CALL CreateInspection (99,'15-01-20',1,6,1,2,1,'1,1','1,3,0,0',2,4);
CALL CreateInspection (94,'15-06-14',4,10,3,3,0,'3,1','2,2,1,0',2,1);
CALL CreateInspection (88,'15-04-07',2,11,2,3,0,'3,3','2,2,1,1',2,2);
CALL CreateInspection (88,'15-04-22',4,12,4,2,0,'1,3','3,1,1,0',1,1);
CALL CreateInspection (96,'15-01-19',2,11,1,3,1,'1,3','3,1,1,1',1,2);
CALL CreateInspection (87,'15-07-08',2,2,4,3,1,'1,1','2,2,0,1',4,4);
CALL CreateInspection (95,'15-03-20',4,8,1,1,1,'2,2','2,1,1,1',2,4);
CALL CreateInspection (102,'15-05-29',3,7,4,2,0,'3,2','2,3,0,0',4,2);
CALL CreateInspection (98,'14-11-19',4,6,4,1,0,'3,3','3,1,1,1',1,1);
CALL CreateInspection (101,'15-04-06',4,5,1,3,1,'2,3','3,2,1,0',2,3);
CALL CreateInspection (102,'15-04-05',4,7,2,2,0,'1,3','2,1,0,0',2,1);
CALL CreateInspection (87,'15-05-01',3,5,1,3,0,'2,1','1,2,1,0',1,1);
CALL CreateInspection (91,'15-07-05',2,2,3,3,0,'3,3','2,2,0,1',2,1);
CALL CreateInspection (102,'15-05-15',4,9,3,2,0,'3,3','3,1,0,1',3,1);
CALL CreateInspection (101,'15-06-07',2,1,1,1,0,'2,3','1,1,1,1',1,2);
CALL CreateInspection (85,'15-07-21',5,6,3,2,1,'2,2','3,1,0,0',2,3);
CALL CreateInspection (87,'15-01-27',5,3,4,2,0,'3,3','2,1,0,0',1,3);
CALL CreateInspection (104,'15-02-04',4,9,2,1,1,'2,3','3,2,0,1',1,1);


CALL CreateHarvest (103,'15-07-24',159,0,1,1,43);
CALL CreateHarvest (102,'15-10-21',68,0,1,0,78);
CALL CreateHarvest (103,'15-11-04',108,1,1,0,78);
CALL CreateHarvest (84,'15-03-06',128,0,1,1,48);
CALL CreateHarvest (94,'14-12-16',94,1,0,0,56);
CALL CreateHarvest (104,'15-04-15',103,0,0,0,65);
CALL CreateHarvest (101,'15-01-02',57,0,0,0,45);
CALL CreateHarvest (96,'15-11-03',196,0,1,1,78);
CALL CreateHarvest (85,'15-07-03',103,1,1,0,54);
CALL CreateHarvest (95,'15-04-05',164,1,0,0,58);
CALL CreateHarvest (101,'15-06-19',109,0,0,1,67);
CALL CreateHarvest (101,'15-03-09',177,1,1,0,64);
CALL CreateHarvest (99,'15-10-15',147,0,1,1,42);
CALL CreateHarvest (100,'14-12-23',172,1,0,0,34);
CALL CreateHarvest (88,'15-05-19',94,0,1,1,70);
CALL CreateHarvest (90,'15-09-19',139,0,1,0,36);
CALL CreateHarvest (102,'15-09-08',150,1,1,1,61);
CALL CreateHarvest (101,'14-12-03',113,1,0,1,58);
CALL CreateHarvest (99,'15-07-05',66,1,1,1,36);
CALL CreateHarvest (95,'15-06-02',194,1,1,0,56);
CALL CreateHarvest (92,'15-10-20',107,0,1,0,43);
CALL CreateHarvest (86,'15-06-26',91,0,1,1,31);
CALL CreateHarvest (99,'15-06-26',137,0,0,0,67);
CALL CreateHarvest (104,'15-09-30',76,0,1,0,36);
CALL CreateHarvest (94,'15-04-19',109,1,0,0,37);
CALL CreateHarvest (87,'15-04-20',128,0,1,1,32);
CALL CreateHarvest (93,'15-06-21',63,0,0,1,67);
CALL CreateHarvest (89,'15-09-13',58,0,1,0,34);
CALL CreateHarvest (103,'15-05-02',124,1,1,1,51);
CALL CreateHarvest (90,'14-12-25',170,1,0,0,60);
CALL CreateHarvest (96,'15-07-22',192,1,0,0,68);
CALL CreateHarvest (92,'15-09-14',117,0,1,1,42);
CALL CreateHarvest (104,'15-04-24',187,1,1,1,54);
CALL CreateHarvest (94,'15-01-11',105,1,1,1,68);
CALL CreateHarvest (93,'15-09-21',172,0,1,1,72);
CALL CreateHarvest (98,'15-05-12',76,0,0,1,48);
CALL CreateHarvest (92,'15-01-12',198,1,0,0,68);
CALL CreateHarvest (88,'15-01-17',159,0,1,1,32);
CALL CreateHarvest (96,'15-07-16',172,1,0,0,58);
CALL CreateHarvest (96,'14-12-13',113,0,0,0,70);
CALL CreateHarvest (94,'14-12-02',191,1,0,1,49);
CALL CreateHarvest (104,'15-07-03',119,1,1,1,42);
CALL CreateHarvest (103,'15-08-07',198,1,0,1,65);
CALL CreateHarvest (91,'15-10-05',87,0,0,1,72);
CALL CreateHarvest (98,'15-08-26',127,0,0,0,47);
CALL CreateHarvest (102,'15-07-21',181,1,0,1,38);
CALL CreateHarvest (101,'15-04-27',53,0,1,1,71);
CALL CreateHarvest (101,'15-09-29',130,1,0,1,70);
CALL CreateHarvest (90,'15-05-10',124,0,1,0,58);
CALL CreateHarvest (93,'15-02-15',175,0,0,0,77);
CALL CreateHarvest (87,'15-03-13',145,1,0,1,73);
CALL CreateHarvest (99,'15-06-09',192,0,1,1,35);
CALL CreateHarvest (90,'15-04-09',77,0,1,0,68);
CALL CreateHarvest (89,'15-07-02',152,1,0,1,61);
CALL CreateHarvest (104,'15-09-25',185,1,1,1,76);
CALL CreateHarvest (97,'15-07-08',95,1,0,1,32);
CALL CreateHarvest (101,'15-02-01',194,0,0,1,63);
CALL CreateHarvest (98,'15-06-10',165,1,1,0,68);
CALL CreateHarvest (86,'15-06-09',163,1,1,1,68);
CALL CreateHarvest (90,'15-07-14',174,1,1,0,50);
CALL CreateHarvest (89,'15-02-26',181,0,0,1,68);
CALL CreateHarvest (104,'15-03-05',113,1,1,1,36);
CALL CreateHarvest (95,'15-03-14',105,1,1,1,57);
CALL CreateHarvest (84,'15-06-17',64,1,0,1,61);
CALL CreateHarvest (87,'15-05-07',69,0,1,1,70);
CALL CreateHarvest (103,'15-02-03',115,1,0,0,72);
CALL CreateHarvest (86,'15-06-14',181,1,1,1,76);
CALL CreateHarvest (89,'15-05-24',129,1,0,0,70);
CALL CreateHarvest (95,'15-05-15',146,1,0,0,73);
CALL CreateHarvest (102,'15-09-11',131,0,0,0,70);
CALL CreateHarvest (100,'14-12-10',179,1,0,1,50);
CALL CreateHarvest (102,'15-09-18',134,0,0,0,40);
CALL CreateHarvest (101,'15-10-29',193,0,0,0,73);
CALL CreateHarvest (102,'15-04-30',199,1,0,0,38);
CALL CreateHarvest (90,'15-01-01',52,0,0,0,49);
CALL CreateHarvest (97,'15-04-17',122,1,0,1,44);
CALL CreateHarvest (99,'15-06-03',146,0,0,0,59);
CALL CreateHarvest (86,'15-08-04',161,1,0,1,69);
CALL CreateHarvest (84,'15-02-01',127,0,1,1,52);
CALL CreateHarvest (84,'14-11-13',136,1,1,1,75);
CALL CreateHarvest (88,'15-06-14',80,0,1,1,71);
CALL CreateHarvest (87,'15-05-30',64,0,0,0,47);
CALL CreateHarvest (90,'15-08-14',170,0,1,1,75);
CALL CreateHarvest (102,'15-01-14',68,0,1,0,44);
CALL CreateHarvest (84,'15-05-18',138,0,0,1,57);
CALL CreateHarvest (84,'14-11-10',168,0,0,1,66);
CALL CreateHarvest (98,'15-10-20',137,0,1,1,72);
CALL CreateHarvest (102,'15-06-27',124,0,0,1,60);
CALL CreateHarvest (88,'15-10-27',165,0,1,1,73);
CALL CreateHarvest (84,'15-05-12',78,1,1,0,74);
CALL CreateHarvest (84,'15-08-13',160,0,1,0,39);
CALL CreateHarvest (90,'14-12-18',140,1,1,0,78);
CALL CreateHarvest (102,'15-07-26',102,1,0,1,41);
CALL CreateHarvest (95,'15-03-14',184,0,1,0,64);
CALL CreateHarvest (97,'15-05-03',86,1,1,0,72);
CALL CreateHarvest (93,'15-05-01',151,0,1,0,59);
CALL CreateHarvest (88,'15-05-25',93,1,1,0,67);
CALL CreateHarvest (92,'14-12-05',170,1,1,0,43);
CALL CreateHarvest (98,'15-01-20',129,0,0,1,32);
CALL CreateHarvest (90,'15-07-01',96,1,1,0,75);

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
select * from HiveTemperDict
select * from HiveCondDict
select * from BeeToolsCondDict
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


select PictureName from Hive