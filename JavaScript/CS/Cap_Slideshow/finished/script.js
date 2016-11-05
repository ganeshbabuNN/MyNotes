window.onload = initAll;

function initAll() {
	var allLinks = document.getElementsByTagName("a");
	
	for (var i=0; i<allLinks.length; i++) {
		if (allLinks[i].className.indexOf("menuLink") > -1) {
			allLinks[i].onclick = retFalse;
			allLinks[i].onmouseover = toggleMenu;
		}
	}
}

function toggleMenu() {
	var startMenu = this.href.lastIndexOf("/")+1;
	var stopMenu = this.href.lastIndexOf(".");
	var thisMenuName = this.href.substring(startMenu,stopMenu);

	document.getElementById(thisMenuName).style.display = "block";

	this.parentNode.className = thisMenuName;
	this.parentNode.onmouseout = toggleDivOff;
	this.parentNode.onmouseover = toggleDivOn;	
}

function toggleDivOn() {
	document.getElementById(this.className).style.display = "block";
}

function toggleDivOff() {
	document.getElementById(this.className).style.display = "none";
}

function retFalse() {
	return false;
}