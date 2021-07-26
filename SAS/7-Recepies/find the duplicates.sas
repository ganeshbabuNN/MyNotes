data single duplicate ;
  set _sdtmtsubj;
    by usubjid;         
	if first.usubjid then output single; 
    if not(first.usubjid and last.usubjid) then output duplicate;
run;