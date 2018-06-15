/*
1) Questao: Cursor 
Fazer um percurso na tabela Atleta. Utilizar um cursor e imprimir o nome e o 
codigo de todos os atletas.

*/

CREATE TABLE ATLETA
(
   COD_ATLETA NUMBER(4),
   NOME       VARCHAR2(20),
   CONSTRAINT CONS_ATLETA_COD_ATLETA PRIMARY KEY (COD_ATLETA)
);

SELECT * FROM ATLETA;

INSERT INTO ATLETA
  VALUES(1,'Laís Ingrid');

INSERT INTO ATLETA
  VALUES(2,'Lucas Victor');
  
INSERT INTO ATLETA
  VALUES(3,'Micaell Batista');
  
  
  
DROP TABLE ATLETA;