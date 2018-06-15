/*
3. Criar uma procedure que receberá o CÓDIGO de um PRODUTO. 
  A partir deste dado deverá consultar uma tabela denominada 
  PRODUTO e verificar a que CATEGORIA o produto pertence. 
  Com base nesta informação deverá informar qual o valor (em Reais) do IPI 
  consultando para isso uma tabela 
  denominada ALIQUOTA. As tabelas PRODUTO e ALIQUOTA estão 
  parcialmente representadas a seguir: 
  
NOTA: Os valores do IPI estão representados em porcentagem (10%, 15%, etc.) 
*/
CREATE OR REPLACE PROCEDURE TB_PRODUTO_ALIQUOTA_PROCEDURE( 
                                                            P_CODIGO_PRODUTO IN TB_PRODUTO.COD_PRO%TYPE
                                                         ) 
                                          
IS
V_ALIQUOTA ALIQUOTA.IPI%TYPE;

BEGIN

    SELECT ALIQUOTA.IPI 
          INTO  V_ALIQUOTA-- é o que se esta se procurando 
          FROM TB_PRODUTO
          INNER JOIN ALIQUOTA
            ON ALIQUOTA.COD_CAT = TB_PRODUTO.COD_CAT
          WHERE TB_PRODUTO.COD_PRO = P_CODIGO_PRODUTO ;
       
         
 DBMS_OUTPUT.PUT_line( V_ALIQUOTA );
 
END TB_PRODUTO_ALIQUOTA_PROCEDURE; 