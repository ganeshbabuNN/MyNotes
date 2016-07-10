/*you can use the options via import data wizard from file menu*/
proc import datafile="C:\Users\GBAG\Documents\SAS\Day2\lab1.txt"
			out=lab8
			dbms=dlm
			replace;
/*if the variable is not there put has yes*/
getnames=no;
run;

proc print data=lab8;
run;

data lab9(rename= (var1=name var2=age var3=sex));
set lab8;
run;
