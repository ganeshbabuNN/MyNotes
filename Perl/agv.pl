#!/usr/bin/perl
#average---------------------

sub average_function{
$n = scalar(@_);
$sum = 0;
foreach $item(@_){
$sum = $sum + $item;
}
$avg = $sum / $n;
return $avg;
}
$savg = average_function(1,2,3,4,5,6,7,8,9,10);
print "average is :$savg\n \a";

