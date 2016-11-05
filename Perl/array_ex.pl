#!/usr/bin/perl
#array examples

@array1 = ('bhuvan','panday','kon','dev',2,4);
print "my name is $array1[0]\n";
print "number in array $array1[4]\n";
@array2 = qw/mon tue wed thu fri sat/;

print "weeks first day $array2[0]\n";


@tem_array = (0..30);
$max_index = $#tem_array;
print " days in a week @tem_array\n";
print " array size" ,scalar @tem_array,"\n";
print " maximum index is $max_index \n"; 
