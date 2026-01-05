USE master;
GO

CREATE DATABASE CatalogoWebDB ON(
NAME = 'CatalogoWebDB',
FILENAME = 'C:\Users\Eduardo\Desktop\MaxiPrograma-Database\Unidad_2_Construccion_DB\Practica\2- CatalogoWebDB\catalogowebdb.mdf',
SIZE = 10MB,
MAXSIZE = 500 MB,
FILEGROWTH = 100 MB
)
LOG ON(
NAME = 'CatalogoWebDB_log',
FILENAME = 'C:\Users\Eduardo\Desktop\MaxiPrograma-Database\Unidad_2_Construccion_DB\Practica\2- CatalogoWebDB\catalogowebdb_log.ldf',
SIZE = 10MB,
MAXSIZE = 500 MB,
FILEGROWTH = 100 MB
);