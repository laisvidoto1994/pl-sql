CREATE OR REPLACE TRIGGER TRG_DEPARTAMENTO
BEFORE -- faz á AÇÃO antes de..

  INSERT OR
  UPDATE OR
  DELETE ON DEPT FOR EACH ROW BEGIN
    
   :new.DNAME := UPPER(:new.DNAME); -- O comando UPPER força os caracteres em minúsculo para maiúsculo
  
  -- Faremos aqui uma validação do momento da chamada da trigger
  IF (INSERTING) THEN
    :new.DEPTNO;
  elsif (UPDATING) then 
    :old.DEPTNO;
  ELSE
    :old.DEPTNO;
  END IF;
END;


---------------------------------------------------------------------------------

/*
CREATE OR REPLACE TRIGGER TRG_DEPARTAMENTO
AFTER -- faz á AÇÃO depois DE..

  INSERT OR
  UPDATE OR
  DELETE ON DEPT FOR EACH ROW BEGIN
    
    :new.DNAME := UPPER(:new.DNAME); -- O comando UPPER força os caracteres em minúsculo para maiúsculo
  
  -- Faremos aqui uma validação do momento da chamada da trigger
  IF (INSERTING) THEN
       :new.DEPTNO;
  elsif (UPDATING) then 
       :old.DEPTNO;
  ELSE
       :old.DEPTNO;
  END IF;
END;

*/