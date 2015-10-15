DROP PROCEDURE IF EXISTS `balance_for_object`;
DELIMITER ;;
CREATE PROCEDURE `balance_for_object`(IN object_name VARCHAR(50))
BEGIN
SELECT  name, price - spending AS balance FROM objects WHERE name = object_name; END ;;
DELIMITER ;


DROP PROCEDURE IF EXISTS `TEST_VIEWS`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `TEST_VIEWS`()
Begin
DECLARE total int;
DECLARE i int;
DECLARE temp varchar (64);
SET i=0;
SELECT count(*) INTO total FROM  information_schema.views where TABLE_SCHEMA='pbdsis';
WHILE (i<total) DO
SET temp="";
SELECT TABLE_NAME INTO temp FROM information_schema.views limit i,1;
SET i=i+1;
SET @Query=CONCAT("select if((select count(*) from ", temp,")>0 and (select count(*) from ", temp,")!=NULL,'true','false') as ",temp);
PREPARE Query FROM @Query;
EXECUTE Query;
DEALLOCATE PREPARE Query;
END WHILE;
END ;;
DELIMITER ;
