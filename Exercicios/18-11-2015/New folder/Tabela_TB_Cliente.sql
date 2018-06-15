/*
1. Criar uma procedure que deverá receber o código de um cliente e a partir deste 
dado imprimir o seu nome, e seu e-mail. Os dados deverão ser obtidos a partir de 
uma tabela chamada CLIENTE com as seguintes colunas (COD_CLI,NOME_CLI,EMAIL_CLI).

*/

CREATE TABLE TB_CLIENTE 
(	
      COD_CLIENTE NUMBER(10) NOT NULL ENABLE, 
      NOME_CLI    VARCHAR2(50), 
      EMAIL_CLI   VARCHAR2(50), 
	  CONSTRAINT CONS_TB_CLIENTE PRIMARY KEY (COD_CLIENTE)
);


SELECT * FROM TB_CLIENTE;


INSERT INTO TB_CLIENTE( COD_CLIENTE ,NOME_CLI, EMAIL_CLI )
  VALUES(1,'Laís Ingrid','lais@gmail.com');
  
INSERT INTO TB_CLIENTE( COD_CLIENTE ,NOME_CLI, EMAIL_CLI )
  VALUES(2,'Daniel Abdala','Daniell@hotmail.com');
  
INSERT INTO TB_CLIENTE( COD_CLIENTE ,NOME_CLI, EMAIL_CLI )
  VALUES(3,'Flavio Lemos','f_lemos@gmail.com');
  
  

EXECUTE TB_CLIENTE_PROCEDURE(1);
    
  


  