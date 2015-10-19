window.onload = initAll;

function initAll() {
	document.getElementById("redirect").onclick = clickHandler;
}

function clickHandler() {
	window.location = "jswelcome.html";
	return true;
}