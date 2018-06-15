--CREATE OR REPLACE PROCEDURE PROC_INSERT_PEDIDO( P_PEDIDO IN TABELA_PEDIDO%ROWTYPE )
CREATE OR REPLACE PROCEDURE PROC_INSERT_PEDIDO( 
                                                 P_CD_PEDIDO     IN TABELA_PEDIDO.CD_PEDIDO%TYPE
                                                ,P_CD_VENDEDOR   IN TABELA_PEDIDO.VENDEDOR_CD_VENDEDOR%TYPE
                                                ,P_CD_CLIENTE    IN TABELA_PEDIDO.CLIENTE_CD_CLIENTE%TYPE
                                                ,P_DS_PEDIDO     IN TABELA_PEDIDO.DS_PEDIDO%TYPE
                                                ,P_VL_TOTAL      IN TABELA_PEDIDO.VL_TOTAL%TYPE
                                                ,P_DT_PEDIDO     IN TABELA_PEDIDO.DT_PEDIDO%TYPE  
                                                ,P_TP_PEDIDO     IN TABELA_PEDIDO.TP_PEDIDO%TYPE
                                              )
                                              
AS

BEGIN

INSERT INTO TABELA_PEDIDO
  VALUES(  P_CD_PEDIDO
          ,P_CD_VENDEDOR
          ,P_CD_CLIENTE
          ,P_DS_PEDIDO
          ,P_VL_TOTAL
          ,P_DT_PEDIDO
          ,P_TP_PEDIDO);
          
    DBMS_OUTPUT.PUT_LINE( 'Inserção realizada com sucesso!' );
    
--EXCEPTION
   -- DBMS_OUTPUT.PUT_LINE( 'Erro na Inserção!' );
 
END PROC_INSERT_PEDIDO;
