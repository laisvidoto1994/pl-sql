/*
3. Criar uma procedure que receber� o C�DIGO de um PRODUTO. 
  A partir deste dado dever� consultar uma tabela denominada 
  PRODUTO e verificar a que CATEGORIA o produto pertence. 
  Com base nesta informa��o dever� informar qual o valor (em Reais) do IPI 
  consultando para isso uma tabela 
  denominada ALIQUOTA. As tabelas PRODUTO e ALIQUOTA est�o 
  parcialmente representadas a seguir: 
  
NOTA: Os valores do IPI est�o representados em porcentagem (10%, 15%, etc.) 
*/
CREATE TABLE ALIQUOTA
(
      COD_CAT CHAR(1) ,
      IPI     NUMBER(2) ,
      CONSTRAINT CONS_ALIQUOTA_COD_CAT PRIMARY KEY(COD_CAT) 
);

SELECT * FROM ALIQUOTA;

 
INSERT INTO ALIQUOTA 
  VALUES ('A',10);
  
INSERT INTO ALIQUOTA 
  VALUES ('B',15);



DROP TABLE ALIQUOTA;