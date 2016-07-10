/*numeric function*/

data employee;
input amt1 amt2;
total = sum(amt1,amt2);
cards;
200 700
100 800
;
run;

/*using operator*/

data employee;
input amt1 amt2;
total = amt1+amt2;
cards;
200 700
100 800
;
run;
/*if missing */
data employee;
input amt1 amt2;
total = sum(amt1,amt2);
cards;
200 .
100 800
;
run;

data employee;
input amt1 amt2 amt3;
total = sum(of amt1-amt3);
cards;
200 . 800
100 800 100
;
run;

data employee;
input money price amt3;
total1 = sum(of money--amt3);
cards;
200 . 800
100 800 100
;
run;
/* minimum max*/
data employee;
input amt1 amt2 amt3;
total = min(of amt1-amt3);
totalmax= max(of amt1-amt3);
cards;
200 . 800
100 800 100
;
run;

/* mean */
data employee;
input amt1 amt2 amt3;
total = mean(of amt1-amt3);
cards;
200 . 800
100 800 100
;
run;

/* range-- difference min and max */
data employee;
input amt1 amt2 amt3;
total = range(of amt1-amt3);
cards;
200 . 800
100 800 100
;
run;

/* round */
data employee;
input amt1;
total = round(amt1);
cards;
200.800
100.45
20.34
79.56
;
run;

/* round precision */
data employee;
input amt1;
total = round(amt1,0,1);
cards;
200.800
100.45
20.34
79.56
;
run;

/* integer */
data employee;
input amt1;
total = int(amt1);
cards;
200.800
100.45
20.34
79.56
;
run;

/* abs */
data employee;
input amt1;
total = abs(amt1);
cards;
200.800
-100.45
20.34
-79.56
;
run;

/* ciel */
data employee;
input amt1;
total = ceil(amt1);
cards;
200.800
100.45
20.34
79.56
805
;
run;


/* floor i,e is equal to integer*/
data employee;
input amt1;
total = floor(amt1);
cards;
200.800
100.45
20.34
79.56
805
;
run;

/* floor i,e is equal to integer*/
data employee;
input amt1;
total = floor(amt1);
cards;
200.800
100.45
20.34
79.56
805
;
run;

/* square root*/
data employee;
input amt1;
total = sqrt(amt1);
cards;
36
34
;
run;


/* missing root*/
data employee;
input amt1 amt2;
total = nmiss(amt1,amt2);
cards;
. 43
36 .
. 33
34 22
;
run;


/* non missing root*/
data employee;
input amt1 amt2;
total = n(amt1,amt2);
cards;
. 43
36 .
. 33
34 22
;
run;












