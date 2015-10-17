window.onload = newCard;

function newCard() {
	if (document.getElementById) {
		for (var i=0; i<24; i++) {
			setSquare(i);
		}
	}
	else {
		alert("Sorry, your browser doesn't support this script");
	}
}

function setSquare(thisSquare) {
	var currSquare = "square" + thisSquare;
	var newNum = Math.floor(Math.random() * 75) + 1;

	document.getElementById(currSquare).innerHTML = newNum;
}
