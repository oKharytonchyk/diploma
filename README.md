# diploma
20 05 19

If DB connection is down try to create new UNIQUE user ledoffsky2 with giving him some priveleges;
AND change user in ALL places in code, where we are connecting to some DB

CREATE USER ledoffsky2 IDENTIFIED BY Password1;

GRANT ALL PRIVILEGES TO ledoffsky2 IDENTIFIED BY Password1;
