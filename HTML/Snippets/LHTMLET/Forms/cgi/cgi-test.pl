

use strict;
use warnings;
use CGI;

my $version = "5.1.1/pl";

print foreach (
    "Content-Type: text/plain\n\n",
    "BW Test version $version\n",
    "Copyright 1995-2012 The BearHeart Group, LLC\n\n",
    "Versions:\n=================\n",
    "perl: $]\n",
    "CGI: $CGI::VERSION\n"
);

my $q = CGI::Vars();
print "\nCGI Values:\n=================\n";
foreach my $k ( sort keys %$q ) {
    print "$k [$q->{$k}]\n";
}

print "\nEnvironment Variables:\n=================\n";
foreach my $k ( sort keys %ENV ) {
    print "$k [$ENV{$k}]\n";
}
