/*
  (PACKAGE) Crie um Package que insere uma nova equipe e logo em seguida imprime
            a tabela de equipes atualizada;
*/
CREATE TABLE EQUIPE 
(	
      COD_EQUIPE  NUMBER(5),    
      NOME        VARCHAR2(20), 
      LOGO        VARCHAR2(15), 
	    CONSTRAINT CONS_EQUIPE_COD_EQUIPE PRIMARY KEY (COD_EQUIPE)
);


SELECT * FROM EQUIPE;

DECLARE 

BEGIN 
--chamada do pacote'.'nome da procedure do pacote passando os valores para os parametros
  PACKAGE_INSERIR_EQUIPE.PROCEDURE_INSERIR_EQUIPE( 1,'Lauro', 'TIME 123') ; 

END;


DROP TABLE EQUIPE;

