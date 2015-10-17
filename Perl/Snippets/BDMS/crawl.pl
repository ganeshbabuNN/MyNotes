e LWP::UserAgent;

my $useragent = LWP::UserAgent->new;
$useragent->timeout(100);

my $url = "http://deals.ebay.in/category/Mobilephones";
my $response = $useragent->get($url);

if($response->is_success)
{
    my $content = $response->decoded_content;
    if($content =~ m/<div class=\"res-all su\">(.*?)<div id=\"pendingAspects\">/gi)
    {
        my $matchedContent = $1;
        my $regex = "</p></a> </div>";
        my @items = split(/$regex/, $matchedContent);
        foreach my $item(@items)
        {
            my $itemRegex = "<div class=\"item\" id=\"(.*?)\"><div class=\".*?\"> <b></b> <a href=\"(.*?)\" target=\".*?\"><img src=\"(.*?)\" /></a> </div><div class=\".*?\">.*?</div> <p class=\".*?\">.*?</p><a href=\".*?\" class=\".*?\" data-title=\".*?\" target=\".*?\"><strong>(.*?)</strong><span>(.*?)</span><p>(.*?)";
            if($item =~ m/$itemRegex/gi)
            {
                print "Item Id: ", $1, "\n";
                print "Item Url: ", $2, "\n";
                print "Item Image: ", $3, "\n";
                print "Item Name: ", $4, "\n";
                print "Item Price: ", $5, "\n";
                print "----------------------------\n";
            } 	
        }
    }
    else
    {
        print "Please check your regular expression...!";
    }
}
else
{
    print "Failed to crawl the url....", $url;
}
