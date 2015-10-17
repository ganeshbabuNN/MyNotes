<?php

function startElemHandler($parser, $name, $attribs) 
{
	if (strcasecmp($name, "links") == 0) {
		echo "<div id='linkslist'>\n";
	}
	if (strcasecmp($name, "category") == 0) {
		$desc = $attribs['desc'];
		echo "<p>$desc</p><ul>\n";
	}
	if (strcasecmp($name, "link") == 0) {
		$urlLink = $attribs['url'];
		$desc = $attribs['desc'];
		$title = $attribs['title'];
		
		echo "<li><a href='$urlLink' target='_blank'";
		if ($title != "")
			echo " title='$title'";
		echo ">";
		
		if ($desc == "")
			echo "$urlLink";
		else
			echo "$desc";
			
		echo "</a></li>";
	}
}

function endElemHandler($parser, $name)
{
	if (strcasecmp($name, "links") == 0) {
		echo "</div>\n";
	}
	if (strcasecmp($name, "category") == 0) {
		echo "<\ul>\n";
	}
}

$parser = xml_parser_create();
xml_set_element_handler($parser, startElemHandler, endElemHandler);
xml_parser_set_option($parser, XML_OPTION_CASE_FOLDING, 0);

$strXML = implode("",file("links.xml"));

xml_parse($parser, $strXML);

xml_parser_free($parser);

?>