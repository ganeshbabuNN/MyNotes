window.onload = initAll;
document.onmousemove = moveHandler;

// The next two functions handle the onmousemove event

function moveHandler(evt) {
	if (!evt) {
		evt = window.event;
	}
	animateEyes(evt.clientX,evt.clientY);
}

function animateEyes(xPos,yPos) {
	var rightEye = document.getElementById("rEye");
	var leftEye = document.getElementById("lEye");
	var rightEyeball = document.getElementById("rDot").style;
	var leftEyeball = document.getElementById("lDot").style;

	leftEyeball.left = newEyeballPos(xPos,leftEye.offsetLeft);
	leftEyeball.top = newEyeballPos(yPos,leftEye.offsetTop);
	rightEyeball.left = newEyeballPos(xPos,rightEye.offsetLeft);
	rightEyeball.top = newEyeballPos(yPos,rightEye.offsetTop);

	function newEyeballPos(currPos,eyePos) {
		return Math.min(Math.max(currPos,eyePos+3),eyePos+17) + "px";
	}
}

// The remaining code handles the onmouseover and the onmouseout

function initAll() {
	document.overButton.onmouseover = swapButton;
	document.overButton.nowRed = true;

	document.outButton.onmouseout = swapButton;
	document.outButton.nowRed = false;
}

function swapButton(evt) {
	thisButton = evt.currentTarget;
	
	if (thisButton.nowRed) {
		thisButton.src = "images/button1_off.gif";
	}
	else {
		thisButton.src = "images/button1_on.gif";
	}
	thisButton.nowRed = !thisButton.nowRed;
}