window.onload = initAll;

function initAll() {
	document.getElementById("redirect").onclick = clickHandler;
}

function clickHandler() {
	if (this.toString().indexOf("dori") < 0) {
		alert("We are not responsible for the content of pages outside our site");
	}
}
