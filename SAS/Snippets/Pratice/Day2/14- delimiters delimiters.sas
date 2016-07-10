data lab4;
infile "C:\Users\GBAG\Documents\SAS\Day2\lab2.txt" dlm="," firstobs=2;
input name$ age sex$;
run;

