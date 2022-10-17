PROGRAM program0
  VAR
    COUNTER AT %QW9 : UINT := 0;
    RED AT %QX0.0 : BOOL := 0;
    TL_STATE AT %QW0 : UINT := 0;
    YELLOW AT %QX0.1 : BOOL := 0;
    GREEN AT %QX0.2 : BOOL := 0;
  END_VAR

  CASE TL_STATE OF
    0: RED := true;
       YELLOW := false;
       GREEN := false;
    
    1: RED := false;
       YELLOW := true;
       GREEN := false;
    
    2: RED := false;
       YELLOW := false;
       GREEN := true;
    
    3: COUNTER := 0;

  ELSE
    RED := false;
    YELLOW:= false;
    GREEN := false;
    
  END_CASE;

  TL_STATE := DIV (COUNTER,60);
  COUNTER := ADD (1, COUNTER);
END_PROGRAM


CONFIGURATION Config0

  RESOURCE Res0 ON PLC
    TASK task0(INTERVAL := T#1000ms,PRIORITY := 0);
    PROGRAM instance0 WITH task0 : program0;
  END_RESOURCE
END_CONFIGURATION
