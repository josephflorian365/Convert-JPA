--CREAR USUARIO
ALTER SESSION SET"_ORACLE_SCRIPT"=true;
CREATE USER TEMA16 IDENTIFIED BY TEMA16;
GRANT ALL PRIVILEGES TO TEMA16;
GRANT EXECUTE ANY PROCEDURE TO TEMA16;
GRANT UNLIMITED TABLESPACE TO TEMA16;

-- tables
-- Table: PERSONA
CREATE TABLE PERSONA (
    CODIGO integer  NOT NULL,
    NOMBRE varchar2(30)  NOT NULL,
    EDAD integer  NOT NULL,
    ENFERMEDAD CHAR(1)  NOT NULL,
    DESC_ENF varchar2(30)  NOT NULL,
    APELLIDO_PATERNO varchar2(30)  NOT NULL,
    APELLIDO_MATERNO varchar2(30)  NOT NULL,
    ESTADO_CIVIL char(1)  NOT NULL,
    DNI varchar2(8)  NOT NULL,
    CONSTRAINT PERSONA_pk PRIMARY KEY (CODIGO)
) ;

-- End of file.


create sequence Auincrementtema16
start with 1
increment by 1  -- aqui lo hago es que determino apartir de que nuevo voy
                -- a iniciar y cuando va incrementar
order;

-- Creacion de trigger
create or replace trigger autotema16
before insert on persona
for each row
begin
  select Auincrementtema16.nextval into :new.codigo from dual;
end;
--insertar datos en PERSONA
insert into persona (NOMBRE,EDAD,ENFERMEDAD,DESC_ENF,APELLIDO_PATERNO,APELLIDO_MATERNO,ESTADO_CIVIL,DNI) values('LUIS',21,'S','TOS','DANTE','PALACIOS','S','75481520');
insert into persona (NOMBRE,EDAD,ENFERMEDAD,DESC_ENF,APELLIDO_PATERNO,APELLIDO_MATERNO,ESTADO_CIVIL,DNI) values('JORGE',12,'S','GRIPE','RAMIREZ','PALACIOS','S','75481521');
insert into persona (NOMBRE,EDAD,ENFERMEDAD,DESC_ENF,APELLIDO_PATERNO,APELLIDO_MATERNO,ESTADO_CIVIL,DNI) values('MARIA','45','S','MIGRA�A','GARCIA','PALACIOS','S','75181521');
insert into persona (NOMBRE,EDAD,ENFERMEDAD,DESC_ENF,APELLIDO_PATERNO,APELLIDO_MATERNO,ESTADO_CIVIL,DNI) values('PEPE','71','S','TOS','DANTE','MORALES','S','75481550');
insert into persona (NOMBRE,EDAD,ENFERMEDAD,DESC_ENF,APELLIDO_PATERNO,APELLIDO_MATERNO,ESTADO_CIVIL,DNI) values('CARLOS','23','S','TOS','SALAZAR','TORRES','S','75461520');
insert into persona (NOMBRE,EDAD,ENFERMEDAD,DESC_ENF,APELLIDO_PATERNO,APELLIDO_MATERNO,ESTADO_CIVIL,DNI) values('LUISA','27','S','TOS','DANTE','SANCHEZ','S','75481320');
insert into persona (NOMBRE,EDAD,ENFERMEDAD,DESC_ENF,APELLIDO_PATERNO,APELLIDO_MATERNO,ESTADO_CIVIL,DNI) values('ROSA','18','S','TOS','DANTE','SANTOS','S','75481529');
insert into persona (NOMBRE,EDAD,ENFERMEDAD,DESC_ENF,APELLIDO_PATERNO,APELLIDO_MATERNO,ESTADO_CIVIL,DNI) values('PEDRO','25','S','TOS','DANTE','BERROCAL','S','75487520');
insert into persona (NOMBRE,EDAD,ENFERMEDAD,DESC_ENF,APELLIDO_PATERNO,APELLIDO_MATERNO,ESTADO_CIVIL,DNI) values('RQDRIGO','36','S','TOS','DANTE','SALVADOR','S','75081520');