USE OPTUS;
GO

INSERT INTO ARTISTA (nomeArtista)
VALUES ('Bruno Mars'), ('ACDC'), ('Leonardo');
GO

INSERT INTO TIPOUSUARIO (tipo)
VALUES ('ADMIN'), ('COMUM');
GO

INSERT INTO ESTILO (tipoEstilo)
VALUES ('Rock'), ('Pop'), ('Sertanejo');
GO

INSERT INTO USUARIO (idTipoUsuario, email, senha, nome)
VALUES (1,'julio.123@gmail.com', 1020, 'Julio'), (2,'clau.2000@gmail.com', 2131,'Claudia'), (2, 'fadinha.13@gmail.com', 5151, 'Raissa');
GO

INSERT INTO ALBUM (idUsuario, idEstilo, artista, dataLancamento)
VALUES (1, 2,'Bruno Mars', '05/08/2021'), (2, 1,'ACDC', '06/08/2021'), (3, 3,'Leonardo', '07/08/2021');
GO

UPDATE ALBUM
   SET idArtista = 3
 WHERE idAlbum = 3;
GO

UPDATE ALBUM
   SET nomeAlbum = 'Album Leo'
 WHERE idAlbum = 3;
GO

UPDATE ALBUM
   SET dataLancamento = '01/07/2019'
 WHERE idAlbum = 3;
GO

UPDATE ALBUM
   SET dataLancamento = '01/09/2018'
 WHERE idAlbum = 1;
GO

UPDATE ALBUM
   SET statusAlbum = 'S'
 WHERE idAlbum = 3;
GO