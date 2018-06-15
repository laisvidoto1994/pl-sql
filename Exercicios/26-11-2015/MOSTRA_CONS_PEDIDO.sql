
DECLARE
  V_PEDIDO TABELA_PEDIDO%ROWTYPE;
BEGIN

  V_PEDIDO:=  PACKAGE_VENDEDOR.CONSULTAR_PEDIDO(100006);
  DBMS_OUTPUT.PUT_LINE( V_PEDIDO.CD_PEDIDO|| '|'||
                        V_PEDIDO.VENDEDOR_CD_VENDEDOR||'|'||
                        V_PEDIDO.CLIENTE_CD_CLIENTE|| '|'||
                        V_PEDIDO.DS_PEDIDO||'|'||
                        V_PEDIDO.VL_TOTAL||'|'||
                        V_PEDIDO.DT_PEDIDO||'|'||
                        V_PEDIDO.TP_PEDIDO
                       );
END;
