/*
2. Criar uma procedure que receberá um RA, um NOME e quatro notas conforme a 
sequência: (RA,NOME,A1,A2,A3,A4).
 A partir destes valores deverá efetuar o cálculo da média somando o maior 
 valor entre A1 e A2 às notas A3 e A4 e dividindo o valor obtido por três 
 (achando a média). Se a média for menor que 6 (seis) o aluno estará 
 REPROVADO e se a média for igual ou superior a 6 (seis) o aluno estará APROVADO.
 A procedure deverá inserir os valores acima numa tabela denominada ALUNO com 
 as seguintes colunas RA,NOME,A1,A2,A3,A4,MEDIA,RESULTADO.
*/
--OR REPLACE é quando pode-se repedir e se sobreescrever-la
CREATE OR REPLACE PROCEDURE ALUNO_PROCEDURE( 
                                              P_RA   IN ALUNO.RA%TYPE ,
                                              P_NOME IN ALUNO.NOME%TYPE ,
                                              P_N1   IN ALUNO.NOTA1%TYPE ,
                                              P_N2   IN ALUNO.NOTA2%TYPE ,
                                              P_N3   IN ALUNO.NOTA3%TYPE ,
                                              P_N4   IN ALUNO.NOTA4%TYPE  
                                           ) 
                                          
IS-- declaração de variaveis
  V_MEDIA ALUNO.MEDIA%TYPE;
  V_RESULT ALUNO.RESULTADO%TYPE;

BEGIN

IF ( P_N1 > P_N2 ) THEN
  V_MEDIA:= ( P_N1 + P_N3 + P_N4 ) / 3;
ELSE
  V_MEDIA:= ( P_N2 + P_N3 + P_N4 ) / 3;
END IF;

IF ( V_MEDIA >= 6 ) THEN
  V_RESULT:= 'APROVADO';
ELSE
  V_RESULT := 'REPROVADO';
END IF;

INSERT INTO ALUNO( ra, nome, nota1, nota2, nota3, nota4, media, resultado ) 
  VALUES ( p_ra, p_nome, p_n1, p_n2, p_n3, p_n4, v_media, v_result ); 
 
 EXCEPTION
    WHEN no_data_found THEN
      DBMS_OUTPUT.PUT_line( 'deu errado no bloco acima' ); 

END ALUNO_PROCEDURE; 






  
  
  



  
  
  

