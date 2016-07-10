/*ODS*/

data test;
input a b@@;
cards;
72 25 23 24 25 26 27 28 12 25 45 46
42 21 23 24 25 26 27 28 12 25 45 46
22 21 23 24 25 26 27 28 12 25 45 46
;
run;

ods html body='C:\Users\GBAG\Documents\SAS\Day11\outputtest.html'
	     style=BarrettsBlue;


proc print data=test;
run;

proc contents data=test;
run;

proc freqdata=test;

tables a;
run;

ods html close;

/*for pdf*/
data test(pw=test);
input a b@@;
cards;
72 25 23 24 25 26 27 28 12 25 45 46
42 21 23 24 25 26 27 28 12 25 45 46
22 21 23 24 25 26 27 28 12 25 45 46
;
run;

ods pdf body='C:\Users\GBAG\Documents\SAS\Day11\outputtest.pdf'
	     style=BarrettsBlue;


proc print data=test;
run;

proc contents data=test;
run;

proc freqdata=test;

tables a;
run;

ods pdf close;

/*for word*/
data test1;
input a b@@;
cards;
72 25 23 24 25 26 27 28 12 25 45 46
42 21 23 24 25 26 27 28 12 25 45 46
22 21 23 24 25 26 27 28 12 25 45 46
;
run;

ods rtf body='C:\Users\GBAG\Documents\SAS\Day11\outputtest.rtf'
	     style=BarrettsBlue;


proc print data=test1;
run;

proc contents data=test1;
run;

proc freqdata=test1;

tables a;
run;

ods rtf close;

