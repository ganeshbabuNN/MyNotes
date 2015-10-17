<?php


define("VERSION", "5.1.1/php");
print "<pre>\n";    // simple text output

// signon info
foreach ( array(
    "BW Test version " . VERSION . "\n",
    "Copyright 1995-2012 The BearHeart Group, LLC\n\n",
    "Versions:\n=================\n",
    "PHP: " . phpversion() . "\n"
) as $v ) {
    print( $v );
}

print "\nCGI Values:\n=================\n";
$req = array_merge($_GET, $_POST);
ksort($req);    // sort by keys so we can easily find entries
foreach ( $req as $k => $v ) {
    print( "$k [$v]\n" );
}

print "\nEnvironment Variables:\n=================\n";
ksort($_SERVER);    // sort by keys we can easily find entries
foreach ( $_SERVER as $k => $v ) {
    print( "$k [$v]\n" );
}

print "</pre>\n";

?>
