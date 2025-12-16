install.packages("haven")
install.packages("tidyverse")
library(haven)
demo<- read_sas(data_file="P:/u99/general/current/stats/program/draft/zme/dm.sas7bdat")
path1="P:/u99/general/current/stats/program/draft/zme";
#equivalent to macro usage something like
#%let path=/projstat/u99/general/current/stats/program/draft/zme;
#libname learn "&path";
paste(path1,'dm.sas7bdat',sep='/')
demo1<- read_sas(data_file=paste(path1,'dm.sas7bdat',sep='/'))
vitals1<- read_sas(data_file=paste(path1,'vs.sas7bdat',sep='/'))
View(demo1)
View(vitals1)

#Data is ready, now let us do some operations
library(tidyverse)

#Data is ready, now let us do some operations;
#proc sort data=learn.dm out=sortage;by age;run;

sortage<- demo1 %>% arrange(age)
#proc sort data=learn.dm out=sortdescage;by desc age;run;
sortdescage<- demo1 %>% arrange(desc(age))
#data onlymale;set learn.dm;if gndr = "M";run;
onlymale<- demo1 %>% filter(gndr == "M")
#data agelt35TrtA;set learn.dm;if age < 35 and trt = "A";run;
agelt35TrtA<- demo1 %>% filter(age < 35 & trt == "A")
#Relative operators AND &, OR |, EQ ==
#How to create new variable???
#data dmnewvar;set learn.dm;
#bmi= wt_kg/  (ht_cm/100)**2;
#if  age le 35 then agegrp =           "  <35";
#else if 35 le age le 50 then agegrp = "35-50";
#else if  age gt 50 then agegrp =      ">50  ";
#run;
#mutate a direct var and then logical var
dmnewvar<-demo1 %>%
  mutate(bmi= wt_kg/  (ht_cm/100)**2) %>%
  mutate(agegrp=case_when(
    age <= 35                 ~"  <35",
    age > 35 & age < 50     ~"35-50",
    age > 50                  ~">50  "
      )           )   
View(dmnewvar)

#*vs data sort by subjid and descending parameter;
#proc sort data=learn.vs out=vssort;by subjid descending param ;run;
vssort<-vitals1 %>% arrange(subjid,desc(param) )

#*transpose vs such that params are in col names;
#proc transpose data=learn.vs out=vstrans;by subjid;id param;var val;run;
vstrans<-vitals1 %>% spread(param,val)
View(vstrans)
#spread(key,value) -whatever not mentioned here will be like 'by' var
#if you dont want a var you can 'drop' it 
#The opposite of spread is 'gather' let us bring back our original data
vsback<-vstrans %>% gather(key="param",value="val" ,"DBP","SBP","RR")
View(vsback)

#*merge by dm and vs;
#data dmvstrans;merge learn.dm vstrans;by subjid;run;
dmvstrans <- demo1 %>% full_join(vstrans,by="subjid")
View(dmvstrans)
#proc means data= dmvstrans;var sbp ;run;
dmvstrans %>% summarise(n=n(),mean=mean(SBP),sd=sd(SBP),median=median(SBP),min=min(SBP),max=max(SBP) )

#proc means data= dmvstrans;class trt;var sbp ; run;
dmvstrans %>% group_by(trt) %>% summarise(n=n(),mean=mean(SBP),sd=sd(SBP),median=median(SBP),min=min(SBP),max=max(SBP) )

#proc means data= dmvstrans;class trt gndr;var sbp dbp rr;run;
dmvstrans %>% group_by(trt,gndr) %>% summarise(n=n(),mean=mean(SBP),sd=sd(SBP),median=median(SBP),min=min(SBP),max=max(SBP) )

#proc sgplot data=dmvstrans;scatter x=sbp y=age/group=trt;quit;
ggplot(dmvstrans, aes(x=SBP, y=age, colour = trt)) + 
  geom_point()


#proc sgplot data=dmvstrans;vbox age / category= trt;run;
ggplot(dmvstrans, aes(x=age, colour = trt)) + 
  geom_boxplot()




