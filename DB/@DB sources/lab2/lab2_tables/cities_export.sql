--------------------------------------------------------
--  File created - среда-окт€бр€-28-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table CITY
--------------------------------------------------------

  CREATE TABLE "LAB2_USER"."CITY" 
   (	"CITY_ID" NUMBER, 
	"CITYNAME" CHAR(20 BYTE), 
	"COUNTRY" CHAR(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into LAB2_USER.CITY
SET DEFINE OFF;
Insert into LAB2_USER.CITY (CITY_ID,CITYNAME,COUNTRY) values ('1','Moscow              ','Russia              ');
Insert into LAB2_USER.CITY (CITY_ID,CITYNAME,COUNTRY) values ('2','St. Petesberg       ','Russia              ');
Insert into LAB2_USER.CITY (CITY_ID,CITYNAME,COUNTRY) values ('3','Kazan               ','Russia              ');
Insert into LAB2_USER.CITY (CITY_ID,CITYNAME,COUNTRY) values ('4','Vladivostok         ','Russia              ');
Insert into LAB2_USER.CITY (CITY_ID,CITYNAME,COUNTRY) values ('5','Paris               ','France              ');
Insert into LAB2_USER.CITY (CITY_ID,CITYNAME,COUNTRY) values ('6','New York            ','USA                 ');
Insert into LAB2_USER.CITY (CITY_ID,CITYNAME,COUNTRY) values ('7','Boston              ','USA                 ');
Insert into LAB2_USER.CITY (CITY_ID,CITYNAME,COUNTRY) values ('9','Los Angeles         ','USA                 ');
Insert into LAB2_USER.CITY (CITY_ID,CITYNAME,COUNTRY) values ('10','Las Vegas           ','USA                 ');
Insert into LAB2_USER.CITY (CITY_ID,CITYNAME,COUNTRY) values ('11','Bermingham          ','UK                  ');
Insert into LAB2_USER.CITY (CITY_ID,CITYNAME,COUNTRY) values ('12','London              ','UK                  ');
Insert into LAB2_USER.CITY (CITY_ID,CITYNAME,COUNTRY) values ('13','Bern                ','Switzland           ');
Insert into LAB2_USER.CITY (CITY_ID,CITYNAME,COUNTRY) values ('14','Berlin              ','Germany             ');
Insert into LAB2_USER.CITY (CITY_ID,CITYNAME,COUNTRY) values ('15','Kiev                ','Ukraine             ');
Insert into LAB2_USER.CITY (CITY_ID,CITYNAME,COUNTRY) values ('16','Estonia             ','Tallin              ');
Insert into LAB2_USER.CITY (CITY_ID,CITYNAME,COUNTRY) values ('17','Finland             ','Helsinki            ');
Insert into LAB2_USER.CITY (CITY_ID,CITYNAME,COUNTRY) values ('18','Rome                ','Italia              ');
Insert into LAB2_USER.CITY (CITY_ID,CITYNAME,COUNTRY) values ('19','Abu-Dabi            ','Emirates            ');
Insert into LAB2_USER.CITY (CITY_ID,CITYNAME,COUNTRY) values ('20','Deli                ','India               ');
Insert into LAB2_USER.CITY (CITY_ID,CITYNAME,COUNTRY) values ('8','Bagdad              ','Irak                ');
--------------------------------------------------------
--  DDL for Index CITY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LAB2_USER"."CITY_PK" ON "LAB2_USER"."CITY" ("CITY_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table CITY
--------------------------------------------------------

  ALTER TABLE "LAB2_USER"."CITY" ADD CONSTRAINT "CITY_PK" PRIMARY KEY ("CITY_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "LAB2_USER"."CITY" MODIFY ("CITY_ID" NOT NULL ENABLE);
