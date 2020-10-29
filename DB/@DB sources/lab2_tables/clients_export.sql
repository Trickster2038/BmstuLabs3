--------------------------------------------------------
--  File created - четверг-окт€бр€-29-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table CLIENT
--------------------------------------------------------

  CREATE TABLE "LAB2_USER"."CLIENT" 
   (	"CLIENT_ID" NUMBER, 
	"SURNAME" CHAR(20 BYTE), 
	"NAME" CHAR(20 BYTE), 
	"THIRDNAME" CHAR(20 BYTE), 
	"DOCTYPE" CHAR(20 BYTE), 
	"DOCNUM" NUMBER, 
	"PHONE" NUMBER, 
	"POST" CHAR(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into LAB2_USER.CLIENT
SET DEFINE OFF;
Insert into LAB2_USER.CLIENT (CLIENT_ID,SURNAME,NAME,THIRDNAME,DOCTYPE,DOCNUM,PHONE,POST) values ('1','Ivanov              ','Michail             ','Pavlovich           ','PASSPORT            ','123434','89055567890','123653                        ');
Insert into LAB2_USER.CLIENT (CLIENT_ID,SURNAME,NAME,THIRDNAME,DOCTYPE,DOCNUM,PHONE,POST) values ('2','Sidorov             ','Ivan                ','Dmitrievich         ','LICENSE             ','345765','89033345678','234329                        ');
Insert into LAB2_USER.CLIENT (CLIENT_ID,SURNAME,NAME,THIRDNAME,DOCTYPE,DOCNUM,PHONE,POST) values ('3','Uimen               ','Daniil              ','Petrovich           ','PASSPORT            ','387654','89064532123','234887                        ');
Insert into LAB2_USER.CLIENT (CLIENT_ID,SURNAME,NAME,THIRDNAME,DOCTYPE,DOCNUM,PHONE,POST) values ('4','Vershinina          ','Lana                ','Dmitrievna          ','PASSPORT            ','673890','56709872345','237645                        ');
Insert into LAB2_USER.CLIENT (CLIENT_ID,SURNAME,NAME,THIRDNAME,DOCTYPE,DOCNUM,PHONE,POST) values ('5','Petrov              ','Sergey              ','Victorovich         ','LICENSE             ','142098','89907654353','145328                        ');
Insert into LAB2_USER.CLIENT (CLIENT_ID,SURNAME,NAME,THIRDNAME,DOCTYPE,DOCNUM,PHONE,POST) values ('6','Ermolenko           ','Alexander           ','Sergeevich          ','PASSPORT            ','325678','89045673235','432589                        ');
Insert into LAB2_USER.CLIENT (CLIENT_ID,SURNAME,NAME,THIRDNAME,DOCTYPE,DOCNUM,PHONE,POST) values ('7','Petrenko            ','Stanislav           ','Lvovich             ','LICENSE             ','437890','89034587653','452095                        ');
Insert into LAB2_USER.CLIENT (CLIENT_ID,SURNAME,NAME,THIRDNAME,DOCTYPE,DOCNUM,PHONE,POST) values ('8','Lemm                ','Alexandra           ','Lvovna              ','PASSPORT            ','678321','89064389076','123098                        ');
Insert into LAB2_USER.CLIENT (CLIENT_ID,SURNAME,NAME,THIRDNAME,DOCTYPE,DOCNUM,PHONE,POST) values ('9','Grin                ','Pavel               ','Sergeevich          ','LICENSE             ','190876','64562094678','123409                        ');
Insert into LAB2_USER.CLIENT (CLIENT_ID,SURNAME,NAME,THIRDNAME,DOCTYPE,DOCNUM,PHONE,POST) values ('10','Glushko             ','Dmitry              ','Ivanovich           ','LICENSE             ','130987','89034982765','234098                        ');
Insert into LAB2_USER.CLIENT (CLIENT_ID,SURNAME,NAME,THIRDNAME,DOCTYPE,DOCNUM,PHONE,POST) values ('11','Makarov             ','Denis               ','Petrovich           ','PASSPORT            ','209345','89782346789','489096                        ');
Insert into LAB2_USER.CLIENT (CLIENT_ID,SURNAME,NAME,THIRDNAME,DOCTYPE,DOCNUM,PHONE,POST) values ('12','Dunaevski           ','Pavel               ','Petrovich           ','PASSPORT            ','203902','89034568300','232455                        ');
Insert into LAB2_USER.CLIENT (CLIENT_ID,SURNAME,NAME,THIRDNAME,DOCTYPE,DOCNUM,PHONE,POST) values ('13','Semenov             ','Daniil              ','Ivanovich           ','PASSPORT            ','305635','89345860908','299544                        ');
Insert into LAB2_USER.CLIENT (CLIENT_ID,SURNAME,NAME,THIRDNAME,DOCTYPE,DOCNUM,PHONE,POST) values ('14','Fedorenko           ','Daniil              ','Sergeevich          ','LICENSE             ','309789','89678367743','409876                        ');
Insert into LAB2_USER.CLIENT (CLIENT_ID,SURNAME,NAME,THIRDNAME,DOCTYPE,DOCNUM,PHONE,POST) values ('15','Yschenko            ','Petr                ','Konstantinovich     ','PASSPORT            ','459320','89367846578','709864                        ');
Insert into LAB2_USER.CLIENT (CLIENT_ID,SURNAME,NAME,THIRDNAME,DOCTYPE,DOCNUM,PHONE,POST) values ('16','Klimov              ','Yuriy               ','Pavlovich           ','PASSPORT            ','967893','89034783198','870987                        ');
Insert into LAB2_USER.CLIENT (CLIENT_ID,SURNAME,NAME,THIRDNAME,DOCTYPE,DOCNUM,PHONE,POST) values ('17','Pavlov              ','Konstantin          ','Andreevich          ','PASSPORT            ','982097','89046789678','789465                        ');
Insert into LAB2_USER.CLIENT (CLIENT_ID,SURNAME,NAME,THIRDNAME,DOCTYPE,DOCNUM,PHONE,POST) values ('18','Tushina             ','Elizaveta           ','Pavlovna            ','LICENSE             ','867908','89267675454','765908                        ');
Insert into LAB2_USER.CLIENT (CLIENT_ID,SURNAME,NAME,THIRDNAME,DOCTYPE,DOCNUM,PHONE,POST) values ('19','Pavlova             ','Victoria            ','Dmitrievna          ','LICENSE             ','890234','89023468876','765821                        ');
Insert into LAB2_USER.CLIENT (CLIENT_ID,SURNAME,NAME,THIRDNAME,DOCTYPE,DOCNUM,PHONE,POST) values ('20','Mosina              ','Evgenia             ','Dmitrievna          ','PASSPORT            ','678907','89466789876','765455                        ');
--------------------------------------------------------
--  DDL for Index CLIENT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LAB2_USER"."CLIENT_PK" ON "LAB2_USER"."CLIENT" ("CLIENT_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table CLIENT
--------------------------------------------------------

  ALTER TABLE "LAB2_USER"."CLIENT" ADD CONSTRAINT "PHONENUM" CHECK ((PHONE >= 10000000000) AND (PHONE < 100000000000)) ENABLE;
  ALTER TABLE "LAB2_USER"."CLIENT" ADD CONSTRAINT "DOCNUM" CHECK (DOCNUM >= 100000) ENABLE;
  ALTER TABLE "LAB2_USER"."CLIENT" ADD CONSTRAINT "DOCTYPE" CHECK (DOCTYPE IN ('PASSPORT', 'LICENSE')) ENABLE;
  ALTER TABLE "LAB2_USER"."CLIENT" ADD CONSTRAINT "CLIENT_PK" PRIMARY KEY ("CLIENT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "LAB2_USER"."CLIENT" MODIFY ("PHONE" NOT NULL ENABLE);
  ALTER TABLE "LAB2_USER"."CLIENT" MODIFY ("DOCNUM" NOT NULL ENABLE);
  ALTER TABLE "LAB2_USER"."CLIENT" MODIFY ("DOCTYPE" NOT NULL ENABLE);
  ALTER TABLE "LAB2_USER"."CLIENT" MODIFY ("THIRDNAME" NOT NULL ENABLE);
  ALTER TABLE "LAB2_USER"."CLIENT" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "LAB2_USER"."CLIENT" MODIFY ("SURNAME" NOT NULL ENABLE);
  ALTER TABLE "LAB2_USER"."CLIENT" MODIFY ("CLIENT_ID" NOT NULL ENABLE);
