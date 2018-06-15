/* -------------------------------------------------------------------------- */
/*Criação da tabela  com seus determinados campos*/
CREATE TABLE PRODUTO
(
    CD_PRODUTO  INTEGER NOT NULL,
    DS_PRODUTO  VARCHAR(50)  ,
    VL_PRECO    DECIMAL(3,2)  ,
    QTD_SALDO   INTEGER ,
    CONSTRAINT CONS_PRODUTO  PRIMARY KEY (CD_PRODUTO) ENABLE /*chave primaria da tabela de PRODUTO*/
);

/* -------------------------------------------------------------------------- */
/*Mostra todos os dados da tabela de PRODUTO*/
SELECT * FROM PRODUTO;

/* -------------------------------------------------------------------------- */
/*Inserindo dados na tabela de PRODUTO */
INSERT INTO PRODUTO( CD_PRODUTO, DS_PRODUTO, VL_PRECO, QTD_SALDO )
        VALUES ( 1001,'Caneta Azul', 1.50 ,20 ) ;

INSERT INTO PRODUTO( CD_PRODUTO, DS_PRODUTO, VL_PRECO, QTD_SALDO )
        VALUES ( 1003,'Fita Durex', 3.80 ,10 ) ;
        
INSERT INTO PRODUTO( CD_PRODUTO, DS_PRODUTO, VL_PRECO, QTD_SALDO )
        VALUES ( 1005,'Pregos', 1.20 ,50 ) ;        
        
COMMIT; /*Comando que grava definitivamente os efeitos dos comandos de uma transação (insert, delete e update)*/

/* -------------------------------------------------------------------------- */
/*Alteração de dados da Tabela de PRODUTO */

ALTER TABLE PRODUTO ADD (TESTE_PRODUTO INTEGER);

ALTER TABLE PRODUTO MODIFY (TESTE_PRODUTO VARCHAR(30));

ALTER TABLE PRODUTO RENAME COLUMN TESTE_PRODUTO TO NOVO_TESTE_PRODUTO;

ALTER TABLE PRODUTO DROP COLUMN NOVO_TESTE_PRODUTO;

/* -------------------------------------------------------------------------- */
/*Deletando o dados especifico da tabela de PRODUTO quando o mesmo tiver á chave primaria = 123*/      
DELETE FROM PRODUTO WHERE CD_PRODUTO = 1001; /*deleta á linha requerida na clausura where */

DELETE FROM PRODUTO WHERE DS_PRODUTO = 'Fita Durex'; 

DELETE FROM PRODUTO WHERE VL_PRECO = 1.20; 

COMMIT;

/* -------------------------------------------------------------------------- */





