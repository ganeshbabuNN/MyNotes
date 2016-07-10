/*you can use the options via import data wizard from file menu*/
proc import datafile="C:\Users\GBAG\Documents\SAS\Day3\lab.txt"
			out=lab1
			dbms=dlm
			replace;
			delimiter= "&";
			datarow=4;
/*if the variable is not there put has yes*/
getnames=no;
run;

proc print data=lab1;
run;
