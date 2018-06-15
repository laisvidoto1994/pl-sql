/* -------------------------------------------------------------------------- */
/*Criação da tabela  com seus determinados campos*/
CREATE TABLE VENDEDOR
(
    CD_VENDEDOR  INTEGER  NOT NULL  ,
    NM_VENDEDOR  VARCHAR(5)  ,
    NU_CPF       INTEGER  ,
    DS_ENDERRECO VARCHAR(50) ,
    /* DS_ENDERRECO VARCHAR2(50) ,*/
    CONSTRAINT CONS_VENDEDOR  PRIMARY KEY (CD_VENDEDOR) ENABLE /*chave primaria da tabela de Cliente*/
/*  CONSTRAINT CONS_VENDEDOR_NU_CPF  (nu_cpf) UNIQUE /*UNIQUE-> diz que é um numero unico**/
);
/* -------------------------------------------------------------------------- */
/*Mostra todos os dados da tabela de VENDEDOR*/
SELECT * FROM VENDEDOR;

/*Mostra todos os dados da tabela de VENDEDOR quando o codigo for diferente de 21*/
SELECT * FROM VENDEDOR WHERE CD_VENDEDOR <> 21;

/* -------------------------------------------------------------------------- */
/*Inserindo dados na tabela de VENDEDOR */
INSERT INTO VENDEDOR( CD_VENDEDOR, NM_VENDEDOR, NU_CPF, DS_ENDERRECO )
        VALUES ( 11,55446,32565565573,'Rua: Alfredo Lisboa 55' ) ;
        
INSERT INTO VENDEDOR( CD_VENDEDOR, NM_VENDEDOR, NU_CPF, DS_ENDERRECO )
        VALUES ( 21,66521,42567899086,'Rua: João Freire 88' ) ;        
        
INSERT INTO VENDEDOR( CD_VENDEDOR, NM_VENDEDOR, NU_CPF, DS_ENDERRECO )
        VALUES ( 31,88723,52567895578,'Rua: Conde da Boa Vista 01' ) ;
        
     
COMMIT; /*Comando que grava definitivamente os efeitos dos comandos de uma transação (insert, delete e update)*/

/* -------------------------------------------------------------------------- */
/*Alteração de dados da Tabela de Vendedor */

ALTER TABLE VENDEDOR ADD (TESTE_VENDEDOR INTEGER);

ALTER TABLE VENDEDOR MODIFY (TESTE_VENDEDOR VARCHAR(5));

ALTER TABLE VENDEDOR RENAME COLUMN TESTE_VENDEDOR TO NOVO_TESTE_VENDEDOR;

ALTER TABLE VENDEDOR DROP COLUMN NOVO_TESTE_VENDEDOR;

/* -------------------------------------------------------------------------- */
/*Deletando o dados especifico da tabela de VENDEDOR quando o mesmo tiver á chave primaria = 123*/      
DELETE FROM VENDEDOR WHERE CD_VENDEDOR = 11; /*deleta á linha requerida na clausura where */

DELETE FROM VENDEDOR WHERE NM_VENDEDOR = 66521; 

DELETE FROM VENDEDOR WHERE NU_CPF = 52567895578; 

COMMIT;

/* -------------------------------------------------------------------------- */
/*Atualiza os dados da tabela VENDEDOR, mudando o numero do vendedor para 12345
  quando o codigo dele for > 10,
obs: ele vai atualizar apenas o campo do set com o valor descrito no codigo*/

UPDATE VENDEDOR
    SET NM_VENDEDOR = 12345
    WHERE CD_VENDEDOR > 10;


/* -------------------------------------------------------------------------- */

                     
UPDATE VENDEDOR SET NM_VENDEDOR = ( SELECT VENDEDOR_CD_VENDEDOR DS_PEDIDO
                                       FROM PEDIDO
                                       WHERE PEDIDO.VENDEDOR_CD_VENDEDOR = VENDEDOR.CD_VENDEDOR  
                                  )WHERE CD_VENDEDOR > 10;     
                                  
                                  
                                  
/* -------------------------------------------------------------------------- */
/*
  mostra todas as colunas da tabela de vendedor quando á 6ª letra da descrição do enderreço
  começar pela letra 'A' 
*/
SELECT * 
    FROM VENDEDOR	
    WHERE DS_ENDERRECO LIKE '_____A%';
/*
  mostra todas as colunas da tabela de vendedor quando á 6ª letra da descrição do enderreço
  terminar pelo numero '8' 
*/
SELECT * 
    FROM VENDEDOR	
    WHERE DS_ENDERRECO LIKE '%8';
/*
  mostra todas as colunas da tabela de vendedor quando o codigo do vendedor for 11 e ou 21
  estar com os valores .
*/
SELECT * 
	FROM VENDEDOR
	WHERE CD_VENDEDOR IN (11,21);
/*
  mostra todas as colunas da tabela de vendedor quando o codigo do vendedor estiver entre os valores abaixo.
*/
SELECT * 
	FROM vendedor	
  WHERE CD_VENDEDOR BETWEEN 10 AND 30;

/* -------------------------------------------------------------------------- */










