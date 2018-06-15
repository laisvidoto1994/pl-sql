/* -------------------------------------------------------------------------- */
/*Criação da tabela  com seus determinados campos*/
CREATE TABLE PEDIDO
(
    CD_PEDIDO            INTEGER NOT NULL ,
    VENDEDOR_CD_VENDEDOR INTEGER NOT NULL , /* */
    CLIENTE_CD_CLIENTE   INTEGER NOT NULL , /* */
    
    DS_PEDIDO            VARCHAR(50)  ,
    VL_TOTAL             DECIMAL(4,2) NOT NULL ,
    DT_PEDIDO            DATE         NOT NULL ,
    TP_PEDIDO            VARCHAR(20)  NOT NULL ,
    
    CONSTRAINT PK_PEDIDO    PRIMARY KEY (CD_PEDIDO) ENABLE , /*chave primaria da tabela de Cliente*/
    CONSTRAINT FK_VENDEDOR  FOREIGN KEY (VENDEDOR_CD_VENDEDOR) REFERENCES VENDEDOR(CD_VENDEDOR),
    CONSTRAINT FK_CLIENTE   FOREIGN KEY (CLIENTE_CD_CLIENTE)   REFERENCES CLIENTE(CD_CLIENTE)/*REFERENCES-> tabela de onde vem(nome do campo dela)*/
);

CREATE INDEX PEDIDO_FK_INDEX1 ON PEDIDO(CLIENTE_CD_CLIENTE);

CREATE INDEX PEDIDO_FK_INDEX2 ON PEDIDO(VENDEDOR_CD_VENDEDOR);
/*Um índice é um método de ajuste de desempenho de permitir a recuperação 
  mais rápida dos registros. Um índice cria uma entrada para cada valor que aparece nas colunas indexadas*/
  
/*CONSTRAINT->valida integridade dos dados*/

/* -------------------------------------------------------------------------- */
/*Mostra todos os dados da tabela de PEDIDO*/
SELECT * FROM PEDIDO;

/* -------------------------------------------------------------------------- */
/*Inserindo dados na tabela de PEDIDO */

INSERT INTO PEDIDO
      VALUES(100089, 11 , 123, 'pedido feito pelo propio cliente', 20.56, to_date('19781212','YYYYMMDD') , 'telefone');

INSERT INTO PEDIDO(CD_PEDIDO, VENDEDOR_CD_VENDEDOR, CLIENTE_CD_CLIENTE,DS_PEDIDO,VL_TOTAL,DT_PEDIDO,TP_PEDIDO)
      VALUES(100090, 21 , 456, 'pedido pelo cliente', 40.56, to_date('20151023','YYYYMMDD'), 'no caixa');
      
INSERT INTO PEDIDO(CD_PEDIDO, VENDEDOR_CD_VENDEDOR, CLIENTE_CD_CLIENTE,DS_PEDIDO,VL_TOTAL,DT_PEDIDO,TP_PEDIDO)
      VALUES(100091, 31 , 789, 'pedido feito pelo filho do cliente', 60.56, to_date('20151014','YYYYMMDD'), 'e-mail');

COMMIT; /*Comando que grava definitivamente os efeitos dos comandos de uma transação (insert, delete e update)*/

/* -------------------------------------------------------------------------- */








