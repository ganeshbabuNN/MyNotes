/*update*/

data year1;
input name $ age job $;
cards;
anil 33 .
ani 78 teacher
mini 22 engineer
dolly 34
;
run;

data year2;
input name $ age job $;
cards;
anil 33 scientst
ani 78 teacher
mini 22 musician
dolly 34 doctor
;
run;

proc sort data=year1 out=yr1;
by name;
run;

proc sort data=year2 out=yr2;
by name;
run;

data new;
update yr1 yr2;
by name;
run;
