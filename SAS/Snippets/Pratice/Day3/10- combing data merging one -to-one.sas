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
/*one -to -one merge- observer the output and do RD... not sorteeed*/
data report1;
merge school1 school1;

run;
