window.onload = initAll;

function initAll() {
	document.getElementById("redirect").onclick = clickHandler;
}

function clickHandler() {
	alert("Ow, that hurt!");
	return false;
}