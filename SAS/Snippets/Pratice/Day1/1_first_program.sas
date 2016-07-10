data lab;
/*character variable */
input sub_id sex $ hb;
/*card for listing the observation*/
cards;    
100 f 11
101 m 12
102 f 11
103 m 12;
run;
proc print data=lab;
run;
