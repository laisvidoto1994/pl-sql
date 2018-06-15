CREATE TABLE CIRCULO
  (
     RAIO NUMBER(2) 
    ,AREA NUMBER(8,2)
  );
  
/*
-- resposta da 1º questão  
DECLARE
  v_counter NUMBER := 0;  -- VALOR DO RAIO
  V_AREA    NUMBER(8,2);  --AREA
BEGIN
  WHILE v_counter < 10
    LOOP
      v_counter := v_counter + 1;
      V_AREA    :=  3.14* ( v_counter * v_counter );
     INSERT INTO CIRCULO( AREA, RAIO )
          VALUES( V_AREA,v_counter );
      dbms_output.put_line(v_counter);
    END LOOP;
END;

*/


/*

-- resposta da 2º questão  
DECLARE
v_counter NUMBER:=1; -- VALOR DO RAIO
V_AREA    NUMBER(8,2); --AREA
BEGIN

  FOR v_counter IN REVERSE 1..10
  LOOP
    V_AREA    := 3.14 * ( v_counter * v_counter );
    
    INSERT INTO CIRCULO ( AREA, RAIO )
        VALUES( V_AREA,v_counter );
        
    dbms_output.put_line(v_counter);
  END LOOP ;
  
END;

*/

-- resposta da 3º questão  
DECLARE
v_counter NUMBER:=1; -- VALOR DO RAIO
V_AREA    NUMBER(8,2); --AREA
BEGIN

  FOR v_counter IN REVERSE 1..10
  LOOP
    V_AREA := 3.14 * ( v_counter * v_counter );
    INSERT INTO CIRCULO ( AREA, RAIO )
        VALUES( V_AREA,v_counter );
        
    dbms_output.put_line(v_counter);
  END LOOP ;
  
END;

SELECT*FROM CIRCULO;

DROP TABLE CIRCULO;