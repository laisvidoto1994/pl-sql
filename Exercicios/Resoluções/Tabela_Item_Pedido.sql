/* -------------------------------------------------------------------------- */
/*Criação da tabela  com seus determinados campos*/
CREATE TABLE ITEM_PEDIDO
(
    CD_ITEM_PEDIDO     INTEGER NOT NULL ,
    PRODUTO_CD_PRODUTO INTEGER NOT NULL , /* */
    PEDIDO_CD_PEDIDO   INTEGER NOT NULL , /* */
    
    QT_ITEM            INTEGER  ,
    VL_UNIT            Float(6),
    VL_TOTAL           Float(6) ,
    
    CONSTRAINT PK_ITEM_PEDIDO  PRIMARY KEY (CD_ITEM_PEDIDO) ENABLE , /*chave primaria da tabela de Cliente*/
    CONSTRAINT FK_PRODUTO      FOREIGN KEY (PRODUTO_CD_PRODUTO) REFERENCES PRODUTO(CD_PRODUTO),
    CONSTRAINT FK_PEDIDO       FOREIGN KEY (PEDIDO_CD_PEDIDO)   REFERENCES PEDIDO(CD_PEDIDO)
);


CREATE INDEX ITEM_PEDIDO_FK_INDEX1 ON ITEM_PEDIDO (PRODUTO_CD_PRODUTO);

CREATE INDEX ITEM_PEDIDO_FK_INDEX2 ON ITEM_PEDIDO (PEDIDO_CD_PEDIDO);

/* -------------------------------------------------------------------------- */
/*Mostra todos os dados da tabela de ITEM_PEDIDO*/
SELECT * FROM ITEM_PEDIDO;

/* -------------------------------------------------------------------------- */
/*Inserindo dados na tabela de ITEM_PEDIDO */
INSERT INTO ITEM_PEDIDO
        VALUES ( 01 ,1001 ,100089 ,2 , 1.50, 3.00 ) ;

INSERT INTO ITEM_PEDIDO( CD_ITEM_PEDIDO,PRODUTO_CD_PRODUTO,PEDIDO_CD_PEDIDO,QT_ITEM,VL_UNIT, VL_TOTAL )
        VALUES ( 02,1003,100090,3, 3.80, 11.40 ) ;
        
INSERT INTO ITEM_PEDIDO( CD_ITEM_PEDIDO,PRODUTO_CD_PRODUTO,PEDIDO_CD_PEDIDO,QT_ITEM,VL_UNIT, VL_TOTAL )
        VALUES ( 03,1005,100091,4, 1.20, 4.80 ) ;      

COMMIT; /*Comando que grava definitivamente os efeitos dos comandos de uma transação (insert, delete e update)*/

/* -------------------------------------------------------------------------- */
/*Excluindo definitivamente á tabela com todos os seus dados*/
DROP TABLE ITEM_PEDIDO; /*exclui á tabela toda com todos os dados da mesma*/

/* -------------------------------------------------------------------------- */
/*RIGHT OUTER JOIN */
SELECT  ITEM_PEDIDO.CD_ITEM_PEDIDO ,
        ITEM_PEDIDO.PRODUTO_CD_PRODUTO ,
        ITEM_PEDIDO.PEDIDO_CD_PEDIDO,
        ITEM_PEDIDO.QT_ITEM ,   
        ITEM_PEDIDO.VL_UNIT ,      
        ITEM_PEDIDO.VL_TOTAL
        
  FROM ITEM_PEDIDO
  
   RIGHT OUTER JOIN PEDIDO
    ON ITEM_PEDIDO.PEDIDO_CD_PEDIDO   = PEDIDO.CD_PEDIDO 
  
   RIGHT OUTER JOIN PRODUTO
    ON ITEM_PEDIDO.PRODUTO_CD_PRODUTO = PRODUTO.CD_PRODUTO;
    
/* -------------------------------------------------------------------------- */

SELECT PRODUTO_CD_PRODUTO FROM ITEM_PEDIDO
  
UNION

SELECT CD_PRODUTO FROM PRODUTO;

/* -------------------------------------------------------------------------- */

