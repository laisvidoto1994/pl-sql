--------------------------------------------------------------------------------
-- CRIANDO Á SEQUENCE DE CLIENTE --
CREATE SEQUENCE SEQ_CLIENTE
  MINVALUE 1 
  MAXVALUE 9999999 
  START WITH 1 
  INCREMENT BY 1 
  NOCACHE
  ;
  
  
CREATE OR REPLACE TRIGGER TRG_TABELA_CLIENTE 
BEFORE
  INSERT ON TABELA_CLIENTE FOR EACH ROW 
  
  BEGIN
    IF( :new.CD_CLIENTE IS NULL ) THEN
    :new.CD_CLIENTE := SEQ_CLIENTE.nextval;
  END IF;

END TRG_TABELA_CLIENTE ;


--------------------------------------------------------------------------------  
  
 -- CRIANDO Á SEQUENCE DE VENDEDOR --
CREATE SEQUENCE SEQ_VENDEDOR
  MINVALUE 1 
  MAXVALUE 9999999 
  START WITH 1 
  INCREMENT BY 1 
  NOCACHE
  ;
  
CREATE OR REPLACE TRIGGER TRG_TABELA_VENDEDOR 
BEFORE
  INSERT ON TABELA_VENDEDOR FOR EACH ROW 
  
  BEGIN
    IF( :new.CD_VENDEDOR IS NULL ) THEN
    :new.CD_VENDEDOR := SEQ_VENDEDOR.nextval;
  END IF;

END TRG_TABELA_VENDEDOR ;

-------------------------------------------------------------------------------- 
  
-- CRIANDO Á SEQUENCE DE PRODUTO --
CREATE SEQUENCE SEQ_PRODUTO
  MINVALUE 1 
  MAXVALUE 9999999 
  START WITH 1 
  INCREMENT BY 1 
  NOCACHE
  ;
  
  
CREATE OR REPLACE TRIGGER TRG_TABELA_PRODUTO
BEFORE
  INSERT ON TABELA_PRODUTO FOR EACH ROW 
  
  BEGIN
    IF( :new.CD_PRODUTO IS NULL ) THEN
    :new.CD_PRODUTO := SEQ_PRODUTO.nextval;
  END IF;

END TRG_TABELA_PRODUTO ;
--------------------------------------------------------------------------------  

-- CRIANDO Á SEQUENCE DE PEDIDO --
CREATE SEQUENCE SEQ_PEDIDO
  MINVALUE 1 
  MAXVALUE 9999999 
  START WITH 1 
  INCREMENT BY 1 
  NOCACHE
  ;
  
  
CREATE OR REPLACE TRIGGER TRG_TABELA_PEDIDO
BEFORE
  INSERT ON TABELA_PEDIDO FOR EACH ROW 
  
  BEGIN
    IF( :new.CD_PEDIDO IS NULL ) THEN
    :new.CD_PEDIDO := SEQ_PEDIDO.nextval;
  END IF;

END TRG_TABELA_PEDIDO ;
--------------------------------------------------------------------------------  

-- CRIANDO Á SEQUENCE DE ITEM_PEDIDO --
CREATE SEQUENCE SEQ_ITEM_PEDIDO
  MINVALUE 1 
  MAXVALUE 9999999 
  START WITH 1 
  INCREMENT BY 1 
  NOCACHE
  ;
  
  
CREATE OR REPLACE TRIGGER TRG_TABELA_ITEM_PEDIDO
BEFORE
  INSERT ON TABELA_ITEM_PEDIDO FOR EACH ROW 
  
  BEGIN
    IF( :new.CD_ITEM_PEDIDO IS NULL ) THEN
    :new.CD_ITEM_PEDIDO := SEQ_ITEM_PEDIDO.nextval;
  END IF;

END TRG_TABELA_ITEM_PEDIDO ;
-------------------------------------------------------------------------------- 
