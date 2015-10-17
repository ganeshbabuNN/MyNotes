window.onload = newCard;

function newCard() {
	for (var i=0; i<24; i++) {
		setSquare(i);
	}
}

function setSquare(thisSquare) {
	var currSquare = "square" + thisSquare;
	var newNum = Math.floor(Math.random() * 75) + 1;

	document.getElementById(currSquare).innerHTML = newNum;
}
