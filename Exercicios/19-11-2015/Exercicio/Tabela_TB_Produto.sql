/*
3. Criar uma procedure que receberá o CÓDIGO de um PRODUTO. 
  A partir deste dado deverá consultar uma tabela denominada 
  PRODUTO e verificar a que CATEGORIA o produto pertence. 
  Com base nesta informação deverá informar qual o valor (em Reais) do IPI 
  consultando para isso uma tabela 
  denominada ALIQUOTA. As tabelas PRODUTO e ALIQUOTA estão 
  parcialmente representadas a seguir: 
  
NOTA: Os valores do IPI estão representados em porcentagem (10%, 15%, etc.) 
*/
CREATE TABLE TB_PRODUTO 
(
    COD_PRO NUMBER(4),
    VALOR   NUMBER(6,2),
    COD_CAT CHAR(1),
    CONSTRAINT CONS_TB_PRODUTO_COD_PRO PRIMARY KEY (COD_PRO),
    CONSTRAINT FK_COD_CAT              FOREIGN KEY (COD_CAT) REFERENCES ALIQUOTA(COD_CAT)
);


SELECT*FROM TB_PRODUTO;


INSERT INTO TB_PRODUTO(COD_PRO, VALOR,COD_CAT )
  VALUES (1001,120,'A');
  
INSERT INTO TB_PRODUTO(COD_PRO, VALOR,COD_CAT )
  VALUES (1002,250,'B');


EXECUTE TB_PRODUTO_ALIQUOTA_PROCEDURE(1001);


DROP TABLE TB_PRODUTO;