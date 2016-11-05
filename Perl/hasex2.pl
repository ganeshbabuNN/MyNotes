#!/bin/usr/perl
%data = (-bhuvan =>26,-panday =>25,kon =>27,dev=>28);

@array = @data{-bhuvan,-panday};

print "\nvalues are @array";

@names = keys %data;

print "\n names are @names";

@age = values %data;

print "\nage is @age";

if( exists ($data{-bhuvan})){

print ("\n bhuvan exists");
}
else
{
print ("\n bhuvan dosent exist");
}

print "\n bhuvan details***\n";

$bname = key $data{-bhuvan};
print "\n name: $bname\n";
$bage = $data{'bhuvan'};

print "bhuvan age is $bage";

