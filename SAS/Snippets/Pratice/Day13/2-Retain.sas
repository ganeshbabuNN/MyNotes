/*retain pass the current observations to the next observations*/

data collection;
input day amount;
cards;
1 300
2 200
3 100
4 150
5 200
;
run;

data an;
set collection;
retain total 5;
total =total+ amount;
run;

data abc;
input a b;
put _all_;
cards;
1 2
2 3
;
run;

