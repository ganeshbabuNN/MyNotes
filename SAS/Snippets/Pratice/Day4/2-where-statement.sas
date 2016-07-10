data employ;
input name $ age;
cards;
anitha 23
aman 25
anil 29
anu 34
veena 16
vinu 18
vimal 28
;
run;

data test1 ;
set employ;
where age>25;
run;

data test1 ;
set employ;
where age=25;
run;
