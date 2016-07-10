/*sorting*/

data school1;
input rollnu name$;
cards;
3 anand
1 sami
1 anu
2 remya
4 mini
5 ram
6 jjibi
;
run;

data school2;
input rollnu marks;
cards;
1 23
5 78
2 78
7 67
8 79
;
run;
/*by ascending*/
proc sort data =school1 out=sc1;
by rollnu name;
run;
proc sort data =school2 out=sc2;
by rollnu;
run;
/*one -to -may merge- observer the output and do RD*/
data report1;
merge sc1 sc2;
by rollnu;
run;
