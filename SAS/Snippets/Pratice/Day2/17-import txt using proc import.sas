/*you can use the options via import data wizard from file menu*/
proc import datafile="C:\Users\GBAG\Documents\SAS\Day2\lab.txt"
			out=lab7
			dbms=dlm
			replace;
/*if the variable is not there put has yes*/
getnames=yes;
run;

proc print data=lab7;
run;
