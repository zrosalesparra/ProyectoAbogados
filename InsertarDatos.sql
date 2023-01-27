
ALTER AUTHORIZATION ON DATABASE :: ABOGADOS TO sa
GO

USE ABOGADOS
GO

INSERT INTO ABOGADO (Cod_Abog,No_Colegiado,DNI_NIE,Nomb_Abog,Apell_Abog)
  VALUES ('A1','294','12547828R','Jose','Perez'),
         ('A2','123','88888888Z','Lucas','Toro'),
         ('A3','154','12245777B','Rosa','Parra')
GO

SELECT * FROM 
ABOGADO
GO

INSERT INTO ACTUAC_ADM (Cod_Recurso,Cod_Act_Adm,Tipo_Act_Adm,Fecha_Act_Adm)
VALUES ('R1','AD1','Alegacion','10/13/2022')
GO

SELECT * FROM 
ACTUAC_ADM
GO


INSERT INTO ACTUAC_JUDICIAL(Cod_Judic,Cod_Act_Jud,Tipo_Act_Jud,Fecha_Act_Jud)
VALUES ('J1','AJ1','Pruebas','12/05/2022')
GO

SELECT * FROM 
ACTUAC_JUDICIAL
GO

INSERT INTO ASESORIA(Cod_Asesoria,Tipo_Asesoria,Fecha_Asesoria,CLIENTE_Cod_Cliente,ABOGADO_Cod_Abog)
VALUES ('As1','Tributaria','11/10/2022','C2','A3')
GO


SELECT * FROM 
ASESORIA
GO

INSERT INTO CLIENTE (Cod_Cliente,Telefono,Direccion,MES_HORAS)
VALUES	('C1','6058865','Calle Londres Coruña','8/30/2022'),
		('C2','9585445','Calle orza Coruña','5/30/2022'),
		('C3','5555555','Calle Senra Coruña','10/30/2022')
GO


SELECT * FROM 
CLIENTE
GO

INSERT INTO CLIENTE_FISICO (Cod_Cliente,NIF_DNI_NIE,Nombre,Apellido)
VALUES ('C1','25487652B','Carlos','Perez'),
		('C3','25487634A','Maria','Vargas')
GO

SELECT * FROM 
CLIENTE_FISICO
GO

INSERT INTO CLIENTE_JURIDICO (Cod_Cliente,NIF_DNI_NIE,Nombre,Nom_Rep,Apelli_Rep,NIE_Rep,DNI_NIE_Apod,Nomb_Apod)
VALUES ('C2','25482658B','ArcasCA','Pedro','Martinez','2548795B','25468315A','Luis Martinez')
GO


SELECT * FROM 
CLIENTE_JURIDICO
GO

INSERT INTO CONTRATOS (Cod_Doc,Tipo_Cont,Fecha_Cont,Fecha_Venc_Cont,CLIENTE_Cod_Cliente,ABOGADO_Cod_Abog)
VALUES ('D1','Arrendamiento','12/4/22','12/04/23','C3','A1'),
       ('D2','Venta','04/12/2022','04/12/2022','C1','A3')
GO

SELECT * FROM 
CONTRATOS
GO

INSERT INTO DOC_MERCANTIL (Cod_Mercantil,Fecha_Doc_Merc,Socios,Directores,Tesorero,Tipo_Doc_Merc,CLIENTE_Cod_Cliente,ABOGADO_Cod_Abog)
VALUES ('M1','8/15/22','Luis Castro, Jorge Pérez','Roberto Ruiz, Jorge Lopez','Angel Rojas','SA','C2','A3')
GO

SELECT * FROM 
DOC_MERCANTIL
GO

INSERT INTO FACTURA (No_Factura,Fecha_Fact,No_Horas,Precio_Horas,Total_Fact,Pagada,CLIENTE_Cod_Cliente)
VALUES ('F1','12/10/22','5','50','250',0,'C1'),
       ('F2','12/12/22','10','50','500',1,'C3')
GO

SELECT * FROM 
FACTURA
GO

INSERT INTO HORAS_POR_FACTURAR(MES_HORAS,Facturada,No_HORAS,CLIENTE_Cod_Cliente,FACTURA_No_Factura)
VALUES ('12/30/2022',0,'8','C2','')
GO

SELECT * FROM 
HORAS_POR_FACTURAR
GO
--Msg 547, Level 16, State 0, Line 99
--The INSERT statement conflicted with the FOREIGN KEY constraint "HORAS_POR_FACTURAR_FACTURA_FK". The conflict occurred in database "ABOGADOS", table "dbo.FACTURA", column 'No_Factura'.
--The statement has been terminated.

INSERT INTO JUICIOS (Cod_Judic,Tribunal,Juez,Fecha_Demanda,ABOGADO_Cod_Abog,CLIENTE_Cod_Cliente)
VALUES ('J1','Primero Contencioso','Mauricio Baez','9/18/2022','A2','C2')
GO

SELECT * FROM JUICIOS
GO

INSERT INTO PODERES (Cod_Poder,Tipo_Poder,Fecha_Poder,Fecha_Venc_Poder,ABOGADO_Cod_Abog,CLIENTE_Cod_Cliente)
VALUES ('P1','Judicial','09/18/2022','09/18/2023','A2','C2')
GO

SELECT * FROM PODERES
GO


INSERT INTO RECURSOS (Cod_Recurso,Tipo_Recurso,Aut_Adm,Fecha_Recurso,CLIENTE_Cod_Cliente,ABOGADO_Cod_Abog)
VALUES ('R1','Tributario','Tesoreria Xunta','08/15/2022','C1','A2')
GO

SELECT * FROM RECURSOS
GO



