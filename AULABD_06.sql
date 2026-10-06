-- Database: aula_06a

-- DROP DATABASE IF EXISTS aula_06a;
/*
CREATE DATABASE aula_06a
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'Portuguese_Brazil.1252'
    LC_CTYPE = 'Portuguese_Brazil.1252'
    LOCALE_PROVIDER = 'libc'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;
	*/
	create table teste
	( 
	  codigo numeric (5),
	  salario  decimal (7,2),
	  dia_hoje date,
	  texto varchar(10),
	  aprovado boolean
	);
	
    insert into teste  values (01020,1767.43,'03-10-2026','robinho',false);
    insert into teste  values (2220,1869.43,'03-10-2026','pele',true);
	select * from teste;

	alter table teste rename to AULABD;
	alter table AULABD rename column aprovado to situacao;
select * from AULABD;

	alter table AULABD ADD column RGM numeric(5);
	alter table AULABD ADD column novo_campo varchar(100);
	alter table AULABD alter column novo_campo set not null;
	update AULABD set novo_campo= 'teste';

	alter table AULABD	drop column salario;

	alter table AULABD add constraint pk_RGM primary key (RGM);
     update AULABD set RGM= 00001 where codigo= 1020;
	  update AULABD set RGM= 00002 where codigo= 2220;
	drop table AULABD;