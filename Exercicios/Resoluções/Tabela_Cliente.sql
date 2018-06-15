/* -------------------------------------------------------------------------- */
/*Criação da tabela  com seus determinados campos*/
CREATE TABLE CLIENTE
(
    CD_CLIENTE  INTEGER  NOT NULL  ,
    NM_CLIENTE  VARCHAR(50)  ,
    NU_CPF_CNPJ INTEGER  ,
    TP_CLIENTE  VARCHAR(20) ,
    CONSTRAINT CONS_CLIENTE  PRIMARY KEY (CD_CLIENTE) ENABLE /*chave primaria da tabela de Cliente*/
);

/* -------------------------------------------------------------------------- */
/*Mostra todos os dados da tabela de Cliente*/
SELECT * FROM CLIENTE;

/* -------------------------------------------------------------------------- */
/*Inserindo dados na tabela de Cliente */
INSERT INTO CLIENTE( CD_CLIENTE, NM_CLIENTE, NU_CPF_CNPJ, TP_CLIENTE )
        VALUES ( 123,'Laís Ingrid',08967701411,'feirante' ) ;
        
INSERT INTO CLIENTE( CD_CLIENTE, NM_CLIENTE, NU_CPF_CNPJ, TP_CLIENTE )
        VALUES( 456,'Edna Soares',95687216852,'comprador' );
    
INSERT INTO CLIENTE( CD_CLIENTE, NM_CLIENTE, NU_CPF_CNPJ, TP_CLIENTE )
        VALUES( 789,'Iracy da Silva',65585284258,'exportador' );

COMMIT; /*Comando que grava definitivamente os efeitos dos comandos de uma transação (insert, delete e update)*/

/* -------------------------------------------------------------------------- */
/*Alteração de dados da Tabela de CLIENTE */

ALTER TABLE CLIENTE ADD (TESTE_CLIENTE INTEGER);

ALTER TABLE CLIENTE MODIFY (TESTE_CLIENTE VARCHAR(60));

ALTER TABLE CLIENTE DROP COLUMN TESTE_CLIENTE;

/* -------------------------------------------------------------------------- */
/*Deletando o dados especifico da tabela de cliente quando o mesmo tiver á chave primaria = 123*/      
DELETE FROM CLIENTE WHERE CD_CLIENTE = 123; /*deleta á linha requerida na clausura where */

DELETE FROM CLIENTE WHERE NM_CLIENTE = 'Edna Soares'; 

DELETE FROM CLIENTE WHERE NU_CPF_CNPJ = 65585284258; 

COMMIT;


/* -------------------------------------------------------------------------- */






