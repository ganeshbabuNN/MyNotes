window.onload = initAll;

function initAll() {
	switch(navigator.platform) {
		case "Win32":
			alert("You're running Windows");
			break;
		case "MacPPC":
			alert("You have a PowerPC-based Mac");
			break;
		case "MacIntel":
		case "X11":
			alert("You have an Intel-based Mac");
			break;
		default:
			alert("You have " + navigator.platform);
	}
}
