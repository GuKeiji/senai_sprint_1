USE _PCLINICS;
GO

INSERT INTO CLINICA (nomeClinica)
VALUES ('Pets'), ('Cobasi');
GO
INSERT INTO DONO (nomeDono)
VALUES ('Jucelino'), ('Antonio');
GO
INSERT INTO TIPOPET (nomeEspecie)
VALUES ('Cachorro'), ('Gato');
GO
INSERT INTO TIPOPET (nomeEspecie)
VALUES ('Ave');
GO
INSERT INTO RACA (idTipoPet, nomeRaca)
VALUES (1,'BullTerrier'), (2,'Siames')
GO
INSERT INTO VETERINARIO (idClinica, nomeVeterinario)
VALUES (1,'Robson'), (2,'Jorge');
GO
INSERT INTO PET (idRaca,idDono,nomePet)
VALUES (2,1,'Bilu'), (1,2,'Cacau');
GO
INSERT INTO ATENDIMENTO (idVeterinario, idPet, dataAtendimento)
VALUES (1,2,'03/08/2021'), (2,1,'04/08/2021');
GO
--DELETE FROM VETERINARIO WHERE idVeterinario = 3;

UPDATE ATENDIMENTO
   SET descrAtendimento = 'Banho e Tosa'
 WHERE idAtendimento = 1;
 GO
UPDATE ATENDIMENTO
   SET descrAtendimento = 'Raio X da para direita'
 WHERE idAtendimento = 2;
 GO


 UPDATE VETERINARIO
    SET CRMV = 002789
  WHERE idVeterinario = 1;
  GO
 UPDATE VETERINARIO
    SET CRMV = 122398
  WHERE idVeterinario = 2;
  GO
 UPDATE CLINICA
    SET razaoSocial = 'PET CENTER COMERCIO E PARTICIPACOES S.A.',
	    nomeClinica = 'Petz'
  WHERE idClinica = 1;
  GO
 UPDATE CLINICA
    SET razaoSocial = 'COBASI COMERCIO DE PRODUTOS BASICOS E INDUSTRIALIZADOS S.A.'
  WHERE idClinica = 2;
  GO
--09/08
