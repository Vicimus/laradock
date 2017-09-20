#
# Copy createdb.sql.example to createdb.sql
# then uncomment then set database name and username to create you need databases
#
# example: .env MYSQL_USER=appuser and need db name is myshop_db
#
#    CREATE DATABASE IF NOT EXISTS `myshop_db` ;
#    GRANT ALL ON `myshop_db`.* TO 'appuser'@'%' ;
#
#
# this sql script will auto run when the mysql container starts and the $DATA_SAVE_PATH/mysql not found.
#
# if your $DATA_SAVE_PATH/mysql exists and you do not want to delete it, you can run by manual execution:
#
#     docker-compose exec mysql bash
#     mysql -u root -p < /docker-entrypoint-initdb.d/createdb.sql
#

CREATE DATABASE IF NOT EXISTS `tasks` COLLATE 'utf8_general_ci' ;
GRANT ALL ON `tasks`.* TO 'default'@'%' ;

CREATE DATABASE IF NOT EXISTS `vault` COLLATE 'utf8_general_ci' ;
GRANT ALL ON `vault`.* TO 'default'@'%' ;

CREATE DATABASE IF NOT EXISTS `rms` COLLATE 'utf8_general_ci' ;
GRANT ALL ON `rms`.* TO 'default'@'%' ;

CREATE DATABASE IF NOT EXISTS `calendar` COLLATE 'utf8_general_ci' ;
GRANT ALL ON `calendar`.* TO 'default'@'%' ;

CREATE DATABASE IF NOT EXISTS `customer` COLLATE 'utf8_general_ci' ;
GRANT ALL ON `customer`.* TO 'default'@'%' ;

CREATE DATABASE IF NOT EXISTS `customer_test` COLLATE 'utf8_general_ci' ;
GRANT ALL ON `customer_test`.* TO 'default'@'%' ;

FLUSH PRIVILEGES ;
