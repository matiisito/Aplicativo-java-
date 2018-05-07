--------------------------------------------------------
-- Archivo creado  - lunes-noviembre-13-2017   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence OFERTAS_ID
--------------------------------------------------------

   CREATE SEQUENCE  "MO3"."OFERTAS_ID"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 52 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence PRODUCTOS_ID
--------------------------------------------------------

   CREATE SEQUENCE  "MO3"."PRODUCTOS_ID"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 24 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence USUARIOS_ID
--------------------------------------------------------

   CREATE SEQUENCE  "MO3"."USUARIOS_ID"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 51 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence VALORACIONES_ID
--------------------------------------------------------

   CREATE SEQUENCE  "MO3"."VALORACIONES_ID"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 90 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table CIUDAD
--------------------------------------------------------

  CREATE TABLE "MO3"."CIUDAD" 
   (	"ID_CIUDAD" NUMBER(*,0), 
	"CIUDAD" VARCHAR2(200 BYTE), 
	"ID_REGION" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table COMUNA
--------------------------------------------------------

  CREATE TABLE "MO3"."COMUNA" 
   (	"ID_COMUNA" NUMBER(*,0), 
	"COMUNA" VARCHAR2(200 BYTE), 
	"ID_CIUDAD" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table DESCUENTO
--------------------------------------------------------

  CREATE TABLE "MO3"."DESCUENTO" 
   (	"ID_DESCUENTO" NUMBER(*,0), 
	"PUNTOS" NUMBER(*,0), 
	"TOPE" NUMBER(*,0), 
	"ID_USUARIO" NUMBER(*,0), 
	"RUBRO" VARCHAR2(100 BYTE), 
	"DESCUENTO" NUMBER(38,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table EMPRESA
--------------------------------------------------------

  CREATE TABLE "MO3"."EMPRESA" 
   (	"ID_EMPRESA" NUMBER(*,0), 
	"RUT" NUMBER(*,0), 
	"DV" VARCHAR2(1 BYTE), 
	"GIRO_COMERCIAL" VARCHAR2(50 BYTE), 
	"NOMBRE_FANTASIA" VARCHAR2(50 BYTE), 
	"DIRECCION" VARCHAR2(200 BYTE), 
	"TELEFONO" VARCHAR2(50 BYTE), 
	"ID_REGION" NUMBER(*,0), 
	"ID_CIUDAD" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table NOTACUALITATIVA
--------------------------------------------------------

  CREATE TABLE "MO3"."NOTACUALITATIVA" 
   (	"ID_NOTA" NUMBER(*,0), 
	"NOTA" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table OFERTA
--------------------------------------------------------

  CREATE TABLE "MO3"."OFERTA" 
   (	"ID_OFERTA" NUMBER(*,0), 
	"PRECIO" NUMBER(*,0), 
	"PRECIO_OFERTA" NUMBER(*,0), 
	"ID_EMPRESA" NUMBER(*,0), 
	"ID_USUARIO" NUMBER(*,0), 
	"ID_PRODUCTO" NUMBER(*,0), 
	"ESTADO" CHAR(1 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PRODUCTO
--------------------------------------------------------

  CREATE TABLE "MO3"."PRODUCTO" 
   (	"ID_PRODUCTO" NUMBER(*,0), 
	"CODIGO" VARCHAR2(50 BYTE), 
	"NOMBRE_PRODUCTO" VARCHAR2(50 BYTE), 
	"ESPECIFICACION_TECNICA" VARCHAR2(4000 BYTE), 
	"IMAGEN_PRODUCTO" VARCHAR2(4000 BYTE), 
	"STOCK" NUMBER(*,0), 
	"ID_RUBRO" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table REGION
--------------------------------------------------------

  CREATE TABLE "MO3"."REGION" 
   (	"ID_REGION" NUMBER(*,0), 
	"REGION" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table ROL
--------------------------------------------------------

  CREATE TABLE "MO3"."ROL" 
   (	"ID_ROL" NUMBER(*,0), 
	"DESCRIPCION" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table RUBRO
--------------------------------------------------------

  CREATE TABLE "MO3"."RUBRO" 
   (	"ID_RUBRO" NUMBER(*,0), 
	"RUBRO" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table SUCURSAL
--------------------------------------------------------

  CREATE TABLE "MO3"."SUCURSAL" 
   (	"ID_SUCURSAL" NUMBER(*,0), 
	"NOMBRE_SUCURSAL" VARCHAR2(50 BYTE), 
	"ID_EMPRESA" NUMBER(*,0), 
	"ID_CIUDAD" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table USUARIO
--------------------------------------------------------

  CREATE TABLE "MO3"."USUARIO" 
   (	"ID_USUARIO" NUMBER(*,0), 
	"ID_EMPRESA" NUMBER(*,0), 
	"USUARIO" VARCHAR2(50 BYTE), 
	"CONTRASENA" VARCHAR2(50 BYTE), 
	"NOMBRE" VARCHAR2(50 BYTE), 
	"APELLIDO" VARCHAR2(50 BYTE), 
	"TELEFONO" NUMBER(*,0), 
	"ID_ROL" NUMBER(*,0), 
	"CORREO" VARCHAR2(200 BYTE), 
	"RUT" VARCHAR2(10 BYTE), 
	"ESTADO" CHAR(1 BYTE), 
	"PUNTOS" NUMBER(38,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table VALORACION
--------------------------------------------------------

  CREATE TABLE "MO3"."VALORACION" 
   (	"ID_VALORACION" NUMBER(*,0), 
	"BOLETA" VARCHAR2(200 BYTE), 
	"ID_NOTA" NUMBER(*,0), 
	"ID_USUARIO" NUMBER(*,0), 
	"COMENTARIO" VARCHAR2(38 BYTE), 
	"ID_OFERTA" NUMBER(30,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into MO3.CIUDAD
SET DEFINE OFF;
Insert into MO3.CIUDAD (ID_CIUDAD,CIUDAD,ID_REGION) values ('11','Iquique','1');
Insert into MO3.CIUDAD (ID_CIUDAD,CIUDAD,ID_REGION) values ('14','Tamarugal','1');
Insert into MO3.CIUDAD (ID_CIUDAD,CIUDAD,ID_REGION) values ('21','Antofagasta','2');
Insert into MO3.CIUDAD (ID_CIUDAD,CIUDAD,ID_REGION) values ('22','El Loa','2');
Insert into MO3.CIUDAD (ID_CIUDAD,CIUDAD,ID_REGION) values ('23','Tocopilla','2');
Insert into MO3.CIUDAD (ID_CIUDAD,CIUDAD,ID_REGION) values ('31','Copiapó','3');
Insert into MO3.CIUDAD (ID_CIUDAD,CIUDAD,ID_REGION) values ('32','Chañaral','3');
Insert into MO3.CIUDAD (ID_CIUDAD,CIUDAD,ID_REGION) values ('33','Huasco','3');
Insert into MO3.CIUDAD (ID_CIUDAD,CIUDAD,ID_REGION) values ('41','Elqui','4');
Insert into MO3.CIUDAD (ID_CIUDAD,CIUDAD,ID_REGION) values ('42','Choapa','4');
Insert into MO3.CIUDAD (ID_CIUDAD,CIUDAD,ID_REGION) values ('43','Limarí','4');
Insert into MO3.CIUDAD (ID_CIUDAD,CIUDAD,ID_REGION) values ('51','Valparaíso','5');
Insert into MO3.CIUDAD (ID_CIUDAD,CIUDAD,ID_REGION) values ('52','Isla de Pascua','5');
Insert into MO3.CIUDAD (ID_CIUDAD,CIUDAD,ID_REGION) values ('53','Los Andes','5');
Insert into MO3.CIUDAD (ID_CIUDAD,CIUDAD,ID_REGION) values ('54','Petorca','5');
Insert into MO3.CIUDAD (ID_CIUDAD,CIUDAD,ID_REGION) values ('55','Quillota','5');
Insert into MO3.CIUDAD (ID_CIUDAD,CIUDAD,ID_REGION) values ('56','San Antonio','5');
Insert into MO3.CIUDAD (ID_CIUDAD,CIUDAD,ID_REGION) values ('57','San Felipe de Aconcagua','5');
Insert into MO3.CIUDAD (ID_CIUDAD,CIUDAD,ID_REGION) values ('58','Marga Marga','5');
Insert into MO3.CIUDAD (ID_CIUDAD,CIUDAD,ID_REGION) values ('61','Cachapoal','6');
Insert into MO3.CIUDAD (ID_CIUDAD,CIUDAD,ID_REGION) values ('62','Cardenal Caro','6');
Insert into MO3.CIUDAD (ID_CIUDAD,CIUDAD,ID_REGION) values ('63','Colchagua','6');
Insert into MO3.CIUDAD (ID_CIUDAD,CIUDAD,ID_REGION) values ('71','Talca','7');
Insert into MO3.CIUDAD (ID_CIUDAD,CIUDAD,ID_REGION) values ('72','Cauquenes','7');
Insert into MO3.CIUDAD (ID_CIUDAD,CIUDAD,ID_REGION) values ('73','Curicó','7');
Insert into MO3.CIUDAD (ID_CIUDAD,CIUDAD,ID_REGION) values ('74','Linares','7');
Insert into MO3.CIUDAD (ID_CIUDAD,CIUDAD,ID_REGION) values ('81','Concepción','8');
Insert into MO3.CIUDAD (ID_CIUDAD,CIUDAD,ID_REGION) values ('82','Arauco','8');
Insert into MO3.CIUDAD (ID_CIUDAD,CIUDAD,ID_REGION) values ('83','Biobío','8');
Insert into MO3.CIUDAD (ID_CIUDAD,CIUDAD,ID_REGION) values ('84','Ñuble','8');
Insert into MO3.CIUDAD (ID_CIUDAD,CIUDAD,ID_REGION) values ('91','Cautín','9');
Insert into MO3.CIUDAD (ID_CIUDAD,CIUDAD,ID_REGION) values ('92','Malleco','9');
Insert into MO3.CIUDAD (ID_CIUDAD,CIUDAD,ID_REGION) values ('101','Llanquihue','10');
Insert into MO3.CIUDAD (ID_CIUDAD,CIUDAD,ID_REGION) values ('102','Chiloé','10');
Insert into MO3.CIUDAD (ID_CIUDAD,CIUDAD,ID_REGION) values ('103','Osorno','10');
Insert into MO3.CIUDAD (ID_CIUDAD,CIUDAD,ID_REGION) values ('104','Palena','10');
Insert into MO3.CIUDAD (ID_CIUDAD,CIUDAD,ID_REGION) values ('111','Coihaique','11');
Insert into MO3.CIUDAD (ID_CIUDAD,CIUDAD,ID_REGION) values ('112','Aisén','11');
Insert into MO3.CIUDAD (ID_CIUDAD,CIUDAD,ID_REGION) values ('113','Capitán Prat','11');
Insert into MO3.CIUDAD (ID_CIUDAD,CIUDAD,ID_REGION) values ('114','General Carrera','11');
Insert into MO3.CIUDAD (ID_CIUDAD,CIUDAD,ID_REGION) values ('121','Magallanes','12');
Insert into MO3.CIUDAD (ID_CIUDAD,CIUDAD,ID_REGION) values ('122','Antártica Chilena','12');
Insert into MO3.CIUDAD (ID_CIUDAD,CIUDAD,ID_REGION) values ('123','Tierra del Fuego','12');
Insert into MO3.CIUDAD (ID_CIUDAD,CIUDAD,ID_REGION) values ('124','Última Esperanza','12');
Insert into MO3.CIUDAD (ID_CIUDAD,CIUDAD,ID_REGION) values ('131','Santiago','13');
Insert into MO3.CIUDAD (ID_CIUDAD,CIUDAD,ID_REGION) values ('132','Cordillera','13');
Insert into MO3.CIUDAD (ID_CIUDAD,CIUDAD,ID_REGION) values ('133','Chacabuco','13');
Insert into MO3.CIUDAD (ID_CIUDAD,CIUDAD,ID_REGION) values ('134','Maipo','13');
Insert into MO3.CIUDAD (ID_CIUDAD,CIUDAD,ID_REGION) values ('135','Melipilla','13');
Insert into MO3.CIUDAD (ID_CIUDAD,CIUDAD,ID_REGION) values ('136','Talagante','13');
Insert into MO3.CIUDAD (ID_CIUDAD,CIUDAD,ID_REGION) values ('141','Valdivia','14');
Insert into MO3.CIUDAD (ID_CIUDAD,CIUDAD,ID_REGION) values ('142','Ranco','14');
Insert into MO3.CIUDAD (ID_CIUDAD,CIUDAD,ID_REGION) values ('151','Arica','15');
Insert into MO3.CIUDAD (ID_CIUDAD,CIUDAD,ID_REGION) values ('152','Parinacota','15');
REM INSERTING into MO3.COMUNA
SET DEFINE OFF;
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('1101','Iquique','11');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('1107','Alto Hospicio','11');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('1401','Pozo Almonte','14');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('1402','Camiña','14');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('1403','Colchane','14');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('1404','Huara','14');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('1405','Pica','14');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('2101','Antofagasta','21');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('2102','Mejillones','21');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('2103','Sierra Gorda','21');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('2104','Taltal','21');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('2201','Calama','22');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('2202','Ollagüe','22');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('2203','San Pedro de Atacama','22');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('2301','Tocopilla','23');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('2302','María Elena','23');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('3101','Copiapó','31');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('3102','Caldera','31');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('3103','Tierra Amarilla','31');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('3201','Chañaral','32');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('3202','Diego de Almagro','32');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('3301','Vallenar','33');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('3302','Alto del Carmen','33');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('3303','Freirina','33');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('3304','Huasco','33');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('4101','La Serena','41');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('4102','Coquimbo','41');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('4103','Andacollo','41');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('4104','La Higuera','41');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('4105','Paihuano','41');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('4106','Vicuña','41');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('4201','Illapel','42');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('4202','Canela','42');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('4203','Los Vilos','42');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('4204','Salamanca','42');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('4301','Ovalle','43');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('4302','Combarbalá','43');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('4303','Monte Patria','43');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('4304','Punitaqui','43');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('4305','Río Hurtado','43');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('5101','Valparaíso','51');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('5102','Casablanca','51');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('5103','Concón','51');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('5104','Juan Fernández','51');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('5105','Puchuncaví','51');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('5107','Quintero','51');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('5109','Viña del Mar','51');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('5201','Isla de Pascua','52');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('5301','Los Andes','53');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('5302','Calle Larga','53');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('5303','Rinconada','53');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('5304','San Esteban','53');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('5401','La Ligua','54');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('5402','Cabildo','54');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('5403','Papudo','54');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('5404','Petorca','54');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('5405','Zapallar','54');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('5501','Quillota','55');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('5502','La Calera','55');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('5503','Hijuelas','55');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('5504','La Cruz','55');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('5506','Nogales','55');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('5601','San Antonio','56');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('5602','Algarrobo','56');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('5603','Cartagena','56');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('5604','El Quisco','56');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('5605','El Tabo','56');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('5606','Santo Domingo','56');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('5701','San Felipe','57');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('5702','Catemu','57');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('5703','Llay Llay','57');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('5704','Panquehue','57');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('5705','Putaendo','57');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('5706','Santa María','57');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('5801','Quilpué','58');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('5802','Limache','58');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('5803','Olmué','58');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('5804','Villa Alemana','58');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('6101','Rancagua','61');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('6102','Codegua','61');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('6103','Coinco','61');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('6104','Coltauco','61');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('6105','Doñihue','61');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('6106','Graneros','61');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('6107','Las Cabras','61');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('6108','Machalí','61');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('6109','Malloa','61');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('6110','Mostazal','61');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('6111','Olivar','61');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('6112','Peumo','61');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('6113','Pichidegua','61');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('6114','Quinta de Tilcoco','61');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('6115','Rengo','61');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('6116','Requínoa','61');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('6117','San Vicente','61');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('6201','Pichilemu','62');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('6202','La Estrella','62');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('6203','Litueche','62');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('6204','Marchihue','62');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('6205','Navidad','62');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('6206','Paredones','62');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('6301','San Fernando','63');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('6302','Chépica','63');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('6303','Chimbarongo','63');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('6304','Lolol','63');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('6305','Nancagua','63');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('6306','Palmilla','63');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('6307','Peralillo','63');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('6308','Placilla','63');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('6309','Pumanque','63');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('6310','Santa Cruz','63');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('7101','Talca','71');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('7102','Constitución','71');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('7103','Curepto','71');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('7104','Empedrado','71');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('7105','Maule','71');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('7106','Pelarco','71');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('7107','Pencahue','71');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('7108','Río Claro','71');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('7109','San Clemente','71');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('7110','San Rafael','71');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('7201','Cauquenes','72');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('7202','Chanco','72');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('7203','Pelluhue','72');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('7301','Curicó','73');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('7302','Hualañé','73');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('7303','Licantén','73');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('7304','Molina','73');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('7305','Rauco','73');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('7306','Romeral','73');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('7307','Sagrada Familia','73');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('7308','Teno','73');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('7309','Vichuquén','73');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('7401','Linares','74');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('7402','Colbún','74');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('7403','Longaví','74');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('7404','Parral','74');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('7405','Retiro','74');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('7406','San Javier','74');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('7407','Villa Alegre','74');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('7408','Yerbas Buenas','74');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('8101','Concepción','81');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('8102','Coronel','81');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('8103','Chiguayante','81');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('8104','Florida','81');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('8105','Hualqui','81');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('8106','Lota','81');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('8107','Penco','81');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('8108','San Pedro de la Paz','81');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('8109','Santa Juana','81');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('8110','Talcahuano','81');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('8111','Tomé','81');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('8112','Hualpén','81');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('8201','Lebu','82');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('8202','Arauco','82');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('8203','Cañete','82');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('8204','Contulmo','82');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('8205','Curanilahue','82');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('8206','Los Álamos','82');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('8207','Tirúa','82');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('8301','Los Ángeles','83');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('8302','Antuco','83');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('8303','Cabrero','83');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('8304','Laja','83');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('8305','Mulchén','83');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('8306','Nacimiento','83');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('8307','Negrete','83');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('8308','Quilaco','83');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('8309','Quilleco','83');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('8310','San Rosendo','83');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('8311','Santa Bárbara','83');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('8312','Tucapel','83');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('8313','Yumbel','83');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('8314','Alto Biobío','83');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('8401','Chillán','84');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('8402','Bulnes','84');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('8403','Cobquecura','84');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('8404','Coelemu','84');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('8405','Coihueco','84');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('8406','Chillán Viejo','84');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('8407','El Carmen','84');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('8408','Ninhue','84');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('8409','Ñiquén','84');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('8410','Pemuco','84');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('8411','Pinto','84');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('8412','Portezuelo','84');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('8413','Quillón','84');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('8414','Quirihue','84');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('8415','Ránquil','84');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('8416','San Carlos','84');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('8417','San Fabián','84');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('8418','San Ignacio','84');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('8419','San Nicolás','84');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('8420','Treguaco','84');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('8421','Yungay','84');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('9101','Temuco','91');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('9102','Carahue','91');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('9103','Cunco','91');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('9104','Curarrehue','91');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('9105','Freire','91');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('9106','Galvarino','91');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('9107','Gorbea','91');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('9108','Lautaro','91');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('9109','Loncoche','91');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('9110','Melipeuco','91');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('9111','Nueva Imperial','91');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('9112','Padre las Casas','91');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('9113','Perquenco','91');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('9114','Pitrufquén','91');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('9115','Pucón','91');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('9116','Saavedra','91');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('9117','Teodoro Schmidt','91');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('9118','Toltén','91');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('9119','Vilcún','91');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('9120','Villarrica','91');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('9121','Cholchol','91');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('9201','Angol','92');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('9202','Collipulli','92');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('9203','Curacautín','92');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('9204','Ercilla','92');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('9205','Lonquimay','92');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('9206','Los Sauces','92');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('9207','Lumaco','92');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('9208','Purén','92');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('9209','Renaico','92');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('9210','Traiguén','92');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('9211','Victoria','92');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('10101','Puerto Montt','101');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('10102','Calbuco','101');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('10103','Cochamó','101');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('10104','Fresia','101');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('10105','Frutillar','101');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('10106','Los Muermos','101');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('10107','Llanquihue','101');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('10108','Maullín','101');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('10109','Puerto Varas','101');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('10201','Castro','102');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('10202','Ancud','102');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('10203','Chonchi','102');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('10204','Curaco de Vélez','102');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('10205','Dalcahue','102');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('10206','Puqueldón','102');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('10207','Queilén','102');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('10208','Quellón','102');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('10209','Quemchi','102');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('10210','Quinchao','102');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('10301','Osorno','103');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('10302','Puerto Octay','103');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('10303','Purranque','103');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('10304','Puyehue','103');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('10305','Río Negro','103');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('10306','San Juan de la Costa','103');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('10307','San Pablo','103');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('10401','Chaitén','104');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('10402','Futaleufú','104');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('10403','Hualaihué','104');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('10404','Palena','104');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('11101','Coyhaique','111');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('11102','Lago Verde','111');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('11201','Aysén','112');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('11202','Cisnes','112');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('11203','Guaitecas','112');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('11301','Cochrane','113');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('11302','O''Higgins','113');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('11303','Tortel','113');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('11401','Chile Chico','114');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('11402','Río Ibáñez','114');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('12101','Punta Arenas','121');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('12102','Laguna Blanca','121');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('12103','Río Verde','121');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('12104','San Gregorio','121');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('12201','Cabo de Hornos','122');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('12202','Antártica','122');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('12301','Porvenir','123');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('12302','Primavera','123');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('12303','Timaukel','123');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('12401','Natales','124');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('12402','Torres del Paine','124');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('13101','Santiago','131');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('13102','Cerrillos','131');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('13103','Cerro Navia','131');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('13104','Conchalí','131');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('13105','El Bosque','131');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('13106','Estación Central','131');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('13107','Huechuraba','131');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('13108','Independencia','131');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('13109','La Cisterna','131');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('13110','La Florida','131');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('13111','La Granja','131');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('13112','La Pintana','131');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('13113','La Reina','131');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('13114','Las Condes','131');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('13115','Lo Barnechea','131');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('13116','Lo Espejo','131');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('13117','Lo Prado','131');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('13118','Macul','131');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('13119','Maipú','131');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('13120','Ñuñoa','131');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('13121','Pedro Aguirre Cerda','131');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('13122','Peñalolén','131');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('13123','Providencia','131');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('13124','Pudahuel','131');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('13125','Quilicura','131');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('13126','Quinta Normal','131');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('13127','Recoleta','131');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('13128','Renca','131');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('13129','San Joaquín','131');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('13130','San Miguel','131');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('13131','San Ramón','131');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('13132','Vitacura','131');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('13201','Puente Alto','132');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('13202','Pirque','132');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('13203','San José de Maipo','132');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('13301','Colina','133');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('13302','Lampa','133');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('13303','Tiltil','133');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('13401','San Bernardo','134');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('13402','Buin','134');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('13403','Calera de Tango','134');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('13404','Paine','134');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('13501','Melipilla','135');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('13502','Alhué','135');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('13503','Curacaví','135');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('13504','María Pinto','135');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('13505','San Pedro','135');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('13601','Talagante','136');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('13602','El Monte','136');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('13603','Isla de Maipo','136');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('13604','Padre Hurtado','136');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('13605','Peñaflor','136');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('14101','Valdivia','141');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('14102','Corral','141');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('14103','Lanco','141');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('14104','Los Lagos','141');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('14105','Máfil','141');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('14106','Mariquina','141');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('14107','Paillaco','141');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('14108','Panguipulli','141');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('14201','La Unión','142');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('14202','Futrono','142');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('14203','Lago Ranco','142');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('14204','Río Bueno','142');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('15101','Arica','151');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('15102','Camarones','151');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('15201','Putre','152');
Insert into MO3.COMUNA (ID_COMUNA,COMUNA,ID_CIUDAD) values ('15202','General Lagos','152');
REM INSERTING into MO3.DESCUENTO
SET DEFINE OFF;
Insert into MO3.DESCUENTO (ID_DESCUENTO,PUNTOS,TOPE,ID_USUARIO,RUBRO,DESCUENTO) values ('1','100','100000','1','Alimentos','5');
Insert into MO3.DESCUENTO (ID_DESCUENTO,PUNTOS,TOPE,ID_USUARIO,RUBRO,DESCUENTO) values ('2','500','150000','1','Alimentos, Electrónica y Línea Blanca','10');
Insert into MO3.DESCUENTO (ID_DESCUENTO,PUNTOS,TOPE,ID_USUARIO,RUBRO,DESCUENTO) values ('3','1000','300000','1','Alimentos, Electrónica y Línea Blanca, Ropa','15');
REM INSERTING into MO3.EMPRESA
SET DEFINE OFF;
Insert into MO3.EMPRESA (ID_EMPRESA,RUT,DV,GIRO_COMERCIAL,NOMBRE_FANTASIA,DIRECCION,TELEFONO,ID_REGION,ID_CIUDAD) values ('1','76543345','7','Multitienda','Ripley','HUERFANOS 1052 PASAJE INTERIOR PISO 4 ','226941042','13','131');
Insert into MO3.EMPRESA (ID_EMPRESA,RUT,DV,GIRO_COMERCIAL,NOMBRE_FANTASIA,DIRECCION,TELEFONO,ID_REGION,ID_CIUDAD) values ('2','77261280','k','Multitienda Retail','Falabella','Rosas 1665, Santiago Centro','390 8892','13','131');
Insert into MO3.EMPRESA (ID_EMPRESA,RUT,DV,GIRO_COMERCIAL,NOMBRE_FANTASIA,DIRECCION,TELEFONO,ID_REGION,ID_CIUDAD) values ('0','11111111','1','Consumidores','Consumidor','NN','000000000','13','131');
REM INSERTING into MO3.NOTACUALITATIVA
SET DEFINE OFF;
Insert into MO3.NOTACUALITATIVA (ID_NOTA,NOTA) values ('100','EXCELENTE');
Insert into MO3.NOTACUALITATIVA (ID_NOTA,NOTA) values ('200','BUENA');
Insert into MO3.NOTACUALITATIVA (ID_NOTA,NOTA) values ('300','MALA');
REM INSERTING into MO3.OFERTA
SET DEFINE OFF;
Insert into MO3.OFERTA (ID_OFERTA,PRECIO,PRECIO_OFERTA,ID_EMPRESA,ID_USUARIO,ID_PRODUCTO,ESTADO) values ('8','5000','500','2','1','2','n');
Insert into MO3.OFERTA (ID_OFERTA,PRECIO,PRECIO_OFERTA,ID_EMPRESA,ID_USUARIO,ID_PRODUCTO,ESTADO) values ('10','5000','2000','1','1','1','s');
Insert into MO3.OFERTA (ID_OFERTA,PRECIO,PRECIO_OFERTA,ID_EMPRESA,ID_USUARIO,ID_PRODUCTO,ESTADO) values ('11','5000','2000','1','1','3','s');
Insert into MO3.OFERTA (ID_OFERTA,PRECIO,PRECIO_OFERTA,ID_EMPRESA,ID_USUARIO,ID_PRODUCTO,ESTADO) values ('32','400000','200000','1','1','8','s');
REM INSERTING into MO3.PRODUCTO
SET DEFINE OFF;
Insert into MO3.PRODUCTO (ID_PRODUCTO,CODIGO,NOMBRE_PRODUCTO,ESPECIFICACION_TECNICA,IMAGEN_PRODUCTO,STOCK,ID_RUBRO) values ('1','ELHO-987898-9','cafetera','cafetera marca xs','cafetera.jpg','2','3000');
Insert into MO3.PRODUCTO (ID_PRODUCTO,CODIGO,NOMBRE_PRODUCTO,ESPECIFICACION_TECNICA,IMAGEN_PRODUCTO,STOCK,ID_RUBRO) values ('2','ELHO-987898-9','torta de naranja','torta de panqueque de naranja grande','torta de naranja.png','2','1000');
Insert into MO3.PRODUCTO (ID_PRODUCTO,CODIGO,NOMBRE_PRODUCTO,ESPECIFICACION_TECNICA,IMAGEN_PRODUCTO,STOCK,ID_RUBRO) values ('3','123','Ventilador','torta de panqueque de naranja','Ventilador.png','2','1000');
Insert into MO3.PRODUCTO (ID_PRODUCTO,CODIGO,NOMBRE_PRODUCTO,ESPECIFICACION_TECNICA,IMAGEN_PRODUCTO,STOCK,ID_RUBRO) values ('7','CHCR-0989098-2','Chaqueta cruzada','Chaqueta cruzada hombre marca ellus, talla L','cruzada.jpg','3','4000');
Insert into MO3.PRODUCTO (ID_PRODUCTO,CODIGO,NOMBRE_PRODUCTO,ESPECIFICACION_TECNICA,IMAGEN_PRODUCTO,STOCK,ID_RUBRO) values ('8','PLS4-23423-1','Playstation 4','Playstation 4, 2 mandos + 3 juegos','playstation-4.jpeg','4','2000');
REM INSERTING into MO3.REGION
SET DEFINE OFF;
Insert into MO3.REGION (ID_REGION,REGION) values ('1','Tarapacá');
Insert into MO3.REGION (ID_REGION,REGION) values ('2','Antofagasta');
Insert into MO3.REGION (ID_REGION,REGION) values ('3','Atacama');
Insert into MO3.REGION (ID_REGION,REGION) values ('4','Coquimbo');
Insert into MO3.REGION (ID_REGION,REGION) values ('5','Valparaíso');
Insert into MO3.REGION (ID_REGION,REGION) values ('6','Región del Libertador Gral. Bernardo O’Higgins');
Insert into MO3.REGION (ID_REGION,REGION) values ('7','Región del Maule');
Insert into MO3.REGION (ID_REGION,REGION) values ('8','Región del Biobío');
Insert into MO3.REGION (ID_REGION,REGION) values ('9','Región de la Araucanía');
Insert into MO3.REGION (ID_REGION,REGION) values ('10','Región de Los Lagos');
Insert into MO3.REGION (ID_REGION,REGION) values ('11','Región Aisén del Gral. Carlos Ibáñez del Campo');
Insert into MO3.REGION (ID_REGION,REGION) values ('12','Región de Magallanes y de la Antártica Chilena');
Insert into MO3.REGION (ID_REGION,REGION) values ('13','Región Metropolitana de Santiago');
Insert into MO3.REGION (ID_REGION,REGION) values ('14','Región de Los Ríos');
Insert into MO3.REGION (ID_REGION,REGION) values ('15','Arica y Parinacota');
REM INSERTING into MO3.ROL
SET DEFINE OFF;
Insert into MO3.ROL (ID_ROL,DESCRIPCION) values ('10','ADMINISTRADOR');
Insert into MO3.ROL (ID_ROL,DESCRIPCION) values ('20','CONSUMIDOR');
Insert into MO3.ROL (ID_ROL,DESCRIPCION) values ('30','ENCARGADO');
Insert into MO3.ROL (ID_ROL,DESCRIPCION) values ('40','GERENCIA');
REM INSERTING into MO3.RUBRO
SET DEFINE OFF;
Insert into MO3.RUBRO (ID_RUBRO,RUBRO) values ('1000','Alimento');
Insert into MO3.RUBRO (ID_RUBRO,RUBRO) values ('2000','Electronica');
Insert into MO3.RUBRO (ID_RUBRO,RUBRO) values ('3000','LineaBlanca');
Insert into MO3.RUBRO (ID_RUBRO,RUBRO) values ('4000','Ropa');
REM INSERTING into MO3.SUCURSAL
SET DEFINE OFF;
REM INSERTING into MO3.USUARIO
SET DEFINE OFF;
Insert into MO3.USUARIO (ID_USUARIO,ID_EMPRESA,USUARIO,CONTRASENA,NOMBRE,APELLIDO,TELEFONO,ID_ROL,CORREO,RUT,ESTADO,PUNTOS) values ('1','1','prueba','123','GMS','MS','57253133','30','gms@gmail.com','18603834','s','200');
Insert into MO3.USUARIO (ID_USUARIO,ID_EMPRESA,USUARIO,CONTRASENA,NOMBRE,APELLIDO,TELEFONO,ID_ROL,CORREO,RUT,ESTADO,PUNTOS) values ('2','0','consumidor','123','CONSUMIDOR','PRUEBA','768474837','10','gms@gmail.com','18603834','s','0');
Insert into MO3.USUARIO (ID_USUARIO,ID_EMPRESA,USUARIO,CONTRASENA,NOMBRE,APELLIDO,TELEFONO,ID_ROL,CORREO,RUT,ESTADO,PUNTOS) values ('10','0','gustavo','123','gustavo','maldonado','87483783','20','gms@gms.cl','18603834','s','1900');
Insert into MO3.USUARIO (ID_USUARIO,ID_EMPRESA,USUARIO,CONTRASENA,NOMBRE,APELLIDO,TELEFONO,ID_ROL,CORREO,RUT,ESTADO,PUNTOS) values ('11','0','smoreno','123','Sergio','Moreno','561612','20','smoreno@mo.cl','18055450-5','s','0');
Insert into MO3.USUARIO (ID_USUARIO,ID_EMPRESA,USUARIO,CONTRASENA,NOMBRE,APELLIDO,TELEFONO,ID_ROL,CORREO,RUT,ESTADO,PUNTOS) values ('31','0','user','123','user','prueba','9883993','20','gms@gms.cl','18055450-5','s','0');
REM INSERTING into MO3.VALORACION
SET DEFINE OFF;
Insert into MO3.VALORACION (ID_VALORACION,BOLETA,ID_NOTA,ID_USUARIO,COMENTARIO,ID_OFERTA) values ('1','img.jpg','100','10','muy buena oferta','8');
Insert into MO3.VALORACION (ID_VALORACION,BOLETA,ID_NOTA,ID_USUARIO,COMENTARIO,ID_OFERTA) values ('2','img2.jpg','100','10','todo bien con el producto','8');
Insert into MO3.VALORACION (ID_VALORACION,BOLETA,ID_NOTA,ID_USUARIO,COMENTARIO,ID_OFERTA) values ('10','Ventilador.png','300','10','me salio malo el producto','8');
Insert into MO3.VALORACION (ID_VALORACION,BOLETA,ID_NOTA,ID_USUARIO,COMENTARIO,ID_OFERTA) values ('11','Ventilador.png','300','10','me salio malo el producto','8');
Insert into MO3.VALORACION (ID_VALORACION,BOLETA,ID_NOTA,ID_USUARIO,COMENTARIO,ID_OFERTA) values ('12','Tetera.png','100','10','excelente dijo el sr burns','8');
Insert into MO3.VALORACION (ID_VALORACION,BOLETA,ID_NOTA,ID_USUARIO,COMENTARIO,ID_OFERTA) values ('13','Tetera.png','100','10','perfect!','11');
Insert into MO3.VALORACION (ID_VALORACION,BOLETA,ID_NOTA,ID_USUARIO,COMENTARIO,ID_OFERTA) values ('14','Tetera.png','300','10','buen producto','8');
Insert into MO3.VALORACION (ID_VALORACION,BOLETA,ID_NOTA,ID_USUARIO,COMENTARIO,ID_OFERTA) values ('30','Ventilador.png','100','10','me salio malo el producto','10');
Insert into MO3.VALORACION (ID_VALORACION,BOLETA,ID_NOTA,ID_USUARIO,COMENTARIO,ID_OFERTA) values ('31','Ventilador.png','200','11','buen producto','10');
Insert into MO3.VALORACION (ID_VALORACION,BOLETA,ID_NOTA,ID_USUARIO,COMENTARIO,ID_OFERTA) values ('50','cruzada.jpg','100','10','9','10');
Insert into MO3.VALORACION (ID_VALORACION,BOLETA,ID_NOTA,ID_USUARIO,COMENTARIO,ID_OFERTA) values ('51','Tetera.png','100','10','0','10');
Insert into MO3.VALORACION (ID_VALORACION,BOLETA,ID_NOTA,ID_USUARIO,COMENTARIO,ID_OFERTA) values ('52','tiendac.jpg','100','10','buen producto','8');
Insert into MO3.VALORACION (ID_VALORACION,BOLETA,ID_NOTA,ID_USUARIO,COMENTARIO,ID_OFERTA) values ('53','Tetera.png','100','10','1','8');
Insert into MO3.VALORACION (ID_VALORACION,BOLETA,ID_NOTA,ID_USUARIO,COMENTARIO,ID_OFERTA) values ('54','Tetera.png','100','10','1','8');
Insert into MO3.VALORACION (ID_VALORACION,BOLETA,ID_NOTA,ID_USUARIO,COMENTARIO,ID_OFERTA) values ('55','consumidor.png','100','10','1','8');
Insert into MO3.VALORACION (ID_VALORACION,BOLETA,ID_NOTA,ID_USUARIO,COMENTARIO,ID_OFERTA) values ('56','image.png','100','10','s','8');
Insert into MO3.VALORACION (ID_VALORACION,BOLETA,ID_NOTA,ID_USUARIO,COMENTARIO,ID_OFERTA) values ('57','cruzada.jpg','100','10','mm','8');
Insert into MO3.VALORACION (ID_VALORACION,BOLETA,ID_NOTA,ID_USUARIO,COMENTARIO,ID_OFERTA) values ('58','playstation-4.jpeg','100','1','1','8');
Insert into MO3.VALORACION (ID_VALORACION,BOLETA,ID_NOTA,ID_USUARIO,COMENTARIO,ID_OFERTA) values ('59','Tetera.png','100','1','me salio malo el producto','8');
Insert into MO3.VALORACION (ID_VALORACION,BOLETA,ID_NOTA,ID_USUARIO,COMENTARIO,ID_OFERTA) values ('60','image.png','100','10','123','8');
Insert into MO3.VALORACION (ID_VALORACION,BOLETA,ID_NOTA,ID_USUARIO,COMENTARIO,ID_OFERTA) values ('61','torta de naranja.png','100','10','buen producto','8');
Insert into MO3.VALORACION (ID_VALORACION,BOLETA,ID_NOTA,ID_USUARIO,COMENTARIO,ID_OFERTA) values ('62','Tetera.png','100','10','123','8');
Insert into MO3.VALORACION (ID_VALORACION,BOLETA,ID_NOTA,ID_USUARIO,COMENTARIO,ID_OFERTA) values ('63','Tetera.png','100','1','buen producto','8');
Insert into MO3.VALORACION (ID_VALORACION,BOLETA,ID_NOTA,ID_USUARIO,COMENTARIO,ID_OFERTA) values ('64','Tetera.png','100','1','123','8');
Insert into MO3.VALORACION (ID_VALORACION,BOLETA,ID_NOTA,ID_USUARIO,COMENTARIO,ID_OFERTA) values ('65','Tetera.png','100','10','buen producto','8');
Insert into MO3.VALORACION (ID_VALORACION,BOLETA,ID_NOTA,ID_USUARIO,COMENTARIO,ID_OFERTA) values ('66','Tetera.png','100','10','123','8');
Insert into MO3.VALORACION (ID_VALORACION,BOLETA,ID_NOTA,ID_USUARIO,COMENTARIO,ID_OFERTA) values ('67','tiendac.jpg','100','10','buen producto','8');
Insert into MO3.VALORACION (ID_VALORACION,BOLETA,ID_NOTA,ID_USUARIO,COMENTARIO,ID_OFERTA) values ('68','Tetera.png','100','10','buen producto','8');
Insert into MO3.VALORACION (ID_VALORACION,BOLETA,ID_NOTA,ID_USUARIO,COMENTARIO,ID_OFERTA) values ('69','Tetera.png','100','10','123','10');
Insert into MO3.VALORACION (ID_VALORACION,BOLETA,ID_NOTA,ID_USUARIO,COMENTARIO,ID_OFERTA) values ('70','Tetera.png','100','10','1','8');
Insert into MO3.VALORACION (ID_VALORACION,BOLETA,ID_NOTA,ID_USUARIO,COMENTARIO,ID_OFERTA) values ('71','Tetera.png','100','10','buen producto','8');
Insert into MO3.VALORACION (ID_VALORACION,BOLETA,ID_NOTA,ID_USUARIO,COMENTARIO,ID_OFERTA) values ('72','Tetera.png','100','10','123','8');
Insert into MO3.VALORACION (ID_VALORACION,BOLETA,ID_NOTA,ID_USUARIO,COMENTARIO,ID_OFERTA) values ('73','Tetera.png','100','10','buen producto','8');
Insert into MO3.VALORACION (ID_VALORACION,BOLETA,ID_NOTA,ID_USUARIO,COMENTARIO,ID_OFERTA) values ('74','image.png','100','10','buen producto','8');
Insert into MO3.VALORACION (ID_VALORACION,BOLETA,ID_NOTA,ID_USUARIO,COMENTARIO,ID_OFERTA) values ('75','Tetera.png','100','10','buen producto','8');
Insert into MO3.VALORACION (ID_VALORACION,BOLETA,ID_NOTA,ID_USUARIO,COMENTARIO,ID_OFERTA) values ('76','Tetera.png','100','10','buen producto','8');
Insert into MO3.VALORACION (ID_VALORACION,BOLETA,ID_NOTA,ID_USUARIO,COMENTARIO,ID_OFERTA) values ('77','Tetera.png','100','10','buen producto','8');
Insert into MO3.VALORACION (ID_VALORACION,BOLETA,ID_NOTA,ID_USUARIO,COMENTARIO,ID_OFERTA) values ('78','Tetera.png','300','10','me salio malo el producto','8');
Insert into MO3.VALORACION (ID_VALORACION,BOLETA,ID_NOTA,ID_USUARIO,COMENTARIO,ID_OFERTA) values ('79','playstation-4.jpeg','100','10','buen producto','8');
Insert into MO3.VALORACION (ID_VALORACION,BOLETA,ID_NOTA,ID_USUARIO,COMENTARIO,ID_OFERTA) values ('80','tienda.jpg','100','10','buen producto','8');
Insert into MO3.VALORACION (ID_VALORACION,BOLETA,ID_NOTA,ID_USUARIO,COMENTARIO,ID_OFERTA) values ('81','tienda.jpg','100','10','buen producto','8');
Insert into MO3.VALORACION (ID_VALORACION,BOLETA,ID_NOTA,ID_USUARIO,COMENTARIO,ID_OFERTA) values ('82','cruzada.jpg','100','10','123','8');
Insert into MO3.VALORACION (ID_VALORACION,BOLETA,ID_NOTA,ID_USUARIO,COMENTARIO,ID_OFERTA) values ('83','Tetera.png','100','10','1','8');
Insert into MO3.VALORACION (ID_VALORACION,BOLETA,ID_NOTA,ID_USUARIO,COMENTARIO,ID_OFERTA) values ('84','Tetera.png','100','10','123','8');
--------------------------------------------------------
--  DDL for Index RUBRO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MO3"."RUBRO_PK" ON "MO3"."RUBRO" ("ID_RUBRO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SUCURSAL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MO3"."SUCURSAL_PK" ON "MO3"."SUCURSAL" ("ID_SUCURSAL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index ROL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MO3"."ROL_PK" ON "MO3"."ROL" ("ID_ROL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index VALORACION_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MO3"."VALORACION_PK" ON "MO3"."VALORACION" ("ID_VALORACION") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index REGION_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MO3"."REGION_PK" ON "MO3"."REGION" ("ID_REGION") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index CIUDAD_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MO3"."CIUDAD_PK" ON "MO3"."CIUDAD" ("ID_CIUDAD") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index DESCUENTO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MO3"."DESCUENTO_PK" ON "MO3"."DESCUENTO" ("ID_DESCUENTO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index COMUNA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MO3"."COMUNA_PK" ON "MO3"."COMUNA" ("ID_COMUNA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index USUARIO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MO3"."USUARIO_PK" ON "MO3"."USUARIO" ("ID_USUARIO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index NOTACUALITATIVA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MO3"."NOTACUALITATIVA_PK" ON "MO3"."NOTACUALITATIVA" ("ID_NOTA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PRODUCTO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MO3"."PRODUCTO_PK" ON "MO3"."PRODUCTO" ("ID_PRODUCTO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index EMPRESA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MO3"."EMPRESA_PK" ON "MO3"."EMPRESA" ("ID_EMPRESA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index OFERTA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MO3"."OFERTA_PK" ON "MO3"."OFERTA" ("ID_OFERTA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table COMUNA
--------------------------------------------------------

  ALTER TABLE "MO3"."COMUNA" ADD CONSTRAINT "COMUNA_PK" PRIMARY KEY ("ID_COMUNA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "MO3"."COMUNA" MODIFY ("ID_CIUDAD" NOT NULL ENABLE);
  ALTER TABLE "MO3"."COMUNA" MODIFY ("ID_COMUNA" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table RUBRO
--------------------------------------------------------

  ALTER TABLE "MO3"."RUBRO" ADD CONSTRAINT "RUBRO_PK" PRIMARY KEY ("ID_RUBRO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "MO3"."RUBRO" MODIFY ("ID_RUBRO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CIUDAD
--------------------------------------------------------

  ALTER TABLE "MO3"."CIUDAD" ADD CONSTRAINT "CIUDAD_PK" PRIMARY KEY ("ID_CIUDAD")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "MO3"."CIUDAD" MODIFY ("ID_REGION" NOT NULL ENABLE);
  ALTER TABLE "MO3"."CIUDAD" MODIFY ("ID_CIUDAD" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table NOTACUALITATIVA
--------------------------------------------------------

  ALTER TABLE "MO3"."NOTACUALITATIVA" ADD CONSTRAINT "NOTACUALITATIVA_PK" PRIMARY KEY ("ID_NOTA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "MO3"."NOTACUALITATIVA" MODIFY ("ID_NOTA" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table USUARIO
--------------------------------------------------------

  ALTER TABLE "MO3"."USUARIO" ADD CONSTRAINT "USUARIO_PK" PRIMARY KEY ("ID_USUARIO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "MO3"."USUARIO" MODIFY ("ID_ROL" NOT NULL ENABLE);
  ALTER TABLE "MO3"."USUARIO" MODIFY ("TELEFONO" NOT NULL ENABLE);
  ALTER TABLE "MO3"."USUARIO" MODIFY ("APELLIDO" NOT NULL ENABLE);
  ALTER TABLE "MO3"."USUARIO" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "MO3"."USUARIO" MODIFY ("CONTRASENA" NOT NULL ENABLE);
  ALTER TABLE "MO3"."USUARIO" MODIFY ("USUARIO" NOT NULL ENABLE);
  ALTER TABLE "MO3"."USUARIO" MODIFY ("ID_EMPRESA" NOT NULL ENABLE);
  ALTER TABLE "MO3"."USUARIO" MODIFY ("ID_USUARIO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table EMPRESA
--------------------------------------------------------

  ALTER TABLE "MO3"."EMPRESA" ADD CONSTRAINT "EMPRESA_PK" PRIMARY KEY ("ID_EMPRESA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "MO3"."EMPRESA" MODIFY ("ID_CIUDAD" NOT NULL ENABLE);
  ALTER TABLE "MO3"."EMPRESA" MODIFY ("ID_REGION" NOT NULL ENABLE);
  ALTER TABLE "MO3"."EMPRESA" MODIFY ("TELEFONO" NOT NULL ENABLE);
  ALTER TABLE "MO3"."EMPRESA" MODIFY ("DIRECCION" NOT NULL ENABLE);
  ALTER TABLE "MO3"."EMPRESA" MODIFY ("NOMBRE_FANTASIA" NOT NULL ENABLE);
  ALTER TABLE "MO3"."EMPRESA" MODIFY ("GIRO_COMERCIAL" NOT NULL ENABLE);
  ALTER TABLE "MO3"."EMPRESA" MODIFY ("DV" NOT NULL ENABLE);
  ALTER TABLE "MO3"."EMPRESA" MODIFY ("RUT" NOT NULL ENABLE);
  ALTER TABLE "MO3"."EMPRESA" MODIFY ("ID_EMPRESA" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table DESCUENTO
--------------------------------------------------------

  ALTER TABLE "MO3"."DESCUENTO" ADD CONSTRAINT "DESCUENTO_PK" PRIMARY KEY ("ID_DESCUENTO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "MO3"."DESCUENTO" MODIFY ("ID_USUARIO" NOT NULL ENABLE);
  ALTER TABLE "MO3"."DESCUENTO" MODIFY ("ID_DESCUENTO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table OFERTA
--------------------------------------------------------

  ALTER TABLE "MO3"."OFERTA" ADD CONSTRAINT "OFERTA_PK" PRIMARY KEY ("ID_OFERTA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "MO3"."OFERTA" MODIFY ("ID_PRODUCTO" NOT NULL ENABLE);
  ALTER TABLE "MO3"."OFERTA" MODIFY ("ID_USUARIO" NOT NULL ENABLE);
  ALTER TABLE "MO3"."OFERTA" MODIFY ("ID_EMPRESA" NOT NULL ENABLE);
  ALTER TABLE "MO3"."OFERTA" MODIFY ("PRECIO_OFERTA" NOT NULL ENABLE);
  ALTER TABLE "MO3"."OFERTA" MODIFY ("PRECIO" NOT NULL ENABLE);
  ALTER TABLE "MO3"."OFERTA" MODIFY ("ID_OFERTA" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table REGION
--------------------------------------------------------

  ALTER TABLE "MO3"."REGION" ADD CONSTRAINT "REGION_PK" PRIMARY KEY ("ID_REGION")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "MO3"."REGION" MODIFY ("ID_REGION" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table VALORACION
--------------------------------------------------------

  ALTER TABLE "MO3"."VALORACION" ADD CONSTRAINT "VALORACION_PK" PRIMARY KEY ("ID_VALORACION")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "MO3"."VALORACION" MODIFY ("ID_USUARIO" NOT NULL ENABLE);
  ALTER TABLE "MO3"."VALORACION" MODIFY ("ID_NOTA" NOT NULL ENABLE);
  ALTER TABLE "MO3"."VALORACION" MODIFY ("BOLETA" NOT NULL ENABLE);
  ALTER TABLE "MO3"."VALORACION" MODIFY ("ID_VALORACION" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ROL
--------------------------------------------------------

  ALTER TABLE "MO3"."ROL" ADD CONSTRAINT "ROL_PK" PRIMARY KEY ("ID_ROL")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "MO3"."ROL" MODIFY ("DESCRIPCION" NOT NULL ENABLE);
  ALTER TABLE "MO3"."ROL" MODIFY ("ID_ROL" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SUCURSAL
--------------------------------------------------------

  ALTER TABLE "MO3"."SUCURSAL" ADD CONSTRAINT "SUCURSAL_PK" PRIMARY KEY ("ID_SUCURSAL")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "MO3"."SUCURSAL" MODIFY ("ID_CIUDAD" NOT NULL ENABLE);
  ALTER TABLE "MO3"."SUCURSAL" MODIFY ("ID_EMPRESA" NOT NULL ENABLE);
  ALTER TABLE "MO3"."SUCURSAL" MODIFY ("NOMBRE_SUCURSAL" NOT NULL ENABLE);
  ALTER TABLE "MO3"."SUCURSAL" MODIFY ("ID_SUCURSAL" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PRODUCTO
--------------------------------------------------------

  ALTER TABLE "MO3"."PRODUCTO" ADD CONSTRAINT "PRODUCTO_PK" PRIMARY KEY ("ID_PRODUCTO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "MO3"."PRODUCTO" MODIFY ("ID_RUBRO" NOT NULL ENABLE);
  ALTER TABLE "MO3"."PRODUCTO" MODIFY ("STOCK" NOT NULL ENABLE);
  ALTER TABLE "MO3"."PRODUCTO" MODIFY ("IMAGEN_PRODUCTO" NOT NULL ENABLE);
  ALTER TABLE "MO3"."PRODUCTO" MODIFY ("ESPECIFICACION_TECNICA" NOT NULL ENABLE);
  ALTER TABLE "MO3"."PRODUCTO" MODIFY ("NOMBRE_PRODUCTO" NOT NULL ENABLE);
  ALTER TABLE "MO3"."PRODUCTO" MODIFY ("CODIGO" NOT NULL ENABLE);
  ALTER TABLE "MO3"."PRODUCTO" MODIFY ("ID_PRODUCTO" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table CIUDAD
--------------------------------------------------------

  ALTER TABLE "MO3"."CIUDAD" ADD CONSTRAINT "CIUDAD_REGION_FK" FOREIGN KEY ("ID_REGION")
	  REFERENCES "MO3"."REGION" ("ID_REGION") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table COMUNA
--------------------------------------------------------

  ALTER TABLE "MO3"."COMUNA" ADD CONSTRAINT "COMUNA_CIUDAD_FK" FOREIGN KEY ("ID_CIUDAD")
	  REFERENCES "MO3"."CIUDAD" ("ID_CIUDAD") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table DESCUENTO
--------------------------------------------------------

  ALTER TABLE "MO3"."DESCUENTO" ADD CONSTRAINT "DESCUENTO_USUARIO_FK" FOREIGN KEY ("ID_USUARIO")
	  REFERENCES "MO3"."USUARIO" ("ID_USUARIO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EMPRESA
--------------------------------------------------------

  ALTER TABLE "MO3"."EMPRESA" ADD CONSTRAINT "EMPRESA_CIUDAD_FK" FOREIGN KEY ("ID_CIUDAD")
	  REFERENCES "MO3"."CIUDAD" ("ID_CIUDAD") ENABLE;
  ALTER TABLE "MO3"."EMPRESA" ADD CONSTRAINT "EMPRESA_REGION_FK" FOREIGN KEY ("ID_REGION")
	  REFERENCES "MO3"."REGION" ("ID_REGION") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table OFERTA
--------------------------------------------------------

  ALTER TABLE "MO3"."OFERTA" ADD CONSTRAINT "OFERTA_EMPRESA_FK" FOREIGN KEY ("ID_EMPRESA")
	  REFERENCES "MO3"."EMPRESA" ("ID_EMPRESA") ENABLE;
  ALTER TABLE "MO3"."OFERTA" ADD CONSTRAINT "OFERTA_PRODUCTO_FK" FOREIGN KEY ("ID_PRODUCTO")
	  REFERENCES "MO3"."PRODUCTO" ("ID_PRODUCTO") ENABLE;
  ALTER TABLE "MO3"."OFERTA" ADD CONSTRAINT "OFERTA_USUARIO_FK" FOREIGN KEY ("ID_USUARIO")
	  REFERENCES "MO3"."USUARIO" ("ID_USUARIO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PRODUCTO
--------------------------------------------------------

  ALTER TABLE "MO3"."PRODUCTO" ADD CONSTRAINT "PRODUCTO_RUBRO_FK" FOREIGN KEY ("ID_RUBRO")
	  REFERENCES "MO3"."RUBRO" ("ID_RUBRO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SUCURSAL
--------------------------------------------------------

  ALTER TABLE "MO3"."SUCURSAL" ADD CONSTRAINT "SUCURSAL_EMPRESA_FK" FOREIGN KEY ("ID_EMPRESA")
	  REFERENCES "MO3"."EMPRESA" ("ID_EMPRESA") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table USUARIO
--------------------------------------------------------

  ALTER TABLE "MO3"."USUARIO" ADD CONSTRAINT "USUARIO_EMPRESA_FK" FOREIGN KEY ("ID_EMPRESA")
	  REFERENCES "MO3"."EMPRESA" ("ID_EMPRESA") ENABLE;
  ALTER TABLE "MO3"."USUARIO" ADD CONSTRAINT "USUARIO_ROL_FK" FOREIGN KEY ("ID_ROL")
	  REFERENCES "MO3"."ROL" ("ID_ROL") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table VALORACION
--------------------------------------------------------

  ALTER TABLE "MO3"."VALORACION" ADD CONSTRAINT "VALORACION_NOTACUALITATIVA_FK" FOREIGN KEY ("ID_NOTA")
	  REFERENCES "MO3"."NOTACUALITATIVA" ("ID_NOTA") ENABLE;
  ALTER TABLE "MO3"."VALORACION" ADD CONSTRAINT "VALORACION_USUARIO_FK" FOREIGN KEY ("ID_USUARIO")
	  REFERENCES "MO3"."USUARIO" ("ID_USUARIO") ENABLE;
