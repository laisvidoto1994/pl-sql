CREATE OR REPLACE FUNCTION FUN_TOTAL_VENDIDO(  P_COD_VEND  IN TABELA_PEDIDO.VENDEDOR_CD_VENDEDOR%TYPE
                                              ,P_DAT_INI   IN TABELA_PEDIDO.DT_PEDIDO%TYPE
                                              ,P_DATA_FIM  IN TABELA_PEDIDO.DT_PEDIDO%TYPE
                                            )
                                            
RETURN NUMBER--TOTAL DE VENDAS
 AS
 
cursor cur_pedido 
is

SELECT * 
  FROM TABELA_PEDIDO
  WHERE VENDEDOR_CD_VENDEDOR = P_COD_VEND  ;

T_PEDIDO cur_pedido%ROWTYPE ;
CONT NUMBER(2):= 0;

 BEGIN
 
  OPEN cur_pedido;
    
    LOOP
    FETCH cur_pedido  INTO T_PEDIDO;
    
    IF (T_PEDIDO.DT_PEDIDO BETWEEN  P_DAT_INI AND P_DATA_FIM ) THEN
    
      CONT := CONT + 1;
    END IF;
    
    EXIT WHEN cur_pedido%NOTFOUND;
    END LOOP;
  
    CLOSE cur_pedido;

    RETURN CONT;
     
 END FUN_TOTAL_VENDIDO;