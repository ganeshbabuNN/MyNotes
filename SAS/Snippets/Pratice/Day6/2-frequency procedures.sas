/*frequency procedure*/

/*counts and cross tabulation tables. can proceud statistics to analyze relationship among variables
PROC FREQ can be controlled by four statements
PROC FREQ options;*/

/*all the variables*/
proc freq data=sashelp.class;
run;

/*selected variables*/
proc freq data=sashelp.class;
table sex;
run;

/*selected variables*/
proc freq data=sashelp.class;
table sex;
run;

/*selected variables -numeric*/
proc freq data=sashelp.class;
table age;
run;

/*two variables -numeric*/
proc freq data=sashelp.class;
tables sex age;
run;

/*where*/
proc freq data=sashelp.class;
tables age;
where sex="M";
run;

/* row column percentage with total*/
proc freq data=sashelp.class;
tables height * sex;
run;
/* row column percentage with total no columns no percent*/
proc freq data=sashelp.class;
tables height * sex/nocol norow nopercent;
run;

/* row column percentage with total no columns no percent*/
proc freq data=sashelp.class;
tables height * sex/nocol norow;
run;

proc freq data=sashelp.class;
tables height * sex/nocol norow;
run;
/*labels*/
proc freq data=sashelp.class;
tables age * sex/nocol norow nopercent;
label age="age of patient"
	  sex="sex of patient";
run;

proc sort data=sashelp.class out=ganesh;
by descending sex ;
run;

proc freq data=ganesh;
tables age*sex / nocol norow nopercent;
by sex;
run;





