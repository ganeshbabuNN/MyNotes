data hospital;
input name $ sex $ amount;
cards;
reema f 20 
aparna f 800
ram m 400
;
run;

/*varnum is for alpha order*/
proc contents data=hospital varnum; 
run;

/*position is for alpha order*/

proc contents data=hospital position;
run;
