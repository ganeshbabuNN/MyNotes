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
if age <= 25 then category="young";
if age >=25 then category="Youth";
run;

data test2 ;
set employ;
if age <=25 then category="young";
else category="Youth";
run;

data employ3;
input name $ age sal;
cards;
anitha 23 7000
aman 25 6000
anil 29 8000
anu 34 5000
veena 16 7000
vinu 18 10000
;
run;

/*> gt*/
/*< lt*/
/*>= ge*/
/*^=ne*/
/*=*/

data test4;
set employ3;
if age le 25 then bonus=0.25*sal;
else if (age gt 25 and age le 27) then bonus=0.3*sal;
else if (age gt 27 and age le 30) then bonus=0.45*sal;
else bonus=0.5*sal;
fin_sal=sal+bonus;
run;

data school;
input name $ phy chem maths;
datalines;
ashraf 20 90 95
sumayya 70 60 75
sana 55 40 70
liyana 55 59 51
waheeda 80 80 50
jabi 30 60 90
shakir 80 80 80
;
run;







