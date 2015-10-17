window.onload = initAll;

var currImg = 0;
var captionText = new Array(
	"Our ship, leaving Vancouver.",
	"We took a helicopter ride at our first port, Juneau.",
	"The helicopter took us to Mendenhall Glacier.",
	"The happy (and chilly) couple, on the glacier.",
	"Here's what our second stop, Ketchikan, looked like from the ship.",
	"We got to cruise through Glacier Bay. It was absolutely breathtaking!",
	"In Skagway, we took a train up into the mountains, all the way to the Canadian Border.",
	"Looking back down at Skagway from the train.",
	"On a trip this romantic, I shouldn't have been surprised by a proposal, but I was (obviously, I said yes).",
	"It's nice to go on vacation, but it's nice to be home again, too."
)

function initAll() {
	document.getElementById("imgText").innerHTML = captionText[0];
	document.getElementById("prevLink").onclick = processPrevious;
	document.getElementById("nextLink").onclick = processNext;
}

function processPrevious() {
	newSlide(-1);
}

function processNext() {
	newSlide(1);
}

function newSlide(direction) {
	var imgCt = captionText.length;

	currImg = currImg + direction;
	if (currImg < 0) {
		currImg = imgCt-1;
	}
	if (currImg == imgCt) {
		currImg = 0;
	}
	document.getElementById("slideshow").src = "images/slideImg" + currImg + ".jpg";
	document.getElementById("imgText").innerHTML = captionText[currImg];
}
