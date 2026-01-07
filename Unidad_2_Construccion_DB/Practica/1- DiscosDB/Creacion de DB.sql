USE master;
GO

CREATE DATABASE DiscosDB ON (
NAME = 'DiscosDB',
FILENAME = 'C:\Users\Eduardo\Desktop\MaxiPrograma-Database\Unidad_2_Construccion_DB\Practica\1- DiscosDB\discosdb.mdf',
SIZE = 10MB,
MAXSIZE = 500 MB,
FILEGROWTH = 100 MB
)
LOG ON(
NAME = 'DiscosDB_log',
FILENAME = 'C:\Users\Eduardo\Desktop\MaxiPrograma-Database\Unidad_2_Construccion_DB\Practica\1- DiscosDB\discosdb_log.ldf',
SIZE = 10MB,
MAXSIZE = 500 MB,
FILEGROWTH = 100 MB
);