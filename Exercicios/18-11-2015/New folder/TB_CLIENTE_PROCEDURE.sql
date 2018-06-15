/*
1. Criar uma procedure que dever� receber o c�digo de um cliente e a partir deste 
dado imprimir o seu nome, e seu e-mail. Os dados dever�o ser obtidos a partir de 
uma tabela chamada CLIENTE com as seguintes colunas (COD_CLI,NOME_CLI,EMAIL_CLI).

*/
CREATE OR REPLACE PROCEDURE TB_CLIENTE_PROCEDURE( P_CODIGO_CLIENTE IN TB_CLIENTE.COD_CLIENTE%TYPE ) 
	IS-- BLOCO DE CRIA��O DE VARIAVEIS
	VAR_CLIENTE TB_CLIENTE%ROWTYPE;
  -- ELE SER� COM O UMA TABELA INTERNA COM UMA LINHA E REGISTRO DA TABELA COM O NOME DOS MESMOS CAMPOS DA TABELA REFERENCIADA

BEGIN -- INICIO DO BLOCO QUE SERA EXECULTADO

    SELECT  COD_CLIENTE
           ,NOME_CLI
           ,EMAIL_CLI
          INTO VAR_CLIENTE
          FROM TB_CLIENTE
          WHERE COD_CLIENTE = P_CODIGO_CLIENTE;-- � sele��o tem que ter o mesmo dado do passado pelo parametro
          
         
--EXCEPTION --se deu algo errado no bloco de begin fa�a
    --WHEN no_data_found THEN
    DBMS_OUTPUT.PUT_line( VAR_CLIENTE );
        DBMS_OUTPUT.PUT_line( VAR_CLIENTE.NOME_CLI,VAR_CLIENTE.EMAIL_CLI ); 
       -- DBMS_OUTPUT.PUT_line( VAR_CLIENTE.NOME_CLI, VAR_CLIENTE.EMAIL_CLI ); --o dado passado n�o existe
       -- DBMS_OUTPUT.put_line(tb_cliente.nome_cli,tb_cliente.email_cli ); 

END TB_CLIENTE_PROCEDURE; -- INICIO DO BLOCO QUE SERA EXECULTADO


drop procedure TB_CLIENTE_PROCEDURE;


  
  
  



  
  
  

