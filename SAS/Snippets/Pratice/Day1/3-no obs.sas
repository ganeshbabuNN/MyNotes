data lab;
input sub_id sex $ hb;
cards;
100 f 11
101 m 12
102 f 11
103 m 12
104 f 11
105 m 12
106 f 11
107 m 12
108 f 11
109 m 12
;
run;
/*removing the sex column to be ommitted using VAR statement*/

proc print data=lab;
var sub_id hb;
run;

/*order of the column*/

proc print data=lab;
var  hb sub_id;
run;
