---This Works

DECLARE
  v_string_var VARCHAR2(10) := '15';
  v_number_var NUMBER;
BEGIN
   v_number_var := TO_NUMBER(v_string_var);
END;
/

--but this does not

DECLARE
  v_string_var VARCHAR2(10) := 'fifteen';
  v_number_var NUMBER;
BEGIN
   v_number_var := TO_NUMBER(v_string_var);
END;
/
