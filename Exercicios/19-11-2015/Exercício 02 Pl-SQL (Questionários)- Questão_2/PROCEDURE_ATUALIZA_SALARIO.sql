/*
 	(PROCEDURE) Criar uma procedure que atualiza o salário de determinado 
                funcionário em um aumento de 10%. Caso o funcionário não exista, 
                emita uma mensagem de alerta;
*/
CREATE OR REPLACE PROCEDURE procedure_atualiza_salario(
                                                        P_COD_FUNCIONARIO IN NUMBER
                                                      )
IS
  V_CAL_SAL NUMBER;
  
BEGIN

  SELECT SALARIO 
    INTO V_CAL_SAL
    FROM TB_FUNCIONARIO 
    WHERE COD_FUN = P_COD_FUNCIONARIO;
   
  UPDATE TB_FUNCIONARIO
    SET SALARIO = ( V_CAL_SAL * 1.10 )
    WHERE COD_FUN = P_COD_FUNCIONARIO;
    /*
   
EXCEPTION
  WHEN no_data_found THEN
    dbms.output.put_line('Não há funcionario com o esse codigo passado!!');
  
   */
END procedure_atualiza_salario ;










---------------------------------------------------------------------
create or replace package body nova_equipe as

procedure inserir_equipe( codigo_equipe in equipe.cod_equipe%type, 
                          nome_equipe in equipe.nome_equipe%type, 
                          logo_eq in equipe.logo_equipe%type
                        )

is-- 

begin

insert into equipe 
  values (codigo_equipe, nome_equipe, logo_eq);

for registros in (select cod_equipe, nome_equipe, logo_equipe into equipe_reg from equipe)

loop

DBMS_OUTPUT.PUT_LINE(registros.nome_equipe || registros.logo_equipe);

end loop;

end inserir_equipe;

end nova_equipe; 


