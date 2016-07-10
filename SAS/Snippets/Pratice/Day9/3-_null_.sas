/*_null_  writing output without creating the dataset*/

data abc;
input a b;
total = sum(a,b);
cards;
1 2
3 4
;
run;


data _null_;
input a b;
total = sum(a,b);
cards;
1 2
3 4
;
run
;

