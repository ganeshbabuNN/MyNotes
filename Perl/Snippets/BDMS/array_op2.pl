#!/usr/bin/perl

$string1 = "S A M S U N G";
$string2 = "B-H-U-V-A-N";

@array1 = $string1;

@array2 = split('-',$string2);

print "\n @array1 \n @array2 \n";
print "array:$array1[2]\n";

$string_two = join('-',@array2,'-',@array1);

print "$string_two\n";
