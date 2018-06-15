/*
Arquivo-> Exercício 02 Pl-SQL (Questionários)
	(FUNCTION) Faça uma função que recebe o nome do esporte e retorna a quantidade
            de atletas que praticam esse esporte.
*/
CREATE TABLE ESPORTE 
(	
      NOME        VARCHAR2(15), 
      QTD         NUMBER(3), 
	    CONSTRAINT CONS_ESPORTE_NOME PRIMARY KEY (NOME)
);


SELECT * FROM ESPORTE;

INSERT INTO ESPORTE (NOME, QTD) 
  VALUES ('FUTSAL',5);

INSERT INTO ESPORTE (NOME, QTD) 
  VALUES ('VOLEIBOL',6);
 
 BEGIN
  
    dbms_output.put_line( fun_qtd_atletas('FUTSAL') );
 --mostrar o conteudo que esta na função
 END;