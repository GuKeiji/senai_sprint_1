USE OPTUS;
GO

INSERT INTO TIPOUSUARIO (tipo)
VALUES ('ADMIN'), ('COMUM');

INSERT INTO ESTILO (tipoEstilo)
VALUES ('Rock'), ('Pop'), ('Sertaneijo');

INSERT INTO USUARIO (idTipoUsuario, email, senha, nome)
VALUES (1,'julio.123@gmail.com', 1020, 'Julio'), (2,'clau.2000@gmail.com', 2131,'Claudia'), (2, 'fadinha.13@gmail.com', 5151, 'Raissa');

INSERT INTO ALBUM (idUsuario, idEstilo, artista, dataLancamento)
VALUES (1, 2,'Bruno Mars', '05/08/2021'), (2, 1,'ACDC', '06/08/2021'), (3, 3,'Leonardo', '07/08/2021');