/*input sytle;*/
/*list input style*/
/* by default sas takes only 8 bytes ... 8 bytes= 8 character*/
data employ3;
length name $12;
 input emp_id name $ age sex $ salary;
 cards;
 123 vineethkumar 27 m 3000
 124 vinod 29 m 4000
 125 shami 25 f 6000
 126 reeya 29 f 5000
 127 nisha 32 f 2000
 128 nishanth 45 m 7000
 129 shruthiram 23 f 1800
 ;
 run;
/*coloumn input style nor fixed input style*/
 data employ_4;
 input name$1-8 age 11-12 sex$13 salary;
 cards;
 vineeth 27m3000
 vinod 29m4000
 shami 25f6000
 remya 29f5000
 nisha 32f2000
 nishanth 45m7000
 shruthi 23f1800
 ;
 run;


/*formatted input style*/
 data employ_4;
 input name$14. age sex $ salary;
 cards;
vineeth kumar  27 m 3000
vinod chandran 29 m 4000
shami          25 f 6000
remya          29 f 5000
nisha          32 f 2000
nishanth       45 m 7000
shruthi ram    23 f 1800
;
run;

 data employ_4;
 input name$14. age sex $3. salary;
 cards;
 vineeth kumar 27 m a 3000
 vinod chandran 29 m a 4000
 shami 25 f e 6000
 remya 29 f e 5000
 nisha 32 f e 2000
 nishanth 45 m e 7000
 shruthi ram 23 f e 1800
 ;
 run;

/*mixed input style*/
  data employ_5;
 input@1 name$14. age sex$20 salary;
 cards;
vineeth kumar 27 m3000
vinod chandran 29 m4000
Shami 25 f6000
remya 29 f5000
nisha 32 f2000
nishanth 45 m7000
shruthi ram 23 f1800
 ;
 run;

