
--------------------------------------------------------------------------------
CREATE OR REPLACE PACKAGE PACKAGE_VENDEDOR
AS
 PROCEDURE PROC_INSERT_PEDIDO( 
                                  P_CD_PEDIDO     IN TABELA_PEDIDO.CD_PEDIDO%TYPE
                                 ,P_CD_VENDEDOR   IN TABELA_PEDIDO.VENDEDOR_CD_VENDEDOR%TYPE
                                 ,P_CD_CLIENTE    IN TABELA_PEDIDO.CLIENTE_CD_CLIENTE%TYPE
                                 ,P_DS_PEDIDO     IN TABELA_PEDIDO.DS_PEDIDO%TYPE
                                 ,P_VL_TOTAL      IN TABELA_PEDIDO.VL_TOTAL%TYPE
                                 ,P_DT_PEDIDO     IN TABELA_PEDIDO.DT_PEDIDO%TYPE  
                                 ,P_TP_PEDIDO     IN TABELA_PEDIDO.TP_PEDIDO%TYPE
                              );
                             

  PROCEDURE PROC_ALTERAR_PEDIDO(  P_CD_PEDIDO IN TABELA_PEDIDO.CD_PEDIDO%TYPE 
                                 ,P_DS_PEDIDO IN TABELA_PEDIDO.DS_PEDIDO%TYPE
                               );
                             
PROCEDURE PROC_DELETAR_PEDIDO(  P_CD_PEDIDO IN TABELA_PEDIDO.CD_PEDIDO%TYPE );


FUNCTION CONSULTAR_PEDIDO( P_CD_PEDIDO IN TABELA_PEDIDO.CD_PEDIDO%TYPE ) 
      RETURN TABELA_PEDIDO%ROWTYPE ;

--EXCEPTION

--DBMS_OUTPUT.PUT_LINE('DEU ERRO');

END ;

--------------------------------------------------------------------------------
--                                                                            --
--------------------------------------------------------------------------------

CREATE OR REPLACE PACKAGE BODY PACKAGE_VENDEDOR
AS
--------------------------------------------------------------------------------
 PROCEDURE PROC_INSERT_PEDIDO( 
                                  P_CD_PEDIDO     IN TABELA_PEDIDO.CD_PEDIDO%TYPE
                                 ,P_CD_VENDEDOR   IN TABELA_PEDIDO.VENDEDOR_CD_VENDEDOR%TYPE
                                 ,P_CD_CLIENTE    IN TABELA_PEDIDO.CLIENTE_CD_CLIENTE%TYPE
                                 ,P_DS_PEDIDO     IN TABELA_PEDIDO.DS_PEDIDO%TYPE
                                 ,P_VL_TOTAL      IN TABELA_PEDIDO.VL_TOTAL%TYPE
                                 ,P_DT_PEDIDO     IN TABELA_PEDIDO.DT_PEDIDO%TYPE  
                                 ,P_TP_PEDIDO     IN TABELA_PEDIDO.TP_PEDIDO%TYPE
                              )
                                              
  IS

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
---------------------------------------------------------------------------------
 PROCEDURE PROC_ALTERAR_PEDIDO(  P_CD_PEDIDO IN TABELA_PEDIDO.CD_PEDIDO%TYPE 
                                ,P_DS_PEDIDO IN TABELA_PEDIDO.DS_PEDIDO%TYPE
                              )
  IS

  BEGIN

  UPDATE TABELA_PEDIDO
   SET DS_PEDIDO = P_DS_PEDIDO
   WHERE CD_PEDIDO = P_CD_PEDIDO;
          
    DBMS_OUTPUT.PUT_LINE( 'Alteração realizada com sucesso!' );
    
--EXCEPTION
   -- DBMS_OUTPUT.PUT_LINE( 'Erro na Alteração!' );
 
END PROC_ALTERAR_PEDIDO;
--------------------------------------------------------------------------------

PROCEDURE PROC_DELETAR_PEDIDO(  P_CD_PEDIDO IN TABELA_PEDIDO.CD_PEDIDO%TYPE )
AS

BEGIN

DELETE FROM TABELA_PEDIDO
  WHERE CD_PEDIDO = P_CD_PEDIDO;
          
    DBMS_OUTPUT.PUT_LINE( 'Alteração realizada com sucesso!' );
    
--EXCEPTION
   -- DBMS_OUTPUT.PUT_LINE( 'Erro na Alteração!' );
 
END PROC_DELETAR_PEDIDO;
--------------------------------------------------------------------------------
FUNCTION CONSULTAR_PEDIDO( P_CD_PEDIDO IN TABELA_PEDIDO.CD_PEDIDO%TYPE )
 RETURN TABELA_PEDIDO%ROWTYPE
IS
V_PEDIDO TABELA_PEDIDO%ROWTYPE;
BEGIN

SELECT * 
INTO V_PEDIDO
  FROM TABELA_PEDIDO
  WHERE CD_PEDIDO = P_CD_PEDIDO;

RETURN V_PEDIDO;

END CONSULTAR_PEDIDO;
--------------------------------------------------------------------------------

END PACKAGE_VENDEDOR;
--------------------------------------------------------------------------------