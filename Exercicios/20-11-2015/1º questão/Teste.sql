DECLARE

  CURSOR CUR_ATLETA 
    IS
      SELECT *
        FROM ATLETA;
      
  T_ATLETA CUR_ATLETA%ROWTYPE;-- pode usar cur_atleta ou atleta

BEGIN
  
     OPEN CUR_ATLETA;-- separa o espaço de memoria do CURSOR
     
     LOOP
       FETCH CUR_ATLETA INTO T_ATLETA;
         EXIT WHEN CUR_ATLETA%NOTFOUND;-- va fazendo até o ultimo registro ou ele seja = null
         
         IF CUR_ATLETA%FOUND THEN
             DBMS_OUTPUT.PUT_LINE( T_ATLETA.COD_ATLETA ||' '|| T_ATLETA.NOME );-- separador de dados->  ||' '|| 
         ELSE
            EXIT;-- saiu do loop
         END IF;
         
     END LOOP;
     
     CLOSE CUR_ATLETA;-- libera o espaço de memoria do CURSOR
END;
