/*
(PACKAGE) Crie um Package que insere uma nova equipe e logo em seguida imprime
a tabela de equipes atualizada;
*/
--------------------------------------------------------------------------------
CREATE OR REPLACE PACKAGE PACKAGE_INSERIR_EQUIPE --INICIO DA CRIACAO DO PACKAGE
AS-- ele inicia as procedures, funções desse pacote
  PROCEDURE PROCEDURE_INSERIR_EQUIPE(--declaração de uma procedure com os seua parametros
                                       P_COD  IN NUMBER ,
                                       P_NOME IN VARCHAR2 ,
                                       P_LOGO IN VARCHAR2 
                                    );
                                    
END  ; -----FIM DA CRIACAO DO PACKAGE
--------------------------------------------------------------------------------
CREATE OR REPLACE PACKAGE BODY PACKAGE_INSERIR_EQUIPE  --INICIO DA CRIACAO DO BODY DO PACKAGE
  AS-- ele inicia as procedures, funções desse pacote
  PROCEDURE PROCEDURE_INSERIR_EQUIPE(--declaração e codigo do que á procedure irá fazer
                                       P_COD  IN NUMBER ,
                                       P_NOME IN VARCHAR2 ,
                                       P_LOGO IN VARCHAR2 
                                    )
  IS
    V_NOME   EQUIPE.NOME%TYPE;
    V_LOGO   EQUIPE.LOGO%TYPE;
    --V_EQUIPE EQUIPE%ROWTYPE ;

  BEGIN
 
    INSERT INTO EQUIPE( COD_EQUIPE ,NOME, LOGO )
      VALUES( p_COD ,p_NOME, p_LOGO );
      
    SELECT NOME, LOGO 
      INTO V_NOME, V_LOGO --,V_EQUIPE
      FROM EQUIPE
      WHERE COD_EQUIPE = COD_EQUIPE;

      
  END PROCEDURE_INSERIR_EQUIPE;--FIM DA CRIAÇÃO DA PROCEDURE DENTRO DA BODY

END PACKAGE_INSERIR_EQUIPE ; -----FIM DA CRIACAO DO BODY DO PACKAGE
--------------------------------------------------------------------------------


DROP PACKAGE PACKAGE_INSERIR_EQUIPE;
