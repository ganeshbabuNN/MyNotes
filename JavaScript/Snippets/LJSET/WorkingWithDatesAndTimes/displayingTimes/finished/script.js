window.onload = showTheTime;

function showTheTime() {
	var now = new Date();

	var theTime = showTheHours(now.getHours()) + showZeroFilled(now.getMinutes()) + showZeroFilled(now.getSeconds()) + showAmPm();
	document.getElementById("showTime").innerHTML = theTime;
	setTimeout("showTheTime()",1000);
	
	function showTheHours(theHour) {
		if (theHour == 0) {
			return 12;
		}
		if (theHour < 13) {
			return theHour;
		}
		return theHour-12;
	}
	
	function showZeroFilled(inValue) {
		if (inValue > 9) {
			return ":" + inValue;
		}
		return ":0" + inValue;
	}
	
	function showAmPm() {
		if (now.getHours() < 12) {
			return " am";
		}
		return " pm";
	}
}
