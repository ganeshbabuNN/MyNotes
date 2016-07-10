/*you can use the options via import data wizard from file menu*/
proc import datafile="C:\Users\GBAG\Documents\SAS\Day2\lab.xlsx"
			out=lab5
			dbms=excel
			replace;
sheet ="Sheet2$";
/*if the variable is not there put has yes*/
getnames=yes; 	
run;

proc print data=lab5;
run;
