CREATE DATABASE Banco

USE Banco


CREATE TABLE Pais(
	Id int IDENTITY(1,1) NOT NULL,
	CONSTRAINT pkPais_Id PRIMARY KEY (Id),
	Pais nvarchar(50) NOT NULL)

CREATE UNIQUE INDEX ixPais_Pais
	ON Pais(Pais)

CREATE TABLE Ciudad(
	Id int IDENTITY(0,1) NOT NULL,
	CONSTRAINT pkCiudad_Id PRIMARY KEY (Id),
	Ciudad nvarchar(100) NOT NULL,
	IdPais int NOT NULL, 
	CONSTRAINT fkCiudad_IdPais FOREIGN KEY (IdPais) REFERENCES Pais (Id)
	)

CREATE UNIQUE INDEX ixCiudad_Ciudad
	ON Ciudad(IdPais, Ciudad)

CREATE TABLE TipoSucursal(
	Id int IDENTITY(1,1) NOT NULL,
	CONSTRAINT pkTipoSucursal_Id PRIMARY KEY (Id),
	TipoSucursal nvarchar(50) NOT NULL,
	Autoservicio bit NOT NULL)

CREATE UNIQUE INDEX ixTipoSucursal_TipoSucursal
	ON TipoSucursal(TipoSucursal)

CREATE TABLE Sucursal(
	Id int IDENTITY(1,1) NOT NULL,
	CONSTRAINT pkSucursal_Id PRIMARY KEY (Id),
	Sucursal nvarchar(100) NOT NULL,
	IdCiudad int NOT NULL, 
	CONSTRAINT fkSucursal_IdCiudad FOREIGN KEY (IdCiudad) REFERENCES Ciudad (Id),
	IdTipoSucursal int NOT NULL, 
	CONSTRAINT fkSucursal_IdTipoSucursal FOREIGN KEY (IdTipoSucursal) REFERENCES TipoSucursal (Id),
	Telefono nvarchar(50) NULL, 
	Direccion nvarchar(100) NOT NULL
	)

CREATE UNIQUE INDEX ixSucursal_Sucursal
	ON Sucursal(IdCiudad, Sucursal)

CREATE TABLE TipoDocumento(
	Id int IDENTITY(1,1) NOT NULL,
	CONSTRAINT pkTipoDocumento_Id PRIMARY KEY (Id),
	TipoDocumento nvarchar(50) NOT NULL,
	Sigla nvarchar(5) NOT NULL)

CREATE UNIQUE INDEX ixTipoDocumento_TipoDocumento
	ON TipoDocumento(TipoDocumento)

CREATE UNIQUE INDEX ixTipoDocumento_Sigla
	ON TipoDocumento(Sigla)


CREATE TABLE Persona(
	Id int IDENTITY(1,1) NOT NULL, 
	CONSTRAINT pkPersona_Id PRIMARY KEY (Id), 
	Nombres nvarchar(50) NOT NULL, 
	Apellidos nvarchar(50) NOT NULL, 
	Documento nvarchar(50) NOT NULL, 
	IdTipoDocumento int NOT NULL, 
	CONSTRAINT fkPersona_IdTipoDocumento FOREIGN KEY (IdTipoDocumento) REFERENCES TipoDocumento (Id),
	IdCiudad int NOT NULL, 
	CONSTRAINT fkPersona_IdCiudad FOREIGN KEY (IdCiudad) REFERENCES Ciudad (Id),
	Telefono nvarchar(50) NOT NULL, 
	Direccion nvarchar(100) NOT NULL, 
	Correo nvarchar(50) NOT NULL, 
	Clave nvarchar(50) NOT NULL,
	Empleado bit NOT NULL Default(0)
	)
	
	
CREATE INDEX ixPersona_Nombre
	ON Persona(Apellidos, Nombres)

CREATE UNIQUE INDEX ixPersona_Documento
	ON Persona(IdTipoDocumento, Documento)


CREATE TABLE TipoCuenta(
	Id int IDENTITY(1,1) NOT NULL,
	CONSTRAINT pkTipoCuenta_Id PRIMARY KEY (Id),
	TipoCuenta nvarchar(50) NOT NULL,
	Credito bit NOT NULL)

CREATE UNIQUE INDEX ixTipoCuenta_TipoCuenta
	ON TipoCuenta(TipoCuenta)

CREATE TABLE Cuenta(
	Id int IDENTITY(1,1) NOT NULL, 
	CONSTRAINT pkCuenta_Id PRIMARY KEY (Id), 
	Numero nvarchar(20) NOT NULL, 
	IdTipoCuenta int NOT NULL, 
	CONSTRAINT fkCuenta_IdTipoCuenta FOREIGN KEY (IdTipoCuenta) REFERENCES TipoCuenta (Id),
	FechaApertura smalldatetime NOT NULL,
	IdSucursal int NOT NULL, 
	CONSTRAINT fkCuenta_IdSucursal FOREIGN KEY (IdSucursal) REFERENCES Sucursal (Id),
	Cupo float DEFAULT(0)
	)

CREATE TABLE Titular (
	IdCuenta int NOT NULL,
	IdPersona int NOT NULL,
	CONSTRAINT pkTitular PRIMARY KEY (IdCuenta, IdPersona),
	CONSTRAINT fkTitular_IdCuenta FOREIGN KEY (IdCuenta) REFERENCES Cuenta (Id),
	CONSTRAINT fkTitular_IdPersona FOREIGN KEY (IdPersona) REFERENCES Persona (Id))


CREATE TABLE TipoMovimiento(
	Id int IDENTITY(0,1) NOT NULL,
	CONSTRAINT pkTipoMovimiento_Id PRIMARY KEY (Id),
	TipoMovimiento nvarchar(50) NOT NULL)

CREATE UNIQUE INDEX ixTipoMovimiento_TipoMovimiento
	ON TipoMovimiento(TipoMovimiento)
	
CREATE TABLE Movimiento(
	Id int IDENTITY(1,1) NOT NULL, 
	CONSTRAINT pkMovimiento_Id PRIMARY KEY (Id), 
	IdCuenta int NOT NULL,
	CONSTRAINT fkMovimiento_IdCuenta FOREIGN KEY (IdCuenta) REFERENCES Cuenta (Id),
	IdSucursal int NOT NULL, 
	CONSTRAINT fkMovimiento_IdSucursal FOREIGN KEY (IdSucursal) REFERENCES Sucursal (Id),
	IdTipoMovimiento int NOT NULL, 
	CONSTRAINT fkMovimiento_IdTipoMovimiento FOREIGN KEY (IdTipoMovimiento) REFERENCES TipoMovimiento (Id),
	Fecha smalldatetime NOT NULL,
	Valor float NOT NULL,
	Descripcion nvarchar(max))

CREATE TABLE Pendiente (
	Id int identity (1,1) NOT NULL,
	CONSTRAINT pkPendiente_Id PRIMARY KEY (Id),
	IdCuenta int NOT NULL,
	CONSTRAINT fkPendiente_IdCuenta FOREIGN KEY (IdCuenta) REFERENCES Cuenta(Id),
	Fecha smalldatetime NOT NULL,
	Valor int NOT NULL,
	FechaCobro smalldatetime NULL)
