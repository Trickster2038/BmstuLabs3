--------------------------------------------------------
--  File created - среда-окт€бр€-28-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table AIRPORT
--------------------------------------------------------

  CREATE TABLE "LAB2_USER"."AIRPORT" 
   (	"AIRPORT_ID" NUMBER, 
	"CITY_ID" NUMBER, 
	"NAME" CHAR(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into LAB2_USER.AIRPORT
SET DEFINE OFF;
Insert into LAB2_USER.AIRPORT (AIRPORT_ID,CITY_ID,NAME) values ('1','1','Vnukovo             ');
Insert into LAB2_USER.AIRPORT (AIRPORT_ID,CITY_ID,NAME) values ('2','1','Sheremetievo        ');
Insert into LAB2_USER.AIRPORT (AIRPORT_ID,CITY_ID,NAME) values ('3','9','LA airport          ');
Insert into LAB2_USER.AIRPORT (AIRPORT_ID,CITY_ID,NAME) values ('4','12','London airport      ');
Insert into LAB2_USER.AIRPORT (AIRPORT_ID,CITY_ID,NAME) values ('5','12','National UK airport ');
Insert into LAB2_USER.AIRPORT (AIRPORT_ID,CITY_ID,NAME) values ('6','5','Le Bourget airfield ');
Insert into LAB2_USER.AIRPORT (AIRPORT_ID,CITY_ID,NAME) values ('7','15','Kiev Airport        ');
Insert into LAB2_USER.AIRPORT (AIRPORT_ID,CITY_ID,NAME) values ('8','18','Rome Airport        ');
Insert into LAB2_USER.AIRPORT (AIRPORT_ID,CITY_ID,NAME) values ('9','20','Deli Airport        ');
Insert into LAB2_USER.AIRPORT (AIRPORT_ID,CITY_ID,NAME) values ('10','6','NY airfield         ');
Insert into LAB2_USER.AIRPORT (AIRPORT_ID,CITY_ID,NAME) values ('11','4','Dalnevost. airfiled ');
Insert into LAB2_USER.AIRPORT (AIRPORT_ID,CITY_ID,NAME) values ('12','14','Berlin airfield     ');
Insert into LAB2_USER.AIRPORT (AIRPORT_ID,CITY_ID,NAME) values ('13','11','Berminham airport   ');
Insert into LAB2_USER.AIRPORT (AIRPORT_ID,CITY_ID,NAME) values ('14','16','airgate of Esonia   ');
Insert into LAB2_USER.AIRPORT (AIRPORT_ID,CITY_ID,NAME) values ('15','18','Nat. Italian airport');
Insert into LAB2_USER.AIRPORT (AIRPORT_ID,CITY_ID,NAME) values ('16','15','Kiev airport        ');
Insert into LAB2_USER.AIRPORT (AIRPORT_ID,CITY_ID,NAME) values ('17','15','Nat. Ukrain airport ');
Insert into LAB2_USER.AIRPORT (AIRPORT_ID,CITY_ID,NAME) values ('18','13','Airport of Switzland');
Insert into LAB2_USER.AIRPORT (AIRPORT_ID,CITY_ID,NAME) values ('19','9','California airgate  ');
Insert into LAB2_USER.AIRPORT (AIRPORT_ID,CITY_ID,NAME) values ('20','7','East coast airgate  ');
Insert into LAB2_USER.AIRPORT (AIRPORT_ID,CITY_ID,NAME) values ('21','6','Central USA airport ');
Insert into LAB2_USER.AIRPORT (AIRPORT_ID,CITY_ID,NAME) values ('22','10','LV airport          ');
Insert into LAB2_USER.AIRPORT (AIRPORT_ID,CITY_ID,NAME) values ('23','3','Kazan airgate       ');
Insert into LAB2_USER.AIRPORT (AIRPORT_ID,CITY_ID,NAME) values ('24','2','North airgate       ');
Insert into LAB2_USER.AIRPORT (AIRPORT_ID,CITY_ID,NAME) values ('25','19','Airgate of Emirates ');
Insert into LAB2_USER.AIRPORT (AIRPORT_ID,CITY_ID,NAME) values ('26','8','Airgate of Irak     ');
Insert into LAB2_USER.AIRPORT (AIRPORT_ID,CITY_ID,NAME) values ('27','20','Deli airgate        ');
Insert into LAB2_USER.AIRPORT (AIRPORT_ID,CITY_ID,NAME) values ('28','20','Nat. Indian airfield');
Insert into LAB2_USER.AIRPORT (AIRPORT_ID,CITY_ID,NAME) values ('29','16','Tallin airfield     ');
Insert into LAB2_USER.AIRPORT (AIRPORT_ID,CITY_ID,NAME) values ('30','12','UK central airport  ');
--------------------------------------------------------
--  DDL for Index AIRPORT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LAB2_USER"."AIRPORT_PK" ON "LAB2_USER"."AIRPORT" ("AIRPORT_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table AIRPORT
--------------------------------------------------------

  ALTER TABLE "LAB2_USER"."AIRPORT" ADD CONSTRAINT "AIRPORT_PK" PRIMARY KEY ("AIRPORT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "LAB2_USER"."AIRPORT" MODIFY ("CITY_ID" NOT NULL ENABLE);
  ALTER TABLE "LAB2_USER"."AIRPORT" MODIFY ("AIRPORT_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table AIRPORT
--------------------------------------------------------

  ALTER TABLE "LAB2_USER"."AIRPORT" ADD CONSTRAINT "AIRPORT_CITY_FK" FOREIGN KEY ("CITY_ID")
	  REFERENCES "LAB2_USER"."CITY" ("CITY_ID") ENABLE;
