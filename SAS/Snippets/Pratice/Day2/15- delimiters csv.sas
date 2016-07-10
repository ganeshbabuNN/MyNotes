data lab5;
infile "C:\Users\GBAG\Documents\SAS\Day2\lab.csv" dsd firstobs=2;
input name$ age sex$;
run;

