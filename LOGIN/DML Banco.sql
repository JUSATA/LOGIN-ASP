/* Agregar registros de PAIS */
SET IDENTITY_INSERT Pais ON
INSERT INTO Pais (Id, Pais) VALUES(   0, '** Desconocido **');
INSERT INTO Pais (Id, Pais) VALUES(   1, 'COLOMBIA');
INSERT INTO Pais (Id, Pais) VALUES(   2, 'ARGENTINA');
INSERT INTO Pais (Id, Pais) VALUES(   3, 'BOLIVIA');
INSERT INTO Pais (Id, Pais) VALUES(   4, 'BRASIL');
INSERT INTO Pais (Id, Pais) VALUES(   5, 'CANADA');
INSERT INTO Pais (Id, Pais) VALUES(   6, 'COSTA RICA');
INSERT INTO Pais (Id, Pais) VALUES(   7, 'REPUBLICA DOMINICANA');
INSERT INTO Pais (Id, Pais) VALUES(   8, 'CUBA');
INSERT INTO Pais (Id, Pais) VALUES(   9, 'CHILE');
INSERT INTO Pais (Id, Pais) VALUES(  10, 'ECUADOR');
INSERT INTO Pais (Id, Pais) VALUES(  11, 'ESTADOS UNIDOS DE AMÉRICA');
INSERT INTO Pais (Id, Pais) VALUES(  12, 'GUATEMALA');
INSERT INTO Pais (Id, Pais) VALUES(  13, 'HONDURAS');
INSERT INTO Pais (Id, Pais) VALUES(  14, 'MÉXICO');
INSERT INTO Pais (Id, Pais) VALUES(  15, 'NICARAGUA');
INSERT INTO Pais (Id, Pais) VALUES(  16, 'PANAMA');
INSERT INTO Pais (Id, Pais) VALUES(  17, 'PARAGUAY');
INSERT INTO Pais (Id, Pais) VALUES(  18, 'PERU');
INSERT INTO Pais (Id, Pais) VALUES(  19, 'URUGUAY');
INSERT INTO Pais (Id, Pais) VALUES(  20, 'VENEZUELA');
INSERT INTO Pais (Id, Pais) VALUES(  21, 'REINO UNIDO');
INSERT INTO Pais (Id, Pais) VALUES(  22, 'ESPAÑA');
INSERT INTO Pais (Id, Pais) VALUES(  23, 'FRANCIA');
INSERT INTO Pais (Id, Pais) VALUES(  24, 'ALEMANIA');
SET IDENTITY_INSERT Pais OFF

/* Agregar registros de CIUDAD */
SET IDENTITY_INSERT Ciudad ON
INSERT INTO Ciudad (Id, Ciudad, IdPais) VALUES(   0, '** Desconocido **', 0);
INSERT INTO Ciudad (Id, Ciudad, IdPais) VALUES(   1, 'BOGOTA', 1);
INSERT INTO Ciudad (Id, Ciudad, IdPais) VALUES(   2, 'MEDELLIN', 1);
INSERT INTO Ciudad (Id, Ciudad, IdPais) VALUES(   3, 'CALI', 1);
INSERT INTO Ciudad (Id, Ciudad, IdPais) VALUES(   4, 'BARRANQUILLA', 1);
INSERT INTO Ciudad (Id, Ciudad, IdPais) VALUES(   5, 'BUENOS AIRES', 2);
INSERT INTO Ciudad (Id, Ciudad, IdPais) VALUES(   6, 'ROSARIO', 2);
INSERT INTO Ciudad (Id, Ciudad, IdPais) VALUES(   7, 'MENDOZA', 2);
SET IDENTITY_INSERT Ciudad OFF

/* Agregar registros de TIPO-DOCUMENTO */
SET IDENTITY_INSERT TipoDocumento ON
INSERT INTO TipoDocumento (Id, TipoDocumento, Sigla) VALUES(   1, 'Cédula de Ciudadanía', 'CC');
INSERT INTO TipoDocumento (Id, TipoDocumento, Sigla) VALUES(   2, 'Tarjeta de Identidad', 'TI');
INSERT INTO TipoDocumento (Id, TipoDocumento, Sigla) VALUES(   3, 'Cédula de Extranjería', 'CE');
INSERT INTO TipoDocumento (Id, TipoDocumento, Sigla) VALUES(   4, 'Registro Civil', 'RC');
INSERT INTO TipoDocumento (Id, TipoDocumento, Sigla) VALUES(   5, 'Número de Identificación Tributaria', 'NIT');
SET IDENTITY_INSERT TipoDocumento OFF

/* Agregar registros de TIPO-SUCURSAL */
SET IDENTITY_INSERT TipoSucursal ON
INSERT INTO TipoSucursal (Id, TipoSucursal, Autoservicio) VALUES(   1, 'Agencia', 0);
INSERT INTO TipoSucursal (Id, TipoSucursal, Autoservicio) VALUES(   2, 'Agencia Express', 0);
INSERT INTO TipoSucursal (Id, TipoSucursal, Autoservicio) VALUES(   3, 'Cajero Electrónico', 1);
INSERT INTO TipoSucursal (Id, TipoSucursal, Autoservicio) VALUES(   4, 'Sucursal Virtual', 1);
SET IDENTITY_INSERT TipoSucursal OFF

/* Agregar registros de SUCURSAL */
SET IDENTITY_INSERT Sucursal ON
INSERT INTO Sucursal (Id, Sucursal, IdCiudad, IdTipoSucursal, Telefono, Direccion) 
	VALUES(   1, 'Avenida la playa', 2, 1, '5141819', 'Calle 51 No.43-89');
INSERT INTO Sucursal (Id, Sucursal, IdCiudad, IdTipoSucursal, Telefono, Direccion) 
	VALUES(   2, 'Chapinero Centro', 1, 1, '6713415', 'Centro comercial El Retiro - Local 1-145');
INSERT INTO Sucursal (Id, Sucursal, IdCiudad, IdTipoSucursal, Telefono, Direccion) 
	VALUES(   3, 'Suba', 1, 1, '6781234', 'Centro comercial Cafam Floresta Mundo Comercial - Local 2-15');
INSERT INTO Sucursal (Id, Sucursal, IdCiudad, IdTipoSucursal, Telefono, Direccion) 
	VALUES(   4, 'Chía', 1, 1, '2896712', 'Centro comercial Centro Chia - Loc 1029 - Carulla');
INSERT INTO Sucursal (Id, Sucursal, IdCiudad, IdTipoSucursal, Telefono, Direccion) 
	VALUES(   5, 'Kennedy', 1, 1, '5489012', 'Centro comercial Plaza de las Américas - Local 1519');
INSERT INTO Sucursal (Id, Sucursal, IdCiudad, IdTipoSucursal, Telefono, Direccion) 
	VALUES(   6, 'El Poblado', 2, 1, '6251678', 'CARRERA 43 A # 11A - 40');
INSERT INTO Sucursal (Id, Sucursal, IdCiudad, IdTipoSucursal, Telefono, Direccion) 
	VALUES(   7, 'Laureles', 2, 1, '3321976', 'CARRERA 81 # 37 - 99 EXITO LAURELES');
INSERT INTO Sucursal (Id, Sucursal, IdCiudad, IdTipoSucursal, Telefono, Direccion) 
	VALUES(   8, 'Avenida Roosvelt', 3, 1, '5127826', 'Avenida Roosvelt # 25 67');
INSERT INTO Sucursal (Id, Sucursal, IdCiudad, IdTipoSucursal, Telefono, Direccion) 
	VALUES(   9, 'Fontibón', 1, 1, '4517891', 'Centro comercial Salitre Plaza - Local 225');
INSERT INTO Sucursal (Id, Sucursal, IdCiudad, IdTipoSucursal, Telefono, Direccion) 
	VALUES(  10, 'Candelaria', 1, 1, '2761514', 'Carrera 10 #17-72 - Colseguros');
INSERT INTO Sucursal (Id, Sucursal, IdCiudad, IdTipoSucursal, Telefono, Direccion) 
	VALUES(  11, 'Avenida Oriental', 2, 1, '5241987', 'CARRERA 46 # 52 - 81 CAMINO REAL LOCAL 213');
INSERT INTO Sucursal (Id, Sucursal, IdCiudad, IdTipoSucursal, Telefono, Direccion) 
	VALUES(  12, 'Exito Colombia', 2, 1, '2517890', 'CARRERA 66 # 49 - 00');
INSERT INTO Sucursal (Id, Sucursal, IdCiudad, IdTipoSucursal, Telefono, Direccion) 
	VALUES(  13, 'Exito La 80', 1, 1, '2347817', 'Avenida Centenario #106-55 - Loc 17 - Exito');
INSERT INTO Sucursal (Id, Sucursal, IdCiudad, IdTipoSucursal, Telefono, Direccion) 
	VALUES(  14, 'Alameda', 3, 1, '2319756', 'Calle 9 # 26 109');
INSERT INTO Sucursal (Id, Sucursal, IdCiudad, IdTipoSucursal, Telefono, Direccion) 
	VALUES(  15, 'Exito San Fernando', 3, 1, '3179815', 'Calle 5A # 38 27');
INSERT INTO Sucursal (Id, Sucursal, IdCiudad, IdTipoSucursal, Telefono, Direccion) 
	VALUES(  16, 'Prado', 4, 1, '2761524', 'Calle 53 # 46 192 C.C Portal del Prado');
INSERT INTO Sucursal (Id, Sucursal, IdCiudad, IdTipoSucursal, Telefono, Direccion) 
	VALUES(  17, 'Puente Aranda', 1, 1, '4132845', 'Avenida de las Américas #57-52');
INSERT INTO Sucursal (Id, Sucursal, IdCiudad, IdTipoSucursal, Telefono, Direccion) 
	VALUES(  18, 'La América', 1, 2, '2347691', 'CALLE 44 # 84 - 45');
INSERT INTO Sucursal (Id, Sucursal, IdCiudad, IdTipoSucursal, Telefono, Direccion) 
	VALUES(  19, 'El Tesoro', 1, 2, '3136781', 'CARRERA 25A # 1A SUR - 45 CENTRO COMERCIAL EL TESORO LOCAL 1001 - 1003');
INSERT INTO Sucursal (Id, Sucursal, IdCiudad, IdTipoSucursal, Telefono, Direccion) 
	VALUES(  20, 'Centro Coltejer', 1, 2, '5617813', 'CARRERA 49 # 52 - 7');
INSERT INTO Sucursal (Id, Sucursal, IdCiudad, IdTipoSucursal, Telefono, Direccion) 
	VALUES(  21, 'Paseo Bolívar', 1, 2, '5617813', 'CARRERA 44 # 34 02');
SET IDENTITY_INSERT Sucursal OFF

SET IDENTITY_INSERT TipoCuenta ON
INSERT INTO TipoCuenta (Id, TipoCuenta, Credito) VALUES(   1, 'Ahorros', 0);
INSERT INTO TipoCuenta (Id, TipoCuenta, Credito) VALUES(   2, 'Corriente', 1);
INSERT INTO TipoCuenta (Id, TipoCuenta, Credito) VALUES(   3, 'Término Fijo', 0);
INSERT INTO TipoCuenta (Id, TipoCuenta, Credito) VALUES(   4, 'Título capitalizacion', 0);
INSERT INTO TipoCuenta (Id, TipoCuenta, Credito) VALUES(   5, 'Tarjeta Credito Mastercard', 1);
INSERT INTO TipoCuenta (Id, TipoCuenta, Credito) VALUES(   6, 'Tarjeta Credito American Express', 1);
INSERT INTO TipoCuenta (Id, TipoCuenta, Credito) VALUES(   7, 'Tarjeta Credito Visa', 1);
SET IDENTITY_INSERT TipoCuenta OFF

SET IDENTITY_INSERT Persona ON
INSERT INTO Persona (Id, Apellidos, Nombres, Documento, IdTipoDocumento, IdCiudad, Direccion, Telefono, Correo, Clave) 
	VALUES(   1, 'Zapata Gómez', 'Jorge', '7531829',  1, 2, 'Avenida 68 #39-92 sur', '2345689', 'jorgeg@gmail.com', '');
INSERT INTO Persona (Id, Apellidos, Nombres, Documento, IdTipoDocumento, IdCiudad, Direccion, Telefono, Correo, Clave) 
	VALUES(   2, 'Múnera Hernández', 'Fabio', '8298963',  1, 2, 'Calle 13 #38-54', '2678987', 'fmúnera@gmail.com', '');
INSERT INTO Persona (Id, Apellidos, Nombres, Documento, IdTipoDocumento, IdCiudad, Direccion, Telefono, Correo, Clave) 
	VALUES(   3, 'Jimenez Estrada', 'Hector de Jesús', '70507983',  1, 1, 'Carrera 33 #48-32', '6452341', 'hjimeneze@hotmail.com', '');
INSERT INTO Persona (Id, Apellidos, Nombres, Documento, IdTipoDocumento, IdCiudad, Direccion, Telefono, Correo, Clave) 
	VALUES(   4, 'Gómez Montoya', 'Julio Cesar', '70078489',  1, 1, 'Carrera 63 #13-23', '2556789', 'juliogomezm@gmail.com', '');
INSERT INTO Persona (Id, Apellidos, Nombres, Documento, IdTipoDocumento, IdCiudad, Direccion, Telefono, Correo, Clave) 
	VALUES(   5, 'López Muñoz', 'Mónica', '32205863',  1, 1, 'Calle 10 # 20-11', '2568974', 'monicalm1233@gmail.com', '');
INSERT INTO Persona (Id, Apellidos, Nombres, Documento, IdTipoDocumento, IdCiudad, Direccion, Telefono, Correo, Clave) 
	VALUES(   6, 'Zabala Osorio', 'Carlos', '70789567',  1, 1, 'Avenida 68 # 112-12', '4558875', 'zabaleta1999@hotmail.com', '');
INSERT INTO Persona (Id, Apellidos, Nombres, Documento, IdTipoDocumento, IdCiudad, Direccion, Telefono, Correo, Clave) 
	VALUES(   7, 'Osorno Rivera', 'Juan Carlos', '71218493',  1, 1, 'Carrera 7 # 85-12', '6554215', 'juanca1980@gmail.com', '');
INSERT INTO Persona (Id, Apellidos, Nombres, Documento, IdTipoDocumento, IdCiudad, Direccion, Telefono, Correo, Clave) 
	VALUES(   8, 'Gonzalez Zapata', 'Estella', '43202540',  1, 2, 'Calle 15 # 12-56', '2785412', 'egonzalez12@hotmail.com', '');
INSERT INTO Persona (Id, Apellidos, Nombres, Documento, IdTipoDocumento, IdCiudad, Direccion, Telefono, Correo, Clave) 
	VALUES(   9, 'Rodriguez Calderón', 'Julia', '43342911',  1, 3, 'Carrera 23 # 45-12', '2551526', 'juliarod12@gmail.com', '');
INSERT INTO Persona (Id, Apellidos, Nombres, Documento, IdTipoDocumento, IdCiudad, Direccion, Telefono, Correo, Clave) 
	VALUES(  10, 'Mosquera Montoya', 'Matilde', '43079557',  1, 2, 'Carrera 43a # 9-13', '2115564', 'matildelina@gmail.com', '');
INSERT INTO Persona (Id, Apellidos, Nombres, Documento, IdTipoDocumento, IdCiudad, Direccion, Telefono, Correo, Clave) 
	VALUES(  11, 'Castrillón Gonzalez', 'Beatriz', '43560262',  1, 3, 'Calle 5 # 6-19', '2554123', 'beatrizcastri@gmail.com', '');
INSERT INTO Persona (Id, Apellidos, Nombres, Documento, IdTipoDocumento, IdCiudad, Direccion, Telefono, Correo, Clave) 
	VALUES(  12, 'Galeano Ospina', 'Gloria Estela', '43323999',  1, 2, 'Carrera 70 # 101-11', '2346712', 'glogal@gmail.com', '');
INSERT INTO Persona (Id, Apellidos, Nombres, Documento, IdTipoDocumento, IdCiudad, Direccion, Telefono, Correo, Clave) 
	VALUES(  13, 'Duque Grisales', 'Johana', '43555888',  1, 3, 'Diagonal 36 # 56-12', '5116789', 'johanaduque@gmail.com', '');
INSERT INTO Persona (Id, Apellidos, Nombres, Documento, IdTipoDocumento, IdCiudad, Direccion, Telefono, Correo, Clave) 
	VALUES(  14, 'Builes Muñoz', 'Sara', '1035678910',  1, 2, 'Carrera 43 # 12-12', '4568198', 'sbuiles1976@gmail.com', '');
INSERT INTO Persona (Id, Apellidos, Nombres, Documento, IdTipoDocumento, IdCiudad, Direccion, Telefono, Correo, Clave) 
	VALUES(  15, 'Rodriguez Alvarez', 'Luis', '1021567190',  1, 2, 'Avenida 80 # 16-12', '3561245', 'luiroal@gmail.com', '');
INSERT INTO Persona (Id, Apellidos, Nombres, Documento, IdTipoDocumento, IdCiudad, Direccion, Telefono, Correo, Clave, Empleado) 
	VALUES(  16, 'Betancur Calle', 'Jhon Mario', '71123456',  1, 1, 'Cra 33 # 45-12', '5461728', 'jmb123@gmail.com', '', 1);

SET IDENTITY_INSERT Persona OFF

SET DATEFORMAT DMY
SET IDENTITY_INSERT Cuenta ON
INSERT INTO Cuenta (Id, Numero, IdTipoCuenta, FechaApertura, IdSucursal) 
	VALUES(   1, '012 0001 7845',  1, '13/02/1995',  1);
INSERT INTO Cuenta (Id, Numero, IdTipoCuenta, FechaApertura, IdSucursal) 
	VALUES(   2, '018 0001 7856',  1, '01/12/1995',  1);
INSERT INTO Cuenta (Id, Numero, IdTipoCuenta, FechaApertura, IdSucursal) 
	VALUES(   3, '014 0002 5422',  1, '14/06/1996',  6);
INSERT INTO Cuenta (Id, Numero, IdTipoCuenta, FechaApertura, IdSucursal) 
	VALUES(   4, '013 0002 8578',  2, '17/03/1995',  6);
INSERT INTO Cuenta (Id, Numero, IdTipoCuenta, FechaApertura, IdSucursal) 
	VALUES(   5, '011 0003 4512',  1, '01/10/1995',  3);
INSERT INTO Cuenta (Id, Numero, IdTipoCuenta, FechaApertura, IdSucursal) 
	VALUES(   6, '014 0003 7845',  2, '04/04/1997',  3);
INSERT INTO Cuenta (Id, Numero, IdTipoCuenta, FechaApertura, IdSucursal) 
	VALUES(   7, '031 0003 4648',  1, '10/04/1998',  3);
INSERT INTO Cuenta (Id, Numero, IdTipoCuenta, FechaApertura, IdSucursal) 
	VALUES(   8, '025 0008 6654',  1, '12/06/1995',  8);
INSERT INTO Cuenta (Id, Numero, IdTipoCuenta, FechaApertura, IdSucursal) 
	VALUES(   9, '017 0008 3215',  1, '23/07/1996',  8);
INSERT INTO Cuenta (Id, Numero, IdTipoCuenta, FechaApertura, IdSucursal) 
	VALUES(  10, '013 0004 6579',  1, '26/05/1998',  5);
INSERT INTO Cuenta (Id, Numero, IdTipoCuenta, FechaApertura, IdSucursal) 
	VALUES(  11, '023 9999 6579',  2, '27/05/1998',  5);
INSERT INTO Cuenta (Id, Numero, IdTipoCuenta, FechaApertura, IdSucursal) 
	VALUES(  12, '019 1111 9999',  2, '06/12/2005', 16);
INSERT INTO Cuenta (Id, Numero, IdTipoCuenta, FechaApertura, IdSucursal) 
	VALUES(  13, '012 0001 7649',  2, '02/01/1998',  1);
INSERT INTO Cuenta (Id, Numero, IdTipoCuenta, FechaApertura, IdSucursal) 
	VALUES(  14, '011 0004 6578',  2, '15/05/2006',  2);
INSERT INTO Cuenta (Id, Numero, IdTipoCuenta, FechaApertura, IdSucursal) 
	VALUES(  15, '021 0023 4516',  2, '06/12/2005',  6);
INSERT INTO Cuenta (Id, Numero, IdTipoCuenta, FechaApertura, IdSucursal) 
	VALUES(  16, '016 0023 4517',  2, '12/06/2005',  6);
INSERT INTO Cuenta (Id, Numero, IdTipoCuenta, FechaApertura, IdSucursal) 
	VALUES(  17, '013 0023 4518',  2, '13/06/2005',  6);
INSERT INTO Cuenta (Id, Numero, IdTipoCuenta, FechaApertura, IdSucursal) 
	VALUES(  18, '021 7654 9171',  1, '17/07/2005',  6);
INSERT INTO Cuenta (Id, Numero, IdTipoCuenta, FechaApertura, IdSucursal) 
	VALUES(  19, '012 0021 4987',  1, '13/06/2006',  5);
INSERT INTO Cuenta (Id, Numero, IdTipoCuenta, FechaApertura, IdSucursal) 
	VALUES(  20, '011 0011 1286',  2, '25/03/2005',  1);
INSERT INTO Cuenta (Id, Numero, IdTipoCuenta, FechaApertura, IdSucursal) 
	VALUES(  21, '347891050625643', 6, '15/01/2008', 17);
INSERT INTO Cuenta (Id, Numero, IdTipoCuenta, FechaApertura, IdSucursal) 
	VALUES(  22, '370657840294903', 6, '25/02/2007', 14);
INSERT INTO Cuenta (Id, Numero, IdTipoCuenta, FechaApertura, IdSucursal) 
	VALUES(  23, '346667346452526', 6, '11/03/2006', 16);
INSERT INTO Cuenta (Id, Numero, IdTipoCuenta, FechaApertura, IdSucursal) 
	VALUES(  24, '378992957642772', 6, '23/11/2007', 15);
INSERT INTO Cuenta (Id, Numero, IdTipoCuenta, FechaApertura, IdSucursal) 
	VALUES(  25, '341623280025674', 6, '1/10/2008', 18);
INSERT INTO Cuenta (Id, Numero, IdTipoCuenta, FechaApertura, IdSucursal) 
	VALUES(  26, '5320321086075381', 5, '12/01/2006', 2);
INSERT INTO Cuenta (Id, Numero, IdTipoCuenta, FechaApertura, IdSucursal) 
	VALUES(  27, '5398612735408891', 5, '25/01/2006', 5);
INSERT INTO Cuenta (Id, Numero, IdTipoCuenta, FechaApertura, IdSucursal) 
	VALUES(  28, '5383403264028863', 5, '12/02/2006', 4);
INSERT INTO Cuenta (Id, Numero, IdTipoCuenta, FechaApertura, IdSucursal) 
	VALUES(  29, '5195966130781574', 5, '28/02/2006', 4);
INSERT INTO Cuenta (Id, Numero, IdTipoCuenta, FechaApertura, IdSucursal) 
	VALUES(  30, '5127210614979906', 5, '5/03/2006', 12);
INSERT INTO Cuenta (Id, Numero, IdTipoCuenta, FechaApertura, IdSucursal) 
	VALUES(  31, '5518389697502210', 5, '15/03/2006', 13);
INSERT INTO Cuenta (Id, Numero, IdTipoCuenta, FechaApertura, IdSucursal) 
	VALUES(  32, '5246107695595260', 5, '24/03/2006', 14);
INSERT INTO Cuenta (Id, Numero, IdTipoCuenta, FechaApertura, IdSucursal) 
	VALUES(  33, '5244872841502724', 5, '10/04/2006', 15);
INSERT INTO Cuenta (Id, Numero, IdTipoCuenta, FechaApertura, IdSucursal) 
	VALUES(  34, '5549709258885097', 5, '15/04/2006', 16);
INSERT INTO Cuenta (Id, Numero, IdTipoCuenta, FechaApertura, IdSucursal) 
	VALUES(  35, '5571831104547431', 5, '22/04/2006', 17);
SET IDENTITY_INSERT Cuenta OFF

INSERT INTO Titular (IdCuenta, IdPersona) VALUES(   1,  1);
INSERT INTO Titular (IdCuenta, IdPersona) VALUES(   1,  2);
INSERT INTO Titular (IdCuenta, IdPersona) VALUES(   2, 14);
INSERT INTO Titular (IdCuenta, IdPersona) VALUES(   3, 15);
INSERT INTO Titular (IdCuenta, IdPersona) VALUES(   4,  7);
INSERT INTO Titular (IdCuenta, IdPersona) VALUES(   4,  8);
INSERT INTO Titular (IdCuenta, IdPersona) VALUES(   5,  5);
INSERT INTO Titular (IdCuenta, IdPersona) VALUES(   6,  6);
INSERT INTO Titular (IdCuenta, IdPersona) VALUES(   7,  4);
INSERT INTO Titular (IdCuenta, IdPersona) VALUES(   8,  3);
INSERT INTO Titular (IdCuenta, IdPersona) VALUES(   9,  13);
INSERT INTO Titular (IdCuenta, IdPersona) VALUES(  10,  12);
INSERT INTO Titular (IdCuenta, IdPersona) VALUES(  11,  11);
INSERT INTO Titular (IdCuenta, IdPersona) VALUES(  12,  10);
INSERT INTO Titular (IdCuenta, IdPersona) VALUES(  13,  9);
INSERT INTO Titular (IdCuenta, IdPersona) VALUES(  14,  8);
INSERT INTO Titular (IdCuenta, IdPersona) VALUES(  15,  7);
INSERT INTO Titular (IdCuenta, IdPersona) VALUES(  16,  6);
INSERT INTO Titular (IdCuenta, IdPersona) VALUES(  17,  5);
INSERT INTO Titular (IdCuenta, IdPersona) VALUES(  18, 4);
INSERT INTO Titular (IdCuenta, IdPersona) VALUES(  19, 3);
INSERT INTO Titular (IdCuenta, IdPersona) VALUES(  20, 2);
INSERT INTO Titular (IdCuenta, IdPersona) VALUES(  21,  1);
INSERT INTO Titular (IdCuenta, IdPersona) VALUES(  22,  1);
INSERT INTO Titular (IdCuenta, IdPersona) VALUES(  23,  2);
INSERT INTO Titular (IdCuenta, IdPersona) VALUES(  24,  3);
INSERT INTO Titular (IdCuenta, IdPersona) VALUES(  25,  4);
INSERT INTO Titular (IdCuenta, IdPersona) VALUES(  25,  5);
INSERT INTO Titular (IdCuenta, IdPersona) VALUES(  26,  6);
INSERT INTO Titular (IdCuenta, IdPersona) VALUES(  27,  7);
INSERT INTO Titular (IdCuenta, IdPersona) VALUES(  28,  8);
INSERT INTO Titular (IdCuenta, IdPersona) VALUES(  29,  9);
INSERT INTO Titular (IdCuenta, IdPersona) VALUES(  30,  10);
INSERT INTO Titular (IdCuenta, IdPersona) VALUES(  31,  15);
INSERT INTO Titular (IdCuenta, IdPersona) VALUES(  32,  14);
INSERT INTO Titular (IdCuenta, IdPersona) VALUES(  33,  13);
INSERT INTO Titular (IdCuenta, IdPersona) VALUES(  34,  12);
INSERT INTO Titular (IdCuenta, IdPersona) VALUES(  35,  11);

/* Agregar registros de TIPO-MOVIMIENTO */
SET IDENTITY_INSERT TipoMovimiento ON
INSERT INTO TipoMovimiento (Id, TipoMovimiento) VALUES(   1, 'Consignación');
INSERT INTO TipoMovimiento (Id, TipoMovimiento) VALUES(   2, 'Retiro');
SET IDENTITY_INSERT TipoMovimiento OFF

/* Agregar registros de MOVIMIENTO */
SET DATEFORMAT DMY
SET IDENTITY_INSERT Movimiento ON
INSERT INTO Movimiento (Id, IdCuenta, IdSucursal, IdTipoMovimiento, Fecha, Valor) VALUES(   1,  1,  1,  1, '13/02/1995',    1200000);
INSERT INTO Movimiento (Id, IdCuenta, IdSucursal, IdTipoMovimiento, Fecha, Valor) VALUES(   2,  4,  6,  1, '17/03/1995',     900000);
INSERT INTO Movimiento (Id, IdCuenta, IdSucursal, IdTipoMovimiento, Fecha, Valor) VALUES(   3,  1,  6,  2, '07/04/1995',    2000000);
INSERT INTO Movimiento (Id, IdCuenta, IdSucursal, IdTipoMovimiento, Fecha, Valor) VALUES(   4,  8,  8,  1, '12/06/1995',    5000000);
INSERT INTO Movimiento (Id, IdCuenta, IdSucursal, IdTipoMovimiento, Fecha, Valor) VALUES(   5,  4,  6,  2, '18/07/1995',     450000);
INSERT INTO Movimiento (Id, IdCuenta, IdSucursal, IdTipoMovimiento, Fecha, Valor) VALUES(   6,  1,  7,  1, '12/08/1995',    1000000);
INSERT INTO Movimiento (Id, IdCuenta, IdSucursal, IdTipoMovimiento, Fecha, Valor) VALUES(   7,  5,  3,  1, '01/10/1995',     750000);
INSERT INTO Movimiento (Id, IdCuenta, IdSucursal, IdTipoMovimiento, Fecha, Valor) VALUES(   8,  2,  1,  1, '01/12/1995',     500000);
INSERT INTO Movimiento (Id, IdCuenta, IdSucursal, IdTipoMovimiento, Fecha, Valor) VALUES(   9,  5,  2,  1, '15/12/1995',    5000000);
INSERT INTO Movimiento (Id, IdCuenta, IdSucursal, IdTipoMovimiento, Fecha, Valor) VALUES(  10,  1,  1,  2, '31/01/1996',     700000);
INSERT INTO Movimiento (Id, IdCuenta, IdSucursal, IdTipoMovimiento, Fecha, Valor) VALUES(  11,  5,  2,  2, '15/02/1996',     750000);
INSERT INTO Movimiento (Id, IdCuenta, IdSucursal, IdTipoMovimiento, Fecha, Valor) VALUES(  12,  3,  6,  1, '14/06/1996',    2500000);
INSERT INTO Movimiento (Id, IdCuenta, IdSucursal, IdTipoMovimiento, Fecha, Valor) VALUES(  13,  5,  5,  2, '15/06/1996',    3500000);
INSERT INTO Movimiento (Id, IdCuenta, IdSucursal, IdTipoMovimiento, Fecha, Valor) VALUES(  14,  9,  8,  1, '23/07/1996',  100000000);
INSERT INTO Movimiento (Id, IdCuenta, IdSucursal, IdTipoMovimiento, Fecha, Valor) VALUES(  15,  3,  1,  1, '17/09/1996',     500000);
INSERT INTO Movimiento (Id, IdCuenta, IdSucursal, IdTipoMovimiento, Fecha, Valor) VALUES(  16,  3,  6,  2, '25/12/1996',    1500000);
INSERT INTO Movimiento (Id, IdCuenta, IdSucursal, IdTipoMovimiento, Fecha, Valor) VALUES(  17,  6,  3,  1, '04/04/1997',     250000);
INSERT INTO Movimiento (Id, IdCuenta, IdSucursal, IdTipoMovimiento, Fecha, Valor) VALUES(  18,  6,  2,  1, '17/05/1997',    4500000);
INSERT INTO Movimiento (Id, IdCuenta, IdSucursal, IdTipoMovimiento, Fecha, Valor) VALUES(  19,  6,  5,  2, '15/08/1997',    5000000);
INSERT INTO Movimiento (Id, IdCuenta, IdSucursal, IdTipoMovimiento, Fecha, Valor) VALUES(  20,  7,  3,  1, '10/04/1998',    1100000);
INSERT INTO Movimiento (Id, IdCuenta, IdSucursal, IdTipoMovimiento, Fecha, Valor) VALUES(  21, 10,  5,  1, '26/05/1998',    1600000);
INSERT INTO Movimiento (Id, IdCuenta, IdSucursal, IdTipoMovimiento, Fecha, Valor) VALUES(  22,  2,  3,  1, '18/02/2003',      35000);
INSERT INTO Movimiento (Id, IdCuenta, IdSucursal, IdTipoMovimiento, Fecha, Valor) VALUES(  23,  1,  2,  1, '23/02/2003',      50000);
INSERT INTO Movimiento (Id, IdCuenta, IdSucursal, IdTipoMovimiento, Fecha, Valor) VALUES(  24,  2,  1,  2, '15/04/2003',      15000);
INSERT INTO Movimiento (Id, IdCuenta, IdSucursal, IdTipoMovimiento, Fecha, Valor) VALUES(  25,  1,  1,  1, '05/05/2003',     250000);
INSERT INTO Movimiento (Id, IdCuenta, IdSucursal, IdTipoMovimiento, Fecha, Valor) VALUES(  26,  2,  2,  1, '12/06/2003',     500000);
INSERT INTO Movimiento (Id, IdCuenta, IdSucursal, IdTipoMovimiento, Fecha, Valor) VALUES(  27,  2,  1,  1, '01/02/2004',      50000);
INSERT INTO Movimiento (Id, IdCuenta, IdSucursal, IdTipoMovimiento, Fecha, Valor) VALUES(  28,  1,  1,  2, '05/02/2008',       5500);
INSERT INTO Movimiento (Id, IdCuenta, IdSucursal, IdTipoMovimiento, Fecha, Valor) VALUES(  29,  2,  1,  2, '05/02/2008',       5500);
INSERT INTO Movimiento (Id, IdCuenta, IdSucursal, IdTipoMovimiento, Fecha, Valor) VALUES(  30, 13,  1,  2, '05/02/2008',       5500);
INSERT INTO Movimiento (Id, IdCuenta, IdSucursal, IdTipoMovimiento, Fecha, Valor) VALUES(  31, 20,  1,  2, '05/02/2008',       5500);
INSERT INTO Movimiento (Id, IdCuenta, IdSucursal, IdTipoMovimiento, Fecha, Valor) VALUES(  32,  3,  6,  2, '05/02/2008',       5500);
INSERT INTO Movimiento (Id, IdCuenta, IdSucursal, IdTipoMovimiento, Fecha, Valor) VALUES(  33,  4,  6,  2, '05/02/2008',       5500);
INSERT INTO Movimiento (Id, IdCuenta, IdSucursal, IdTipoMovimiento, Fecha, Valor) VALUES(  34, 15,  6,  2, '05/02/2008',       5500);
INSERT INTO Movimiento (Id, IdCuenta, IdSucursal, IdTipoMovimiento, Fecha, Valor) VALUES(  35, 16,  6,  2, '05/02/2008',       5500);
INSERT INTO Movimiento (Id, IdCuenta, IdSucursal, IdTipoMovimiento, Fecha, Valor) VALUES(  36, 17,  6,  2, '05/02/2008',       5500);
INSERT INTO Movimiento (Id, IdCuenta, IdSucursal, IdTipoMovimiento, Fecha, Valor) VALUES(  37, 14,  2,  2, '05/02/2008',       5500);
INSERT INTO Movimiento (Id, IdCuenta, IdSucursal, IdTipoMovimiento, Fecha, Valor) VALUES(  38,  5,  3,  2, '05/02/2008',       5500);
INSERT INTO Movimiento (Id, IdCuenta, IdSucursal, IdTipoMovimiento, Fecha, Valor) VALUES(  39,  6,  3,  2, '05/02/2008',       5500);
INSERT INTO Movimiento (Id, IdCuenta, IdSucursal, IdTipoMovimiento, Fecha, Valor) VALUES(  40,  7,  3,  2, '05/02/2008',       5500);
SET IDENTITY_INSERT Movimiento OFF


