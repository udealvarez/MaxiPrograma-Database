USE master;
GO

-- instruccion CREATE -> es parte de DLL 

-- una base de datos son 2 archivos;
-- MDF: master data file (se guardan datos)
-- LDF: log data file (log, registro de sucesos. se guardan las cosa que hacemos con los datos) se agrego tabla, se ABMC de algun registro, relacion entre tablas

-- Cosas que se pueden configurar en una DB
-- NAME; nos va a definir el nombre logico del archivo de la base de datos
-- NAME FILE; nos va a definir el archivo de la base de datos y la ruta en la cual lo vamos a guardar
-- SIZE, es el tamano iniciar que va a tener la DB
-- MAXSIZE, es ilimitado, la base de datos crece seguir tu espacio en disco
-- FILEGROUWTH, establecemos de a cuanto queremos que crezca la base de datos
-- 

CREATE DATABASE MundoPokemon_DB2



CREATE DATABASE MundoPokemon_DB3 ON (
NAME='MundoPokemon_db3',
FILENAME = 'C:\Users\Eduardo\Desktop\MaxiPrograma-Database\Unidad_2_Construccion_DB\01-Create-Database\DB Ejemplo\mundopokemon_db3.mdf',
SIZE= 10MB,
MAXSIZE= 500MB,
FILEGROWTH= 100MB

)
LOG ON(
NAME='MundoPokemon_db3_log',
FILENAME = 'C:\Users\Eduardo\Desktop\MaxiPrograma-Database\Unidad_2_Construccion_DB\01-Create-Database\DB Ejemplo\mundopokemon_db3_log.ldf',
SIZE= 10MB,
MAXSIZE= 500MB,
FILEGROWTH= 100MB

);