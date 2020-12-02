-- Generated by Oracle SQL Developer Data Modeler 20.2.0.167.1538
--   at:        2020-10-01 17:56:29 MSK
--   site:      Oracle Database 11g
--   type:      Oracle Database 11g



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE airport (
    airport_id  NUMBER NOT NULL,
    city_id     NUMBER NOT NULL,
    name        CHAR 
--  WARNING: CHAR size not specified 
                    
    );

ALTER TABLE airport ADD CONSTRAINT airport_pk PRIMARY KEY ( airport_id );

CREATE TABLE city (
    city_id   NUMBER NOT NULL,
    cityname  CHAR 
--  WARNING: CHAR size not specified 
    ,
    country   CHAR 
--  WARNING: CHAR size not specified 
                    
    );

ALTER TABLE city ADD CONSTRAINT city_pk PRIMARY KEY ( city_id );

CREATE TABLE client (
    client_id  NUMBER NOT NULL,
    surname    CHAR 
--  WARNING: CHAR size not specified 
     NOT NULL,
    name       CHAR 
--  WARNING: CHAR size not specified 
     NOT NULL,
    thirdname  CHAR 
--  WARNING: CHAR size not specified 
     NOT NULL,
    doctype    CHAR 
--  WARNING: CHAR size not specified 
     NOT NULL,
    docnum     NUMBER NOT NULL,
    phone      NUMBER NOT NULL,
    post       CHAR 
--  WARNING: CHAR size not specified 
                    
    );

ALTER TABLE client ADD CONSTRAINT client_pk PRIMARY KEY ( client_id );

CREATE TABLE flight (
    flight_id           NUMBER NOT NULL,
    transporter_id      NUMBER NOT NULL,
    departuretime       DATE,
    arrivetime          DATE,
    airportdep          NUMBER NOT NULL,
    airportarr          NUMBER NOT NULL,
    international_code  CHAR 
--  WARNING: CHAR size not specified 
                    
    );

ALTER TABLE flight ADD CONSTRAINT flight_pk PRIMARY KEY ( flight_id );

CREATE TABLE "Order" (
    order_id         NUMBER NOT NULL,
    client           NUMBER NOT NULL,
    order_date       DATE,
    directflightday  DATE,
    backflightdate   DATE,
    arrivecity       NUMBER NOT NULL,
    departcity       NUMBER NOT NULL,
    directroute      CHAR 
--  WARNING: CHAR size not specified 
     NOT NULL,
    backroute        CHAR 
--  WARNING: CHAR size not specified 
     NOT NULL
);

ALTER TABLE "Order" ADD CONSTRAINT order_pk PRIMARY KEY ( order_id );

CREATE TABLE route (
    route_id  NUMBER NOT NULL,
    route     CHAR 
--  WARNING: CHAR size not specified 
    ,
    flight    NUMBER NOT NULL,
    order_id  NUMBER NOT NULL
);

ALTER TABLE route ADD CONSTRAINT route_pk PRIMARY KEY ( route_id );

CREATE TABLE transporter (
    transporter_id      NUMBER NOT NULL,
    transporter_name    CHAR 
--  WARNING: CHAR size not specified 
    ,
    internetional_code  CHAR 
--  WARNING: CHAR size not specified 
     NOT NULL
);

ALTER TABLE transporter ADD CONSTRAINT transporter_pk PRIMARY KEY ( transporter_id );

ALTER TABLE airport
    ADD CONSTRAINT airport_city_fk FOREIGN KEY ( city_id )
        REFERENCES city ( city_id );

ALTER TABLE flight
    ADD CONSTRAINT flight_airport_fk FOREIGN KEY ( airportdep )
        REFERENCES airport ( airport_id );

ALTER TABLE flight
    ADD CONSTRAINT flight_airport_fkv2 FOREIGN KEY ( airportarr )
        REFERENCES airport ( airport_id );

ALTER TABLE flight
    ADD CONSTRAINT flight_transporter_fk FOREIGN KEY ( transporter_id )
        REFERENCES transporter ( transporter_id );

ALTER TABLE "Order"
    ADD CONSTRAINT order_city_fk FOREIGN KEY ( arrivecity )
        REFERENCES city ( city_id );

ALTER TABLE "Order"
    ADD CONSTRAINT order_city_fkv2 FOREIGN KEY ( departcity )
        REFERENCES city ( city_id );

ALTER TABLE "Order"
    ADD CONSTRAINT order_client_fk FOREIGN KEY ( client )
        REFERENCES client ( client_id );

ALTER TABLE route
    ADD CONSTRAINT route_flight_fk FOREIGN KEY ( flight )
        REFERENCES flight ( flight_id );

ALTER TABLE route
    ADD CONSTRAINT route_order_fk FOREIGN KEY ( order_id )
        REFERENCES "Order" ( order_id );



-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                             7
-- CREATE INDEX                             0
-- ALTER TABLE                             16
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                14