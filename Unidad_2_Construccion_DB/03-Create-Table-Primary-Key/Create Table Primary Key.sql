USE MundoPokemon_DB3;
GO

-- FORMATO CORTO
CREATE TABLE Elementos(
	Id INT PRIMARY KEY, -- clave pimaria univoca (no es automatico)
	Descripcion varchar(50)
);

-- la PK es una CONSTRAINT o RESTRICCION


-- FORMATO LARGO
CREATE TABLE Habilidades(
	Id INT NOT NULL,
	Nombre varchar(50),
	Descripcion varchar(50),
	IdTipo INT,
	CONSTRAINT PK_Habilidad PRIMARY KEY(Id) -- restriccion de clave primaria en la tabla Habilidades
	
);