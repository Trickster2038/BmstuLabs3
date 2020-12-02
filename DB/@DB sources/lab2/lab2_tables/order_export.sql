--------------------------------------------------------
--  File created - �������-������-28-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table Order
--------------------------------------------------------

  CREATE TABLE "LAB2_USER"."Order" 
   (	"ORDER_ID" NUMBER, 
	"CLIENT" NUMBER, 
	"ORDER_DATE" DATE, 
	"DIRECTFLIGHTDAY" DATE, 
	"BACKFLIGHTDATE" DATE, 
	"ARRIVECITY" NUMBER, 
	"DEPARTCITY" NUMBER, 
	"DIRECTROUTE" CHAR(20 BYTE), 
	"BACKROUTE" CHAR(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into LAB2_USER."Order"
SET DEFINE OFF;
Insert into LAB2_USER."Order" (ORDER_ID,CLIENT,ORDER_DATE,DIRECTFLIGHTDAY,BACKFLIGHTDATE,ARRIVECITY,DEPARTCITY,DIRECTROUTE,BACKROUTE) values ('1','4',to_date('11.11.17','DD.MM.RR'),to_date('12.11.17','DD.MM.RR'),to_date('16.11.17','DD.MM.RR'),'4','5','f1                  ','g54                 ');
Insert into LAB2_USER."Order" (ORDER_ID,CLIENT,ORDER_DATE,DIRECTFLIGHTDAY,BACKFLIGHTDATE,ARRIVECITY,DEPARTCITY,DIRECTROUTE,BACKROUTE) values ('2','3',to_date('12.11.17','DD.MM.RR'),to_date('15.11.17','DD.MM.RR'),to_date('18.11.17','DD.MM.RR'),'5','6','gh5                 ','gj2                 ');
Insert into LAB2_USER."Order" (ORDER_ID,CLIENT,ORDER_DATE,DIRECTFLIGHTDAY,BACKFLIGHTDATE,ARRIVECITY,DEPARTCITY,DIRECTROUTE,BACKROUTE) values ('3','1',to_date('15.07.18','DD.MM.RR'),to_date('19.07.18','DD.MM.RR'),to_date('25.11.18','DD.MM.RR'),'8','2','f5                  ','hb5                 ');
Insert into LAB2_USER."Order" (ORDER_ID,CLIENT,ORDER_DATE,DIRECTFLIGHTDAY,BACKFLIGHTDATE,ARRIVECITY,DEPARTCITY,DIRECTROUTE,BACKROUTE) values ('4','2',to_date('09.01.18','DD.MM.RR'),to_date('21.01.18','DD.MM.RR'),to_date('29.01.18','DD.MM.RR'),'2','4','vg4                 ','sc1                 ');
Insert into LAB2_USER."Order" (ORDER_ID,CLIENT,ORDER_DATE,DIRECTFLIGHTDAY,BACKFLIGHTDATE,ARRIVECITY,DEPARTCITY,DIRECTROUTE,BACKROUTE) values ('5','3',to_date('01.02.20','DD.MM.RR'),to_date('03.02.20','DD.MM.RR'),to_date('05.02.20','DD.MM.RR'),'5','1','b5                  ','hg5                 ');
Insert into LAB2_USER."Order" (ORDER_ID,CLIENT,ORDER_DATE,DIRECTFLIGHTDAY,BACKFLIGHTDATE,ARRIVECITY,DEPARTCITY,DIRECTROUTE,BACKROUTE) values ('6','13',to_date('04.04.20','DD.MM.RR'),to_date('08.04.20','DD.MM.RR'),to_date('15.04.20','DD.MM.RR'),'9','5','jn4                 ','lm4                 ');
Insert into LAB2_USER."Order" (ORDER_ID,CLIENT,ORDER_DATE,DIRECTFLIGHTDAY,BACKFLIGHTDATE,ARRIVECITY,DEPARTCITY,DIRECTROUTE,BACKROUTE) values ('7','14',to_date('03.04.20','DD.MM.RR'),to_date('05.04.20','DD.MM.RR'),to_date('10.04.20','DD.MM.RR'),'4','2','jn3                 ','jb2                 ');
Insert into LAB2_USER."Order" (ORDER_ID,CLIENT,ORDER_DATE,DIRECTFLIGHTDAY,BACKFLIGHTDATE,ARRIVECITY,DEPARTCITY,DIRECTROUTE,BACKROUTE) values ('8','5',to_date('08.04.20','DD.MM.RR'),to_date('11.04.20','DD.MM.RR'),to_date('15.04.20','DD.MM.RR'),'6','14','1fr2                ','rf4                 ');
Insert into LAB2_USER."Order" (ORDER_ID,CLIENT,ORDER_DATE,DIRECTFLIGHTDAY,BACKFLIGHTDATE,ARRIVECITY,DEPARTCITY,DIRECTROUTE,BACKROUTE) values ('9','7',to_date('13.11.19','DD.MM.RR'),to_date('17.11.19','DD.MM.RR'),to_date('21.11.19','DD.MM.RR'),'4','2','rg5                 ','sx4                 ');
Insert into LAB2_USER."Order" (ORDER_ID,CLIENT,ORDER_DATE,DIRECTFLIGHTDAY,BACKFLIGHTDATE,ARRIVECITY,DEPARTCITY,DIRECTROUTE,BACKROUTE) values ('10','5',to_date('02.02.19','DD.MM.RR'),to_date('08.02.19','DD.MM.RR'),to_date('14.02.19','DD.MM.RR'),'11','12','b2                  ','vg4                 ');
Insert into LAB2_USER."Order" (ORDER_ID,CLIENT,ORDER_DATE,DIRECTFLIGHTDAY,BACKFLIGHTDATE,ARRIVECITY,DEPARTCITY,DIRECTROUTE,BACKROUTE) values ('11','12',to_date('04.05.19','DD.MM.RR'),to_date('09.05.19','DD.MM.RR'),to_date('14.05.19','DD.MM.RR'),'15','8','hj4                 ','rv4                 ');
Insert into LAB2_USER."Order" (ORDER_ID,CLIENT,ORDER_DATE,DIRECTFLIGHTDAY,BACKFLIGHTDATE,ARRIVECITY,DEPARTCITY,DIRECTROUTE,BACKROUTE) values ('12','9',to_date('09.06.19','DD.MM.RR'),to_date('13.06.19','DD.MM.RR'),to_date('17.06.19','DD.MM.RR'),'13','2','gh6                 ','bn4                 ');
Insert into LAB2_USER."Order" (ORDER_ID,CLIENT,ORDER_DATE,DIRECTFLIGHTDAY,BACKFLIGHTDATE,ARRIVECITY,DEPARTCITY,DIRECTROUTE,BACKROUTE) values ('13','11',to_date('29.05.19','DD.MM.RR'),to_date('01.06.19','DD.MM.RR'),to_date('05.06.19','DD.MM.RR'),'2','11','gb4                 ','fd2                 ');
Insert into LAB2_USER."Order" (ORDER_ID,CLIENT,ORDER_DATE,DIRECTFLIGHTDAY,BACKFLIGHTDATE,ARRIVECITY,DEPARTCITY,DIRECTROUTE,BACKROUTE) values ('14','2',to_date('02.03.19','DD.MM.RR'),to_date('13.03.19','DD.MM.RR'),to_date('17.03.19','DD.MM.RR'),'19','17','efg                 ','gd3                 ');
Insert into LAB2_USER."Order" (ORDER_ID,CLIENT,ORDER_DATE,DIRECTFLIGHTDAY,BACKFLIGHTDATE,ARRIVECITY,DEPARTCITY,DIRECTROUTE,BACKROUTE) values ('15','17',to_date('11.11.19','DD.MM.RR'),to_date('13.11.19','DD.MM.RR'),to_date('17.11.19','DD.MM.RR'),'18','11','fv4                 ','fx2                 ');
--------------------------------------------------------
--  DDL for Index ORDER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LAB2_USER"."ORDER_PK" ON "LAB2_USER"."Order" ("ORDER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table Order
--------------------------------------------------------

  ALTER TABLE "LAB2_USER"."Order" ADD CONSTRAINT "NOT_SAME_CITIES" CHECK (ARRIVECITY <> DEPARTCITY) ENABLE;
  ALTER TABLE "LAB2_USER"."Order" ADD CONSTRAINT "ORDER_DATE" CHECK (ORDER_DATE < DIRECTFLIGHTDAY) ENABLE;
  ALTER TABLE "LAB2_USER"."Order" ADD CONSTRAINT "ORDER_PK" PRIMARY KEY ("ORDER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "LAB2_USER"."Order" MODIFY ("BACKROUTE" NOT NULL ENABLE);
  ALTER TABLE "LAB2_USER"."Order" MODIFY ("DIRECTROUTE" NOT NULL ENABLE);
  ALTER TABLE "LAB2_USER"."Order" MODIFY ("DEPARTCITY" NOT NULL ENABLE);
  ALTER TABLE "LAB2_USER"."Order" MODIFY ("ARRIVECITY" NOT NULL ENABLE);
  ALTER TABLE "LAB2_USER"."Order" MODIFY ("CLIENT" NOT NULL ENABLE);
  ALTER TABLE "LAB2_USER"."Order" MODIFY ("ORDER_ID" NOT NULL ENABLE);
  ALTER TABLE "LAB2_USER"."Order" ADD CONSTRAINT "FLIGHTS_DATES" CHECK (DIRECTFLIGHTDAY <= BACKFLIGHTDATE) ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table Order
--------------------------------------------------------

  ALTER TABLE "LAB2_USER"."Order" ADD CONSTRAINT "ORDER_CITY_FK" FOREIGN KEY ("ARRIVECITY")
	  REFERENCES "LAB2_USER"."CITY" ("CITY_ID") ENABLE;
  ALTER TABLE "LAB2_USER"."Order" ADD CONSTRAINT "ORDER_CITY_FKV2" FOREIGN KEY ("DEPARTCITY")
	  REFERENCES "LAB2_USER"."CITY" ("CITY_ID") ENABLE;
  ALTER TABLE "LAB2_USER"."Order" ADD CONSTRAINT "ORDER_CLIENT_FK" FOREIGN KEY ("CLIENT")
	  REFERENCES "LAB2_USER"."CLIENT" ("CLIENT_ID") ENABLE;