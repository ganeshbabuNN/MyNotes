/*sorting*/

data school1;
input rollnu name$;
cards;
3 anand
1 sami
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

/*inner join where a implicit variables*/
data report;
merge sc1(in=a) sc2(in=b);
by rollnu;
if a and b;
run;
