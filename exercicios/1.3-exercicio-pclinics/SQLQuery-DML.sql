USE _PCLINICS;
GO

INSERT INTO CLINICA (nomeClinica)
VALUES ('Pets'), ('Cobasi');

INSERT INTO DONO (nomeDono)
VALUES ('Jucelino'), ('Antonio');

INSERT INTO TIPOPET (nomeEspecie)
VALUES ('Cachorro'), ('Gato');

INSERT INTO RACA (idTipoPet, nomeRaca)
VALUES (1,'BullTerrier'), (2,'Siames')

INSERT INTO VETERINARIO (idClinica, nomeVeterinario)
VALUES (1,'Robson'), (2,'Jorge');

INSERT INTO PET (idRaca,idDono,nomePet)
VALUES (2,1,'Bilu'), (1,2,'Cacau');

INSERT INTO ATENDIMENTO (idVeterinario, idPet, dataAtendimento)
VALUES (1,2,'03/08/2021'), (2,1,'04/08/2021');

--DELETE FROM VETERINARIO WHERE idVeterinario = 3;
